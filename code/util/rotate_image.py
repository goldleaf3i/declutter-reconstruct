import matplotlib.pyplot as plt
import os
import glob
import time

from PIL import Image


def create_image(i, j):
    image = Image.new("RGB", (i, j), (205, 205, 205))
    return image


def convert_imm(in_file, out_folder, file_name, angle=45):
    # receive as parameter the image to rotate, the location where to save, the name and the angle

    src_im = Image.open(in_file)
    # compute size
    real_size = src_im.size
    proportion = float(real_size[0]) / real_size[1]
    first_dimension = real_size[0]
    second_dimension = float(first_dimension) / proportion
    size = int(first_dimension), int(second_dimension)

    width, height = size
    new = create_image(width + 50, height + 50)
    im = src_im.convert('RGBA')
    rot = im.rotate(angle).resize(size)
    new.paste(rot, (25, 25), rot)
    new.save(out_folder + "/" + file_name.split(".")[0] + ".png")

    plt.clf()
    plt.cla()
    plt.close()


def main():
    # -------------------PARAMETERS-------------------------------------------------------
    start = time.time()
    INFOLDER = './../data/INPUT/Carmen_Input/'
    OUTFOLDER = './../data/INPUT/IMGs/'

    for typedataset in glob.glob(INFOLDER + '*'):
        print("starting to parse folder: ", typedataset)
        split_path = typedataset.split('/')
        name_type_dataset = split_path[len(split_path) - 1]
        print(name_type_dataset)

        for dataset in glob.iglob(INFOLDER + name_type_dataset + '/*'):
            print("starting to parse dataset: ", dataset)
            split_path = dataset.split('/')
            dataset_name = split_path[len(split_path) - 1]
            if not os.path.exists(OUTFOLDER + dataset_name):
                os.mkdir(OUTFOLDER + dataset_name)
            print(dataset_name)

            for png in glob.iglob(INFOLDER + name_type_dataset + "/" + dataset_name + "/*.png"):
                split_path = png.split('/')
                file_name = split_path[len(split_path) - 1]
                print("il nome del file che parso :", file_name)
                if dataset_name == 'Freiburg_Building_079':
                    # convert_imm(png, OUTFOLDER + dataset_name, file_name, angle=4)
                    pass
                elif dataset_name == 'Intel_Reserach_Lab':
                    # convert_imm(png, OUTFOLDER + dataset_name, file_name, angle=-2)
                    pass
                elif dataset_name == 'ubremen-cartesium':
                    pass
                    # convert_imm(png, OUTFOLDER + dataset_name, file_name, angle=-20)
                else:
                    convert_imm(png, OUTFOLDER + dataset_name, file_name, angle=0)
        end = time.time()
        print("total time: ", end - start)


if __name__ == '__main__':
    main()
