- meta:
    map: tsc_1701
    node: ChargingPoint
    pointset: tsc_1701
    tag:
    - SafeNode
  node:
    edges:
    - action: undocking
      edge_id: ChargingPoint_Station
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: Station
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: '{"topic": "/battery_state", "field": "charging", "val": true,
      "localise_anywhere": false}'
    map: tsc_1701
    name: ChargingPoint
    pointset: tsc_1701
    pose:
      orientation:
        w: -0.667606055737
        x: 3.17610648892e-08
        y: 8.52405346308e-09
        z: -0.744514763355
      position:
        x: -44.983341217
        y: -5.00732326508
        z: 0.0
    verts:
    - x: 0.811054229736
      y: 0.370504379272
    - x: 0.442470550537
      y: 0.644795894623
    - x: -0.209854125977
      y: 0.718974113464
    - x: -0.818470001221
      y: 0.541288375854
    - x: -0.903408050537
      y: -0.738889217377
    - x: -0.286670684814
      y: -0.845542430878
    - x: 0.3620262146
      y: -0.755453109741
    - x: 0.871604919434
      y: -0.601508617401
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: ChargingPoint1
    pointset: tsc_1701
  node:
    edges:
    - action: undocking
      edge_id: ChargingPoint1_Station1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: Station1
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: '{"topic": "/battery_state", "field": "charging", "val": true,
      "localise_anywhere": false}'
    map: tsc_1701
    name: ChargingPoint1
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.723163425922
        x: -4.49995063434e-08
        y: 3.59731311406e-09
        z: 0.69067710638
      position:
        x: 1.72795200348
        y: -0.96485054493
        z: 0.0
    verts:
    - x: 0.782116174698
      y: 0.244220256805
    - x: -0.0750000029802
      y: 0.689999997616
    - x: -0.614179134369
      y: 0.40061455965
    - x: -0.439700961113
      y: -0.218760728836
    - x: 0.746694326401
      y: -0.275127053261
    - x: 0.676295280457
      y: -0.525501132011
    xy_goal_tolerance: 0.0
    yaw_goal_tolerance: 0.0
- meta:
    map: tsc_1701
    node: CorpActRec1
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: CorpActRec1_CorpLocker1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpLocker1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: CorpActRec1_CorpLocker2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpLocker2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: CorpActRec1_CorpMeetingPod1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpMeetingPod1
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: CorpActRec1
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.235353931785
        x: -5.87054627132e-09
        y: 1.36873099521e-08
        z: 0.971909701824
      position:
        x: -10.0096940994
        y: -14.7674837112
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
    map: tsc_1701
    node: CorpActRec2
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: CorpActRec2_CorpMeetingPod2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpMeetingPod2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: CorpActRec2_CorpActRec3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpActRec3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: CorpActRec2_CorpLocker6
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpLocker6
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: CorpActRec2
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.983080685139
        x: 2.73277649399e-08
        y: 7.99682808861e-09
        z: -0.183173745871
      position:
        x: -19.506690979
        y: -13.4268836975
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -0.55052947998
      y: 0.249984741211
    - x: -0.689999997616
      y: -0.287000000477
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.0319175720215
      y: -0.526589393616
    - x: 0.310968399048
      y: -0.139651298523
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: CorpActRec3
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: CorpActRec3_CorpLocker7
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpLocker7
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: CorpActRec3_CorpActRec2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpActRec2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: CorpActRec3_Quasi1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: Quasi1
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: CorpActRec3
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.976699709892
        x: -3.02445130274e-07
        y: -3.0879968449e-07
        z: 0.214610651135
      position:
        x: -21.1627788544
        y: -13.2755870819
        z: 3.46944695195e-18
    verts:
    - x: 0.424928665161
      y: 0.13498878479
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.164823532104
      y: 0.416516304016
    - x: -2.06680107117
      y: 0.582468986511
    - x: -2.66574287415
      y: -0.42663860321
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.287000000477
      y: -0.689999997616
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: CorpLockInside
    pointset: tsc_1701
  node:
    edges:
    - action: door_wait_and_pass
      edge_id: CorpLockInside_CorpLockOutside
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpLockOutside
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: CorpLockInside_LockCorridor
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: LockCorridor
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: CorpLockInside
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.999994218349
        x: 6.78971590062e-09
        y: -2.85237478082e-09
        z: -0.00340392743237
      position:
        x: -31.6798801422
        y: -12.4369735718
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
    map: tsc_1701
    node: CorpLockOutside
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: CorpLockOutside_CorpLocker8
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpLocker8
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: door_wait_and_pass
      edge_id: CorpLockOutside_CorpLockInside
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpLockInside
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: CorpLockOutside_Quasi1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: Quasi1
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: CorpLockOutside
    pointset: tsc_1701
    pose:
      orientation:
        w: -0.0101355863735
        x: -2.53519027993e-09
        y: 5.53596724018e-09
        z: 0.999948620796
      position:
        x: -28.7497386932
        y: -12.5133695602
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
    map: tsc_1701
    node: CorpLocker1
    pointset: tsc_1701
    tag:
    - Exploration
    - SafeNode
  node:
    edges:
    - action: move_base
      edge_id: CorpLocker1_CorpTransWP4
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpTransWP4
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: CorpLocker1_CorpLocker5
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpLocker5
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: CorpLocker1_CorpActRec1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpActRec1
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: CorpLocker1
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.703141503485
        x: 0.0
        y: 0.0
        z: -0.711049946261
      position:
        x: -8.03508501367
        y: -13.9068553585
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
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: CorpLocker2
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: CorpLocker2_CorpLocker3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpLocker3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: CorpLocker2_CorpActRec1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpActRec1
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: CorpLocker2
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.670123292419
        x: 0.0
        y: 0.0
        z: -0.742249804956
      position:
        x: -11.3981443763
        y: -15.6706542983
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
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: CorpLocker3
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: CorpLocker3_CorpLocker2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpLocker2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: CorpLocker3_CorpLocker4
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpLocker4
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: CorpLocker3
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.626265227795
        x: 0.0
        y: 0.0
        z: -0.779610097408
      position:
        x: -14.6460294724
        y: -15.4970254898
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
    - x: 0.314186692238
      y: -0.610368728638
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: CorpLocker4
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: CorpLocker4_CorpLocker3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpLocker3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: CorpLocker4_CorpMeetingPod2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpMeetingPod2
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: CorpLocker4
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.650153636932
        x: 0.0
        y: 0.0
        z: -0.759802758694
      position:
        x: -17.0188083649
        y: -16.0553016663
        z: 1.38777878078e-17
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
    map: tsc_1701
    node: CorpLocker5
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: CorpLocker5_CorpTransWP4
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpTransWP4
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: CorpLocker5_CorpLocker1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpLocker1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: CorpLocker5_CorpMeetingPod1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpMeetingPod1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: CorpLocker5_CorpLocker6
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpLocker6
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: CorpLocker5
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.733384759579
        x: 0.0
        y: 0.0
        z: 0.67981379393
      position:
        x: -12.8250139585
        y: -11.8150574225
        z: 0.0
    verts:
    - x: 2.12420248985
      y: 0.757437348366
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -1.70060169697
      y: 0.844293236732
    - x: -1.51735889912
      y: -0.778192877769
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.287000000477
      y: -0.689999997616
    - x: 2.1130464077
      y: -0.859259963036
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: CorpLocker6
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: CorpLocker6_CorpLocker5
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpLocker5
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: CorpLocker6_CorpLocker7
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpLocker7
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: CorpLocker6_CorpMeetingPod2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpMeetingPod2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: CorpLocker6_CorpActRec2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpActRec2
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: CorpLocker6
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.773506083692
        x: 0.0
        y: 0.0
        z: 0.63378887533
      position:
        x: -17.4198878553
        y: -11.752541973
        z: -6.93889390391e-18
    verts:
    - x: 1.75619447231
      y: 0.663260877132
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -1.57534563541
      y: 0.700208127499
    - x: -1.24789965153
      y: -0.540242731571
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.287000000477
      y: -0.689999997616
    - x: 1.68800389767
      y: -0.835984766483
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: CorpLocker7
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: CorpLocker7_CorpLocker6
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpLocker6
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: CorpLocker7_CorpLocker8
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpLocker8
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: CorpLocker7_CorpActRec3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpActRec3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: CorpLocker7_Quasi1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: Quasi1
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: CorpLocker7
    pointset: tsc_1701
    pose:
      orientation:
        w: -0.023872256279
        x: -4.47064394393e-08
        y: -2.4300815582e-08
        z: 0.999715030193
      position:
        x: -22.4460487366
        y: -12.0434064865
        z: 1.38777878078e-17
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
    - x: -0.349008560181
      y: -0.404881477356
    - x: 0.207962036133
      y: -0.161112785339
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: CorpLocker8
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: CorpLocker8_CorpLocker7
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpLocker7
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: CorpLocker8_CorpLockOutside
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpLockOutside
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: CorpLocker8_Quasi1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: Quasi1
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: CorpLocker8
    pointset: tsc_1701
    pose:
      orientation:
        w: -0.0153347840533
        x: -3.7829380517e-08
        y: -3.83291478556e-08
        z: 0.999882400036
      position:
        x: -25.6715888977
        y: -12.0156888962
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
    - x: -0.176626205444
      y: -0.254618644714
    - x: 0.250913619995
      y: -0.299545288086
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: CorpMeetingPod1
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: CorpMeetingPod1_CorpLocker5
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpLocker5
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: CorpMeetingPod1_CorpActRec1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpActRec1
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: CorpMeetingPod1
    pointset: tsc_1701
    pose:
      orientation:
        w: -0.99991184473
        x: 2.28068710584e-08
        y: -5.00186381203e-08
        z: -0.0132795358077
      position:
        x: -11.45952034
        y: -13.9057598114
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
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: CorpMeetingPod2
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: CorpMeetingPod2_CorpLocker4
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpLocker4
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: CorpMeetingPod2_CorpActRec2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpActRec2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: CorpMeetingPod2_CorpLocker6
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpLocker6
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: CorpMeetingPod2
    pointset: tsc_1701
    pose:
      orientation:
        w: -0.021525034681
        x: 5.90993295191e-07
        y: -1.0900092775e-06
        z: -0.999768316746
      position:
        x: -18.2887496948
        y: -13.9868993759
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000656128
      y: 0.689999580383
    - x: -0.287000000477
      y: 0.689999997616
    - x: -0.462167739868
      y: 0.206252098083
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
    map: tsc_1701
    node: CorpTransWP1
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: CorpTransWP1_GlassCorridor3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: GlassCorridor3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: door_wait_and_move_base
      edge_id: CorpTransWP1_CorpTransWP2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpTransWP2
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: CorpTransWP1
    pointset: tsc_1701
    pose:
      orientation:
        w: -0.0238483492285
        x: 0.0
        y: 0.0
        z: 0.999715566635
      position:
        x: -3.30064511299
        y: -8.51140499115
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
    map: tsc_1701
    node: CorpTransWP2
    pointset: tsc_1701
  node:
    edges:
    - action: door_wait_and_move_base
      edge_id: CorpTransWP2_CorpTransWP1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpTransWP1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: CorpTransWP2_CorpTransWP4
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpTransWP4
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: CorpTransWP2
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.999811589718
        x: -3.09368708429e-08
        y: 2.42442990128e-08
        z: 0.0194103419781
      position:
        x: -5.72508621216
        y: -8.67802429199
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
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: CorpTransWP4
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: CorpTransWP4_CorpTransWP2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpTransWP2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: CorpTransWP4_CorpLocker1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpLocker1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: CorpTransWP4_CorpLocker5
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpLocker5
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: CorpTransWP4
    pointset: tsc_1701
    pose:
      orientation:
        w: -0.0669775307178
        x: 0.0
        y: 0.0
        z: 0.997754454613
      position:
        x: -5.76317739487
        y: -12.8387651443
        z: 0.0
    verts:
    - x: 1.10981893539
      y: 2.2838640213
    - x: -0.705602169037
      y: 2.36124610901
    - x: -0.945256233215
      y: 0.912775039673
    - x: -0.936521053314
      y: 0.2694272995
    - x: -0.888855457306
      y: -1.08539009094
    - x: -0.791279315948
      y: -4.00800609589
    - x: 1.73583459854
      y: -3.69417858124
    - x: 2.04727458954
      y: -1.36214733124
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: FrontDoor
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: FrontDoor_ReceptionDesk
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: ReceptionDesk
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: FrontDoor_GlassCorridor0
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: GlassCorridor0
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: FrontDoor
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.900246199132
        x: 0.0
        y: 0.0
        z: -0.435381190394
      position:
        x: -7.36709070512
        y: 21.0467153869
        z: -3.46944695195e-18
    verts:
    - x: 1.69312858582
      y: 1.3558229208
    - x: 0.453151702881
      y: 2.80824589729
    - x: -0.987454891205
      y: 1.98343408108
    - x: -0.689999997616
      y: 0.287000000477
    - x: -0.689999997616
      y: -0.287000000477
    - x: 0.0223231352866
      y: -3.00280833244
    - x: 2.41198348999
      y: -2.083786726
    - x: 1.35419845581
      y: -0.0354639366269
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: GlassCorridor0
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: GlassCorridor0_GlassCorridor1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: GlassCorridor1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: GlassCorridor0_FrontDoor
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: FrontDoor
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: GlassCorridor0
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.854417681694
        x: 0.0
        y: 0.0
        z: -0.519586801529
      position:
        x: -4.08666753769
        y: 14.8089733124
        z: -6.93889390391e-18
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.383246898651
      y: 1.87382411957
    - x: -2.25796771049
      y: 1.26640272141
    - x: -1.8476806879
      y: -0.175570055842
    - x: -1.46285068989
      y: -2.38319158554
    - x: 0.248106479645
      y: -2.08087062836
    - x: 0.183622837067
      y: -0.628215789795
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: GlassCorridor1
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: GlassCorridor1_GlassCorridor2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: GlassCorridor2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: GlassCorridor1_HospTriangularTable3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospTriangularTable3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: GlassCorridor1_HospTriangularTable4
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospTriangularTable4
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: GlassCorridor1_GlassCorridor0
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: GlassCorridor0
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: GlassCorridor1
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.628676831722
        x: 0.0
        y: 0.0
        z: 0.777666687965
      position:
        x: -3.96906542778
        y: 10.0389442444
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
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: GlassCorridor2
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: GlassCorridor2_HospMeetingPod3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospMeetingPod3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: GlassCorridor2_GlassCorridor3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: GlassCorridor3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: GlassCorridor2_GlassCorridor1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: GlassCorridor1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: GlassCorridor2_HospActRec3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospActRec3
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: GlassCorridor2
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.999785123872
        x: 0.0
        y: 0.0
        z: -0.0207293532276
      position:
        x: -1.09413552221
        y: 2.82412035177
        z: -6.93889390391e-18
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: -0.151956319809
      y: 3.01757264137
    - x: -1.48304963112
      y: 2.52406525612
    - x: -0.689999997616
      y: 0.287000000477
    - x: -0.689999997616
      y: -0.287000000477
    - x: -1.42253613472
      y: -2.88977003098
    - x: 0.698428928852
      y: -3.27741384506
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: GlassCorridor3
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: GlassCorridor3_GlassCorridor2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: GlassCorridor2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: GlassCorridor3_HospActRec4
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospActRec4
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: GlassCorridor3_TransWPG1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpTransWP1
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: GlassCorridor3
    pointset: tsc_1701
    pose:
      orientation:
        w: -0.486107885838
        x: 0.0
        y: 0.0
        z: 0.873898804188
      position:
        x: -2.37026381493
        y: -2.91897392273
        z: -1.38777878078e-17
    verts:
    - x: 1.24258363247
      y: 1.55755472183
    - x: 0.618012905121
      y: 1.69540739059
    - x: -0.262159347534
      y: 2.04554653168
    - x: -1.07930278778
      y: 0.450865030289
    - x: -1.85050797462
      y: -1.98464393616
    - x: -0.714037418365
      y: -2.2285861969
    - x: 0.287000000477
      y: -0.689999997616
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: HospActRec1
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: HospActRec1_HospPrintCopy
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospPrintCopy
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: HospActRec1_SmallKitchen
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SmallKitchen
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: HospActRec1
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.997751891613
        x: 7.3364204e-09
        y: 6.005283e-10
        z: 0.0670163780451
      position:
        x: 1.70903170109
        y: -5.59632062912
        z: -0.0
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
    map: tsc_1701
    node: HospActRec2
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: HospActRec2_HospMeetingPod2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospMeetingPod2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: HospActRec2_HospMeetingPod3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospMeetingPod3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: HospActRec2_HospActRec3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospActRec3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: HospActRec2_HospEmptySpace
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospEmptySpace
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: HospActRec2
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.847518503666
        x: 1.56604365031e-08
        y: 2.91285306986e-08
        z: -0.530765891075
      position:
        x: 3.29912519455
        y: 3.34465146065
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -0.527218341827
      y: 0.284604787827
    - x: -0.689999997616
      y: -0.287000000477
    - x: -0.379117012024
      y: -0.256757974625
    - x: -0.055606842041
      y: -0.212647199631
    - x: 0.323291301727
      y: -0.122496128082
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: HospActRec3
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: HospActRec3_GlassCorridor2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: GlassCorridor2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: HospActRec3_HospMeetingPod3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospMeetingPod3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: HospActRec3_HospActRec2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospActRec2
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: HospActRec3
    pointset: tsc_1701
    pose:
      orientation:
        w: -0.686213314533
        x: 2.32349108842e-07
        y: -6.47106048746e-08
        z: 0.727400422096
      position:
        x: 1.73838162422
        y: 3.83895921707
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -0.69000005722
      y: 0.287000179291
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
    map: tsc_1701
    node: HospActRec4
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: HospActRec4_GlassCorridor3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: GlassCorridor3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: HospActRec4_SmallKitchen
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SmallKitchen
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: HospActRec4
    pointset: tsc_1701
    pose:
      orientation:
        w: -0.0179686322808
        x: 6.49830500521e-09
        y: 1.8703427429e-07
        z: -0.999838650227
      position:
        x: -1.07014977932
        y: -3.74506044388
        z: 6.93889390391e-18
    verts:
    - x: 0.931341767311
      y: 0.275537967682
    - x: 0.841641843319
      y: 0.906333446503
    - x: -0.287000000477
      y: 0.689999997616
    - x: -0.689999997616
      y: 0.287000000477
    - x: -0.689999997616
      y: -0.287000000477
    - x: -0.287000060081
      y: -0.69000005722
    - x: 0.287000000477
      y: -0.689999997616
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: HospEmptySpace
    pointset: tsc_1701
    tag:
    - Exploration
    - SafeNode
  node:
    edges:
    - action: move_base
      edge_id: HospEmptySpace_HospTriangularTable1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospTriangularTable1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: HospEmptySpace_HospActRec2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospActRec2
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: HospEmptySpace
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.727459967136
        x: 0.0
        y: 0.0
        z: 0.68615013361
      position:
        x: 3.70488762856
        y: 5.84564590454
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
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: HospMeetingPod1
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: HospMeetingPod1_HospTriangularTable2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospTriangularTable2
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: HospMeetingPod1
    pointset: tsc_1701
    pose:
      orientation:
        w: -0.472281754017
        x: -3.80536935296e-10
        y: -1.60527626747e-08
        z: 0.881447672844
      position:
        x: 5.95234680176
        y: 12.3783845901
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
    map: tsc_1701
    node: HospMeetingPod2
    pointset: tsc_1701
    tag:
    - Exploration
    - MiniExploration
  node:
    edges:
    - action: move_base
      edge_id: HospMeetingPod2_HospMeetingPod3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospMeetingPod3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: HospMeetingPod2_HospWorkplace
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospWorkplace
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: HospMeetingPod2_HospActRec2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospActRec2
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: HospMeetingPod2
    pointset: tsc_1701
    pose:
      orientation:
        w: -0.702669382095
        x: 1.49388966975e-07
        y: 8.64582716531e-09
        z: 0.711516439915
      position:
        x: 4.42766189575
        y: 2.25373601913
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.335933685303
      y: 0.260164022446
    - x: -0.287000000477
      y: 0.689999997616
    - x: -0.412405967712
      y: 0.165889501572
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
    map: tsc_1701
    node: HospMeetingPod3
    pointset: tsc_1701
    tag:
    - Exploration
    - MiniExploration
  node:
    edges:
    - action: move_base
      edge_id: HospMeetingPod3_GlassCorridor2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: GlassCorridor2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: HospMeetingPod3_HospMeetingPod2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospMeetingPod2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: HospMeetingPod3_HospActRec2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospActRec2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: HospMeetingPod3_HospActRec3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospActRec3
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: HospMeetingPod3
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.715765655041
        x: 4.19457428791e-08
        y: -1.72271388266e-08
        z: -0.698340713978
      position:
        x: 1.73257601261
        y: 2.1917321682
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
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: HospPrintCopy
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: HospPrintCopy_HospActRec1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospActRec1
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: HospPrintCopy
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.734483718872
        x: 4.00965305403e-09
        y: 2.69963607025e-09
        z: 0.678626298904
      position:
        x: -0.868560135365
        y: -5.75783967972
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
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: HospTriangularTable1
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: HospTriangularTable1_HospEmptySpace
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospEmptySpace
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: HospTriangularTable1_HospTriangularTable2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospTriangularTable2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: HospTriangularTable1_HospTriangularTable4
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospTriangularTable4
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: HospTriangularTable1
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.533009529114
        x: 0.0
        y: 0.0
        z: 0.846109271049
      position:
        x: 2.44528055191
        y: 8.33291339874
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
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: HospTriangularTable2
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: HospTriangularTable2_HospTriangularTable1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospTriangularTable1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: HospTriangularTable2_HospTriangularTable3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospTriangularTable3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: HospTriangularTable2_HospMeetingPod1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospMeetingPod1
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: HospTriangularTable2
    pointset: tsc_1701
    pose:
      orientation:
        w: -0.289983183146
        x: 0.0
        y: 0.0
        z: 0.957031726837
      position:
        x: 3.27227568626
        y: 12.4204692841
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
    map: tsc_1701
    node: HospTriangularTable3
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: HospTriangularTable3_HospTriangularTable2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospTriangularTable2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: HospTriangularTable3_HospTriangularTable4
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospTriangularTable4
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: HospTriangularTable3_GlassCorridor1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: GlassCorridor1
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: HospTriangularTable3
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.893899857998
        x: 3.0604368817e-08
        y: -2.76830364188e-10
        z: -0.448266714811
      position:
        x: -1.46888649464
        y: 12.0749292374
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
    map: tsc_1701
    node: HospTriangularTable4
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: HospTriangularTable4_HospTriangularTable1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospTriangularTable1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: HospTriangularTable4_HospTriangularTable3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospTriangularTable3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: HospTriangularTable4_GlassCorridor1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: GlassCorridor1
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: HospTriangularTable4
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.98854185307
        x: 0.0
        y: 0.0
        z: 0.150947026231
      position:
        x: -0.919420073961
        y: 8.51479594981
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
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: HospWorkplace
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: HospWorkplace_HospMeetingPod2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospMeetingPod2
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: HospWorkplace
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.690666675568
        x: -1.46130991752e-08
        y: 2.8186022405e-08
        z: -0.723173201084
      position:
        x: 6.19588518143
        y: 2.65942454338
        z: -1.38777878078e-17
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
    map: tsc_1701
    node: KitchenActRec1
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: KitchenActRec1_KitchenEntrance
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: KitchenEntrance
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: KitchenActRec1_KitchenPod1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: KitchenPod1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: KitchenActRec1_Station
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: Station
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: KitchenActRec1_NewArea1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: NewArea1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: ''
      inflation_radius: 0.0
      map_2d: ''
      node: NewNode0
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: KitchenActRec1
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.727252364159
        x: 0.0
        y: 0.0
        z: -0.686370134354
      position:
        x: -43.7363777161
        y: -8.16873264313
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
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: KitchenActRec2
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: KitchenActRec2_KitchenPod3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: KitchenPod3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: KitchenActRec2_KitchenCounter1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: KitchenCounter1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: ''
      inflation_radius: 0.0
      map_2d: ''
      node: KitchenCounter2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: ''
      inflation_radius: 0.0
      map_2d: ''
      node: KitchenTableLow
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: KitchenActRec2
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.934859395027
        x: -1.74247940521e-08
        y: 2.25413305799e-08
        z: -0.355018079281
      position:
        x: -49.7991600037
        y: -8.34774971008
        z: -0.0
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
    map: tsc_1701
    node: KitchenCounter1
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: KitchenCounter1_KitchenCounter2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: KitchenCounter2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: KitchenCounter1_Station
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: Station
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: KitchenCounter1_KitchenActRec2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: KitchenActRec2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: ''
      inflation_radius: 0.0
      map_2d: ''
      node: KitchenPod3
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: KitchenCounter1
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.926982343197
        x: 3.43351302945e-08
        y: 4.99484329453e-08
        z: -0.375104933977
      position:
        x: -47.9799804688
        y: -6.79881954193
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
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: KitchenCounter2
    pointset: tsc_1701
    tag:
    - Exploration
    - MiniExploration
  node:
    edges:
    - action: move_base
      edge_id: KitchenCounter2_KitchenCounter3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: KitchenCounter3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: KitchenCounter2_KitchenCounter1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: KitchenCounter1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: ''
      inflation_radius: 0.0
      map_2d: ''
      node: KitchenActRec2
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: KitchenCounter2
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.64715886116
        x: -1.09933608883e-08
        y: 1.55113411004e-09
        z: 0.762355268002
      position:
        x: -51.7248802185
        y: -6.74590826035
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
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: KitchenCounter3
    pointset: tsc_1701
    tag:
    - ''
    - Exploration
    - MiniExploration
  node:
    edges:
    - action: move_base
      edge_id: KitchenCounter3_KitchenCounter2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: KitchenCounter2
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: KitchenCounter3
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.708644628525
        x: 4.53118165211e-09
        y: 1.80091479507e-08
        z: 0.705565571785
      position:
        x: -56.0540313721
        y: -6.90965986252
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
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: KitchenEntrance
    pointset: tsc_1701
    tag:
    - SafeNode
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: KitchenEntrance_Station
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: Station
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: KitchenEntrance_KitchenActRec1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: KitchenActRec1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: KitchenEntrance_NewArea1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: NewArea1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: ''
      inflation_radius: 0.0
      map_2d: ''
      node: NewNode0
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: KitchenEntrance
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.0412136912346
        x: 2.67124189435e-08
        y: -2.14717097435e-08
        z: -0.999150395393
      position:
        x: -42.4934921265
        y: -7.27721691132
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
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: KitchenPod1
    pointset: tsc_1701
    tag:
    - Exploration
    - MiniExploration
  node:
    edges:
    - action: move_base
      edge_id: KitchenPod1_KitchenActRec1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: KitchenActRec1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: KitchenPod1_KitchenPod2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: KitchenPod2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: ''
      inflation_radius: 0.0
      map_2d: ''
      node: NewNode0
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: KitchenPod1
    pointset: tsc_1701
    pose:
      orientation:
        w: -0.693240225315
        x: 6.39557072191e-07
        y: 4.13073735217e-08
        z: 0.720706760883
      position:
        x: -44.0208206177
        y: -9.65445137024
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
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: KitchenPod2
    pointset: tsc_1701
    tag:
    - Exploration
    - MiniExploration
  node:
    edges:
    - action: move_base
      edge_id: KitchenPod2_KitchenPod3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: KitchenPod3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: KitchenPod2_KitchenPod1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: KitchenPod1
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: KitchenPod2
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.762101233006
        x: 4.00172581294e-07
        y: 1.8413412306e-07
        z: -0.647457838058
      position:
        x: -46.5177841187
        y: -9.79188537598
        z: 2.68962511984e-10
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
    map: tsc_1701
    node: KitchenPod3
    pointset: tsc_1701
    tag:
    - Exploration
    - MiniExploration
  node:
    edges:
    - action: move_base
      edge_id: KitchenPod3_KitchenPod2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: KitchenPod2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: KitchenPod3_KitchenTableLow
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: KitchenTableLow
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: KitchenPod3_KitchenActRec2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: KitchenActRec2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: ''
      inflation_radius: 0.0
      map_2d: ''
      node: KitchenCounter1
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: KitchenPod3
    pointset: tsc_1701
    pose:
      orientation:
        w: -0.685869574547
        x: 1.27405144212e-08
        y: 3.18683923695e-09
        z: 0.72772449255
      position:
        x: -48.5117607117
        y: -9.5822353363
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
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: KitchenTableHigh
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: KitchenTableHigh_KitchenTableLow
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: KitchenTableLow
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: KitchenTableHigh
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.0846532285213
        x: 5.53028272066e-08
        y: -1.62207900445e-08
        z: -0.996410489082
      position:
        x: -57.1333580017
        y: -10.1990060806
        z: -1.38777878078e-17
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
    map: tsc_1701
    node: KitchenTableLow
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: KitchenTableLow_KitchenPod3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: KitchenPod3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: KitchenTableLow_KitchenTableHigh
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: KitchenTableHigh
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: ''
      inflation_radius: 0.0
      map_2d: ''
      node: KitchenActRec2
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: KitchenTableLow
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.383589506149
        x: -1.496519908e-09
        y: 2.18885087833e-08
        z: 0.923503696918
      position:
        x: -52.8578834534
        y: -9.60799598694
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
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: LearningTable1
    pointset: tsc_1701
    tag:
    - Exploration
    - MiniExploration
  node:
    edges:
    - action: move_base
      edge_id: LearningTable1_SuppLockOutside
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLockOutside
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: LearningTable1_SuppLocker2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: ''
      inflation_radius: 0.0
      map_2d: ''
      node: NewNode0
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: ''
      inflation_radius: 0.0
      map_2d: ''
      node: SuppLocker1
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: LearningTable1
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.999941782391
        x: 0.0
        y: 0.0
        z: -0.0107903580969
      position:
        x: -41.648574105
        y: -15.8033227954
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.359229326248
      y: 1.05648231506
    - x: -0.81462931633
      y: 0.953785896301
    - x: -0.689999997616
      y: 0.287000000477
    - x: -0.689999997616
      y: -0.287000000477
    - x: -0.531361341476
      y: -1.03892612457
    - x: 0.336978197098
      y: -1.11061000824
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: LearningTable2
    pointset: tsc_1701
    tag:
    - ''
    - Exploration
    - MiniExploration
  node:
    edges:
    - action: move_base
      edge_id: LearningTable2_NewArea1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: NewArea1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: LearningTable2_NewArea8
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: NewArea8
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: LearningTable2
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.700912626577
        x: 0.0
        y: 0.0
        z: -0.713247145038
      position:
        x: -46.7483984455
        y: -2.82432291275
        z: 3.46944695195e-18
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
    map: tsc_1701
    node: LockCorridor
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: LockCorridor_CorpLockInside
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpLockInside
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: LockCorridor_SuppLockInside
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLockInside
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: LockCorridor
    pointset: tsc_1701
    pose:
      orientation:
        w: -0.0229795128107
        x: 1.49208267963e-09
        y: 7.37900940351e-09
        z: 0.999736070633
      position:
        x: -35.1180953979
        y: -12.5009403229
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
    map: tsc_1701
    node: NewArea1
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: NewArea1_KitchenActRec1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: KitchenActRec1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: NewArea1_KitchenEntrance
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: KitchenEntrance
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: NewArea1_Station
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: Station
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: NewArea1_NewArea8
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: NewArea8
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: NewArea1_LearningTable2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: LearningTable2
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: NewArea1
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.678812883239
        x: 0.0
        y: 0.0
        z: 0.734311289269
      position:
        x: -42.3095734065
        y: -3.45242453021
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
    map: tsc_1701
    node: NewArea10
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: NewArea10_NewArea9
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: NewArea9
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: NewArea10
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.841992268016
        x: 0.0
        y: 0.0
        z: -0.539489592671
      position:
        x: -53.0311250847
        y: 21.5498705446
        z: -1.04083408559e-17
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
    map: tsc_1701
    node: NewArea3
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: NewArea3_Quasi3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: Quasi3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: NewArea3_Quasi2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: Quasi2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: NewArea3_NewArea5
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: NewArea5
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: NewArea3
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.715048551559
        x: 6.12909722975e-09
        y: 1.14723563982e-09
        z: -0.699074804783
      position:
        x: -45.4214706421
        y: 15.4252967834
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
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: NewArea5
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: NewArea5_NewArea3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: NewArea3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: NewArea5_NewArea6
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: NewArea6
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: NewArea5
    pointset: tsc_1701
    pose:
      orientation:
        w: -0.683907091618
        x: 4.49456365459e-08
        y: -2.35185027009e-08
        z: -0.729569077492
      position:
        x: -44.9946861267
        y: 9.36222171783
        z: 3.46944695195e-18
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
    map: tsc_1701
    node: NewArea6
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: NewArea6_NewArea5
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: NewArea5
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: NewArea6_NewArea8
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: NewArea8
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: NewArea6
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.999989628792
        x: -1.07127853255e-08
        y: -4.63067761913e-09
        z: 0.00455512385815
      position:
        x: -48.5030174255
        y: 6.19504785538
        z: 3.46944695195e-18
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
    map: tsc_1701
    node: NewArea7
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: NewArea7_Quasi3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: Quasi3
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: NewArea7
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.974362288169
        x: 0.0
        y: 0.0
        z: 0.224984735914
      position:
        x: -54.7771732819
        y: 10.4478886844
        z: 3.46944695195e-18
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
    map: tsc_1701
    node: NewArea8
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: NewArea8_NewArea1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: NewArea1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: NewArea8_NewArea6
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: NewArea6
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: NewArea8_LearningTable2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: LearningTable2
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: NewArea8
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.892525830176
        x: 0.0
        y: 0.0
        z: -0.450996277666
      position:
        x: -47.4865416876
        y: 0.743949945907
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
    map: tsc_1701
    node: NewArea9
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: NewArea9_Quasi3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: Quasi3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: NewArea9_NewArea10
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: NewArea10
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: NewArea9
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.767475511811
        x: 0.0
        y: 0.0
        z: -0.641078262594
      position:
        x: -51.7983919011
        y: 18.6194818655
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
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: NewNode0
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: ''
      inflation_radius: 0.0
      map_2d: ''
      node: SuppLockOutside
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: ''
      inflation_radius: 0.0
      map_2d: ''
      node: LearningTable1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: ''
      inflation_radius: 0.0
      map_2d: ''
      node: KitchenPod1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: ''
      inflation_radius: 0.0
      map_2d: ''
      node: KitchenActRec1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: ''
      inflation_radius: 0.0
      map_2d: ''
      node: KitchenEntrance
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: NewNode0
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.00219471775927
        x: 6.58536521314e-07
        y: 1.37171696224e-06
        z: -0.999997615814
      position:
        x: -41.6187667847
        y: -9.64872074127
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
    map: tsc_1701
    node: Quasi1
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: Quasi1_CorpActRec3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpActRec3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: Quasi1_CorpLockOutside
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpLockOutside
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: Quasi1_CorpLocker7
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpLocker7
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: Quasi1_CorpLocker8
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: CorpLocker8
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: Quasi1
    pointset: tsc_1701
    pose:
      orientation:
        w: 1.0
        x: 0.0
        y: 0.0
        z: -0.000225243435125
      position:
        x: -26.0220088959
        y: -13.6125993729
        z: -6.93889390391e-18
    verts:
    - x: 1.03935563564
      y: 0.27047047019
    - x: 0.965070188046
      y: 0.952544987202
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
    - x: 1.0442250967
      y: -0.593495547771
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: Quasi2
    pointset: tsc_1701
    tag:
    - ''
    - Exploration
    - MiniExploration
  node:
    edges:
    - action: move_base
      edge_id: Quasi2_NewArea3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: NewArea3
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: Quasi2
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.698694467545
        x: -2.30768240073e-08
        y: -8.59706617007e-09
        z: 0.715420305729
      position:
        x: -41.9715080261
        y: 18.4311141968
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
    map: tsc_1701
    node: Quasi3
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: Quasi3_NewArea3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: NewArea3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: Quasi3_NewArea7
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: NewArea7
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: Quasi3_NewArea9
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: NewArea9
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: Quasi3
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.820374449992
        x: 0.0
        y: 0.0
        z: -0.571826688605
      position:
        x: -50.9787401357
        y: 14.3707296027
        z: 3.46944695195e-18
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
    map: tsc_1701
    node: ReceptionDesk
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: ReceptionDesk_ReceptionKitchen
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: ReceptionKitchen
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: ReceptionDesk_FrontDoor
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: FrontDoor
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: ReceptionDesk
    pointset: tsc_1701
    pose:
      orientation:
        w: -0.896907746792
        x: 9.19059051085e-10
        y: -5.06894330954e-08
        z: 0.442217707634
      position:
        x: -4.78707647324
        y: 25.8862361908
        z: -6.93889390391e-18
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.291750907898
      y: 0.970291137695
    - x: -0.287000000477
      y: 0.689999997616
    - x: -1.12253522873
      y: 0.328910827637
    - x: -1.37210083008
      y: -1.14276695251
    - x: -0.712680339813
      y: -2.07515907288
    - x: 0.286023616791
      y: -2.51449012756
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: ReceptionKitchen
    pointset: tsc_1701
    tag:
    - Exploration
    - ''
    - MiniExploration
  node:
    edges:
    - action: move_base
      edge_id: ReceptionKitchen_ReceptionDesk
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: ReceptionDesk
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: ReceptionKitchen
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.696119844913
        x: -3.32053673446e-09
        y: 4.8174356948e-08
        z: 0.717925727367
      position:
        x: -6.17678689957
        y: 27.6767463684
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
    map: tsc_1701
    node: SmallKitchen
    pointset: tsc_1701
    tag:
    - MiniExploration
  node:
    edges:
    - action: move_base
      edge_id: SmallKitchen_HospActRec1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospActRec1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: SmallKitchen_HospActRec4
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: HospActRec4
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: SmallKitchen_Station1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: Station1
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: SmallKitchen
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.998606801033
        x: 0.0
        y: 0.0
        z: 0.0527678243816
      position:
        x: 1.65691864491
        y: -3.68225169182
        z: 6.93889390391e-18
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.605927109718
      y: 0.612389087677
    - x: -0.371341347694
      y: 0.523273706436
    - x: -1.31025087833
      y: 0.860966682434
    - x: -1.36936998367
      y: -0.457062959671
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.287000000477
      y: -0.689999997616
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: Station
    pointset: tsc_1701
    tag:
    - SafeNode
  node:
    edges:
    - action: move_base
      edge_id: Station_KitchenCounter1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: KitchenCounter1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: docking
      edge_id: Station_ChargingPoint
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: ChargingPoint
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: Station_KitchenEntrance
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: KitchenEntrance
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: Station_KitchenActRec1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: KitchenActRec1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: Station_NewArea1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: NewArea1
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: Station
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.696714222431
        x: -7.3671770906e-09
        y: 1.96163463251e-09
        z: 0.717348814011
      position:
        x: -44.9115905762
        y: -6.47663354874
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.286998748779
      y: 0.69000005722
    - x: -0.286998748779
      y: 0.69000005722
    - x: -0.689998626709
      y: 0.287000179291
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
    map: tsc_1701
    node: Station1
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: docking
      edge_id: Station1_ChargingPoint1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: ChargingPoint1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: Station1_SmallKitchen
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SmallKitchen
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: Station1
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.65467274189
        x: -3.75555053722e-08
        y: 8.7873519572e-10
        z: 0.755912423134
      position:
        x: 1.72418701649
        y: -2.11849546432
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.351807713509
      y: 0.63429069519
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
    map: tsc_1701
    node: SuppActRec1
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: SuppActRec1_SuppPrintCopy
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppPrintCopy
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: SuppActRec1_SuppLocker3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: SuppActRec1_SuppLocker6
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker6
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: SuppActRec1
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.844636440277
        x: -4.59247253559e-08
        y: 4.00500042019e-08
        z: 0.535340309143
      position:
        x: -46.3345184326
        y: -34.238948822
        z: 0.0
    verts:
    - x: 0.455898284912
      y: 0.152278900146
    - x: 0.0912628173828
      y: 0.41968536377
    - x: -0.259822845459
      y: 0.364513397217
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
    map: tsc_1701
    node: SuppLockInside
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: SuppLockInside_LockCorridor
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: LockCorridor
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: door_wait_and_pass
      edge_id: SuppLockInside_SuppLockOutside
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLockOutside
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: SuppLockInside
    pointset: tsc_1701
    pose:
      orientation:
        w: -0.0160117596388
        x: -4.04449052027e-09
        y: 9.48607237206e-09
        z: 0.999871909618
      position:
        x: -37.796585083
        y: -12.7425136566
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
    map: tsc_1701
    node: SuppLockOutside
    pointset: tsc_1701
  node:
    edges:
    - action: door_wait_and_pass
      edge_id: SuppLockOutside_SuppLockInside
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLockInside
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: SuppLockOutside_LearningTable1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: LearningTable1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: ''
      inflation_radius: 0.0
      map_2d: ''
      node: NewNode0
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: SuppLockOutside
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.999954640865
        x: 1.28113886166e-09
        y: -5.84786663538e-09
        z: 0.00952390860766
      position:
        x: -40.2652206421
        y: -12.9210977554
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
    map: tsc_1701
    node: SuppLocker1
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: SuppLocker1_SuppLocker2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: SuppLocker1_SuppLocker13
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker13
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: ''
      inflation_radius: 0.0
      map_2d: ''
      node: LearningTable1
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: SuppLocker1
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.325197428465
        x: 0.0
        y: 0.0
        z: 0.945646166801
      position:
        x: -43.7640037537
        y: -16.2645015717
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
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: SuppLocker10
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: SuppLocker10_SuppMeetingPod2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppMeetingPod2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: SuppLocker10_SuppLocker11
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker11
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: ''
      inflation_radius: 0.0
      map_2d: ''
      node: SuppTransWP1
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: SuppLocker10
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.702519834042
        x: 1.94861171643e-09
        y: 3.38811134704e-09
        z: 0.711664140224
      position:
        x: -50.5726776123
        y: -26.3892269135
        z: 0.0
    verts:
    - x: 1.2172088623
      y: 0.668054580688
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -0.723392486572
      y: 0.711475372314
    - x: -0.689147949219
      y: -0.928255081177
    - x: -0.322898864746
      y: -0.931587219238
    - x: 0.517635345459
      y: -0.877201080322
    - x: 1.11585617065
      y: -0.840244293213
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: SuppLocker11
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: SuppLocker11_SuppLocker12
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker12
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: SuppLocker11_SuppLocker10
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker10
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: ''
      inflation_radius: 0.0
      map_2d: ''
      node: SuppMeetingPod1
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: SuppLocker11
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.700534343719
        x: 1.10790443486e-09
        y: 3.99984010357e-08
        z: 0.713618814945
      position:
        x: -52.4292984009
        y: -23.2933006287
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.286999613047
      y: 0.690000474453
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
    map: tsc_1701
    node: SuppLocker12
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: SuppLocker12_SuppLocker11
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker11
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: SuppLocker12_SuppLocker13
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker13
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: SuppLocker12_SuppLocker14
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker14
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: SuppLocker12
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.0554814450443
        x: 0.0
        y: 0.0
        z: 0.99845969677
      position:
        x: -52.7668266296
        y: -19.0270557404
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
    map: tsc_1701
    node: SuppLocker13
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: SuppLocker13_SuppLocker1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: SuppLocker13_SuppLocker2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: SuppLocker13_SuppLocker12
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker12
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: SuppLocker13_SuppLocker14
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker14
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: SuppLocker13
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.738405585289
        x: 0.0
        y: 0.0
        z: -0.674356877804
      position:
        x: -50.5977745056
        y: -17.6564216614
        z: -6.93889390391e-18
    verts:
    - x: 0.705310821533
      y: 1.29198455811
    - x: 0.206272125244
      y: 1.28229141235
    - x: -0.271903991699
      y: 1.25351142883
    - x: -1.07584381104
      y: 1.23057174683
    - x: -1.04125213623
      y: 0.277462005615
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.287000000477
      y: -0.689999997616
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: SuppLocker14
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: SuppLocker14_SuppLocker12
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker12
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: SuppLocker14_SuppLocker13
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker13
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: SuppLocker14
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.999101877213
        x: -3.57965346254e-09
        y: -5.27480892298e-10
        z: 0.0423719398677
      position:
        x: -52.8425102234
        y: -15.3897657394
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
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: SuppLocker2
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: SuppLocker2_SuppTransWP1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppTransWP1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: SuppLocker2_SuppLocker1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: SuppLocker2_SuppLocker13
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker13
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: SuppLocker2_LearningTable1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: LearningTable1
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: SuppLocker2
    pointset: tsc_1701
    pose:
      orientation:
        w: -0.0228305887431
        x: 0.0
        y: 0.0
        z: 0.999739348888
      position:
        x: -43.3949127197
        y: -19.5951557159
        z: 0.0
    verts:
    - x: 1.443775177
      y: 0.268375396729
    - x: 1.14931488037
      y: 1.35683250427
    - x: -0.643600463867
      y: 1.38343048096
    - x: -0.689999997616
      y: 0.287000000477
    - x: -0.689999997616
      y: -0.287000000477
    - x: -0.654327392578
      y: -1.55055618286
    - x: 0.653774261475
      y: -1.41478919983
    - x: 1.39849090576
      y: -1.32451438904
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: SuppLocker3
    pointset: tsc_1701
    tag:
    - Exploration
    - SafeNode
  node:
    edges:
    - action: move_base
      edge_id: SuppLocker3_SuppLocker4
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker4
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: SuppLocker3_SuppLocker6
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker6
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: SuppLocker3_SuppTransWP2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppTransWP2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: SuppLocker3_SuppActRec1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppActRec1
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: SuppLocker3
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.693901240826
        x: 0.0
        y: 0.0
        z: 0.720070183277
      position:
        x: -43.3038330078
        y: -33.2322158813
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
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: SuppLocker4
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: SuppLocker4_SuppLocker3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: SuppLocker4_SuppLocker5
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker5
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: SuppLocker4
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.998252093792
        x: 0.0
        y: 0.0
        z: -0.0590995661914
      position:
        x: -43.2877845764
        y: -36.0379371643
        z: -1.38777878078e-17
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
    map: tsc_1701
    node: SuppLocker5
    pointset: tsc_1701
    tag:
    - Exploration
    - SafeNode
  node:
    edges:
    - action: move_base
      edge_id: SuppLocker5_SuppLocker4
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker4
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: SuppLocker5_SuppLocker7
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker7
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: SuppLocker5
    pointset: tsc_1701
    pose:
      orientation:
        w: -0.0732158571482
        x: 0.0
        y: 0.0
        z: 0.997316122055
      position:
        x: -47.4322624207
        y: -38.2671089172
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
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: SuppLocker6
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: SuppLocker6_SuppLocker3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: SuppLocker6_SuppActRec1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppActRec1
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: SuppLocker6
    pointset: tsc_1701
    pose:
      orientation:
        w: -0.200703084469
        x: 6.56134133692e-08
        y: 1.78469117262e-09
        z: -0.979652106762
      position:
        x: -46.3853759766
        y: -32.9186630249
        z: 0.0
    verts:
    - x: 0.444190979004
      y: 0.271877288818
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -0.689999997616
      y: 0.287000000477
    - x: -0.689999997616
      y: -0.287000000477
    - x: -0.2688331604
      y: -0.360084533691
    - x: 0.287000000477
      y: -0.689999997616
    - x: 0.36311340332
      y: -0.202713012695
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: SuppLocker7
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: SuppLocker7_SuppLocker5
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker5
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: SuppLocker7_SuppLocker8
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker8
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: SuppLocker7
    pointset: tsc_1701
    pose:
      orientation:
        w: -0.00108689803164
        x: -6.77516265313e-10
        y: 2.78722911418e-09
        z: 0.999999403954
      position:
        x: -51.6425323486
        y: -36.0436515808
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
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: SuppLocker8
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: SuppLocker8_SuppLocker7
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker7
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: ''
      inflation_radius: 0.0
      map_2d: ''
      node: SuppMeetingPod1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: ''
      inflation_radius: 0.0
      map_2d: ''
      node: SuppMeetingPod2
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: SuppLocker8
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.635933816433
        x: -8.59738946701e-11
        y: 3.91227139573e-08
        z: 0.771743655205
      position:
        x: -52.0569419861
        y: -32.528465271
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
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: SuppMeetingPod1
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: SuppMeetingPod1_SuppLocker10
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker10
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: ''
      inflation_radius: 0.0
      map_2d: ''
      node: SuppLocker8
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: ''
      inflation_radius: 0.0
      map_2d: ''
      node: SuppLocker11
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: SuppMeetingPod1
    pointset: tsc_1701
    pose:
      orientation:
        w: -0.999977052212
        x: -2.80197753e-07
        y: -3.62693299394e-07
        z: -0.00677141500637
      position:
        x: -52.0848007202
        y: -28.6635475159
        z: -0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.286998748779
      y: 0.690000534058
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
    map: tsc_1701
    node: SuppMeetingPod2
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: SuppMeetingPod2_SuppTransWP1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppTransWP1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: SuppMeetingPod2_SuppLocker10
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker10
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: ''
      inflation_radius: 0.0
      map_2d: ''
      node: SuppTransWP2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: ''
      inflation_radius: 0.0
      map_2d: ''
      node: SuppLocker8
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: SuppMeetingPod2
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.0049791932106
        x: -4.10381574056e-07
        y: -5.5257544318e-07
        z: 0.999987602234
      position:
        x: -46.5070304871
        y: -28.6285018921
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.287000000477
      y: 0.689999997616
    - x: -0.287000000477
      y: 0.689999997616
    - x: -0.768478393555
      y: 0.661840438843
    - x: -1.26278305054
      y: -1.61171531677
    - x: -0.356719970703
      y: -1.55263137817
    - x: 0.319675445557
      y: -1.57256507874
    - x: 1.5178565979
      y: -1.5510635376
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: SuppPrintCopy
    pointset: tsc_1701
    tag:
    - Exploration
  node:
    edges:
    - action: move_base
      edge_id: SuppPrintCopy_SuppActRec1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppActRec1
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: SuppPrintCopy
    pointset: tsc_1701
    pose:
      orientation:
        w: -0.0409103445709
        x: 3.41086403566e-09
        y: 4.2576822068e-09
        z: 0.999162793159
      position:
        x: -48.375919342
        y: -35.7075233459
        z: 1.38777878078e-17
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
    map: tsc_1701
    node: SuppTransWP1
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: SuppTransWP1_SuppLocker2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: SuppTransWP1_SuppMeetingPod2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppMeetingPod2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: SuppTransWP1_SuppTransWP2
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppTransWP2
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: ''
      inflation_radius: 0.0
      map_2d: ''
      node: SuppLocker10
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: SuppTransWP1
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.697835981846
        x: 0.0
        y: 0.0
        z: -0.716257572174
      position:
        x: -44.533416748
        y: -27.5201320648
        z: 0.0
    verts:
    - x: 1.07386779785
      y: 0.150310516357
    - x: 1.56912231445
      y: 2.16223144531
    - x: -0.973876953125
      y: 2.23820877075
    - x: -1.08213424683
      y: 0.293621063232
    - x: -0.923271179199
      y: -0.765838623047
    - x: -0.431533813477
      y: -0.774471282959
    - x: 0.278087615967
      y: -0.961381912231
    - x: 1.13019943237
      y: -0.927942276001
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
- meta:
    map: tsc_1701
    node: SuppTransWP2
    pointset: tsc_1701
  node:
    edges:
    - action: move_base
      edge_id: SuppTransWP2_SuppLocker3
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppLocker3
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: SuppTransWP2_SuppTransWP1
      inflation_radius: 0.0
      map_2d: tsc_1701
      node: SuppTransWP1
      recovery_behaviours_config: ''
      top_vel: 0.55
    - action: move_base
      edge_id: ''
      inflation_radius: 0.0
      map_2d: ''
      node: SuppMeetingPod2
      recovery_behaviours_config: ''
      top_vel: 0.55
    localise_by_topic: ''
    map: tsc_1701
    name: SuppTransWP2
    pointset: tsc_1701
    pose:
      orientation:
        w: 0.392665475607
        x: 0.0
        y: 0.0
        z: 0.919681370258
      position:
        x: -43.6470069885
        y: -30.5990753174
        z: 0.0
    verts:
    - x: 0.689999997616
      y: 0.287000000477
    - x: 0.597915410995
      y: 1.05757665634
    - x: -0.287000000477
      y: 0.689999997616
    - x: -0.291290551424
      y: 0.296235591173
    - x: -0.360508233309
      y: -0.243290379643
    - x: -0.287000000477
      y: -0.689999997616
    - x: 0.611713171005
      y: -0.690739095211
    - x: 0.689999997616
      y: -0.287000000477
    xy_goal_tolerance: 0.3
    yaw_goal_tolerance: 0.1
