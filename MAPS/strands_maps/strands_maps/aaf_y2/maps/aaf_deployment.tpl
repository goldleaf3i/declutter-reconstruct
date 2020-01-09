- meta:
    map: aaf_winter
    node: Ambulanz
    pointset: aaf_deployment
    tag:
    - walking_group_resting_point
  node:
    edges:
    - action: human_aware_navigation
      edge_id: Ambulanz_Lift3
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Lift3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: Ambulanz_WayPoint9
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint9
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: Ambulanz_WayPoint67
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint67
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: Ambulanz_WayPoint4
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint4
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: Ambulanz_WayPoint3
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint3
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: Ambulanz
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.713457008534
        x: 0.0
        y: 0.0
        z: 0.700699005974
      position:
        x: -8.99294710017
        y: 13.3805303437
        z: -3.46944695195e-18
    verts:
    - x: 1.39999997616
      y: 0.600000023842
    - x: 0.600000023842
      y: 1.39999997616
    - x: -0.600000023842
      y: 1.39999997616
    - x: -1.39999997616
      y: 0.600000023842
    - x: -1.39999997616
      y: -0.600000023842
    - x: -0.600000023842
      y: -1.39999997616
    - x: 0.600000023842
      y: -1.39999997616
    - x: 1.39999997616
      y: -0.600000023842
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    contains:
    - at_node: true
      category: office
      description: 'Cafeteria '
      name: Cafeteria
    - at_node: true
      category: office
      description: 'Cafeteria '
      name: Cafeteria
    map: aaf_winter
    node: Cafeteria
    pointset: aaf_deployment
    tag:
    - InfoTerminal
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: Cafeteria_WayPoint26
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint26
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: Cafeteria_WayPoint49
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint49
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: Cafeteria
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.999297499657
        x: -8.47546004934e-07
        y: -1.59967225954e-06
        z: -0.0374762415886
      position:
        x: -3.61710739136
        y: -19.6873531342
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 1.0
    - x: -2.09999990463
      y: 1.0
    - x: -2.5
      y: 0.287000000477
    - x: -2.5
      y: -0.287000000477
    - x: -2.09999990463
      y: -1.0
    - x: 0.287000000477
      y: -1.0
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: ChargingPoint
    pointset: aaf_deployment
    tag:
    - recording_white_list
    - InfoTerminal
  node:
    edges:
    - action: undocking
      edge_id: ChargingPoint_Station
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Station
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: '"{\"topic\":\"/battery_state\",\"field\":\"charging\", \"val\":
      true}"'
    map: aaf_winter
    name: ChargingPoint
    pointset: aaf_deployment
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: 0.0
        y: 0.0
        z: 0.0
    verts:
    - x: 0.25
      y: 0.689999997616
    - x: -0.0217320006341
      y: 0.686251997948
    - x: -0.424313008785
      y: 0.526346981525
    - x: -0.516050994396
      y: -0.431477993727
    - x: -0.0680480003357
      y: -0.675751984119
    - x: 0.25
      y: -0.689999997616
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: Eingang
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: Eingang_WayPoint8
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint8
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: Eingang_WayPoint81
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint81
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: Eingang_WayPoint2
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: Eingang_WayPoint86
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint86
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: Eingang_WayPoint90
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint90
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: Eingang
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.957854390144
        x: -1.4125117076e-08
        y: 8.98950602846e-09
        z: 0.287254244089
      position:
        x: -7.05829906464
        y: -3.7966132164
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -0.689999997616
      y: 0.287000000477
    - x: -0.689999997616
      y: -0.287000000477
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.287000000477
      y: -0.689999997616
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: Meeting Rooms
      description: Seminarraum 1
      name: EG-0-089
    - at_node: true
      category: office
      description: Seminarraum 1
      name: EG-0-089
    - at_node: true
      category: office
      description: Seminarraum 1
      name: Seminarraum 1
    map: aaf_winter
    node: Feuerloescher
    pointset: aaf_deployment
    tag:
    - Safety_Point
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: Feuerloescher_WayPoint28
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint28
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: Feuerloescher_WayPoint39
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint39
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: Feuerloescher_WayPoint85
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint85
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: Feuerloescher
    pointset: aaf_deployment
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -24.4536209106
        y: -28.9840812683
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 1.0
    - x: -1.20793533325
      y: 0.994871139526
    - x: -1.63641929626
      y: 0.343675613403
    - x: -1.64218521118
      y: -0.33579826355
    - x: -1.27022361755
      y: -1.02252960205
    - x: 0.287000000477
      y: -1.0
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: Frisoer
    pointset: aaf_deployment
    tag:
    - InfoTerminal
    - walking_group_resting_point
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: Frisoer_WayPoint26
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint26
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: Frisoer_WayPoint35
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint35
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: Frisoer_WayPoint17
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint17
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: Frisoer
    pointset: aaf_deployment
    pose:
      orientation:
        w: -0.719454705715
        x: 6.83911238752e-08
        y: -3.88494889592e-08
        z: -0.694539308548
      position:
        x: -5.64644289017
        y: -15.3256530762
        z: 6.93889390391e-18
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -0.689999997616
      y: 0.287000000477
    - x: -0.689999997616
      y: -0.287000000477
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.287000000477
      y: -0.689999997616
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: aaf_winter
    node: Kapelle
    pointset: aaf_deployment
    tag:
    - walking_group_resting_point
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: Kapelle_WayPoint14
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint14
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: Kapelle_WayPoint76
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint76
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: Kapelle
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.999976634979
        x: 0.0
        y: 0.0
        z: -0.00683394586667
      position:
        x: -5.57808113098
        y: -55.3480606079
        z: -3.46944695195e-18
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -0.689999997616
      y: 0.287000000477
    - x: -0.689999997616
      y: -0.287000000477
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.287000000477
      y: -0.689999997616
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    contains:
    - at_node: true
      category: office
      description: Kindergarten
      name: Kindergarten
    map: aaf_winter
    node: Kindergarten
    pointset: aaf_deployment
    tag:
    - InfoTerminal
  node:
    edges:
    - action: human_aware_navigation
      edge_id: Kindergarten_WayPoint88
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint88
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: Kindergarten
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.822060406208
        x: 1.48499923469e-09
        y: 7.8955331162e-09
        z: 0.569400250912
      position:
        x: -2.85582613945
        y: 52.4765319824
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -0.689999997616
      y: 0.287000000477
    - x: -0.689999997616
      y: -0.287000000477
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.287000000477
      y: -0.689999997616
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: Meeting Rooms
      description: Konferenzraum 1
      name: EG-0-084
    - at_node: true
      category: Meeting Rooms
      description: Konferenzraum 2
      name: EG-0-081
    - at_node: true
      category: office
      description: Konferenzraum 1
      name: EG-0-084
    - at_node: true
      category: office
      description: Konferenzraum 1
      name: Konferenzraum 1
    - at_node: true
      category: office
      description: Konferenzraum 2
      name: EG-0-081
    - at_node: true
      category: office
      description: Konferenzraum 2
      name: Konferenzraum 2
    map: aaf_winter
    node: Konferenzraum
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: Konferenzraum_WayPoint62
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint62
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: Konferenzraum_WayPoint63
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint63
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: Konferenzraum
    pointset: aaf_deployment
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -33.8894309998
        y: -40.8297042847
        z: 0.0
    verts:
    - x: 1.39288711548
      y: 0.487236022949
    - x: 0.800000011921
      y: 1.14999997616
    - x: -0.20000000298
      y: 1.14999997616
    - x: -0.800000011921
      y: 0.5
    - x: -0.800000011921
      y: -0.5
    - x: -0.20000000298
      y: -1.14999997616
    - x: 0.800000011921
      y: -1.14999997616
    - x: 1.36157608032
      y: -0.446544647217
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: office
      description: Lift zu Station St. Edith, Stiege 2
      name: Lift zu Station St. Edith, Stiege 2
    - at_node: true
      category: office
      description: Lift zu Station St. Jakob, Stiege 1
      name: Lift zu Station St. Jakob, Stiege 1
    map: aaf_winter
    node: Lift1
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: Lift1_WayPoint58
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint58
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: Lift1_Teekueche
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Teekueche
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: Lift1_WayPoint76
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint76
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: Lift1_WayPoint34
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint34
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: Lift1
    pointset: aaf_deployment
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -4.60352754593
        y: -64.6765899658
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.278663158417
      y: 1.13172149658
    - x: -1.73732757568
      y: 1.13121032715
    - x: -2.5
      y: 0.287000000477
    - x: -2.5
      y: -0.287000000477
    - x: -1.75118398666
      y: -0.939521789551
    - x: 0.287000000477
      y: -1.0
    - x: 0.675132751465
      y: -0.377586364746
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: office
      description: Lift zu Station St. Hildegard, Stiege 3
      name: Lift zu Station St. Hildegard, Stiege 3
    - at_node: true
      category: office
      description: Lift zu Station St. Ladislaus, Stiege 2
      name: Lift zu Station St. Ladislaus, Stiege 2
    - at_node: true
      category: office
      description: Lift zu Station St. Aaron, Stiege 1
      name: Lift zu Station St. Aaron, Stiege 1
    map: aaf_winter
    node: Lift2
    pointset: aaf_deployment
    tag:
    - InfoTerminal
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: Lift2_WayPoint7
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint7
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: Lift2_WayPoint50
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint50
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: Lift2
    pointset: aaf_deployment
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -3.89205050468
        y: -30.01197052
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 1.0
    - x: -1.28778529167
      y: 0.99813079834
    - x: -1.76562857628
      y: 0.35878944397
    - x: -1.78998494148
      y: -0.338274002075
    - x: -1.40314936638
      y: -0.991004943848
    - x: 0.287000000477
      y: -1.0
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: office
      description: Lift zu Station St. Restituta, Stiege 3
      name: Lift zu Station St. Restituta, Stiege 3
    - at_node: true
      category: office
      description: Lift zu Station St. Teresa, Stiege 2
      name: Lift zu Station St. Teresa, Stiege 2
    - at_node: true
      category: office
      description: Lift zu Station St. Anton, Stiege 1
      name: Lift zu Station St. Anton, Stiege 1
    map: aaf_winter
    node: Lift3
    pointset: aaf_deployment
  node:
    edges:
    - action: human_aware_navigation
      edge_id: Lift3_WayPoint4
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint4
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: Lift3_Ambulanz
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Ambulanz
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: Lift3_WayPoint80
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint80
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: Lift3_WayPoint89
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint89
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: Lift3
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.711562395096
        x: -4.79508877049e-08
        y: 1.29308785901e-08
        z: 0.702622950077
      position:
        x: -3.07095980644
        y: 16.5949172974
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 1.0
    - x: -1.57701611519
      y: 0.975242614746
    - x: -2.18265604973
      y: 0.314596176147
    - x: -2.19782853127
      y: -0.442846298218
    - x: -1.60649943352
      y: -1.12133312225
    - x: 0.284325838089
      y: -1.11358356476
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: Rezeption
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: Rezeption_WayPoint86
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint86
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: Rezeption_WayPoint90
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint90
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: Rezeption
    pointset: aaf_deployment
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -2.16215610504
        y: -7.7111992836
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -0.689999997616
      y: 0.287000000477
    - x: -0.689999997616
      y: -0.287000000477
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.287000000477
      y: -0.689999997616
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: Station
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: docking
      edge_id: Station_ChargingPoint
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: ChargingPoint
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: Station_WayPoint2
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint2
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: Station
    pointset: aaf_deployment
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -1.57624900341
        y: 0.0
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -0.689999997616
      y: 0.287000000477
    - x: -0.689999997616
      y: -0.287000000477
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.287000000477
      y: -0.689999997616
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: Teekueche
    pointset: aaf_deployment
    tag:
    - walking_group_resting_point
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: Teekueche_Lift1
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Lift1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: Teekueche_WayPoint34
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint34
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: Teekueche
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.868030011654
        x: 2.58581316359e-08
        y: 8.55547277467e-09
        z: -0.496511787176
      position:
        x: -5.82997512817
        y: -69.1491394043
        z: -3.46944695195e-18
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -0.689999997616
      y: 0.287000000477
    - x: -0.69000005722
      y: -0.287002563477
    - x: -0.245953559875
      y: -0.497200012207
    - x: 0.278338909149
      y: -0.497161865234
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: aaf_winter
    node: WalkingGruppeStart
    pointset: aaf_deployment
    tag:
    - walking_group_resting_point
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WalkingGruppeStart_WayPoint42
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint42
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WalkingGruppeStart_WayPoint46
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint46
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WalkingGruppeStart
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.999932587147
        x: -3.93082260075e-08
        y: 1.21395045127e-08
        z: 0.0116127431393
      position:
        x: -20.441411972
        y: 52.0862770081
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.269729614258
      y: 0.465614318848
    - x: -0.297801971436
      y: 0.478912353516
    - x: -1.01566314697
      y: 0.196086883545
    - x: -1.06070899963
      y: -0.835369110107
    - x: -0.340950012207
      y: -1.08728408813
    - x: 0.323738098145
      y: -1.04442214966
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint11
    pointset: aaf_deployment
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint11_WayPoint20
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint20
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint11_WayPoint64
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint64
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint11
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.724685370922
        x: 7.60727303373e-09
        y: 1.3922312192e-08
        z: 0.689079880714
      position:
        x: -3.02485466003
        y: 29.3245601654
        z: 0.0
    verts:
    - x: 0.752340316772
      y: 0.283372879028
    - x: 0.23423910141
      y: 1.25244522095
    - x: -1.47252750397
      y: 1.29448127747
    - x: -2.06192731857
      y: 0.615579605103
    - x: -2.08051919937
      y: -0.767694473267
    - x: -1.59517145157
      y: -1.30656814575
    - x: 0.243122339249
      y: -1.34774017334
    - x: 0.722059726715
      y: -0.644010543823
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: office
      description: Kapelle
      name: Kapelle (P. Michael Lidy)
    map: aaf_winter
    node: WayPoint12
    pointset: aaf_deployment
    tag:
    - InfoTerminal
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint12_WayPoint7
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint7
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint12_WayPoint66
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint66
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint12
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.155743062496
        x: 5.64959563576e-08
        y: -1.01903303573e-08
        z: -0.987797737122
      position:
        x: -7.70069026947
        y: -37.4513053894
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -0.689999997616
      y: 0.287000000477
    - x: -0.689999997616
      y: -0.287000000477
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.287000000477
      y: -0.689999997616
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint13
    pointset: aaf_deployment
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint13_WayPoint65
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint65
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint13_WayPoint68
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint68
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint13
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.0273829996586
        x: 0.0
        y: -0.0
        z: -0.99962502718
      position:
        x: -2.79709529877
        y: 45.2342300415
        z: 0.0
    verts:
    - x: 0.762092113495
      y: 0.551303863525
    - x: 0.600000023842
      y: 1.39999997616
    - x: -0.600000023842
      y: 1.39999997616
    - x: -1.96759414673
      y: 0.579322814941
    - x: -1.9739985466
      y: -0.721343994141
    - x: -0.600000023842
      y: -1.39999997616
    - x: 0.600000023842
      y: -1.39999997616
    - x: 0.734139919281
      y: -0.595756530762
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint14
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint14_WayPoint51
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint51
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint14_WayPoint76
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint76
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint14_Kapelle
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Kapelle
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint14
    pointset: aaf_deployment
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -4.34247875214
        y: -53.0790786743
        z: 0.0
    verts:
    - x: 0.705940961838
      y: 0.591075897217
    - x: 0.443964004517
      y: 1.3844833374
    - x: -0.600000023842
      y: 1.39999997616
    - x: -1.62117958069
      y: 0.591609954834
    - x: -1.60642671585
      y: -0.58166885376
    - x: -0.600000023842
      y: -1.39999997616
    - x: 0.337928771973
      y: -1.39226150513
    - x: 0.662553548813
      y: -0.561740875244
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint15
    pointset: aaf_deployment
    tag:
    - InfoTerminal
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint15_WayPoint4
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint4
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint15_WayPoint67
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint67
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: WayPoint15_WayPoint89
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint89
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint15
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.00730723049492
        x: -9.27379289806e-07
        y: -8.20363595722e-07
        z: -0.999973297119
      position:
        x: -5.61466217041
        y: 9.73586750031
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -0.689999997616
      y: 0.287000000477
    - x: -0.689999997616
      y: -0.287000000477
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.287000000477
      y: -0.689999997616
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint16
    pointset: aaf_deployment
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint16_WayPoint18
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint18
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint16_WayPoint25
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint25
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint16
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.999437689781
        x: -1.5298856626e-10
        y: 2.16569806533e-09
        z: -0.0335304588079
      position:
        x: -28.7461032867
        y: 12.6456918716
        z: 0.0
    verts:
    - x: 1.20000004768
      y: 0.550000011921
    - x: 0.40000000596
      y: 1.20000004768
    - x: -0.40000000596
      y: 1.20000004768
    - x: -1.20000004768
      y: 0.550000011921
    - x: -1.20000004768
      y: -0.319999992847
    - x: -0.281944274902
      y: -0.730903625488
    - x: 0.283451080322
      y: -0.723961830139
    - x: 1.20000004768
      y: -0.319999992847
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint17
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint17_WayPoint26
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint26
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint17_WayPoint35
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint35
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint17_Frisoer
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Frisoer
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: WayPoint17_WayPoint90
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint90
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint17
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.975516438484
        x: 1.54958428311e-08
        y: -6.00485705604e-09
        z: -0.219926774502
      position:
        x: -3.38856053352
        y: -13.1820850372
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -0.689999997616
      y: 0.287000000477
    - x: -0.689999997616
      y: -0.287000000477
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.287000000477
      y: -0.689999997616
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint18
    pointset: aaf_deployment
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint18_WayPoint16
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint16
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint18_WayPoint27
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint27
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint18
    pointset: aaf_deployment
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -33.2936248779
        y: 12.7022476196
        z: 0.0
    verts:
    - x: 1.5
      y: 0.5
    - x: 0.800000011921
      y: 1.14999997616
    - x: -0.20000000298
      y: 1.14999997616
    - x: -0.800000011921
      y: 0.5
    - x: -0.800000011921
      y: -0.5
    - x: -0.187755584717
      y: -0.909284591675
    - x: 0.80394744873
      y: -0.926500320435
    - x: 1.5
      y: -0.5
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint19
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint19_WayPoint7
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint7
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint19_WayPoint21
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint21
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint19
    pointset: aaf_deployment
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -12.1347770691
        y: -35.2211914062
        z: 0.0
    verts:
    - x: 1.20000004768
      y: 0.550000011921
    - x: 0.40000000596
      y: 1.20000004768
    - x: -0.40000000596
      y: 1.20000004768
    - x: -1.20000004768
      y: 0.550000011921
    - x: -1.20000004768
      y: -0.319999992847
    - x: -0.297966957092
      y: -0.601940155029
    - x: 0.274749755859
      y: -0.632385253906
    - x: 1.20000004768
      y: -0.319999992847
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint2
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint2_Station
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Station
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint2_WayPoint8
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint8
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint2_Eingang
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Eingang
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint2_WayPoint86
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint86
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint2_WayPoint87
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint87
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint2
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.965134501457
        x: -3.53026265998e-08
        y: 3.43140413861e-08
        z: 0.26175442338
      position:
        x: -2.57436752319
        y: -1.52772498131
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -0.689999997616
      y: 0.287000000477
    - x: -0.689999997616
      y: -0.287000000477
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.287000000477
      y: -0.689999997616
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint20
    pointset: aaf_deployment
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint20_WayPoint11
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint11
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint20_WayPoint65
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint65
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint20
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.706932246685
        x: 0.0
        y: -0.0
        z: -0.70728123188
      position:
        x: -2.94248151779
        y: 35.3803596497
        z: 0.0
    verts:
    - x: 0.674275875092
      y: 0.512817382812
    - x: -0.131835222244
      y: 1.15883636475
    - x: -1.3737578392
      y: 1.14457321167
    - x: -2.01228141785
      y: 0.467746734619
    - x: -2.0354218483
      y: -0.730102539062
    - x: -1.30709838867
      y: -1.27138137817
    - x: -0.0500500202179
      y: -1.26566314697
    - x: 0.692212820053
      y: -0.55672454834
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint21
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint21_WayPoint19
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint19
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint21_WayPoint28
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint28
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint21
    pointset: aaf_deployment
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -18.1310119629
        y: -34.5781860352
        z: 0.0
    verts:
    - x: 1.24672698975
      y: 0.352046966553
    - x: 0.418016433716
      y: 0.882850646973
    - x: -0.270380020142
      y: 0.886371612549
    - x: -0.901039123535
      y: 0.372741699219
    - x: -0.915374755859
      y: -0.315849304199
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.287000000477
      y: -0.689999997616
    - x: 1.19500732422
      y: -0.463935852051
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint25
    pointset: aaf_deployment
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint25_WayPoint9
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint9
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint25_WayPoint16
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint16
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint25
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.0125089967623
        x: -0.0
        y: 0.0
        z: 0.999921739101
      position:
        x: -26.0720825195
        y: 12.6501054764
        z: 0.0
    verts:
    - x: 1.20000004768
      y: 0.550000011921
    - x: 0.40000000596
      y: 1.20000004768
    - x: -0.40000000596
      y: 1.20000004768
    - x: -1.20000004768
      y: 0.550000011921
    - x: -1.20000004768
      y: -0.319999992847
    - x: -0.29030418396
      y: -0.796493530273
    - x: 0.280014038086
      y: -0.790477752686
    - x: 1.20000004768
      y: -0.319999992847
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: office
      description: Frisoer
      name: Frisoer
    - at_node: true
      category: office
      description: Frisoer
      name: EG-0-009
    map: aaf_winter
    node: WayPoint26
    pointset: aaf_deployment
    tag:
    - InfoTerminal
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint26_Cafeteria
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Cafeteria
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint26_WayPoint17
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint17
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint26_Frisoer
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Frisoer
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: WayPoint26_WayPoint90
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint90
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint26
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.999847590923
        x: -2.3696215129e-11
        y: -2.10216244412e-09
        z: -0.017459275201
      position:
        x: -4.61222934723
        y: -16.6268978119
        z: 0.0
    verts:
    - x: 1.06194376945
      y: 0.335718154907
    - x: 0.621205091476
      y: 1.14028739929
    - x: -0.0511045455933
      y: 1.16327762604
    - x: -0.689999997616
      y: 0.287000000477
    - x: -0.689999997616
      y: -0.287000000477
    - x: -0.375057697296
      y: -1.43139266968
    - x: 0.509951591492
      y: -1.41951179504
    - x: 1.05762267113
      y: -0.580972671509
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint27
    pointset: aaf_deployment
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint27_WayPoint18
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint18
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint27_WayPoint36
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint36
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint27
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.666335582733
        x: -3.30245297775e-09
        y: 2.68083377719e-09
        z: -0.745652019978
      position:
        x: -33.2821464539
        y: 16.3397102356
        z: 0.0
    verts:
    - x: 1.27490997314
      y: 0.508308410645
    - x: 0.800000011921
      y: 1.14999997616
    - x: -0.20000000298
      y: 1.14999997616
    - x: -0.800000011921
      y: 0.5
    - x: -0.800000011921
      y: -0.5
    - x: -0.20000000298
      y: -1.14999997616
    - x: 0.800000011921
      y: -1.14999997616
    - x: 1.25407028198
      y: -0.442055702209
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint28
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint28_WayPoint21
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint21
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint28_Feuerloescher
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Feuerloescher
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint28_WayPoint85
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint85
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint28
    pointset: aaf_deployment
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -24.5758266449
        y: -34.3348007202
        z: 0.0
    verts:
    - x: 1.35922813416
      y: 0.449073791504
    - x: 0.543073654175
      y: 1.24198532104
    - x: -0.267244338989
      y: 1.27294540405
    - x: -0.855634689331
      y: 0.641307830811
    - x: -0.878433227539
      y: -0.313987731934
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.287000000477
      y: -0.689999997616
    - x: 1.32062339783
      y: -0.510787963867
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint29
    pointset: aaf_deployment
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint29_WayPoint36
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint36
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint29_WayPoint38
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint38
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint29
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.706374406815
        x: 0.0
        y: 0.0
        z: -0.7078384161
      position:
        x: -33.1425857544
        y: 34.4344596863
        z: 0.0
    verts:
    - x: 1.5
      y: 0.5
    - x: 0.800000011921
      y: 1.14999997616
    - x: -0.20000000298
      y: 1.14999997616
    - x: -0.800000011921
      y: 0.5
    - x: -0.800000011921
      y: -0.5
    - x: -0.20000000298
      y: -1.14999997616
    - x: 0.800000011921
      y: -1.14999997616
    - x: 1.5
      y: -0.5
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint3
    pointset: aaf_deployment
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint3_WayPoint9
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint9
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint3_WayPoint67
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint67
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint3_Ambulanz
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Ambulanz
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint3
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.706399917603
        x: -0.0
        y: 0.0
        z: 0.707812905312
      position:
        x: -14.7651510239
        y: 15.4415359497
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -0.689999997616
      y: 0.287000000477
    - x: -0.689999997616
      y: -0.287000000477
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.287000000477
      y: -0.689999997616
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint31
    pointset: aaf_deployment
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint31_WayPoint42
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint42
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint31_WayPoint88
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint88
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint31
    pointset: aaf_deployment
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -12.5664329529
        y: 51.6793823242
        z: 0.0
    verts:
    - x: 1.25
      y: 0.20000000298
    - x: 0.300000011921
      y: 0.699999988079
    - x: -0.300000011921
      y: 0.699999988079
    - x: -1.20000004768
      y: 0.20000000298
    - x: -1.20000004768
      y: -0.600000023842
    - x: -0.599959373474
      y: -1.19038391113
    - x: 0.600000023842
      y: -1.20000004768
    - x: 1.20000004768
      y: -0.699999988079
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: office
      description: 'Infrastruktur: Informations- und Kommunikationstechnologie (IKT)'
      name: EG-0-059
    - at_node: true
      category: person
      description: Leiter Informations- und Kommunikationstechnologie
      name: Walter Rauch
    - at_node: true
      category: department
      description: 'Infrastruktur: Informations- und Kommunikationstechnologie (IKT)'
      name: 'Infrastruktur: Informations- und Kommunikationstechnologie (IKT)'
    map: aaf_winter
    node: WayPoint32
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint32_WayPoint58
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint58
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint32_WayPoint59
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint59
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint32_WayPoint82
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint82
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint32
    pointset: aaf_deployment
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -18.6108760834
        y: -64.4368438721
        z: 0.0
    verts:
    - x: 1.16666662693
      y: 0.5
    - x: 0.5
      y: 1.16666662693
    - x: -0.5
      y: 1.16666662693
    - x: -1.16666662693
      y: 0.5
    - x: -1.16666662693
      y: -0.5
    - x: -0.5
      y: -1.16666662693
    - x: 0.5
      y: -1.16666662693
    - x: 1.16666662693
      y: -0.5
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: office
      description: Institutsdirektion
      name: EG-0-050
    - at_node: true
      category: person
      description: "Sekret\xE4rin Institutsdirektion"
      name: Iris Fichtner
    - at_node: true
      category: person
      description: Assistentin Institutsdirektion
      name: Sabine Arnold
    - at_node: true
      category: person
      description: Institutsdirektor
      name: Wolfgang Huber, MBA, Dr.
    - at_node: true
      category: person
      description: Institutsdirektor
      name: Christoph Gisinger, Univ.- Prof. Dr.
    - at_node: true
      category: department
      description: Institutsdirektion
      name: Institutsdirektion
    map: aaf_winter
    node: WayPoint34
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint34_WayPoint48
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint48
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint34_WayPoint52
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint52
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint34_Teekueche
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Teekueche
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint34_Lift1
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Lift1
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint34
    pointset: aaf_deployment
    pose:
      orientation:
        w: -0.0124353663996
        x: 1.48179568615e-09
        y: 2.71425193432e-09
        z: -0.999922692776
      position:
        x: -4.83801317215
        y: -70.3010559082
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -1.0692820549
      y: 0.30379486084
    - x: -1.1109623909
      y: -0.492897033691
    - x: -0.572141647339
      y: -0.871444702148
    - x: 0.307213306427
      y: -0.909782409668
    - x: 0.669398784637
      y: -0.545196533203
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint35
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint35_WayPoint17
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint17
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint35_Frisoer
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Frisoer
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: WayPoint35_WayPoint90
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint90
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint35
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.019125001505
        x: 0.0
        y: 0.0
        z: -0.999817073345
      position:
        x: -5.75394630432
        y: -11.9373111725
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -0.689999997616
      y: 0.287000000477
    - x: -0.689999997616
      y: -0.287000000477
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.287000000477
      y: -0.689999997616
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint36
    pointset: aaf_deployment
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint36_WayPoint27
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint27
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint36_WayPoint29
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint29
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint36
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.700202405453
        x: 0.0
        y: 0.0
        z: -0.713944375515
      position:
        x: -33.2565727234
        y: 24.2692680359
        z: 0.0
    verts:
    - x: 1.5
      y: 0.5
    - x: 0.800000011921
      y: 1.14999997616
    - x: -0.20000000298
      y: 1.14999997616
    - x: -0.800000011921
      y: 0.5
    - x: -0.800000011921
      y: -0.5
    - x: -0.20000000298
      y: -1.14999997616
    - x: 0.800000011921
      y: -1.14999997616
    - x: 1.5
      y: -0.5
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint38
    pointset: aaf_deployment
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint38_WayPoint29
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint29
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint38_WayPoint40
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint40
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint38
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.999997138977
        x: 0.0
        y: -0.0
        z: -0.00240300036967
      position:
        x: -33.0229148865
        y: 42.1191291809
        z: 0.0
    verts:
    - x: 1.5
      y: 0.5
    - x: 0.800000011921
      y: 1.14999997616
    - x: -0.20000000298
      y: 1.14999997616
    - x: -0.800000011921
      y: 0.5
    - x: -0.800000011921
      y: -0.5
    - x: -0.20000000298
      y: -1.14999997616
    - x: 0.800000011921
      y: -1.14999997616
    - x: 1.5
      y: -0.5
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: Meeting Rooms
      description: Seminarraum 2
      name: EG-0-089
    - at_node: true
      category: office
      description: Seminarraum 2
      name: Seminarraum 2
    map: aaf_winter
    node: WayPoint39
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint39_Feuerloescher
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Feuerloescher
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint39_WayPoint63
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint63
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint39
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.999883294106
        x: -1.44899514609e-09
        y: -1.42058720343e-09
        z: 0.015278570354
      position:
        x: -33.5544319153
        y: -28.7904090881
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -0.689999997616
      y: 0.287000000477
    - x: -0.689999997616
      y: -0.287000000477
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.287000000477
      y: -0.689999997616
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint4
    pointset: aaf_deployment
    tag:
    - InfoTerminal
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint4_Lift3
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Lift3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint4_WayPoint15
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint15
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint4_Ambulanz
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Ambulanz
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: WayPoint4_WayPoint89
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint89
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint4
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.10507645458
        x: 3.18262429744e-08
        y: -2.41871447315e-08
        z: -0.994464159012
      position:
        x: -5.37725496292
        y: 12.4433097839
        z: 0.0
    verts:
    - x: 1.39999997616
      y: 0.600000023842
    - x: 0.600000023842
      y: 1.39999997616
    - x: -0.600000023842
      y: 1.39999997616
    - x: -1.39999997616
      y: 0.600000023842
    - x: -1.39999997616
      y: -0.600000023842
    - x: -0.600000023842
      y: -1.39999997616
    - x: 0.600000023842
      y: -1.39999997616
    - x: 1.39999997616
      y: -0.600000023842
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint40
    pointset: aaf_deployment
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint40_WayPoint38
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint38
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint40_WayPoint44
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint44
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint40
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.653383851051
        x: -0.0
        y: -0.0
        z: -0.757026791573
      position:
        x: -32.9804725647
        y: 45.9264602661
        z: 0.0
    verts:
    - x: 1.23200416565
      y: 0.421539306641
    - x: 0.800000011921
      y: 1.14999997616
    - x: -0.20000000298
      y: 1.14999997616
    - x: -0.800000011921
      y: 0.5
    - x: -0.800000011921
      y: -0.5
    - x: -0.20000000298
      y: -1.14999997616
    - x: 0.800000011921
      y: -1.14999997616
    - x: 1.24000930786
      y: -0.450805664062
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint42
    pointset: aaf_deployment
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint42_WayPoint31
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint31
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint42_WalkingGruppeStart
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WalkingGruppeStart
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint42
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.00327499886043
        x: 0.0
        y: 0.0
        z: -0.999994635582
      position:
        x: -17.3073444366
        y: 51.7695579529
        z: 0.0
    verts:
    - x: 1.25
      y: 0.20000000298
    - x: 0.300000011921
      y: 0.699999988079
    - x: -0.300000011921
      y: 0.699999988079
    - x: -1.20000004768
      y: 0.20000000298
    - x: -1.20000004768
      y: -0.600000023842
    - x: -0.600000023842
      y: -1.20000004768
    - x: 0.600000023842
      y: -1.20000004768
    - x: 1.20000004768
      y: -0.699999988079
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: office
      description: Infrastruktur
      name: EG-0-074
    - at_node: true
      category: person
      description: "Gesch\xE4ftsf\xFChrer Infrastruktur, technischer Direktor Pflegekrankenh\xE4\
        user"
      name: Gerald Stohlmann
    - at_node: true
      category: department
      description: Infrastruktur
      name: Infrastruktur
    map: aaf_winter
    node: WayPoint43
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint43_WayPoint47
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint47
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint43_WayPoint60
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint60
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint43_WayPoint59
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint59
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint43
    pointset: aaf_deployment
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -34.8620834351
        y: -64.1054077148
        z: 0.0
    verts:
    - x: 1.37631225586
      y: 0.625438690186
    - x: 0.878379821777
      y: 1.14779663086
    - x: 0.100364685059
      y: 1.15721893311
    - x: -0.711498260498
      y: 0.393856048584
    - x: -0.750202178955
      y: -0.809646606445
    - x: -0.277305603027
      y: -1.26351165771
    - x: 0.665222167969
      y: -1.26374053955
    - x: 1.36267471313
      y: -0.529022216797
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: Meeting Rooms
      description: "Kardinal Sch\xF6nborn Raum"
      name: "Kardinal Sch\xF6nborn Raum"
    - at_node: true
      category: Meeting Rooms
      description: Ignatius Nascher Raum
      name: EG-0-078
    - at_node: true
      category: office
      description: "Kardinal Sch\xF6nborn Raum"
      name: "Kardinal Sch\xF6nborn Raum"
    - at_node: true
      category: office
      description: 'Ignatius Nascher Raum '
      name: Ignatius Nascher Raum
    - at_node: true
      category: office
      description: Ignatius Nascher Raum
      name: EG-0-078
    map: aaf_winter
    node: WayPoint44
    pointset: aaf_deployment
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint44_WayPoint40
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint40
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint44_WayPoint46
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint46
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint44
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.996849298477
        x: 3.27274030099e-09
        y: -5.99294924797e-09
        z: 0.0793193802238
      position:
        x: -32.6426467896
        y: 52.0747566223
        z: 0.0
    verts:
    - x: 1.5
      y: 0.5
    - x: 0.800000011921
      y: 1.14999997616
    - x: -0.20000000298
      y: 1.14999997616
    - x: -0.800000011921
      y: 0.5
    - x: -0.800000011921
      y: -0.5
    - x: -0.20000000298
      y: -1.14999997616
    - x: 0.800000011921
      y: -1.14999997616
    - x: 1.5
      y: -0.5
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: office
      description: "Institut: Lehre und Forschung, Akademie f\xFCr Altersforschung"
      name: EG-0-066
    - at_node: true
      category: person
      description: klinischer Psychologe, Projektmanager
      name: "Tobias K\xF6rtner, MMag. Dr."
    - at_node: true
      category: person
      description: Projektmanagerin
      name: Daliah Batko-Klein, Mag.
    - at_node: true
      category: person
      description: Projektmanagerin
      name: Denise Hebesberger, MMag.
    - at_node: true
      category: person
      description: Personal
      name: Markus Weninger
    - at_node: true
      category: department
      description: "Akademie f\xFCr Altersforschung"
      name: "Akademie f\xFCr Altersforschung"
    map: aaf_winter
    node: WayPoint45
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint45_WayPoint54
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint54
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint45_WayPoint82
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint82
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint45
    pointset: aaf_deployment
    pose:
      orientation:
        w: -0.700730443001
        x: 1.37718769722e-09
        y: -9.57149581815e-10
        z: 0.713426172733
      position:
        x: -20.9937534332
        y: -69.7903289795
        z: 0.0
    verts:
    - x: 0.842296600342
      y: 0.205101013184
    - x: 0.300000011921
      y: 0.699999988079
    - x: -0.300000011921
      y: 0.699999988079
    - x: -1.20000004768
      y: 0.20000000298
    - x: -1.20000004768
      y: -0.600000023842
    - x: -0.600000023842
      y: -1.20000004768
    - x: 0.600000023842
      y: -1.20000004768
    - x: 0.808828353882
      y: -0.670387268066
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint46
    pointset: aaf_deployment
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint46_WalkingGruppeStart
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WalkingGruppeStart
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint46_WayPoint44
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint44
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint46
    pointset: aaf_deployment
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -28.8552360535
        y: 51.973361969
        z: 0.0
    verts:
    - x: 1.25
      y: 0.20000000298
    - x: 0.300000011921
      y: 0.699999988079
    - x: -0.300000011921
      y: 0.699999988079
    - x: -1.20000004768
      y: 0.20000000298
    - x: -1.20000004768
      y: -0.600000023842
    - x: -0.593288421631
      y: -1.09483718872
    - x: 0.597763061523
      y: -1.09474182129
    - x: 1.20000004768
      y: -0.699999988079
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: office
      description: Kommunikation
      name: EG-0-071
    - at_node: true
      category: person
      description: Leiterin Reinigungs- und Serviceteam
      name: Gorica Popovic
    - at_node: true
      category: person
      description: Leiterin Kommunikation
      name: Eva Bauer
    - at_node: true
      category: person
      description: Kommunikation
      name: Scilla Steiner
    - at_node: true
      category: person
      description: Leiterin Fundraising
      name: Sabine Schmid
    - at_node: true
      category: person
      description: Kommunikation
      name: Karine Edhofer
    - at_node: true
      category: department
      description: Kommunikation
      name: Kommunikation
    map: aaf_winter
    node: WayPoint47
    pointset: aaf_deployment
    tag:
    - Safety_Point
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint47_WayPoint43
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint43
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint47_WayPoint57
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint57
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint47_WayPoint83
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint83
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint47
    pointset: aaf_deployment
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -35.0097961426
        y: -69.4095611572
        z: 0.0
    verts:
    - x: 1.43511962891
      y: 0.455787658691
    - x: 0.841159820557
      y: 1.14156341553
    - x: -0.12731552124
      y: 1.16034698486
    - x: -0.781253814697
      y: 0.525665283203
    - x: -0.781402587891
      y: -0.531532287598
    - x: -0.228439331055
      y: -1.17304229736
    - x: 0.850528717041
      y: -1.16026306152
    - x: 1.41603088379
      y: -0.512634277344
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: office
      description: "Gesch\xE4ftsf\xFChrung Pflegeheime"
      name: EG-0-057
    - at_node: true
      category: person
      description: "stv. Gesch\xE4ftsf\xFChrerin Pflegeheime"
      name: Margit Kitzler, MBA, MAS
    - at_node: true
      category: department
      description: "Gesch\xE4ftsf\xFChrung Pflegeheime"
      name: "Gesch\xE4ftsf\xFChrung Pflegeheime"
    map: aaf_winter
    node: WayPoint48
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint48_WayPoint34
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint34
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint48_WayPoint53
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint53
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint48
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.71877092123
        x: 0.0
        y: 0.0
        z: -0.695246934891
      position:
        x: -10.8369636536
        y: -69.9566192627
        z: 0.0
    verts:
    - x: 1.26299667358
      y: 0.189392089844
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -1.22010993958
      y: 0.214050292969
    - x: -1.24252223969
      y: -0.61311340332
    - x: -0.640020370483
      y: -1.13850402832
    - x: 0.626588821411
      y: -1.16320800781
    - x: 1.24433708191
      y: -0.686698913574
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: office
      description: Sozialarbeit
      name: EG-0-010
    - at_node: true
      category: person
      description: BA (Sozialarbeiterin)
      name: "Sabine Kr\xF6ll"
    - at_node: true
      category: department
      description: Sozialarbeit
      name: Sozialarbeit
    map: aaf_winter
    node: WayPoint49
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint49_WayPoint50
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint50
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint49_Cafeteria
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Cafeteria
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint49
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.992908775806
        x: 0.0
        y: 0.0
        z: 0.11887896806
      position:
        x: -3.84223747253
        y: -22.7357635498
        z: 0.0
    verts:
    - x: 0.870000004768
      y: 0.579999983311
    - x: 0.600000023842
      y: 1.39999997616
    - x: -0.600000023842
      y: 1.39999997616
    - x: -1.60000002384
      y: 0.600000023842
    - x: -1.60000002384
      y: -0.579999983311
    - x: -0.596853733063
      y: -0.818891525269
    - x: 0.523896694183
      y: -0.85066986084
    - x: 0.870000004768
      y: -0.579999983311
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: office
      description: Aufnahme
      name: EG-0-012
    - at_node: true
      category: person
      description: Aufnahmemanagerin, Koordination Ehrenamtliche MitarbeiterInnen
      name: Maria Gebert
    - at_node: true
      category: department
      description: Aufnahme
      name: Aufnahme
    map: aaf_winter
    node: WayPoint50
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint50_WayPoint49
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint49
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint50_Lift2
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Lift2
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint50
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.995898842812
        x: 0.0
        y: 0.0
        z: -0.0904739871621
      position:
        x: -3.84329152107
        y: -24.8165225983
        z: 0.0
    verts:
    - x: 0.870000004768
      y: 0.579999983311
    - x: 0.523751974106
      y: 0.948560714722
    - x: -0.596748113632
      y: 0.984481811523
    - x: -1.60000002384
      y: 0.600000023842
    - x: -1.60000002384
      y: -0.579999983311
    - x: -0.600000023842
      y: -1.39999997616
    - x: 0.600000023842
      y: -1.39999997616
    - x: 0.870000004768
      y: -0.579999983311
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: office
      description: Pflegedirektion
      name: EG-0-034
    - at_node: true
      category: person
      description: MA, Assistentin Pflegedirektion
      name: Lisa Weigert, Mag.
    - at_node: true
      category: person
      description: DGKS (stv. der Pflegedirektorin)
      name: Gerlinde Weigert
    - at_node: true
      category: person
      description: DGKS (Assistentin Pflegedirektion)
      name: Margareta Reichel
    - at_node: true
      category: person
      description: Pflegedirektorin
      name: Claudia Fida, Mag.
    - at_node: true
      category: person
      description: "Gesch\xE4ftsf\xFChrung Pflegekrankenh\xE4user"
      name: Eva Mutz-Amon
    - at_node: true
      category: department
      description: Pflegedirektion
      name: Pflegedirektion
    map: aaf_winter
    node: WayPoint51
    pointset: aaf_deployment
    tag:
    - recording_white_list
    - walking_group_pause
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint51_WayPoint14
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint14
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint51_WayPoint66
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint66
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint51
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.999999582767
        x: 0.0
        y: 0.0
        z: 0.000932999595534
      position:
        x: -4.26487350464
        y: -46.8287162781
        z: 0.0
    verts:
    - x: 0.87299656868
      y: 0.57596206665
    - x: 0.600000023842
      y: 1.39999997616
    - x: -0.600000023842
      y: 1.39999997616
    - x: -1.62117958069
      y: 0.591609954834
    - x: -1.60642671585
      y: -0.58166885376
    - x: -0.600000023842
      y: -1.39999997616
    - x: 0.600000023842
      y: -1.39999997616
    - x: 0.868632555008
      y: -0.583183288574
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: office
      description: "Gesch\xE4ftsf\xFChrung Pflegeheime"
      name: EG-0-054
    - at_node: true
      category: person
      description: "Gesch\xE4ftsf\xFChrer Pflegeheime"
      name: Florian Pressl, Mag.
    - at_node: true
      category: department
      description: "Gesch\xE4ftsf\xFChrung Pflegeheime"
      name: "Gesch\xE4ftsf\xFChrung Pflegeheime"
    map: aaf_winter
    node: WayPoint52
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint52_WayPoint34
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint34
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint52
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.0610299967229
        x: 0.0
        y: 0.0
        z: 0.998135924339
      position:
        x: -5.48410606384
        y: -72.1273574829
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -0.689999997616
      y: 0.287000000477
    - x: -0.689999997616
      y: -0.287000000477
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.287000000477
      y: -0.689999997616
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: office
      description: "Verwaltungsdirektion/Gesch\xE4ftsf\xFChrung Pflegekrankenh\xE4\
        user"
      name: EG-0-062
    - at_node: true
      category: person
      description: "Gesch\xE4ftsf\xFChrer Pflegekrankenh\xE4user, Verwaltungsdirektor"
      name: Harald Sidak, Mag., MBA
    - at_node: true
      category: department
      description: Verwaltungsdirektion
      name: Verwaltungsdirektion
    map: aaf_winter
    node: WayPoint53
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint53_WayPoint48
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint48
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint53_WayPoint82
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint82
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint53
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.705435812473
        x: 2.91110668904e-09
        y: 1.52112444862e-09
        z: -0.70877379179
      position:
        x: -15.7874002457
        y: -69.8553390503
        z: 0.0
    verts:
    - x: 1.22501277924
      y: 0.19401550293
    - x: 0.300000011921
      y: 0.699999988079
    - x: -0.300000011921
      y: 0.699999988079
    - x: -1.18515300751
      y: 0.214096069336
    - x: -1.20000004768
      y: -0.600000023842
    - x: -0.600000023842
      y: -1.20000004768
    - x: 0.600000023842
      y: -1.20000004768
    - x: 1.20000004768
      y: -0.699999988079
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: office
      description: "Institut: Lehre und Forschung, Akademie f\xFCr Altersforschung"
      name: EG-0-067
    - at_node: true
      category: person
      description: Leiter Lehre und Forschung
      name: "J\xFCrgen Pripfl, Mag., Dr."
    - at_node: true
      category: department
      description: Lehre und Forschung, Institut
      name: Lehre und Forschung, Institut
    map: aaf_winter
    node: WayPoint54
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint54_WayPoint45
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint45
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint54_WayPoint55
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint55
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint54
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.689705789089
        x: 0.0
        y: 0.0
        z: -0.724089741707
      position:
        x: -23.8141422272
        y: -69.6471328735
        z: 0.0
    verts:
    - x: 1.25
      y: 0.20000000298
    - x: 0.300000011921
      y: 0.699999988079
    - x: -0.299999237061
      y: 0.699996948242
    - x: -1.14408874512
      y: 0.183662414551
    - x: -1.20000004768
      y: -0.600000023842
    - x: -0.600000023842
      y: -1.20000004768
    - x: 0.600000023842
      y: -1.20000004768
    - x: 1.20000004768
      y: -0.699999988079
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: office
      description: "Qualit\xE4ts- und Umweltmanagement"
      name: EG-0-068
    - at_node: true
      category: person
      description: "Qualit\xE4ts- und Projektmanagerin"
      name: Evamaria Tieber, Mag.
    - at_node: true
      category: person
      description: "Qualit\xE4ts- und Umweltmanagerin"
      name: Marika Imre, MSc.
    - at_node: true
      category: department
      description: "Qualit\xE4ts- und Umweltmanagement"
      name: "Qualit\xE4ts- und Umweltmanagement"
    map: aaf_winter
    node: WayPoint55
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint55_WayPoint54
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint54
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint55_WayPoint56
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint56
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint55
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.725379705429
        x: -7.95147503396e-09
        y: 2.60417487574e-09
        z: -0.688348948956
      position:
        x: -26.2058944702
        y: -69.5568008423
        z: 0.0
    verts:
    - x: 1.08754920959
      y: 0.0812835693359
    - x: 0.300000011921
      y: 0.699999988079
    - x: -0.300000011921
      y: 0.699999988079
    - x: -1.20000004768
      y: 0.20000000298
    - x: -1.20000004768
      y: -0.600000023842
    - x: -0.600000023842
      y: -1.20000004768
    - x: 0.600000023842
      y: -1.20000004768
    - x: 1.04600524902
      y: -0.691802978516
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: office
      description: "Qualit\xE4ts- und Umweltmanagement"
      name: EG-0-069
    - at_node: true
      category: person
      description: "Leiterin Qualit\xE4ts- und Umweltmanagement"
      name: Veronika Schauer, DI, MSc, MBA
    - at_node: true
      category: department
      description: "Qualit\xE4ts- und Umweltmanagement"
      name: "Qualit\xE4ts- und Umweltmanagement"
    map: aaf_winter
    node: WayPoint56
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint56_WayPoint55
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint55
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint56_WayPoint83
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint83
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint56
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.730494081974
        x: 0.0
        y: 0.0
        z: -0.682919025421
      position:
        x: -29.0436649323
        y: -69.4811935425
        z: 0.0
    verts:
    - x: 1.25
      y: 0.20000000298
    - x: 0.300000011921
      y: 0.699999988079
    - x: -0.300000011921
      y: 0.699999988079
    - x: -1.20000004768
      y: 0.20000000298
    - x: -1.20000004768
      y: -0.600000023842
    - x: -0.600000023842
      y: -1.20000004768
    - x: 0.600000023842
      y: -1.20000004768
    - x: 1.20000004768
      y: -0.699999988079
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: office
      description: Organisationskommunikation und Strategie
      name: EG-0-070
    - at_node: true
      category: person
      description: Leitung Organisationskommunikation und Strategie
      name: Christian Zwittnig, Mag.
    - at_node: true
      category: person
      description: "Qualit\xE4ts- und Umweltmanagement"
      name: Birgit Staribacher, MSc
    - at_node: true
      category: department
      description: Organisationskommunikation und Strategie
      name: Organisationskommunikation und Strategie
    map: aaf_winter
    node: WayPoint57
    pointset: aaf_deployment
    tag:
    - InfoTerminal
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint57_WayPoint47
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint47
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint57
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.0723733082414
        x: 1.29127144533e-07
        y: -1.93040520458e-07
        z: 0.997377634048
      position:
        x: -35.1121902466
        y: -74.4446487427
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -0.689999997616
      y: 0.287000000477
    - x: -0.689999997616
      y: -0.287000000477
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.287000000477
      y: -0.689999997616
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: office
      description: "Infrastruktur: K\xFCchenbetrieb"
      name: EG-0-058
    - at_node: true
      category: person
      description: "Gesch\xE4ftsf\xFChrer SANA-Catering"
      name: Peter Zillner
    - at_node: true
      category: person
      description: Wirtschaftsbetriebe
      name: "Sabine Gst\xF6ttenmayer"
    - at_node: true
      category: department
      description: "Infrastruktur: K\xFCchenbetrieb"
      name: "Infrastruktur: K\xFCchenbetrieb"
    map: aaf_winter
    node: WayPoint58
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint58_WayPoint32
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint32
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint58_Lift1
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Lift1
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint58
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.70009458065
        x: -2.27208429848e-09
        y: -1.97558813753e-09
        z: 0.714050114155
      position:
        x: -14.2660741806
        y: -64.4641571045
        z: 0.0
    verts:
    - x: 1.20000004768
      y: 0.550000011921
    - x: 0.40000000596
      y: 1.20000004768
    - x: -0.40000000596
      y: 1.20000004768
    - x: -1.20000004768
      y: 0.550000011921
    - x: -1.20000004768
      y: -0.319999992847
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.287000000477
      y: -0.689999997616
    - x: 1.20000004768
      y: -0.319999992847
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: office
      description: 'Infrastruktur: Informations- und Kommunikationstechnologie (IKT)'
      name: EG-0-059
    - at_node: true
      category: person
      description: Leiterin Service Desk
      name: Renate Novak
    - at_node: true
      category: person
      description: IKT Service Desk
      name: Helga Schneider
    - at_node: true
      category: person
      description: IKT Service Desk
      name: Werner Koppensteiner
    - at_node: true
      category: department
      description: 'Infrastruktur: Informations- und Kommunikationstechnologie (IKT)'
      name: 'Infrastruktur: Informations- und Kommunikationstechnologie (IKT)'
    map: aaf_winter
    node: WayPoint59
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint59_WayPoint32
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint32
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint59_WayPoint43
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint43
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint59
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.665272593498
        x: 0.0
        y: 0.0
        z: 0.746600568295
      position:
        x: -22.0577297211
        y: -64.3143157959
        z: 0.0
    verts:
    - x: 1.09456253052
      y: 0.560230255127
    - x: 0.420705795288
      y: 1.1042098999
    - x: -0.389209747314
      y: 1.11516571045
    - x: -1.17647361755
      y: 0.549911499023
    - x: -1.21257019043
      y: -0.183746337891
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.287000000477
      y: -0.689999997616
    - x: 1.08960914612
      y: -0.317520141602
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint60
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint60_WayPoint43
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint43
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint60_WayPoint84
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint84
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint60
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.0252820085734
        x: -0.0
        y: -0.0
        z: 0.99968034029
      position:
        x: -34.6749038696
        y: -60.7731552124
        z: -0.0
    verts:
    - x: 1.40716934204
      y: 0.529884338379
    - x: 0.800000011921
      y: 1.14999997616
    - x: -0.20000000298
      y: 1.14999997616
    - x: -0.800000011921
      y: 0.5
    - x: -0.800000011921
      y: -0.5
    - x: -0.20000000298
      y: -1.14999997616
    - x: 0.800000011921
      y: -1.14999997616
    - x: 1.38401412964
      y: -0.450267791748
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: office
      description: Reinigungs- und Serviceteam
      name: EG-0-076
    - at_node: true
      category: person
      description: Leiterin Reinigungs- und Serviceteam
      name: Gorica Popovic
    - at_node: true
      category: person
      description: "Leiter Serviceteam Seeb\xF6ckgasse"
      name: Asmir Tutic
    - at_node: true
      category: department
      description: Reinigungs- und Serviceteam
      name: Reinigungs- und Serviceteam
    map: aaf_winter
    node: WayPoint61
    pointset: aaf_deployment
    tag:
    - recording_white_list
    - walking_group_pause
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint61_WayPoint62
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint62
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint61_WayPoint84
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint84
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint61
    pointset: aaf_deployment
    pose:
      orientation:
        w: -0.0271399896592
        x: 0.0
        y: 0.0
        z: 0.999631643295
      position:
        x: -34.438129425
        y: -54.5093917847
        z: 0.0
    verts:
    - x: 1.5
      y: 0.5
    - x: 0.800000011921
      y: 1.14999997616
    - x: -0.20000000298
      y: 1.14999997616
    - x: -0.800000011921
      y: 0.5
    - x: -0.800000011921
      y: -0.5
    - x: -0.20000000298
      y: -1.14999997616
    - x: 0.800000011921
      y: -1.14999997616
    - x: 1.5
      y: -0.5
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint62
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint62_Konferenzraum
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Konferenzraum
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint62_WayPoint61
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint61
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint62
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.0173690021038
        x: 0.0
        y: 0.0
        z: 0.999849140644
      position:
        x: -34.1767539978
        y: -47.5312080383
        z: -0.0
    verts:
    - x: 1.5
      y: 0.5
    - x: 0.800000011921
      y: 1.14999997616
    - x: -0.20000000298
      y: 1.14999997616
    - x: -0.800000011921
      y: 0.5
    - x: -0.800000011921
      y: -0.5
    - x: -0.20000000298
      y: -1.14999997616
    - x: 0.800000011921
      y: -1.14999997616
    - x: 1.5
      y: -0.5
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint63
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint63_WayPoint39
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint39
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint63_Konferenzraum
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Konferenzraum
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint63
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.0109839960933
        x: -0.0
        y: -0.0
        z: 0.999939680099
      position:
        x: -33.6439743042
        y: -33.0773963928
        z: -0.0
    verts:
    - x: 1.32689285278
      y: 0.46125793457
    - x: 0.800000011921
      y: 1.14999997616
    - x: -0.20000000298
      y: 1.14999997616
    - x: -0.800000011921
      y: 0.5
    - x: -0.800000011921
      y: -0.5
    - x: -0.20000000298
      y: -1.14999997616
    - x: 0.800000011921
      y: -1.14999997616
    - x: 1.30585479736
      y: -0.471271514893
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint64
    pointset: aaf_deployment
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint64_WayPoint11
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint11
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint64_WayPoint80
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint80
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint64
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.970688760281
        x: 0.0
        y: 0.0
        z: -0.240339949727
      position:
        x: -3.07343292236
        y: 25.8168849945
        z: 0.0
    verts:
    - x: 0.870000004768
      y: 0.579999983311
    - x: 0.600000023842
      y: 1.39999997616
    - x: -0.600000023842
      y: 1.39999997616
    - x: -1.96935176849
      y: 0.605735778809
    - x: -1.98751163483
      y: -0.578117370605
    - x: -0.600000023842
      y: -1.39999997616
    - x: 0.600000023842
      y: -1.39999997616
    - x: 0.870000004768
      y: -0.579999983311
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint65
    pointset: aaf_deployment
    tag:
    - walking_group_pause
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint65_WayPoint13
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint13
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint65_WayPoint20
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint20
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint65
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.0392709858716
        x: 0.0
        y: 0.0
        z: 0.999228596687
      position:
        x: -2.8854970932
        y: 40.2525177002
        z: 0.0
    verts:
    - x: 0.87299656868
      y: 0.57596206665
    - x: 0.600000023842
      y: 1.39999997616
    - x: -0.971101522446
      y: 1.43428039551
    - x: -2.01573896408
      y: 0.703147888184
    - x: -2.06661319733
      y: -0.640472412109
    - x: -0.992927312851
      y: -1.33778762817
    - x: 0.600000023842
      y: -1.39999997616
    - x: 0.868632555008
      y: -0.583183288574
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: Meeting Rooms
      description: Konferenzraum 3
      name: EG-0-029
    - at_node: true
      category: office
      description: Konferenzraum 3
      name: EG-0-029
    - at_node: true
      category: office
      description: Konferenzraum 3
      name: Konferenzraum 3
    map: aaf_winter
    node: WayPoint66
    pointset: aaf_deployment
    tag:
    - recording_white_list
    - walking_group_pause
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint66_WayPoint12
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint12
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint66_WayPoint7
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint7
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint66_WayPoint51
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint51
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint66
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.999999284744
        x: 0.0
        y: 0.0
        z: -0.00120700034313
      position:
        x: -4.40361356735
        y: -38.2883033752
        z: 0.0
    verts:
    - x: 1.16666662693
      y: 0.5
    - x: 0.5
      y: 1.16666662693
    - x: -0.5
      y: 1.16666662693
    - x: -1.16666662693
      y: 0.5
    - x: -1.16666662693
      y: -0.5
    - x: -0.5
      y: -1.16666662693
    - x: 0.5
      y: -1.16666662693
    - x: 1.16666662693
      y: -0.5
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: office
      description: Fitnessraum
      name: Fitnessraum
    - at_node: true
      category: office
      description: Fitnessraum
      name: EG-W-108
    map: aaf_winter
    node: WayPoint67
    pointset: aaf_deployment
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint67_WayPoint3
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint67_WayPoint15
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint15
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint67_WayPoint9
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint9
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint67_Ambulanz
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Ambulanz
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint67
    pointset: aaf_deployment
    pose:
      orientation:
        w: -0.726702988148
        x: 1.30640627205e-08
        y: -2.3645517544e-08
        z: 0.686951816082
      position:
        x: -14.15762043
        y: 10.7748727798
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -0.689999997616
      y: 0.287000000477
    - x: -0.689999997616
      y: -0.287000000477
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.287000000477
      y: -0.689999997616
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: office
      description: Lift zu Station St. Lazarus, Stiege 4
      name: Lift zu Station St. Lazarus, Stiege 4
    - at_node: true
      category: office
      description: Lift zu Station St. Petrus, Stiege 3
      name: Lift zu Station St. Petrus, Stiege 3
    - at_node: true
      category: office
      description: Lift zu Station St. Johannes, Stiege 2
      name: Lift zu Station St. Johannes, Stiege 2
    - at_node: true
      category: office
      description: Lift zu Station St. Christoph, Stiege 1
      name: Lift zu Station St. Christoph, Stiege 1
    map: aaf_winter
    node: WayPoint68
    pointset: aaf_deployment
    tag:
    - InfoTerminal
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint68_WayPoint13
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint13
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint68_WayPoint88
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint88
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint68
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.692879676819
        x: -4.96310690323e-08
        y: -1.19887983985e-08
        z: 0.721053242683
      position:
        x: -2.77081632614
        y: 48.4157142639
        z: 0.0
    verts:
    - x: 0.780853867531
      y: 0.571640014648
    - x: 0.600000023842
      y: 1.39999997616
    - x: -0.600000023842
      y: 1.39999997616
    - x: -2.01305866241
      y: 0.628490447998
    - x: -2.01189851761
      y: -0.573238372803
    - x: -0.600000023842
      y: -1.39999997616
    - x: 0.600000023842
      y: -1.39999997616
    - x: 0.764448404312
      y: -0.61421585083
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint69
    pointset: aaf_deployment
    tag:
    - no_go
  node:
    edges: []
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint69
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.719152867794
        x: 0.0
        y: 0.0
        z: 0.694851875305
      position:
        x: -30.5189113617
        y: 15.7205104828
        z: 0.0
    verts:
    - x: 0.877096176147
      y: -0.108691215515
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -0.94446182251
      y: -0.152141571045
    - x: -0.954763412476
      y: -0.706877708435
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.287000000477
      y: -0.689999997616
    - x: 0.871797561646
      y: -0.671094894409
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint7
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint7_Lift2
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Lift2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint7_WayPoint12
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint12
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint7_WayPoint19
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint19
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint7_WayPoint66
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint66
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint7
    pointset: aaf_deployment
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -3.98932671547
        y: -35.1965560913
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.229366540909
      y: 1.25961303711
    - x: -2.10853457451
      y: 1.27072906494
    - x: -2.5
      y: 0.287000000477
    - x: -2.5
      y: -0.287000000477
    - x: -2.09999990463
      y: -1.0
    - x: 0.287000000477
      y: -1.0
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint70
    pointset: aaf_deployment
    tag:
    - no_go
  node:
    edges: []
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint70
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.692434132099
        x: 0.0
        y: 0.0
        z: -0.721481144428
      position:
        x: -28.7689285278
        y: 50.0973854065
        z: 0.0
    verts:
    - x: 1.124792099
      y: 0.62678527832
    - x: -0.0165023803711
      y: 0.641914367676
    - x: -1.30228996277
      y: 0.66431427002
    - x: -2.50409889221
      y: 0.665264129639
    - x: -2.50031661987
      y: -0.823890686035
    - x: -1.34830474854
      y: -0.820583343506
    - x: -0.0230503082275
      y: -0.8454246521
    - x: 1.0995349884
      y: -0.835132598877
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint71
    pointset: aaf_deployment
    tag:
    - no_go
  node:
    edges: []
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint71
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.691410958767
        x: 1.69286851204e-09
        y: 5.13620213027e-09
        z: 0.722461700439
      position:
        x: -7.22298908234
        y: 2.62128829956
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 0.689999997616
    - x: -1.03165721893
      y: 0.713448047638
    - x: -1.4769411087
      y: 0.35835814476
    - x: -1.48307800293
      y: -0.247993946075
    - x: -1.04511356354
      y: -0.5995221138
    - x: 0.287000000477
      y: -0.689999997616
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint72
    pointset: aaf_deployment
    tag:
    - no_go
  node:
    edges: []
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint72
    pointset: aaf_deployment
    pose:
      orientation:
        w: -0.0454279817641
        x: 0.0
        y: 0.0
        z: 0.998967587948
      position:
        x: -35.6251983643
        y: -29.3076267242
        z: -0.0
    verts:
    - x: 1.06303024292
      y: 1.90469932556
    - x: 0.433353424072
      y: 1.90020370483
    - x: -0.345211029053
      y: 1.92873764038
    - x: -0.468170166016
      y: 0.527164459229
    - x: -0.430671691895
      y: -0.352479934692
    - x: -0.305618286133
      y: -1.47210502625
    - x: 0.29899597168
      y: -1.50708961487
    - x: 1.04792404175
      y: -1.51112174988
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint73
    pointset: aaf_deployment
    tag:
    - no_go
  node:
    edges: []
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint73
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.00631100032479
        x: 0.0
        y: 0.0
        z: 0.999980092049
      position:
        x: -30.8626976013
        y: -33.8943023682
        z: 0.0
    verts:
    - x: 0.617666244507
      y: 0.735095977783
    - x: -0.309438705444
      y: 0.71785736084
    - x: -1.26208877563
      y: 0.680992126465
    - x: -1.23872375488
      y: -0.338596343994
    - x: -1.2472076416
      y: -1.22844696045
    - x: -0.355880737305
      y: -1.27857589722
    - x: 0.598316192627
      y: -1.28498458862
    - x: 0.605340957642
      y: -0.286994934082
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint74
    pointset: aaf_deployment
    tag:
    - no_go
  node:
    edges: []
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint74
    pointset: aaf_deployment
    pose:
      orientation:
        w: -0.0339779853821
        x: 0.0
        y: 0.0
        z: 0.999422609806
      position:
        x: -36.2722015381
        y: -66.3787536621
        z: 0.0
    verts:
    - x: 0.545188903809
      y: 0.832626342773
    - x: -0.0592956542969
      y: 0.840118408203
    - x: -0.606605529785
      y: 0.830642700195
    - x: -0.620983123779
      y: -0.232078552246
    - x: -0.625507354736
      y: -1.0895614624
    - x: -0.0471038818359
      y: -1.11895751953
    - x: 0.529792785645
      y: -1.12125396729
    - x: 0.530544281006
      y: -0.174682617188
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint76
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint76_WayPoint14
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint14
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint76_Lift1
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Lift1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint76_Kapelle
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Kapelle
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint76
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.720797002316
        x: 0.0
        y: 0.0
        z: 0.69314622879
      position:
        x: -4.51893234253
        y: -59.4588813782
        z: 6.93889390391e-18
    verts:
    - x: 0.694887399673
      y: 0.581928253174
    - x: 0.42268037796
      y: 1.38475418091
    - x: -0.600000023842
      y: 1.39999997616
    - x: -1.62117958069
      y: 0.591609954834
    - x: -1.60642671585
      y: -0.58166885376
    - x: -0.599999904633
      y: -1.40000152588
    - x: 0.391808509827
      y: -1.4107208252
    - x: 0.671062707901
      y: -0.58784866333
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: aaf_winter
    node: WayPoint8
    pointset: aaf_deployment
    tag:
    - InfoTerminal
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint8_WayPoint2
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint8_Eingang
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Eingang
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint8_WayPoint87
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint87
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint8
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.0386148840189
        x: 4.3825515661e-08
        y: -2.8482135761e-08
        z: -0.99925416708
      position:
        x: -5.66870212555
        y: 4.49572372437
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -0.689999997616
      y: 0.287000000477
    - x: -0.689999997616
      y: -0.287000000477
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.287000000477
      y: -0.689999997616
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint80
    pointset: aaf_deployment
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint80_WayPoint64
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint64
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint80_Lift3
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Lift3
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint80
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.702377080917
        x: 0.0
        y: 0.0
        z: 0.711805045605
      position:
        x: -3.1031935215
        y: 19.1324520111
        z: 1.04083408559e-17
    verts:
    - x: 0.808053016663
      y: 0.572923660278
    - x: 0.600000023842
      y: 1.39999997616
    - x: -0.600000023842
      y: 1.39999997616
    - x: -1.96593976021
      y: 0.724979400635
    - x: -1.954839468
      y: -0.529226303101
    - x: -0.600000023842
      y: -1.39999997616
    - x: 0.600000023842
      y: -1.39999997616
    - x: 0.797771692276
      y: -0.513521194458
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: aaf_winter
    node: WayPoint81
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint81_Eingang
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Eingang
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint81_WayPoint86
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint86
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: WayPoint81_WayPoint90
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint90
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint81
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.917530417442
        x: 0.0
        y: 0.0
        z: -0.397665649652
      position:
        x: -6.94133138657
        y: -9.41677188873
        z: -6.93889390391e-18
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -0.689999997616
      y: 0.287000000477
    - x: -0.689999997616
      y: -0.287000000477
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.287000000477
      y: -0.689999997616
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: aaf_winter
    node: WayPoint82
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint82_WayPoint45
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint45
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint82_WayPoint53
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint53
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint82_WayPoint32
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint32
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint82
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.00837347377092
        x: 2.20238027815e-09
        y: 2.41847986082e-09
        z: 0.999964952469
      position:
        x: -18.7429218292
        y: -69.7655944824
        z: 3.46944695195e-18
    verts:
    - x: 1.16666662693
      y: 0.5
    - x: 0.5
      y: 1.16666662693
    - x: -0.5
      y: 1.16666662693
    - x: -1.16666603088
      y: 0.5
    - x: -1.22974967957
      y: -0.512428283691
    - x: -0.5
      y: -1.16666662693
    - x: 0.5
      y: -1.16666662693
    - x: 1.16666662693
      y: -0.5
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: aaf_winter
    node: WayPoint83
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint83_WayPoint56
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint56
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint83_WayPoint47
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint47
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint83
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.0117424326017
        x: 0.0
        y: 0.0
        z: 0.999931037426
      position:
        x: -32.1701812744
        y: -69.3781814575
        z: 6.93889390391e-18
    verts:
    - x: 1.25
      y: 0.20000000298
    - x: 0.300000011921
      y: 0.699999988079
    - x: -0.300000011921
      y: 0.699999988079
    - x: -1.20000004768
      y: 0.20000000298
    - x: -1.20000004768
      y: -0.600000023842
    - x: -0.600000023842
      y: -1.20000004768
    - x: 0.600000023842
      y: -1.20000004768
    - x: 1.20000004768
      y: -0.699999988079
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: aaf_winter
    node: WayPoint84
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint84_WayPoint61
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint61
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint84_WayPoint60
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint60
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint84
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.706784844398
        x: 0.0
        y: 0.0
        z: 0.707428574562
      position:
        x: -34.5789489746
        y: -57.9749488831
        z: -1.04083408559e-17
    verts:
    - x: 1.5
      y: 0.5
    - x: 0.800000011921
      y: 1.14999997616
    - x: -0.20000000298
      y: 1.14999997616
    - x: -0.800000011921
      y: 0.5
    - x: -0.800000011921
      y: -0.5
    - x: -0.20000000298
      y: -1.14999997616
    - x: 0.800000011921
      y: -1.14999997616
    - x: 1.5
      y: -0.5
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: aaf_winter
    node: WayPoint85
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint85_Feuerloescher
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Feuerloescher
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint85_WayPoint28
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint28
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint85
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.709060966969
        x: 0.0
        y: 0.0
        z: -0.705147147179
      position:
        x: -25.9352455139
        y: -31.7023506165
        z: 0.0
    verts:
    - x: 1.16666662693
      y: 0.5
    - x: 0.5
      y: 1.16666662693
    - x: -0.5
      y: 1.16666662693
    - x: -1.16666662693
      y: 0.5
    - x: -1.16666662693
      y: -0.5
    - x: -0.5
      y: -1.16666662693
    - x: 0.5
      y: -1.16666662693
    - x: 1.16666662693
      y: -0.5
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: aaf_winter
    node: WayPoint86
    pointset: aaf_deployment
    tag:
    - recording_white_list
    - walking_group_pause
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint86_Rezeption
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Rezeption
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint86_WayPoint81
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint81
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint86_WayPoint2
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint86_Eingang
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Eingang
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint86_WayPoint87
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint87
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: WayPoint86_WayPoint90
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint90
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint86
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.724034965038
        x: -1.42983482831e-08
        y: -6.02480998424e-09
        z: 0.689763307571
      position:
        x: -4.37887430191
        y: -5.76346683502
        z: 3.46944695195e-18
    verts:
    - x: 1.39999997616
      y: 0.600000023842
    - x: 0.600000023842
      y: 1.39999997616
    - x: -0.600000023842
      y: 1.39999997616
    - x: -1.39999997616
      y: 0.600000023842
    - x: -1.39999997616
      y: -0.600000023842
    - x: -0.600000023842
      y: -1.39999997616
    - x: 0.600000023842
      y: -1.39999997616
    - x: 1.39999997616
      y: -0.600000023842
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: aaf_winter
    node: WayPoint87
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint87_WayPoint8
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint8
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint87_WayPoint86
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint86
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: Wp87_WP2
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: WayPoint87_WayPoint89
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint89
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint87
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.719633758068
        x: 0.0
        y: 0.0
        z: 0.694353818893
      position:
        x: -3.27583742142
        y: 6.44637823105
        z: 0.0
    verts:
    - x: 0.870000004768
      y: 0.579999983311
    - x: 0.468522071838
      y: 1.0434589386
    - x: -0.545940876007
      y: 1.06233072281
    - x: -1.60000002384
      y: 0.600000023842
    - x: -1.60000002384
      y: -0.579999983311
    - x: -0.600000023842
      y: -1.39999997616
    - x: 0.600000023842
      y: -1.39999997616
    - x: 0.870000004768
      y: -0.579999983311
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: aaf_winter
    node: WayPoint88
    pointset: aaf_deployment
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint88_WayPoint68
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint68
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint88_Kindergarten
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Kindergarten
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint88_WayPoint31
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint31
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint88
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.721053719521
        x: 0.0
        y: 0.0
        z: 0.692879199982
      position:
        x: -3.47267460823
        y: 50.898639679
        z: 2.08166817117e-17
    verts:
    - x: 1.07109546661
      y: 0.291748046875
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.379079580307
      y: 1.03747177124
    - x: -1.33418345451
      y: 0.527526855469
    - x: -1.36449742317
      y: -0.303333282471
    - x: -0.490836858749
      y: -0.839130401611
    - x: 0.522474527359
      y: -0.828811645508
    - x: 1.06883454323
      y: -0.340835571289
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: aaf_winter
    node: WayPoint89
    pointset: aaf_deployment
    tag: []
  node:
    edges:
    - action: move_base
      edge_id: WayPoint89_Lift3
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Lift3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: WayPoint89_WayPoint15
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint15
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: WayPoint89_WayPoint4
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint4
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: WayPoint89_WayPoint87
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint87
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint89
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.719307422638
        x: -1.30438382318e-09
        y: -7.17996329058e-10
        z: 0.694691836834
      position:
        x: -3.22377085686
        y: 8.86365604401
        z: 6.2939170542e-10
    verts:
    - x: 0.870000004768
      y: 0.579999983311
    - x: 0.600000023842
      y: 1.39999997616
    - x: -0.600000023842
      y: 1.39999997616
    - x: -1.4346010685
      y: 0.634890556335
    - x: -1.4334871769
      y: -0.571385383606
    - x: -0.587087869644
      y: -1.06548213959
    - x: 0.408827066422
      y: -1.09079456329
    - x: 0.870000004768
      y: -0.579999983311
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: aaf_winter
    node: WayPoint9
    pointset: aaf_deployment
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint9_WayPoint3
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint9_WayPoint25
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint25
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint9_WayPoint67
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint67
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint9_Ambulanz
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Ambulanz
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint9
    pointset: aaf_deployment
    pose:
      orientation:
        w: -0.0146797690541
        x: -3.89549059676e-09
        y: -2.65630895058e-09
        z: -0.999892234802
      position:
        x: -16.2395706177
        y: 12.3961896896
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.253697395325
      y: 0.947578430176
    - x: -0.271224975586
      y: 0.946372032166
    - x: -1.01836013794
      y: 0.47182559967
    - x: -1.03536224365
      y: -0.326668739319
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.287000000477
      y: -0.689999997616
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint90
    pointset: aaf_deployment
    tag:
    - recording_white_list
  node:
    edges:
    - action: move_base
      edge_id: WayPoint90_Rezeption
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Rezeption
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: WayPoint90_WayPoint35
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint35
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: WayPoint90_WayPoint17
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint17
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: WayPoint90_Eingang
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Eingang
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: WayPoint90_WayPoint81
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint81
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: WayPoint90_WayPoint26
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint26
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: WayPoint90_WayPoint86
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint86
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint90
    pointset: aaf_deployment
    pose:
      orientation:
        w: 0.70440351963
        x: 0.0
        y: 0.0
        z: -0.709799706936
      position:
        x: -4.45981693268
        y: -9.58403396606
        z: 1.66403722746e-09
    verts:
    - x: 1.16666662693
      y: 0.5
    - x: 0.5
      y: 1.16666662693
    - x: -0.5
      y: 1.16666662693
    - x: -1.16666662693
      y: 0.5
    - x: -1.16666662693
      y: -0.5
    - x: -0.5
      y: -1.16666662693
    - x: 0.5
      y: -1.16666662693
    - x: 1.16666662693
      y: -0.5
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
