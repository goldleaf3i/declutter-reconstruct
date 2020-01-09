- meta:
    map: aaf_winter
    node: Ambulanz
    pointset: aaf_y4
    tag:
    - walking_group_resting_point
  node:
    edges:
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.713456988335
        x: 0.0
        y: 0.0
        z: 0.700699031353
      position:
        x: -8.9677696228
        y: 14.7758226395
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
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.999297499657
        x: -8.47546004934e-07
        y: -1.59967225954e-06
        z: -0.0374762415886
      position:
        x: -3.33495616913
        y: -18.9805450439
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.217861175537
      y: 0.705234527588
    - x: -0.293291330338
      y: 0.512968063354
    - x: -0.412653923035
      y: 0.189960479736
    - x: -0.346159696579
      y: -0.442989349365
    - x: -0.18909072876
      y: -0.767858505249
    - x: 0.24898982048
      y: -0.821342468262
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: ChargingPoint
    pointset: aaf_y4
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
    localise_by_topic: '"{\"topic\": \"/battery_state\", \"field\": \"charging\",
      \"val\": true, \"localise_anywhere\": false}"'
    map: aaf_winter
    name: ChargingPoint
    pointset: aaf_y4
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: 0.158634707332
        y: -0.188701212406
        z: 0.0
    verts:
    - x: 0.25
      y: 0.689999997616
    - x: -0.0217320006341
      y: 0.686251997948
    - x: -0.27607023716
      y: 0.488783180714
    - x: -0.253048300743
      y: -0.428524583578
    - x: 0.0646383166313
      y: -0.700166285038
    - x: 0.25
      y: -0.689999997616
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: Eingang
    pointset: aaf_y4
    tag:
    - recording_white_list
  node:
    edges:
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
    - action: human_aware_navigation
      edge_id: Eingang_WayPoint90
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint90
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: Eingang
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.957854390144
        x: -1.4125117076e-08
        y: 8.98950602846e-09
        z: 0.287254244089
      position:
        x: -7.0219783783
        y: -5.47585725784
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
    pointset: aaf_y4
    tag:
    - Safety_Point
    - recording_white_list
    - InfoTerminal
  node:
    edges:
    - action: human_aware_navigation
      edge_id: Feuerloescher_WayPoint85
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint85
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: Feuerloescher_Seminarraum
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Seminarraum
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: Feuerloescher
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.958506166935
        x: 1.77501462417e-08
        y: -1.5019843147e-09
        z: -0.285072028637
      position:
        x: -25.176990509
        y: -30.4581413269
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 1.0
    - x: -0.584428787231
      y: 0.873273849487
    - x: -0.945541381836
      y: 0.443534851074
    - x: -0.852548599243
      y: -0.250186920166
    - x: -0.481731414795
      y: -0.801063537598
    - x: 0.287000000477
      y: -1.0
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: Frisoer
    pointset: aaf_y4
    tag:
    - InfoTerminal
    - walking_group_resting_point
    - recording_white_list
    - frisoer0
    - Frisoer
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
    pointset: aaf_y4
    pose:
      orientation:
        w: -0.719454705715
        x: 6.83911238752e-08
        y: -3.88494889592e-08
        z: -0.694539308548
      position:
        x: -5.40502595901
        y: -14.7691421509
        z: 6.93889390391e-18
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.387445926666
      y: 1.46399307251
    - x: -0.247507572174
      y: 1.6085319519
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
    pointset: aaf_y4
    tag:
    - walking_group_resting_point
    - recording_white_list
    - kapelle0
    - Kapelle
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.999976634979
        x: 0.0
        y: 0.0
        z: -0.00683394586667
      position:
        x: -5.27220678329
        y: -55.1697120667
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
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.822060406208
        x: 1.48499923469e-09
        y: 7.8955331162e-09
        z: 0.569400250912
      position:
        x: -2.45788621902
        y: 52.5569229126
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
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -33.7877197266
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
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -4.30595588684
        y: -64.5867156982
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
    pointset: aaf_y4
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: Lift2_WayPoint50
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint50
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: Lift2_WayPoint111
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint111
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: Lift2
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.999961316586
        x: -3.47188433558e-09
        y: 1.98239735738e-09
        z: -0.0087982295081
      position:
        x: -3.44961738586
        y: -30.0068073273
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
    pointset: aaf_y4
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
      edge_id: Lift3_WayPoint80
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint80
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: Lift3_WayPoint89
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint89
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: Lift3
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.711562395096
        x: -4.79508877049e-08
        y: 1.29308785901e-08
        z: 0.702622950077
      position:
        x: -2.57833623886
        y: 16.5886878967
        z: 0.0
    verts:
    - x: 0.463251829147
      y: 0.313812255859
    - x: 0.14497089386
      y: 0.536291122437
    - x: -0.205717563629
      y: 0.498611450195
    - x: -0.416840314865
      y: 0.173406600952
    - x: -0.419910907745
      y: -0.177085876465
    - x: -0.23854637146
      y: -0.529779434204
    - x: 0.186591625214
      y: -0.505592346191
    - x: 0.470621585846
      y: -0.19197845459
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: Rezeption
    pointset: aaf_y4
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
    - action: human_aware_navigation
      edge_id: Rezeption_WayPoint91
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint91
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: Rezeption
    pointset: aaf_y4
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -2.37842726707
        y: -3.99033880234
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
    node: Seminarraum
    pointset: aaf_y4
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: Seminarraum_Feuerloescher
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Feuerloescher
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: Seminarraum_WayPoint39
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint39
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: Seminarraum_WayPoint85
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint85
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: Seminarraum
    pointset: aaf_y4
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -27.0613174438
        y: -28.8279724121
        z: 0.108
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
    node: Station
    pointset: aaf_y4
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
    - action: human_aware_navigation
      edge_id: Station_WayPoint91
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint91
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: Station
    pointset: aaf_y4
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -1.57624900341
        y: -0.0894761681557
        z: 0.0
    verts:
    - x: 1.3427066803
      y: 0.324494242668
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.286999940872
      y: 0.689999997616
    - x: -0.689999938011
      y: 0.287000000477
    - x: -0.689999997616
      y: -0.287000000477
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.287000000477
      y: -0.689999997616
    - x: 1.29138338566
      y: -0.353265345097
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: Teekueche
    pointset: aaf_y4
    tag:
    - walking_group_resting_point
    - recording_white_list
    - teekueche4
    - InfoTerminal
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.993691504002
        x: -3.91488041984e-09
        y: 1.07121369552e-08
        z: 0.112148299813
      position:
        x: -6.1858458519
        y: -69.7804107666
        z: -3.46944695195e-18
    verts:
    - x: 0.356476306915
      y: 0.254508972168
    - x: 0.224210739136
      y: 0.499671936035
    - x: -0.218215942383
      y: 0.510375976562
    - x: -0.496354579926
      y: 0.287033081055
    - x: -0.486128807068
      y: -0.10750579834
    - x: -0.217815876007
      y: -0.312301635742
    - x: 0.113525390625
      y: -0.361190795898
    - x: 0.375809669495
      y: -0.210899353027
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: aaf_winter
    node: WalkingGruppeStart
    pointset: aaf_y4
    tag:
    - walking_group_resting_point
    - Start
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.999932587147
        x: -3.93082260075e-08
        y: 1.21395045127e-08
        z: 0.0116127431393
      position:
        x: -20.4394512177
        y: 52.0018692017
        z: 0.0
    verts:
    - x: 0.670650482178
      y: 0.286968231201
    - x: 0.269729614258
      y: 0.465614318848
    - x: -0.297801971436
      y: 0.478912353516
    - x: -0.678966522217
      y: 0.228816986084
    - x: -0.672302246094
      y: -0.0908126831055
    - x: -0.333570480347
      y: -0.2741355896
    - x: 0.13450050354
      y: -0.314830780029
    - x: 0.66322517395
      y: -0.132247924805
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint11
    pointset: aaf_y4
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
    pointset: aaf_y4
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
    - x: 1.21948182583
      y: 0.588884353638
    - x: 0.2221159935
      y: 1.71252822876
    - x: -0.937569141388
      y: 1.68733215332
    - x: -1.67386245728
      y: 0.460214614868
    - x: -1.68717765808
      y: -0.607482910156
    - x: -1.26096153259
      y: -1.33525466919
    - x: 0.243122339249
      y: -1.34774017334
    - x: 1.14662635326
      y: -0.730335235596
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint111
    pointset: aaf_y4
    tag:
    - InfoTerminal
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint111_Lift2
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Lift2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint111_WayPoint7
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint7
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint111
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.721935212612
        x: -9.74382956542e-08
        y: 3.76886845288e-07
        z: 0.691960632801
      position:
        x: -3.54630851746
        y: -31.9720249176
        z: 3.46944695195e-18
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -1.44193816185
      y: 0.605861663818
    - x: -1.79431128502
      y: -0.666902542114
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
      description: Kapelle
      name: Kapelle (P. Michael Lidy)
    map: aaf_winter
    node: WayPoint12
    pointset: aaf_y4
    tag:
    - recording_white_list
    - InfoTerminal
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.155743047595
        x: 5.64959492522e-08
        y: -1.0190328581e-08
        z: -0.987797617912
      position:
        x: -6.83599805832
        y: -36.76404953
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
    pointset: aaf_y4
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
    - action: human_aware_navigation
      edge_id: WayPoint13_WayPoint88
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint88
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint13
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.0273829996586
        x: 0.0
        y: 0.0
        z: -0.99962502718
      position:
        x: -2.79709529877
        y: 45.2342300415
        z: 0.0
    verts:
    - x: 1.26998209953
      y: 0.536773681641
    - x: 0.600000023842
      y: 1.39999997616
    - x: -0.600000023842
      y: 1.39999997616
    - x: -1.52103710175
      y: 0.650856018066
    - x: -1.53412008286
      y: -1.13920211792
    - x: -0.76094865799
      y: -1.97005462646
    - x: 0.707150936127
      y: -1.93978500366
    - x: 1.20488250256
      y: -1.09508514404
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint14
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -4.26699018478
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
    pointset: aaf_y4
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
    - action: human_aware_navigation
      edge_id: WayPoint15_WayPoint89
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint89
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint15
    pointset: aaf_y4
    pose:
      orientation:
        w: -0.00607455288991
        x: -9.1848289685e-07
        y: -8.3590344957e-07
        z: -0.99998152256
      position:
        x: -5.75021314621
        y: 9.72982120514
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
    pointset: aaf_y4
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
    pointset: aaf_y4
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
    - x: 0.529397964478
      y: 1.40852069855
    - x: -0.56972694397
      y: 1.40880870819
    - x: -1.20944976807
      y: 0.883955001831
    - x: -1.22361183167
      y: -0.350680351257
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
    pointset: aaf_y4
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
    - action: human_aware_navigation
      edge_id: WayPoint17_WayPoint90
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint90
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint17
    pointset: aaf_y4
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
    pointset: aaf_y4
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint18_WayPoint16
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint16
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint18
    pointset: aaf_y4
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -33.1684570312
        y: 12.7022476196
        z: 0.0
    verts:
    - x: 1.48795890808
      y: 0.868615150452
    - x: 0.809028625488
      y: 1.69031047821
    - x: -0.202602386475
      y: 1.68800258636
    - x: -0.800000011921
      y: 0.5
    - x: -0.800000011921
      y: -0.5
    - x: -0.187969207764
      y: -0.793702125549
    - x: 0.831363677979
      y: -0.771829605103
    - x: 1.5
      y: -0.5
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint19
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -12.1347770691
        y: -34.7988471985
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
    - x: -0.50387096405
      y: -0.872966766357
    - x: 0.282202720642
      y: -0.892784118652
    - x: 1.20000004768
      y: -0.319999992847
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint2
    pointset: aaf_y4
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
      edge_id: WayPoint2_WayPoint91
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint91
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint2
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.965134501457
        x: -3.53026265998e-08
        y: 3.43140413861e-08
        z: 0.26175442338
      position:
        x: -2.54394507408
        y: -1.44856035709
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
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.706932246685
        x: 0.0
        y: 0.0
        z: -0.70728123188
      position:
        x: -2.94248151779
        y: 35.3803596497
        z: 0.0
    verts:
    - x: 1.16246116161
      y: 0.787216186523
    - x: 0.376788377762
      y: 1.8426399231
    - x: -0.998016357422
      y: 1.85283660889
    - x: -1.64033222198
      y: 0.535869598389
    - x: -1.64120006561
      y: -0.398090362549
    - x: -1.12413787842
      y: -1.83687973022
    - x: 0.132864236832
      y: -1.90528869629
    - x: 1.13741779327
      y: -0.764652252197
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint21
    pointset: aaf_y4
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
    pointset: aaf_y4
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
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.0125089967623
        x: 0.0
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
    pointset: aaf_y4
    tag:
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
    - action: human_aware_navigation
      edge_id: WayPoint26_WayPoint90
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint90
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint26
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.999847590923
        x: -2.3696215129e-11
        y: -2.10216244412e-09
        z: -0.017459275201
      position:
        x: -3.99558711052
        y: -16.6484413147
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
    node: WayPoint28
    pointset: aaf_y4
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
      edge_id: WayPoint28_WayPoint85
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint85
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint28
    pointset: aaf_y4
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -23.8317165375
        y: -34.4866065979
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
    node: WayPoint3
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.706399917603
        x: 0.0
        y: 0.0
        z: 0.707812905312
      position:
        x: -13.6504917145
        y: 15.4437637329
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
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -12.5664329529
        y: 51.0491523743
        z: 0.0
    verts:
    - x: 1.18652820587
      y: 0.614650726318
    - x: 0.667958259583
      y: 1.25458526611
    - x: -0.506317138672
      y: 1.32166671753
    - x: -1.1958026886
      y: 0.601852416992
    - x: -1.20503330231
      y: -0.204906463623
    - x: -0.603554725647
      y: -0.617748260498
    - x: 0.615698814392
      y: -0.701225280762
    - x: 1.18424987793
      y: -0.295490264893
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
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -18.1841087341
        y: -64.2910919189
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
      description: Sekretaerin Institutsdirektion
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
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: -0.0124353663996
        x: 1.48179568615e-09
        y: 2.71425193432e-09
        z: -0.999922692776
      position:
        x: -4.45247983932
        y: -70.3194046021
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
    pointset: aaf_y4
    tag:
    - recording_white_list
    - InfoTerminal
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
    - action: human_aware_navigation
      edge_id: WayPoint35_WayPoint90
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint90
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint35
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.019125001505
        x: 0.0
        y: 0.0
        z: -0.999817073345
      position:
        x: -5.62324523926
        y: -11.9323091507
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
      description: Seminarraum 2
      name: EG-0-089
    - at_node: true
      category: office
      description: Seminarraum 2
      name: Seminarraum 2
    map: aaf_winter
    node: WayPoint39
    pointset: aaf_y4
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint39_WayPoint63
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint63
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint39_Seminarraum
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Seminarraum
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint39
    pointset: aaf_y4
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
    pointset: aaf_y4
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
    - action: human_aware_navigation
      edge_id: WayPoint4_WayPoint89
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint89
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint4_WayPoint80
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint80
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint4
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.380805552006
        x: 2.19188862616e-08
        y: -1.54895740678e-08
        z: -0.924655199051
      position:
        x: -5.27858161926
        y: 13.3251810074
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
    node: WayPoint42
    pointset: aaf_y4
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
    - action: human_aware_navigation
      edge_id: WayPoint42_WayPoint46
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint46
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint42
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.00327499886043
        x: 0.0
        y: 0.0
        z: -0.999994635582
      position:
        x: -17.8882579803
        y: 51.1030082703
        z: 0.0
    verts:
    - x: 1.41393852234
      y: 0.348720550537
    - x: 0.955688476562
      y: 1.35691452026
    - x: -0.538047790527
      y: 1.36759185791
    - x: -1.19389915466
      y: 0.666263580322
    - x: -1.2350692749
      y: -0.256435394287
    - x: -0.519441604614
      y: -0.525157928467
    - x: 0.673175811768
      y: -0.511413574219
    - x: 1.41547966003
      y: -0.321090698242
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
      description: Geschaeftsfuehrer Infrastruktur, technischer Direktor Pflegekrankenhaeuser
      name: Gerald Stohlmann
    - at_node: true
      category: department
      description: Infrastruktur
      name: Infrastruktur
    map: aaf_winter
    node: WayPoint43
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -34.0913505554
        y: -64.2794113159
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
      description: Kardinal Schoenborn Raum
      name: Kardinal Schoenborn Raum
    - at_node: true
      category: Meeting Rooms
      description: Ignatius Nascher Raum
      name: EG-0-078
    - at_node: true
      category: office
      description: Kardinal Schoenborn Raum
      name: Kardinal Schoenborn Raum
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
    pointset: aaf_y4
  node:
    edges:
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
    pointset: aaf_y4
    pose:
      orientation:
        w: -0.0259004142135
        x: 1.30863684333e-08
        y: 4.18222612097e-08
        z: 0.999664545059
      position:
        x: -32.2286529541
        y: 52.4912147522
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
    - x: -0.240474700928
      y: -1.61655807495
    - x: 0.869201660156
      y: -1.61570739746
    - x: 1.49286460876
      y: -0.965679168701
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: office
      description: 'Institut: Lehre und Forschung, Akademie fuer Altersforschung'
      name: EG-0-066
    - at_node: true
      category: person
      description: Qualitaets und Umweltmanagement
      name: Birgit Staribacher, MSc
    - at_node: true
      category: person
      description: Wissenschaftliche Mitarbeiterin
      name: Victoria Staus, Mag
    - at_node: true
      category: person
      description: Wissenschaftlicher Mitarbeiter
      name: Matei Capatu, MSc
    - at_node: true
      category: department
      description: Akademie fuer Altersforschung
      name: Akademie fuer Altersforschung
    - at_node: true
      category: department
      description: Lehre und Forschung
      name: Lehre und Forschung
    - at_node: true
      category: department
      description: Qualitaets und Umweltmanagement
      name: Qualitaets und Umweltmanagement
    map: aaf_winter
    node: WayPoint45
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: -0.700730443001
        x: 1.37718769722e-09
        y: -9.57149581815e-10
        z: 0.713426172733
      position:
        x: -20.9589118958
        y: -70.0690689087
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
    pointset: aaf_y4
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
    - action: human_aware_navigation
      edge_id: WayPoint46_WayPoint42
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint42
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint46
    pointset: aaf_y4
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -28.1872577667
        y: 51.723449707
        z: 0.0
    verts:
    - x: 1.25
      y: 0.20000000298
    - x: 0.449188232422
      y: 0.939170837402
    - x: -0.528888702393
      y: 0.983860015869
    - x: -1.40254020691
      y: 0.509811401367
    - x: -1.40697097778
      y: -0.59644317627
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
      description: Kommunikation
      name: Virgina Kerbl
    - at_node: true
      category: person
      description: Kommunikation
      name: Juliane Guertler
    - at_node: true
      category: person
      description: Kommunikation
      name: Scilla Poelzl, Mag, MA
    - at_node: true
      category: department
      description: Kommunikation
      name: Kommunikation
    map: aaf_winter
    node: WayPoint47
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -34.2611885071
        y: -69.4095611572
        z: 0.0
    verts:
    - x: 1.24156570435
      y: 0.281784057617
    - x: 0.841159820557
      y: 1.14156341553
    - x: -0.12731552124
      y: 1.16034698486
    - x: -0.781253814697
      y: 0.525665283203
    - x: -0.781402587891
      y: -0.531532287598
    - x: -0.354251861572
      y: -1.52138519287
    - x: 0.807323455811
      y: -1.48891448975
    - x: 1.13079071045
      y: -0.82202911377
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    contains:
    - at_node: true
      category: office
      description: Geschaeftsfuehrung Pflegeheime
      name: EG-0-057
    - at_node: true
      category: person
      description: stv. Geschaeftsfuehrerin Pflegeheime
      name: Elisabeth Jirsa, Mag
    - at_node: true
      category: department
      description: Geschaeftsfuehrung Pflegeheime
      name: Geschaeftsfuehrung Pflegeheime
    map: aaf_winter
    node: WayPoint48
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.71877092123
        x: 0.0
        y: 0.0
        z: -0.695246934891
      position:
        x: -10.8291149139
        y: -70.1924514771
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
      name: Sabine Kroell
    - at_node: true
      category: department
      description: Sozialarbeit
      name: Sozialarbeit
    map: aaf_winter
    node: WayPoint49
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.999899566174
        x: 9.06733532702e-09
        y: 2.01523486787e-09
        z: -0.0141726639122
      position:
        x: -3.30151486397
        y: -22.799249649
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
      category: person
      description: Aufnahme
      name: Daniela Maria Digruber
    - at_node: true
      category: department
      description: Aufnahme
      name: Aufnahme
    map: aaf_winter
    node: WayPoint50
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.999969065189
        x: 1.9493906489e-09
        y: 6.38943475906e-09
        z: 0.00786258187145
      position:
        x: -3.40278625488
        y: -26.2553405762
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
      description: BA, Assistentin Pflegedirektion
      name: Sabrina Gruensteidl
    - at_node: true
      category: person
      description: DGKS (stv. der Pflegedirektorin)
      name: Marie Cris Gambal
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
      description: Geschaeftsfuehrung Pflegekrankenhaeuser
      name: Eva Mutz-Amon
    - at_node: true
      category: department
      description: Pflegedirektion
      name: Pflegedirektion
    map: aaf_winter
    node: WayPoint51
    pointset: aaf_y4
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
    pointset: aaf_y4
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
      description: Geschaeftsfuehrung Pflegeheime
      name: EG-0-054
    - at_node: true
      category: person
      description: Geschaeftsfuehrer Pflegeheime
      name: Florian Pressl, Mag.
    - at_node: true
      category: department
      description: Geschaeftsfuehrung Pflegeheime
      name: Geschaeftsfuehrung Pflegeheime
    map: aaf_winter
    node: WayPoint52
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.0610299967229
        x: 0.0
        y: 0.0
        z: 0.998135924339
      position:
        x: -5.01233434677
        y: -71.5140838623
        z: 0.0
    verts:
    - x: 0.380434989929
      y: 0.151069641113
    - x: 0.164843082428
      y: 0.311546325684
    - x: -0.355508327484
      y: 0.340927124023
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
      description: Verwaltungsdirektion/Geschaeftsfuehrung Pflegekrankenhaeuser
      name: EG-0-062
    - at_node: true
      category: person
      description: Geschaeftsfuehrer Pflegekrankenhaeuser, Verwaltungsdirektor
      name: Harald Sidak, Mag., MBA
    - at_node: true
      category: department
      description: Verwaltungsdirektion
      name: Verwaltungsdirektion
    map: aaf_winter
    node: WayPoint53
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.705435812473
        x: 2.91110668904e-09
        y: 1.52112444862e-09
        z: -0.70877379179
      position:
        x: -15.7889232635
        y: -70.1779022217
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
      description: 'Institut: Lehre und Forschung, Akademie fuer Altersforschung'
      name: EG-0-067
    - at_node: true
      category: person
      description: Leiterin Qualitaets- und Umweltmanagement, Lehre und Forschung
      name: Veronika Schauer, DI, MSc, MBA
    - at_node: true
      category: department
      description: Lehre und Forschung, Institut
      name: Lehre und Forschung, Institut
    map: aaf_winter
    node: WayPoint54
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.689705789089
        x: 0.0
        y: 0.0
        z: -0.724089741707
      position:
        x: -23.6830673218
        y: -70.0385971069
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
      description: Qualitaets- und Umweltmanagement
      name: EG-0-068
    - at_node: true
      category: person
      description: Qualitaets- und Projektmanagerin
      name: Evamaria Tieber, Mag.
    - at_node: true
      category: person
      description: Qualitaets- und Umweltmanagerin
      name: Marika Imre, MSc.
    - at_node: true
      category: department
      description: Qualitaets- und Umweltmanagement
      name: Qualitaets- und Umweltmanagement
    map: aaf_winter
    node: WayPoint55
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.725379705429
        x: -7.95147503396e-09
        y: 2.60417487574e-09
        z: -0.688348948956
      position:
        x: -26.4095897675
        y: -70.0504837036
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
      description: Projektraum
      name: EG-0-069
    - at_node: true
      category: department
      description: Akademie fuer Altersforschung
      name: Akademie fuer Altersforschung
    map: aaf_winter
    node: WayPoint56
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.730494081974
        x: 0.0
        y: 0.0
        z: -0.682919025421
      position:
        x: -29.0079212189
        y: -70.0115585327
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
      category: department
      description: Organisationskommunikation und Strategie
      name: Organisationskommunikation und Strategie
    map: aaf_winter
    node: WayPoint57
    pointset: aaf_y4
    tag:
    - recording_white_list
    - InfoTerminal
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
    pointset: aaf_y4
    pose:
      orientation:
        w: -0.383322685957
        x: 2.37874537845e-08
        y: -2.64208495082e-07
        z: 0.923614501953
      position:
        x: -34.6340293884
        y: -72.3492660522
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
      description: 'Infrastruktur: Kuechenbetrieb'
      name: EG-0-058
    - at_node: true
      category: person
      description: Geschaeftsfuehrer SANA-Catering
      name: Peter Zillner
    - at_node: true
      category: person
      description: Wirtschaftsbetriebe
      name: Sabine Gstoettenmayer
    - at_node: true
      category: department
      description: 'Infrastruktur: Kuechenbetrieb'
      name: 'Infrastruktur: Kuechenbetrieb'
    map: aaf_winter
    node: WayPoint58
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.70009458065
        x: -2.27208429848e-09
        y: -1.97558813753e-09
        z: 0.714050114155
      position:
        x: -14.2678279877
        y: -64.3752975464
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
      name: Rene Steinbach
    - at_node: true
      category: department
      description: 'Infrastruktur: Informations- und Kommunikationstechnologie (IKT)'
      name: 'Infrastruktur: Informations- und Kommunikationstechnologie (IKT)'
    map: aaf_winter
    node: WayPoint59
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.665272593498
        x: 0.0
        y: 0.0
        z: 0.746600568295
      position:
        x: -22.054725647
        y: -64.3402938843
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
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.0252820085734
        x: 0.0
        y: 0.0
        z: 0.99968034029
      position:
        x: -33.9878387451
        y: -60.3452301025
        z: 0.0
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
      description: Leiter Serviceteam Seeboeckgasse
      name: Asmir Tutic
    - at_node: true
      category: department
      description: Reinigungs- und Serviceteam
      name: Reinigungs- und Serviceteam
    map: aaf_winter
    node: WayPoint61
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: -0.0271399896592
        x: 0.0
        y: 0.0
        z: 0.999631643295
      position:
        x: -33.9068489075
        y: -54.4805221558
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
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.0173690021038
        x: 0.0
        y: 0.0
        z: 0.999849140644
      position:
        x: -33.8539810181
        y: -47.542427063
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
    node: WayPoint63
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.0109839960933
        x: 0.0
        y: 0.0
        z: 0.999939680099
      position:
        x: -33.6439743042
        y: -33.0773963928
        z: 0.0
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
    pointset: aaf_y4
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
    pointset: aaf_y4
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
    - x: 1.12453556061
      y: 0.760778427124
    - x: 0.600000023842
      y: 1.39999997616
    - x: -0.600000023842
      y: 1.39999997616
    - x: -1.67567825317
      y: 0.50731086731
    - x: -1.62777900696
      y: -0.541358947754
    - x: -0.600000023842
      y: -1.39999997616
    - x: 0.600000023842
      y: -1.39999997616
    - x: 1.16399240494
      y: -0.591178894043
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint65
    pointset: aaf_y4
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
    pointset: aaf_y4
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
    - x: 1.19898629189
      y: 0.695457458496
    - x: 0.623049259186
      y: 1.66733169556
    - x: -0.927662611008
      y: 1.74319076538
    - x: -1.62772989273
      y: 0.645446777344
    - x: -1.60176610947
      y: -0.520301818848
    - x: -0.978448390961
      y: -1.67639160156
    - x: 0.595733165741
      y: -1.67900085449
    - x: 1.20047080517
      y: -0.61731338501
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
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.999999284744
        x: 0.0
        y: 0.0
        z: -0.00120700034313
      position:
        x: -4.06661701202
        y: -38.2891159058
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
    pointset: aaf_y4
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
    pointset: aaf_y4
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
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.692879676819
        x: -4.96310690323e-08
        y: -1.19887983985e-08
        z: 0.721053242683
      position:
        x: -1.98430407047
        y: 48.4470710754
        z: 0.0
    verts:
    - x: 0.555899143219
      y: 0.318519592285
    - x: 0.324281692505
      y: 1.25634765625
    - x: -0.259983539581
      y: 1.30703735352
    - x: -0.467570543289
      y: 0.313850402832
    - x: -0.463697195053
      y: -0.190589904785
    - x: -0.366636276245
      y: -1.30847167969
    - x: 0.207302927971
      y: -1.34664916992
    - x: 0.503862023354
      y: -0.676319122314
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: aaf_winter
    node: WayPoint69
    pointset: aaf_y4
    tag:
    - no_go
  node:
    edges: []
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint69
    pointset: aaf_y4
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
    pointset: aaf_y4
    tag:
    - recording_white_list
  node:
    edges:
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
    - action: human_aware_navigation
      edge_id: WayPoint7_WayPoint111
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint111
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint7
    pointset: aaf_y4
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
    pointset: aaf_y4
    tag:
    - no_go
  node:
    edges: []
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint70
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.692434132099
        x: 0.0
        y: 0.0
        z: -0.721481144428
      position:
        x: -28.1684379578
        y: 49.9313049316
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
    pointset: aaf_y4
    tag:
    - no_go
    - recording_white_list
  node:
    edges: []
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint71
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.691410958767
        x: 1.69286851204e-09
        y: 5.13620213027e-09
        z: 0.722461700439
      position:
        x: -6.99810838699
        y: 2.36455750465
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
    pointset: aaf_y4
    tag:
    - no_go
    - recording_white_list
  node:
    edges: []
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint72
    pointset: aaf_y4
    pose:
      orientation:
        w: -0.0454279817641
        x: 0.0
        y: 0.0
        z: 0.998967587948
      position:
        x: -35.6017112732
        y: -29.6831474304
        z: 0.0
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
    pointset: aaf_y4
    tag:
    - no_go
    - recording_white_list
  node:
    edges: []
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint73
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.00631100032479
        x: 0.0
        y: 0.0
        z: 0.999980092049
      position:
        x: -31.1291809082
        y: -34.3147277832
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
    pointset: aaf_y4
    tag:
    - no_go
    - recording_white_list
  node:
    edges: []
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint74
    pointset: aaf_y4
    pose:
      orientation:
        w: -0.0339779853821
        x: 0.0
        y: 0.0
        z: 0.999422609806
      position:
        x: -35.9672698975
        y: -66.9696044922
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
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.720797002316
        x: 0.0
        y: 0.0
        z: 0.69314622879
      position:
        x: -4.41782855988
        y: -59.4628372192
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
    pointset: aaf_y4
    tag:
    - InfoTerminal
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint8_WayPoint87
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint87
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint8_WayPoint91
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint91
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint8
    pointset: aaf_y4
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
    pointset: aaf_y4
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
    - action: human_aware_navigation
      edge_id: WayPoint80_WayPoint4
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint4
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint80_WayPoint89
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint89
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint80
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.702377080917
        x: 0.0
        y: 0.0
        z: 0.711805045605
      position:
        x: -3.41478633881
        y: 19.1282958984
        z: 1.04083408559e-17
    verts:
    - x: 1.22976517677
      y: 0.693668365479
    - x: 0.60736322403
      y: 1.83659553528
    - x: -0.689048290253
      y: 1.8366985321
    - x: -1.48230981827
      y: 0.673662185669
    - x: -1.46968173981
      y: -0.472955703735
    - x: -0.600000023842
      y: -1.39999997616
    - x: 0.600000023842
      y: -1.39999997616
    - x: 1.1931142807
      y: -0.733736038208
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: aaf_winter
    node: WayPoint81
    pointset: aaf_y4
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint81_WayPoint86
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint86
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint81_WayPoint90
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint90
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint81
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.917530417442
        x: 0.0
        y: 0.0
        z: -0.397665649652
      position:
        x: -6.9134221077
        y: -8.22089004517
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
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.00837347377092
        x: 2.20238027815e-09
        y: 2.41847986082e-09
        z: 0.999964952469
      position:
        x: -18.3119869232
        y: -70.1494598389
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
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.0117424326017
        x: 0.0
        y: 0.0
        z: 0.999931037426
      position:
        x: -31.8341903687
        y: -69.9450302124
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
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.706784844398
        x: 0.0
        y: 0.0
        z: 0.707428574562
      position:
        x: -33.9756584167
        y: -57.9060783386
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
    pointset: aaf_y4
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
    - action: human_aware_navigation
      edge_id: WayPoint85_Seminarraum
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Seminarraum
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint85
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.709060966969
        x: 0.0
        y: 0.0
        z: -0.705147147179
      position:
        x: -26.315366745
        y: -33.1867141724
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
    pointset: aaf_y4
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
      edge_id: WayPoint86_WayPoint90
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint90
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint86_WayPoint91
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint91
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint86
    pointset: aaf_y4
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
    pointset: aaf_y4
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
      edge_id: WayPoint87_WayPoint89
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint89
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint87_WayPoint91
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint91
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint87
    pointset: aaf_y4
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
    pointset: aaf_y4
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
    - action: human_aware_navigation
      edge_id: WayPoint88_WayPoint13
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint13
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint88
    pointset: aaf_y4
    pose:
      orientation:
        w: 0.631760001183
        x: -5.66703217686e-09
        y: 1.22190990659e-09
        z: 0.775164067745
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
    pointset: aaf_y4
    tag: []
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint89_Lift3
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Lift3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint89_WayPoint15
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint15
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint89_WayPoint4
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint4
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint89_WayPoint87
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint87
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint89_WayPoint80
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint80
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint89
    pointset: aaf_y4
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
    pointset: aaf_y4
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
    pointset: aaf_y4
    pose:
      orientation:
        w: -0.0146797690541
        x: -3.89549059676e-09
        y: -2.65630895058e-09
        z: -0.999892234802
      position:
        x: -16.2356777191
        y: 12.5287179947
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
    pointset: aaf_y4
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint90_WayPoint35
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint35
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint90_WayPoint17
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint17
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint90_Eingang
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Eingang
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint90_WayPoint81
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint81
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint90_WayPoint26
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint26
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint90_WayPoint86
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint86
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint90
    pointset: aaf_y4
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
- meta:
    map: aaf_winter
    node: WayPoint91
    pointset: aaf_y4
    tag:
    - recording_white_list
  node:
    edges:
    - action: human_aware_navigation
      edge_id: WayPoint91_WayPoint8
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint8
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint91_Station
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Station
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint91_WayPoint2
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint91_WayPoint86
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint86
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint91_WayPoint87
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: WayPoint87
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: human_aware_navigation
      edge_id: WayPoint91_Rezeption
      inflation_radius: 0.0
      map_2d: aaf_winter
      node: Rezeption
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: aaf_winter
    name: WayPoint91
    pointset: aaf_y4
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: 0.0
      position:
        x: -4.28451347351
        y: 1.39999997616
        z: 0.0
    verts:
    - x: 1.26503705978
      y: 0.762401461601
    - x: 0.281660079956
      y: 1.46197402477
    - x: -0.684096336365
      y: 1.49093425274
    - x: -1.4952583313
      y: 0.763291239738
    - x: -1.42648983002
      y: -0.558500528336
    - x: -0.673070907593
      y: -1.38247656822
    - x: 0.49510383606
      y: -1.38796806335
    - x: 1.29298686981
      y: -0.761065125465
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
