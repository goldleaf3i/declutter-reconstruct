import glob
import os
import shutil
import datetime
import tabulate
import numpy as np

import parameters as par
import minibatch

import FFT_MQ as fft


def make_folder(location, folder_name):
    if not os.path.exists(location + '/' + folder_name):
        os.mkdir(location + '/' + folder_name)


def check_int(name_folder):
    maps = os.listdir(name_folder)
    while True:
        index = 0
        for image in maps:
            print(str(index) + '   ' + image)
            index += 1
        try:
            val = int(input('insert the number you want to select\n'))
            if 0 <= val < index:
                return maps[val]
        except ValueError:
            print('invalid input')


def check_action():
    while True:
        print('What kind of action do you want to do?\n1     batch\n2     single action\n3     sliding parameters')
        try:
            val = int(input('insert the number of action selected\n'))
            if val == 1:
                return 'batch'
            elif val == 2:
                return 'single action'
            elif val == 3:
                return 'sliding parameters'
        except ValueError:
            print('invalid input')


def sort_name(par):
    return par[0]


def main():
    # ----------------PARAMETERS OBJECTS------------------------
    # loading parameters from parameters.py
    parameters_object = par.ParameterObj()

    # loading path object with all path and name interesting for code
    paths = par.PathObj()

    # ----------------------------------------------------------

    # taking all the folders inside the path INPUT/IMGs
    list_dir = './data/INPUT/IMGs'
    # asking the user what folder want to use
    paths.name_folder_input = check_int(list_dir)
    paths.path_folder_input = list_dir + '/' + paths.name_folder_input

    if paths.name_folder_input == 'Bormann' or paths.name_folder_input == 'Bormann_furnitures':
        parameters_object.bormann = True
    else:
        parameters_object.bormann = False

    # asking if is a batch action or single action
    action = check_action()

    # asking what map if is a single action
    if action == 'single action':
        # saving the output folder where the output is saved
        make_folder('./data/OUTPUT', 'SINGLEMAP')
        paths.path_folder_output = './data/OUTPUT/SINGLEMAP'
        # asking what map to use
        paths.metric_map_name = check_int(paths.path_folder_input)
        paths.metric_map_path = os.path.join(paths.path_folder_input + '/' + paths.metric_map_name)
        start_main(action, parameters_object, paths)

    elif action == 'batch':
        # saving the output folder
        paths.path_folder_output = os.path.join('./data/OUTPUT', paths.name_folder_input)
        make_folder('./data/OUTPUT', paths.name_folder_input)
        start_main(action, parameters_object, paths)
        filename = os.path.join(paths.path_log_folder, 'average_evaluation.txt')
        file = open(filename, 'w+')
        tot_index = parameters_object.total_index
        morph = parameters_object.total_index_morphological
        vor = parameters_object.total_index_voronoi
        dist = parameters_object.total_index_distance
        # avg = [[''] + tot_index[0][1:], ['geometric'], ['geometric std']]
        avg = [['', 'geometrical', 'g_std', 'morphological', 'm_std', 'distance', 'd_std', 'voronoi', 'v_std'],
               ['prec micro'], ['prec macro'], ['rec micro'], ['rec macro'], ['iou mean seg'], ['iou seg'],
                ['iou mean gt'], ['iou gt']]

        for i, el in enumerate(avg[1:], start=1):
            avg[i].append(np.mean(np.array(tot_index[i][1:])))
            avg[i].append(np.std(np.array(tot_index[i][1:])))
            avg[i].append(np.mean(np.array(morph[i][1:])))
            avg[i].append(np.std(np.array(morph[i][1:])))
            avg[i].append(np.mean(np.array(dist[i][1:])))
            avg[i].append(np.std(np.array(dist[i][1:])))
            avg[i].append(np.mean(np.array(vor[i][1:])))
            avg[i].append(np.std(np.array(vor[i][1:])))

        # for ind in tot_index[1][1:]:
            # avg[1].append(np.mean(np.array(ind)))
            # avg[2].append(np.std(np.array(ind)))

        fin = []
        fin2 = []
        for i, el in enumerate(tot_index[0]):
            fin.append([tot_index[0][i], tot_index[1][i], tot_index[2][i], tot_index[3][i], tot_index[4][i], tot_index[5][i], tot_index[6][i], tot_index[7][i], tot_index[8][i]])

        if len(morph[1]) != 1 and len(dist[1]) != 1 and len(vor[1]) != 1:
            for i, el in enumerate(tot_index[0]):
                fin2.append([tot_index[0][i], tot_index[1][i], tot_index[2][i], tot_index[3][i], tot_index[4][i], tot_index[5][i], tot_index[6][i], tot_index[7][i], tot_index[8][i]])
                try:
                    if i != 0:
                        fin2.append([morph[0][i], morph[1][i], morph[2][i], morph[3][i], morph[4][i], morph[5][i], morph[6][i], morph[7][i], morph[8][i]])
                        fin2.append([dist[0][i], dist[1][i], dist[2][i], dist[3][i], dist[4][i], dist[5][i], dist[6][i], dist[7][i], dist[8][i]])
                        fin2.append([vor[0][i], vor[1][i], vor[2][i], vor[3][i], vor[4][i], vor[5][i], vor[6][i], vor[7][i], vor[8][i]])
                except:
                    pass

        tab1 = tabulate.tabulate(avg, headers='firstrow', tablefmt="latex", floatfmt=".3f", numalign='center', stralign='left')
        file.write("\\begin{table}[ht]\n\\centering\n")
        file.write(tab1)
        file.write("\n\\caption{Average results of run}\n\\label{tab:" + paths.name_folder_input + "}\n\\end{table}\n\n")

        tab2 = tabulate.tabulate(fin, headers='firstrow', tablefmt="latex", floatfmt=".3f")
        file.write("\n\nAll results of run \\\\\n%s" % tab2)

        tab3 = tabulate.tabulate(fin2, headers='firstrow', tablefmt="latex", floatfmt=".3f")
        file.write("\n\nAll results of run with bormann \\\\\n%s" % tab3)
        file.close()

    elif action == 'sliding parameters':
        # saving the output folder where the output is saved
        paths.path_folder_output = os.path.join('./data/OUTPUT', paths.name_folder_input)
        make_folder('./data/OUTPUT', paths.name_folder_input)
        filename = os.path.join('./data/OUTPUT/' + paths.name_folder_input, 'evaluation_sliding.txt')
        file = open(filename, 'w+')
        parameters_object.tab_sliding.append(['filter level', 'th extended lines', 'iou_micro_mean_seg_to_gt',
                                'iou_macro_seg_to_gt', 'iou_micro_mean_gt_to_seg', 'iou_macro_gt_to_seg'])
        for i in range(10, 22, 2):
            parameters_object.set_filter_level(i/100)
            for j in range(0, 12, 2):
                parameters_object.set_th1(j/100)
                start_main('batch', parameters_object, paths)
        tab = parameters_object.tab_sliding
        tab1 = tabulate.tabulate(tab, headers='firstrow', tablefmt="latex", floatfmt=".3f")
        file.write("%s" % tab1)
        file.close()


def start_main(action, parameters_object, paths):
    # ----------------------------------------------------------------
    # get current time
    running_time = str(datetime.datetime.now())[:-7].replace(' ', '@')
    # windows
    # running_time = running_time.replace(':', '_')
    # ----------------------------------------------------------------
    if action == 'batch':
        # ----------------------------------------------------------------
        # making the log folder
        paths.path_log_folder = os.path.join(paths.path_folder_output, running_time)
        make_folder(paths.path_folder_output, running_time)
        # ----------------------------------------------------------------
        for metric_map in glob.glob(paths.path_folder_input + '/*.png'):
            paths.metric_map_path = metric_map
            # windows
            # paths.metric_map_name = metric_map.split('\\')[-1][:-4]
            # linux
            paths.metric_map_name = metric_map.split('/')[-1][:-4]
            paths.filepath = paths.path_log_folder + '/' + paths.metric_map_name + '/'
            make_folder(paths.path_log_folder, paths.metric_map_name)
            # copying the parameters file
            shutil.copy('parameters.py', paths.filepath + '/parameters.py')
            # ----------------------------------------------------------------
            # orebro
            make_folder(paths.path_log_folder, paths.metric_map_name + '/OREBRO')
            paths.path_orebro = paths.path_log_folder + '/' + paths.metric_map_name + '/OREBRO'
            paths.orebro_img = paths.filepath + 'OREBRO_' + str(parameters_object.filter_level) + '.png'
            fft.main(paths.metric_map_path, paths.path_orebro, parameters_object.filter_level, parameters_object)
            # ----------------------------------------------------------------
            # evaluation
            paths.gt_color = './data/INPUT/gt_colored/' + paths.name_folder_input + '/' + paths.metric_map_name + '.png'
            # ----------------------------------------------------------------
            # starting main
            print('map name ', paths.metric_map_name)
            minibatch.start_main(par, parameters_object, paths)

    # -------------------EXECUTION---------------------------------------

    elif action == 'single action':
        # ----------------------------------------------------------------
        # making the log folder
        paths.path_log_folder = os.path.join(paths.path_folder_output, paths.metric_map_name)
        make_folder(paths.path_folder_output, paths.metric_map_name)
        make_folder(paths.path_log_folder, running_time)
        paths.filepath = paths.path_log_folder + '/' + running_time + '/'
        # copying the parameters file
        shutil.copy('parameters.py', paths.path_log_folder + '/' + running_time + '/parameters.py')
        # ----------------------------------------------------------------
        # orebro
        make_folder(paths.path_log_folder, running_time + '/OREBRO')
        paths.path_orebro = paths.path_log_folder + '/' + running_time + '/OREBRO'
        paths.orebro_img = paths.filepath + 'OREBRO_' + str(parameters_object.filter_level) + '.png'
        fft.main(paths.metric_map_path, paths.path_orebro, parameters_object.filter_level, parameters_object)
        # ----------------------------------------------------------------
        # evaluation
        paths.gt_color = './data/INPUT/gt_colored/' + paths.name_folder_input + '/' + paths.metric_map_name
        # ----------------------------------------------------------------
        # starting main
        print('map name ', paths.metric_map_name)
        minibatch.start_main(par, parameters_object, paths)

    # -------------------------------ENDING EXECUTION AND EVALUATION TIME------------------------------------


if __name__ == '__main__':
    main()
