//Maya ASCII 2015 scene
//Name: env_level4_finalBossV4.ma
//Last modified: Tue, Apr 28, 2015 05:40:50 AM
//Codeset: 1252
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201407071530-922714";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 18993.538363951739 6666.2910863617044 8883.3626564449187 ;
	setAttr ".r" -type "double3" -16.538351706211589 -3144.9999999992551 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 10;
	setAttr ".fcp" 100000;
	setAttr ".coi" 25810.474253223056;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 7549.5888689099884 -101.66599547043754 11079.120845496795 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "zenreg";
	setAttr ".t" -type "double3" 7547.053810888443 -205.91336142197562 11088.764777600905 ;
createNode transform -n "zen_v14" -p "zenreg";
createNode transform -n "enter";
	setAttr ".t" -type "double3" -95.621213356249456 -15.838693339813595 183.96987021434654 ;
createNode mesh -n "enterShape" -p "enter";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape25" -p "enter";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.375 0.5 0.625
		 0.5 0.625 0.75 0.375 0.75 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[20:27]" -type "float3"  0 0 -244.73035 0 0 -244.73035 
		0 0 -244.73035 0 0 -244.73035 83.438393 0 105.22594 -83.438393 0 105.22594 -83.438393 
		0 105.22594 83.438393 0 105.22594;
	setAttr -s 28 ".vt[0:27]"  -246.55325317 -437.016784668 257.41674805
		 257.13772583 -437.016784668 257.41674805 -246.55325317 12.25753498 257.41674805 257.13772583 12.25753498 257.41674805
		 -246.55325317 12.25753498 -257.41671753 257.13772583 12.25753498 -257.41671753 -246.55325317 -437.016784668 -257.41671753
		 257.13772583 -437.016784668 -257.41671753 -246.55325317 -451.9440918 768.03692627
		 257.13772583 -451.9440918 768.03692627 257.13772583 12.25753498 704.051513672 -246.55325317 12.25753498 704.051513672
		 -246.55325317 12.25753498 -437.7456665 257.13772583 12.25753498 -437.7456665 257.13772583 -437.016784668 -437.7456665
		 -246.55325317 -437.016784668 -437.7456665 -246.55325317 -89.28701782 1217.91918945
		 257.13772583 -89.28701782 1217.91918945 257.13772583 12.25753498 1281.90478516 -246.55325317 12.25753498 1281.90478516
		 -246.55325317 -89.28701782 1825.28466797 257.13772583 -89.28701782 1825.28466797
		 257.13772583 12.25753498 1889.27038574 -246.55325317 12.25753498 1889.27038574 -246.55325317 -89.28701782 1825.28466797
		 257.13772583 -89.28701782 1825.28466797 257.13772583 12.25753498 1889.27038574 -246.55325317 12.25753498 1889.27038574;
	setAttr -s 52 ".ed[0:51]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 0 8 0 1 9 0 8 9 0 3 10 0 9 10 0 2 11 0 11 10 0 8 11 0
		 4 12 0 5 13 0 12 13 0 7 14 0 13 14 0 6 15 0 15 14 0 12 15 0 8 16 0 9 17 0 16 17 0
		 10 18 0 17 18 0 11 19 0 19 18 0 16 19 0 16 20 0 17 21 0 20 21 0 18 22 0 21 22 0 19 23 0
		 23 22 0 20 23 0 20 24 0 21 25 0 24 25 0 22 26 0 25 26 0 23 27 0 27 26 0 24 27 0;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 46 48 -51 -52
		mu 0 4 30 31 32 33
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 0 13 -15 -13
		mu 0 4 0 1 15 14
		f 4 5 15 -17 -14
		mu 0 4 1 3 16 15
		f 4 -2 17 18 -16
		mu 0 4 3 2 17 16
		f 4 -5 12 19 -18
		mu 0 4 2 0 14 17
		f 4 2 21 -23 -21
		mu 0 4 4 5 19 18
		f 4 9 23 -25 -22
		mu 0 4 5 7 20 19
		f 4 -4 25 26 -24
		mu 0 4 7 6 21 20
		f 4 -9 20 27 -26
		mu 0 4 6 4 18 21
		f 4 14 29 -31 -29
		mu 0 4 14 15 23 22
		f 4 16 31 -33 -30
		mu 0 4 15 16 24 23
		f 4 -19 33 34 -32
		mu 0 4 16 17 25 24
		f 4 -20 28 35 -34
		mu 0 4 17 14 22 25
		f 4 30 37 -39 -37
		mu 0 4 22 23 27 26
		f 4 32 39 -41 -38
		mu 0 4 23 24 28 27
		f 4 -35 41 42 -40
		mu 0 4 24 25 29 28
		f 4 -36 36 43 -42
		mu 0 4 25 22 26 29
		f 4 38 45 -47 -45
		mu 0 4 26 27 31 30
		f 4 40 47 -49 -46
		mu 0 4 27 28 32 31
		f 4 -43 49 50 -48
		mu 0 4 28 29 33 32
		f 4 -44 44 51 -50
		mu 0 4 29 26 30 33;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "PG1";
createNode transform -n "pCube2" -p "PG1";
	setAttr ".t" -type "double3" -70.118457189276342 -404.45457001799798 3152.7261053962497 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.390625 0.15625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape2" -p "pCube2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.390625 0.15625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 132 ".uvst[0].uvsp[0:131]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.125 0 0.375
		 0 0.375 0.25 0.125 0.25 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.375 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.75 0.625 0.75 0.375
		 0 0.125 0 0.125 0 0.875 0 0.875 0 0.625 0 0.625 0 0.375 0 0.375 0 0.625 0 0.625 0.25
		 0.375 0.25 0.375 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0 0.625 0 0.375 0 0.625 0
		 0.625 0.25 0.875 0.25 0.875 0 0.875 0 0.625 0 0.625 0 0.625 0 0.625 0 0.625 0.25
		 0.625 0.25 0.625 0.25 0.875 0.25 0.875 0 0.875 0 0.625 0 0.625 0 0.625 0 0.625 0
		 0.625 0.25 0.625 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0 0.375 0 0.375 0 0.375
		 0 0.125 0 0.125 0 0.125 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0 0.375 0 0.375
		 0 0.375 0 0.125 0 0.125 0 0.125 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.625 0.25
		 0.625 0.25 0.625 0.25 0.625 0.25 0.625 0 0.625 0 0.625 0 0.625 0 0.625 0 0.375 0
		 0.375 0 0.375 0 0.375 0 0.375 0 0.375 0.25 0.375 0.25 0.625 0.25 0.625 0.25 0.625
		 0.25 0.625 0.25 0.625 0 0.625 0 0.625 0 0.625 0 0.625 0 0.375 0 0.375 0 0.375 0 0.375
		 0 0.375 0 0.375 0.25 0.375 0.25 0.375 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 50 ".pt";
	setAttr ".pt[0]" -type "float3" -179.67798 0 0 ;
	setAttr ".pt[1]" -type "float3" 108.46643 0 0 ;
	setAttr ".pt[2]" -type "float3" -179.67798 0 0 ;
	setAttr ".pt[3]" -type "float3" 108.46643 0 0 ;
	setAttr ".pt[4]" -type "float3" -179.67798 0 0 ;
	setAttr ".pt[5]" -type "float3" 108.46643 0 0 ;
	setAttr ".pt[6]" -type "float3" -128.55058 0 0 ;
	setAttr ".pt[7]" -type "float3" 67.083786 0 0 ;
	setAttr ".pt[8]" -type "float3" 67.083786 0 0 ;
	setAttr ".pt[9]" -type "float3" -128.55058 0 0 ;
	setAttr ".pt[10]" -type "float3" 235.07715 0 0 ;
	setAttr ".pt[11]" -type "float3" 235.07715 0 0 ;
	setAttr ".pt[12]" -type "float3" 235.07715 0 0 ;
	setAttr ".pt[13]" -type "float3" 235.07715 0 0 ;
	setAttr ".pt[18]" -type "float3" 108.46643 0 0 ;
	setAttr ".pt[19]" -type "float3" -179.67798 0 0 ;
	setAttr ".pt[20]" -type "float3" 235.07715 0 0 ;
	setAttr ".pt[21]" -type "float3" 235.07715 0 0 ;
	setAttr ".pt[24]" -type "float3" -179.67798 0 0 ;
	setAttr ".pt[25]" -type "float3" 108.46643 0 0 ;
	setAttr ".pt[26]" -type "float3" 108.46643 0 0 ;
	setAttr ".pt[27]" -type "float3" -179.67798 0 0 ;
	setAttr ".pt[28]" -type "float3" 235.07715 0 0 ;
	setAttr ".pt[29]" -type "float3" 235.07715 0 0 ;
	setAttr ".pt[32]" -type "float3" 108.46643 0 0 ;
	setAttr ".pt[33]" -type "float3" -179.67798 0 0 ;
	setAttr ".pt[34]" -type "float3" 235.07715 0 0 ;
	setAttr ".pt[36]" -type "float3" -179.67798 0 0 ;
	setAttr ".pt[37]" -type "float3" 108.46643 0 0 ;
	setAttr ".pt[38]" -type "float3" 108.46643 0 0 ;
	setAttr ".pt[39]" -type "float3" -179.67798 0 0 ;
	setAttr ".pt[40]" -type "float3" 235.07715 0 0 ;
	setAttr ".pt[41]" -type "float3" 235.07715 0 0 ;
	setAttr ".pt[44]" -type "float3" -179.67798 0 0 ;
	setAttr ".pt[45]" -type "float3" 108.46643 0 0 ;
	setAttr ".pt[46]" -type "float3" 235.07715 0 0 ;
	setAttr ".pt[90]" -type "float3" -179.67798 0 0 ;
	setAttr ".pt[91]" -type "float3" 108.46643 0 0 ;
	setAttr ".pt[99]" -type "float3" 108.46643 0 0 ;
	setAttr ".pt[100]" -type "float3" -179.67798 0 0 ;
	setAttr ".pt[103]" -type "float3" 235.07715 0 0 ;
	setAttr ".pt[104]" -type "float3" 235.07715 0 0 ;
	setAttr ".pt[105]" -type "float3" 235.07715 0 0 ;
	setAttr ".pt[106]" -type "float3" -179.67798 0 0 ;
	setAttr ".pt[107]" -type "float3" 108.46643 0 0 ;
	setAttr ".pt[115]" -type "float3" 108.46643 0 0 ;
	setAttr ".pt[116]" -type "float3" -179.67798 0 0 ;
	setAttr ".pt[119]" -type "float3" 235.07715 0 0 ;
	setAttr ".pt[120]" -type "float3" 235.07715 0 0 ;
	setAttr ".pt[121]" -type "float3" 235.07715 0 0 ;
	setAttr -s 124 ".vt[0:123]"  -157.69812012 185.62565613 494.021240234
		 157.69812012 185.62565613 494.021240234 -157.69812012 185.62565613 -190.3503418 157.69812012 185.62565613 -190.3503418
		 -157.69812012 -185.62564087 -190.3503418 157.69812012 -185.62564087 -190.3503418
		 -157.69812012 185.62565613 -387.013916016 157.69812012 185.62565613 -387.013916016
		 157.69812012 72.14028931 -387.013916016 -157.69812012 72.14028931 -387.013916016
		 -1982.37744141 -185.62564087 -190.3503418 -1982.37744141 -185.62564087 494.021240234
		 -1982.37744141 185.62565613 494.021240234 -1982.37744141 185.62565613 -190.3503418
		 1474.81860352 -185.62564087 -190.3503418 1474.81860352 -185.62564087 494.021240234
		 1474.81860352 185.62565613 -190.3503418 1474.81860352 185.62565613 494.021240234
		 157.69812012 185.62565613 1585.29858398 -157.69812012 185.62565613 1585.29858398
		 -1982.37744141 185.62565613 1585.2980957 -1982.37744141 -185.62564087 1585.2980957
		 1474.81860352 -185.62564087 1585.29858398 1474.81860352 185.62565613 1585.29858398
		 -157.69812012 -2721.014404297 -190.3503418 157.69812012 -2721.014404297 -190.3503418
		 157.69812012 -2721.014404297 494.021240234 -157.69812012 -2721.014404297 494.021240234
		 -1982.37744141 -2721.014404297 494.021240234 -1982.37744141 -2721.014404297 -190.3503418
		 1474.81860352 -2721.014404297 -190.3503418 1474.81860352 -2721.014404297 494.021240234
		 157.69812012 -2721.014404297 1585.29858398 -157.69812012 -2721.014404297 1585.29858398
		 -1982.37744141 -2721.014404297 1585.2980957 1474.81860352 -2721.014404297 1585.29858398
		 -157.69812012 -185.62564087 2717.29931641 157.69812012 -185.62564087 2717.29931641
		 157.69812012 185.62565613 2717.29931641 -157.69812012 185.62565613 2717.29931641
		 -1982.37744141 185.62565613 2717.29882813 -1982.37744141 -185.62564087 2717.29882813
		 1474.81860352 -185.62564087 2717.29931641 1474.81860352 185.62565613 2717.29931641
		 -157.69812012 -2721.014404297 2717.29931641 157.69812012 -2721.014404297 2717.29931641
		 -1982.37744141 -2721.014404297 2717.29882813 1474.81860352 -2721.014404297 2717.29931641
		 1035.77844238 185.62565613 494.021240234 1035.77844238 185.62565613 -190.3503418
		 1035.77844238 -185.62564087 -190.3503418 1035.77844238 -2721.014404297 -190.3503418
		 1035.77844238 -2721.014404297 494.021240234 1035.77844238 -2721.014404297 1585.29858398
		 1035.77844238 -2721.014404297 2717.29931641 1035.77844238 -185.62564087 2717.29931641
		 1035.77844238 185.62565613 2717.29931641 1035.77844238 185.62565613 1585.29858398
		 596.73828125 185.62565613 494.021240234 596.73828125 185.62565613 -190.3503418 596.73828125 -185.62564087 -190.3503418
		 596.73828125 -2721.014404297 -190.3503418 596.73828125 -2721.014404297 494.021240234
		 596.73828125 -2721.014404297 1585.29858398 596.73828125 -2721.014404297 2717.29931641
		 596.73828125 -185.62564087 2717.29931641 596.73828125 185.62565613 2717.29931641
		 596.73828125 185.62565613 1585.29858398 -1374.15087891 185.62565613 494.021240234
		 -1374.15087891 185.62565613 1585.29833984 -1374.15087891 185.62565613 2717.29907227
		 -1374.15087891 -185.62564087 2717.29907227 -1374.15087891 -2721.014404297 2717.29907227
		 -1374.15087891 -2721.014404297 1585.29833984 -1374.15087891 -2721.014404297 494.021240234
		 -1374.15087891 -2721.014404297 -190.3503418 -1374.15087891 -185.62564087 -190.3503418
		 -1374.15087891 185.62565613 -190.3503418 -765.92449951 185.62565613 494.021240234
		 -765.92449951 185.62565613 1585.29846191 -765.92449951 185.62565613 2717.29931641
		 -765.92449951 -185.62564087 2717.29931641 -765.92449951 -2721.014404297 2717.29931641
		 -765.92449951 -2721.014404297 1585.29846191 -765.92449951 -2721.014404297 494.021240234
		 -765.92449951 -2721.014404297 -190.3503418 -765.92449951 -185.62564087 -190.3503418
		 -765.92449951 185.62565613 -190.3503418 -1374.15087891 185.62565613 1039.65979004
		 -765.92449951 185.62565613 1039.65991211 -157.69812012 185.62565613 1039.65991211
		 157.69812012 185.62565613 1039.65991211 596.73828125 185.62565613 1039.65991211 1035.77844238 185.62565613 1039.65991211
		 1474.81860352 185.62565613 1039.65991211 1474.81860352 -185.62564087 1039.65991211
		 1474.81860352 -2721.014404297 1039.65991211 1035.77844238 -2721.014404297 1039.65991211
		 596.73828125 -2721.014404297 1039.65991211 157.69812012 -2721.014404297 1039.65991211
		 -157.69812012 -2721.014404297 1039.65991211 -765.92449951 -2721.014404297 1039.65991211
		 -1374.15087891 -2721.014404297 1039.65979004 -1982.37744141 -2721.014404297 1039.65966797
		 -1982.37744141 -185.62564087 1039.65966797 -1982.37744141 185.62565613 1039.65966797
		 -157.69812012 185.62565613 2151.29882813 157.69812012 185.62565613 2151.29882813
		 596.73828125 185.62565613 2151.29882813 1035.77844238 185.62565613 2151.29882813
		 1474.81860352 185.62565613 2151.29882813 1474.81860352 -185.62564087 2151.29882813
		 1474.81860352 -2721.014404297 2151.29882813 1035.77844238 -2721.014404297 2151.29882813
		 596.73828125 -2721.014404297 2151.29882813 157.69812012 -2721.014404297 2151.29882813
		 -157.69812012 -2721.014404297 2151.29882813 -765.92449951 -2721.014404297 2151.29882813
		 -1374.15087891 -2721.014404297 2151.29882813 -1982.37744141 -2721.014404297 2151.29833984
		 -1982.37744141 -185.62564087 2151.29833984 -1982.37744141 185.62565613 2151.29833984
		 -1374.15087891 185.62565613 2151.29882813 -765.92449951 185.62565613 2151.29882813;
	setAttr -s 244 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 3 0 4 5 0 0 2 0 1 3 0 2 4 0 3 5 0 2 6 0 3 7 0
		 6 7 0 5 8 0 7 8 0 4 9 0 9 8 0 6 9 0 4 86 0 10 11 0 0 78 0 11 12 0 2 87 0 12 13 0
		 13 10 0 5 60 0 14 15 0 3 59 0 16 14 0 1 58 0 17 16 0 15 17 0 1 91 0 0 90 0 19 18 0
		 12 105 0 19 79 0 11 104 0 21 20 0 15 95 0 17 94 0 22 23 0 18 67 0 4 24 0 5 25 0 24 25 0
		 25 26 0 27 26 0 24 27 0 11 28 0 27 84 0 10 29 0 29 28 0 24 85 0 14 30 0 25 61 0 15 31 0
		 30 31 0 26 62 0 26 99 0 33 32 0 27 100 0 21 34 0 33 83 0 28 103 0 22 35 0 31 96 0
		 32 63 0 36 37 0 18 107 0 37 38 0 19 106 0 39 38 0 36 39 0 20 121 0 39 80 0 21 120 0
		 41 40 0 36 81 0 22 111 0 37 65 0 23 110 0 42 43 0 38 66 0 33 116 0 36 44 0 32 115 0
		 44 45 0 37 45 0 34 119 0 41 46 0 44 82 0 35 112 0 45 64 0 42 47 0 48 17 0 49 16 0
		 48 49 1 50 14 0 49 50 1 51 30 0 50 51 1 52 31 0 51 52 1 53 35 0 52 97 1 54 47 0 53 113 1
		 55 42 0 54 55 1 56 43 0 55 56 1 57 23 0 56 109 1 57 93 1 58 48 0 59 49 0 58 59 1
		 60 50 0 59 60 1 61 51 0 60 61 1 62 52 0 61 62 1 63 53 0 62 98 1 64 54 0 63 114 1
		 65 55 0 64 65 1 66 56 0 65 66 1 67 57 0 66 108 1 67 92 1 68 12 0 69 20 0 68 88 1
		 70 40 0 69 122 1 71 41 0 70 71 1 72 46 0 71 72 1 73 34 0 72 118 1 74 28 0 73 102 1
		 75 29 0 74 75 1 76 10 0 75 76 1 77 13 0 76 77 1 77 68 1 78 68 0 79 69 0 78 89 1 80 70 0
		 79 123 1 81 71 0 80 81 1 82 72 0 81 82 1 83 73 0 82 117 1 84 74 0 83 101 1 85 75 0;
	setAttr ".ed[166:243]" 84 85 1 86 76 0 85 86 1 87 77 0 86 87 1 87 78 1 88 69 1
		 89 79 1 88 89 1 90 19 0 89 90 1 91 18 0 90 91 1 92 58 1 91 92 1 93 48 1 92 93 1 94 23 0
		 93 94 1 95 22 0 94 95 1 96 35 0 95 96 1 97 53 1 96 97 1 98 63 1 97 98 1 99 32 0 98 99 1
		 100 33 0 99 100 1 101 84 1 100 101 1 102 74 1 101 102 1 103 34 0 102 103 1 104 21 0
		 103 104 1 105 20 0 104 105 1 105 88 1 106 39 0 107 38 0 106 107 1 108 67 1 107 108 1
		 109 57 1 108 109 1 110 43 0 109 110 1 111 42 0 110 111 1 112 47 0 111 112 1 113 54 1
		 112 113 1 114 64 1 113 114 1 115 45 0 114 115 1 116 44 0 115 116 1 117 83 1 116 117 1
		 118 73 1 117 118 1 119 46 0 118 119 1 120 41 0 119 120 1 121 40 0 120 121 1 122 70 1
		 121 122 1 123 80 1 122 123 1 123 106 1;
	setAttr -s 122 -ch 488 ".fc[0:121]" -type "polyFaces" 
		f 4 65 67 -70 -71
		mu 0 4 26 27 46 47
		f 4 0 4 -2 -4
		mu 0 4 2 3 5 4
		f 4 9 11 -14 -15
		mu 0 4 14 15 16 17
		f 4 42 43 -45 -46
		mu 0 4 34 35 9 8
		f 4 -24 -26 -28 -29
		mu 0 4 22 23 24 25
		f 4 16 18 20 21
		mu 0 4 18 19 20 21
		f 4 1 8 -10 -8
		mu 0 4 4 5 15 14
		f 4 6 10 -12 -9
		mu 0 4 5 7 16 15
		f 4 -3 12 13 -11
		mu 0 4 7 6 17 16
		f 4 -6 7 14 -13
		mu 0 4 6 4 14 17
		f 4 45 47 166 -51
		mu 0 4 38 0 92 93
		f 4 70 72 158 -76
		mu 0 4 26 47 88 89
		f 4 3 19 171 -18
		mu 0 4 2 13 95 86
		f 4 5 15 170 -20
		mu 0 4 13 12 94 95
		f 4 -44 52 120 -56
		mu 0 4 1 39 69 70
		f 4 -7 24 116 -23
		mu 0 4 10 11 67 68
		f 4 -5 26 114 -25
		mu 0 4 11 3 66 67
		f 4 -68 77 128 -81
		mu 0 4 46 27 73 74
		f 4 44 56 196 -59
		mu 0 4 0 1 107 108
		f 4 -1 30 178 -30
		mu 0 4 3 2 98 99
		f 4 17 154 176 -31
		mu 0 4 2 86 97 98
		f 4 -19 34 206 -33
		mu 0 4 20 19 112 113
		f 4 -48 58 198 197
		mu 0 4 92 0 108 109
		f 4 55 122 194 -57
		mu 0 4 1 70 106 107
		f 4 28 37 186 -37
		mu 0 4 22 25 102 103
		f 4 179 -27 29 180
		mu 0 4 100 66 3 99
		f 4 2 41 -43 -41
		mu 0 4 6 7 35 34
		f 4 -17 48 49 -47
		mu 0 4 19 18 37 36
		f 4 -16 40 50 168
		mu 0 4 94 12 38 93
		f 4 22 118 -53 -42
		mu 0 4 10 68 69 39
		f 4 23 53 -55 -52
		mu 0 4 23 22 41 40
		f 4 -66 82 84 -86
		mu 0 4 27 26 52 53
		f 4 75 160 -89 -83
		mu 0 4 26 89 90 52
		f 4 -35 46 61 204
		mu 0 4 112 19 36 111
		f 4 36 188 -64 -54
		mu 0 4 22 103 104 41
		f 4 -78 85 90 126
		mu 0 4 73 27 53 72
		f 4 -32 68 210 -67
		mu 0 4 28 29 114 115
		f 4 33 156 243 -69
		mu 0 4 29 87 131 114
		f 4 -36 73 238 -72
		mu 0 4 30 31 128 129
		f 4 38 78 218 -77
		mu 0 4 32 33 118 119
		f 4 -40 66 212 211
		mu 0 4 75 28 115 116
		f 4 57 83 228 -82
		mu 0 4 43 42 123 124
		f 4 59 86 236 -74
		mu 0 4 31 44 127 128
		f 4 -61 81 230 229
		mu 0 4 91 43 124 125
		f 4 64 124 226 -84
		mu 0 4 42 71 122 123
		f 4 -63 76 220 -90
		mu 0 4 45 32 119 120
		f 4 -95 92 27 -94
		mu 0 4 57 56 25 24
		f 4 -97 93 25 -96
		mu 0 4 58 57 24 23
		f 4 -99 95 51 -98
		mu 0 4 59 58 23 40
		f 4 -101 97 54 -100
		mu 0 4 60 59 40 41
		f 4 -103 99 63 190
		mu 0 4 105 60 41 104
		f 4 -105 101 89 222
		mu 0 4 121 61 45 120
		f 4 -106 -107 103 -92
		mu 0 4 50 63 62 55
		f 4 -109 105 79 -108
		mu 0 4 64 63 50 51
		f 4 -110 -214 216 -79
		mu 0 4 33 65 117 118
		f 4 -93 -182 184 -38
		mu 0 4 25 56 101 102
		f 4 -115 112 94 -114
		mu 0 4 67 66 56 57
		f 4 -117 113 96 -116
		mu 0 4 68 67 57 58
		f 4 -119 115 98 -118
		mu 0 4 69 68 58 59
		f 4 -121 117 100 -120
		mu 0 4 70 69 59 60
		f 4 -123 119 102 192
		mu 0 4 106 70 60 105
		f 4 -125 121 104 224
		mu 0 4 122 71 61 121
		f 4 -126 -127 123 106
		mu 0 4 63 73 72 62
		f 4 -129 125 108 -128
		mu 0 4 74 73 63 64
		f 4 -130 -212 214 213
		mu 0 4 65 75 116 117
		f 4 181 -113 -180 182
		mu 0 4 101 56 66 100
		f 4 132 32 207 -135
		mu 0 4 76 20 113 96
		f 4 -137 133 71 240
		mu 0 4 130 77 30 129
		f 4 -139 135 -75 -138
		mu 0 4 79 78 48 49
		f 4 -141 137 87 -140
		mu 0 4 80 79 49 54
		f 4 -142 -232 234 -87
		mu 0 4 44 81 126 127
		f 4 -144 -200 202 -62
		mu 0 4 36 82 110 111
		f 4 -147 143 -50 -146
		mu 0 4 83 82 36 37
		f 4 -148 -149 145 -49
		mu 0 4 18 84 83 37
		f 4 -151 147 -22 -150
		mu 0 4 85 84 18 21
		f 4 -152 149 -21 -133
		mu 0 4 76 85 21 20
		f 4 152 134 174 -155
		mu 0 4 86 76 96 97
		f 4 -157 153 136 242
		mu 0 4 131 87 77 130
		f 4 -159 155 138 -158
		mu 0 4 89 88 78 79
		f 4 -161 157 140 -160
		mu 0 4 90 89 79 80
		f 4 -162 -230 232 231
		mu 0 4 81 91 125 126
		f 4 -164 -198 200 199
		mu 0 4 82 92 109 110
		f 4 -167 163 146 -166
		mu 0 4 93 92 82 83
		f 4 -168 -169 165 148
		mu 0 4 84 94 93 83
		f 4 -171 167 150 -170
		mu 0 4 95 94 84 85
		f 4 -172 169 151 -153
		mu 0 4 86 95 85 76
		f 4 -175 172 -154 -174
		mu 0 4 97 96 77 87
		f 4 -177 173 -34 -176
		mu 0 4 98 97 87 29
		f 4 -179 175 31 -178
		mu 0 4 99 98 29 28
		f 4 131 -181 177 39
		mu 0 4 75 100 99 28
		f 4 111 -183 -132 129
		mu 0 4 65 101 100 75
		f 4 -185 -112 109 -184
		mu 0 4 102 101 65 33
		f 4 -187 183 -39 -186
		mu 0 4 103 102 33 32
		f 4 -189 185 62 -188
		mu 0 4 104 103 32 45
		f 4 -190 -191 187 -102
		mu 0 4 61 105 104 45
		f 4 -192 -193 189 -122
		mu 0 4 71 106 105 61
		f 4 -195 191 -65 -194
		mu 0 4 107 106 71 42
		f 4 -197 193 -58 -196
		mu 0 4 108 107 42 43
		f 4 -199 195 60 164
		mu 0 4 109 108 43 91
		f 4 -201 -165 161 144
		mu 0 4 110 109 91 81
		f 4 -203 -145 141 -202
		mu 0 4 111 110 81 44
		f 4 -204 -205 201 -60
		mu 0 4 31 112 111 44
		f 4 -207 203 35 -206
		mu 0 4 113 112 31 30
		f 4 -208 205 -134 -173
		mu 0 4 96 113 30 77
		f 4 -211 208 69 -210
		mu 0 4 115 114 47 46
		f 4 -213 209 80 130
		mu 0 4 116 115 46 74
		f 4 -215 -131 127 110
		mu 0 4 117 116 74 64
		f 4 -217 -111 107 -216
		mu 0 4 118 117 64 51
		f 4 -219 215 -80 -218
		mu 0 4 119 118 51 50
		f 4 -221 217 91 -220
		mu 0 4 120 119 50 55
		f 4 -222 -223 219 -104
		mu 0 4 62 121 120 55
		f 4 -224 -225 221 -124
		mu 0 4 72 122 121 62
		f 4 -227 223 -91 -226
		mu 0 4 123 122 72 53
		f 4 -229 225 -85 -228
		mu 0 4 124 123 53 52
		f 4 -231 227 88 162
		mu 0 4 125 124 52 90
		f 4 -233 -163 159 142
		mu 0 4 126 125 90 80
		f 4 -235 -143 139 -234
		mu 0 4 127 126 80 54
		f 4 -237 233 -88 -236
		mu 0 4 128 127 54 49
		f 4 -239 235 74 -238
		mu 0 4 129 128 49 48
		f 4 -240 -241 237 -136
		mu 0 4 78 130 129 48
		f 4 -242 -243 239 -156
		mu 0 4 88 131 130 78
		f 4 -244 241 -73 -209
		mu 0 4 114 131 88 47;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "pCone1";
	setAttr ".t" -type "double3" 150.01168669852302 3173.8242652448585 9591.7683382495288 ;
	setAttr ".r" -type "double3" -184.3542940914067 0 0 ;
createNode mesh -n "pConeShape1" -p "pCone1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape31" -p "pCone1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.50000006 0 0.25
		 0.24999999 0.5 0.5 0.75 0.25 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".vt[0:4]"  4.3325974e-005 -673.44494629 -330.39425659
		 -330.39425659 -673.44494629 -2.8883984e-005 -1.4441992e-005 -673.44494629 330.39425659
		 330.39425659 -673.44494629 0 0 673.44494629 0;
	setAttr -s 8 ".ed[0:7]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 1 4 0 2 4 0
		 3 4 0;
	setAttr -s 5 -ch 16 ".fc[0:4]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 3 0 5 -5
		mu 0 3 4 5 9
		f 3 1 6 -6
		mu 0 3 5 6 9
		f 3 2 7 -7
		mu 0 3 6 7 9
		f 3 3 4 -8
		mu 0 3 7 8 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCone3";
	setAttr ".t" -type "double3" -601.54115744105877 3164.5996989943387 10415.910994062084 ;
	setAttr ".r" -type "double3" -184.3542940914067 0 0 ;
createNode mesh -n "pConeShape3" -p "pCone3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape30" -p "pCone3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.50000006 0 0.25
		 0.24999999 0.5 0.5 0.75 0.25 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".vt[0:4]"  4.3325974e-005 -673.44494629 -330.39425659
		 -330.39425659 -673.44494629 -2.8883984e-005 -1.4441992e-005 -673.44494629 330.39425659
		 330.39425659 -673.44494629 0 0 673.44494629 0;
	setAttr -s 8 ".ed[0:7]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 1 4 0 2 4 0
		 3 4 0;
	setAttr -s 5 -ch 16 ".fc[0:4]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 3 0 5 -5
		mu 0 3 4 5 9
		f 3 1 6 -6
		mu 0 3 5 6 9
		f 3 2 7 -7
		mu 0 3 6 7 9
		f 3 3 4 -8
		mu 0 3 7 8 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCone4";
	setAttr ".t" -type "double3" 443.85438935475952 3168.8191043141687 10593.078122318262 ;
	setAttr ".r" -type "double3" -184.3542940914067 0 0 ;
createNode mesh -n "pConeShape4" -p "pCone4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape32" -p "pCone4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.50000006 0 0.25
		 0.24999999 0.5 0.5 0.75 0.25 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".vt[0:4]"  4.3325974e-005 -673.44494629 -330.39425659
		 -330.39425659 -673.44494629 -2.8883984e-005 -1.4441992e-005 -673.44494629 330.39425659
		 330.39425659 -673.44494629 0 0 673.44494629 0;
	setAttr -s 8 ".ed[0:7]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 1 4 0 2 4 0
		 3 4 0;
	setAttr -s 5 -ch 16 ".fc[0:4]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 3 0 5 -5
		mu 0 3 4 5 9
		f 3 1 6 -6
		mu 0 3 5 6 9
		f 3 2 7 -7
		mu 0 3 6 7 9
		f 3 3 4 -8
		mu 0 3 7 8 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3";
	setAttr ".t" -type "double3" 455.9780737097476 -1156.8465179101588 4013.8242896717438 ;
	setAttr ".s" -type "double3" 1.3534956420873032 1 1.3534956420873032 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape27" -p "pCube3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 897.29895 0 0 897.29895 
		0 0 18.861986 0 0 18.861986 0 0 -173.76801 0 0 -173.76801 0 0 897.29895 0 0 897.29895 
		0;
	setAttr -s 8 ".vt[0:7]"  -247.46516418 -1114.47753906 277.54977417
		 247.46516418 -1114.47753906 277.54977417 -247.46516418 1114.47753906 277.54977417
		 247.46516418 1114.47753906 277.54977417 -247.46516418 1114.47753906 -277.54977417
		 247.46516418 1114.47753906 -277.54977417 -247.46516418 -1114.47753906 -277.54977417
		 247.46516418 -1114.47753906 -277.54977417;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube4";
	setAttr ".t" -type "double3" 675.60574031814122 -980.1874673572047 5015.0095421378828 ;
	setAttr ".s" -type "double3" 1.4925689485269953 1 1.4925689485269953 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape24" -p "pCube4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 7 ".pt";
	setAttr ".pt[0]" -type "float3" -207.81754 1711.1073 186.40918 ;
	setAttr ".pt[1]" -type "float3" 1.1368684e-013 1711.1073 186.40918 ;
	setAttr ".pt[2]" -type "float3" -207.81754 0 186.40918 ;
	setAttr ".pt[3]" -type "float3" 0 0 186.40918 ;
	setAttr ".pt[4]" -type "float3" -207.81754 0 -4.5474735e-013 ;
	setAttr ".pt[6]" -type "float3" -207.81754 1711.1073 -9.094947e-013 ;
	setAttr ".pt[7]" -type "float3" 1.1368684e-013 1711.1073 -4.5474735e-013 ;
	setAttr -s 8 ".vt[0:7]"  -247.46516418 -1114.47753906 277.54977417
		 247.46516418 -1114.47753906 277.54977417 -247.46516418 1114.47753906 277.54977417
		 247.46516418 1114.47753906 277.54977417 -247.46516418 1114.47753906 -277.54977417
		 247.46516418 1114.47753906 -277.54977417 -247.46516418 -1114.47753906 -277.54977417
		 247.46516418 -1114.47753906 -277.54977417;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5";
	setAttr ".t" -type "double3" -8969.1522876101408 -3146.2292922160509 13891.690131013767 ;
	setAttr ".r" -type "double3" 0 31.129929865468281 0 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape26" -p "pCube5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -511.2561 -2987.0938 351.0202 
		776.21814 -2987.0938 457.16107 -511.2561 3745.5803 351.0202 776.21814 3745.5803 457.16107 
		-511.2561 3745.5803 0 923.2876 3745.5803 118.63755 -511.2561 -2987.0938 0 923.2876 
		-2987.0938 118.63755;
	setAttr -s 8 ".vt[0:7]"  -259.45922852 -454.062530518 260.3168335
		 259.45922852 -454.062530518 260.3168335 -259.45922852 454.062530518 260.3168335 259.45922852 454.062530518 260.3168335
		 -259.45922852 454.062530518 -260.3168335 259.45922852 454.062530518 -260.3168335
		 -259.45922852 -454.062530518 -260.3168335 259.45922852 -454.062530518 -260.3168335;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "coverrock3";
	setAttr ".t" -type "double3" 839.4660266881549 234.02243310033617 5363.4476746618184 ;
	setAttr ".s" -type "double3" 1 1.3662160711659888 1 ;
createNode mesh -n "coverrock3Shape" -p "coverrock3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.50000006 0 0.25
		 0.24999999 0.5 0.5 0.75 0.25 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".vt[0:4]"  1.950779e-005 -74.38104248 -148.76208496
		 -148.76208496 -74.38104248 -1.3005195e-005 -6.5025974e-006 -74.38104248 148.76208496
		 148.76208496 -74.38104248 0 0 74.38104248 0;
	setAttr -s 8 ".ed[0:7]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 1 4 0 2 4 0
		 3 4 0;
	setAttr -s 5 -ch 16 ".fc[0:4]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 3 0 5 -5
		mu 0 3 4 5 9
		f 3 1 6 -6
		mu 0 3 5 6 9
		f 3 2 7 -7
		mu 0 3 6 7 9
		f 3 3 4 -8
		mu 0 3 7 8 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "coverrock4";
	setAttr ".t" -type "double3" -935.42497704882499 233.09254271646523 5539.0893263464368 ;
	setAttr ".r" -type "double3" 0 -42.599715782214552 0 ;
	setAttr ".s" -type "double3" 1 1.3662160711659888 1 ;
createNode mesh -n "coverrock4Shape" -p "coverrock4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape29" -p "coverrock4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.50000006 0 0.25
		 0.24999999 0.5 0.5 0.75 0.25 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".vt[0:4]"  1.950779e-005 -74.38104248 -148.76208496
		 -148.76208496 -74.38104248 -1.3005195e-005 -6.5025974e-006 -74.38104248 148.76208496
		 148.76208496 -74.38104248 0 0 74.38104248 0;
	setAttr -s 8 ".ed[0:7]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 1 4 0 2 4 0
		 3 4 0;
	setAttr -s 5 -ch 16 ".fc[0:4]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 3 0 5 -5
		mu 0 3 4 5 9
		f 3 1 6 -6
		mu 0 3 5 6 9
		f 3 2 7 -7
		mu 0 3 6 7 9
		f 3 3 4 -8
		mu 0 3 7 8 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder1";
	setAttr ".t" -type "double3" -1467.856965413778 1504.6696344576515 5666.9490509647349 ;
	setAttr ".r" -type "double3" 0 -4.9574862019322037 0 ;
	setAttr ".rp" -type "double3" 3.0517578125e-005 -1653.918701171875 1.52587890625e-005 ;
	setAttr ".rpt" -type "double3" -1.4327750977388339e-006 0 2.5801417108049892e-006 ;
	setAttr ".sp" -type "double3" 3.0517578125e-005 -1653.918701171875 1.52587890625e-005 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.15625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape5" -p "pCylinder1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.15625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 11 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -3307.8374 0 ;
	setAttr ".pt[1]" -type "float3" 0 -3307.8374 0 ;
	setAttr ".pt[2]" -type "float3" -126.24976 -3307.8374 -13.439626 ;
	setAttr ".pt[3]" -type "float3" 0 -3307.8374 0 ;
	setAttr ".pt[4]" -type "float3" -86.875809 -3307.8374 71.086983 ;
	setAttr ".pt[5]" -type "float3" 0 -3307.8374 0 ;
	setAttr ".pt[6]" -type "float3" 0 -3307.8374 0 ;
	setAttr ".pt[7]" -type "float3" 0 -3307.8374 0 ;
	setAttr ".pt[10]" -type "float3" -126.24976 0 -13.439626 ;
	setAttr ".pt[12]" -type "float3" -86.875809 9.094947e-013 71.086983 ;
	setAttr ".pt[16]" -type "float3" 0 -3307.8374 0 ;
	setAttr -s 18 ".vt[0:17]"  299.52914429 -2541.7578125 -299.52914429
		 0 -2541.7578125 -423.59814453 -299.52914429 -2541.7578125 -299.52914429 -423.59814453 -2541.7578125 0
		 -299.52914429 -2541.7578125 299.52914429 0 -2541.7578125 423.59817505 299.52914429 -2541.7578125 299.52914429
		 423.59820557 -2541.7578125 0 299.52914429 2541.7578125 -299.52914429 0 2541.7578125 -423.59814453
		 -299.52914429 2541.7578125 -299.52914429 -423.59814453 2541.7578125 0 -299.52914429 2541.7578125 299.52914429
		 0 2541.7578125 423.59817505 299.52914429 2541.7578125 299.52914429 423.59820557 2541.7578125 0
		 0 -2541.7578125 0 0 2541.7578125 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1;
	setAttr -s 24 -ch 80 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6";
	setAttr ".t" -type "double3" -7558.2403364855927 -2772.8569066637419 13813.608267786816 ;
	setAttr ".r" -type "double3" -10.839811923068625 21.32664735984909 -4.2679534833124108e-016 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape20" -p "pCube6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0 1122.9502 0 0 1122.9502 
		0 0 1122.9502 0 0 1122.9502 0 0 -637.92822 0 0 -637.92822 0 0 -637.92822 0 0 -637.92822;
	setAttr -s 8 ".vt[0:7]"  -301.012634277 -745.80432129 244.016342163
		 301.012634277 -745.80432129 244.016342163 -301.012634277 745.80432129 244.016342163
		 301.012634277 745.80432129 244.016342163 -301.012634277 745.80432129 -244.016342163
		 301.012634277 745.80432129 -244.016342163 -301.012634277 -745.80432129 -244.016342163
		 301.012634277 -745.80432129 -244.016342163;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "coverrock5";
	setAttr ".t" -type "double3" -6193.7991018154917 -2089.3596900575153 15501.222628926083 ;
	setAttr ".s" -type "double3" 1 1.3662160711659888 1 ;
createNode mesh -n "coverrock5Shape" -p "coverrock5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.50000006 0 0.25
		 0.24999999 0.5 0.5 0.75 0.25 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".vt[0:4]"  1.950779e-005 -74.38104248 -148.76208496
		 -148.76208496 -74.38104248 -1.3005195e-005 -6.5025974e-006 -74.38104248 148.76208496
		 148.76208496 -74.38104248 0 0 74.38104248 0;
	setAttr -s 8 ".ed[0:7]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 1 4 0 2 4 0
		 3 4 0;
	setAttr -s 5 -ch 16 ".fc[0:4]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 3 0 5 -5
		mu 0 3 4 5 9
		f 3 1 6 -6
		mu 0 3 5 6 9
		f 3 2 7 -7
		mu 0 3 6 7 9
		f 3 3 4 -8
		mu 0 3 7 8 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube7";
	setAttr ".t" -type "double3" -1214.5667152355713 174.23326929020104 5328.5094121309285 ;
createNode mesh -n "pCubeShape7" -p "pCube7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -75.58530426 -35.58328247 69.58628082 75.58530426 -35.58328247 69.58628082
		 -75.58530426 35.58328247 69.58628082 75.58530426 35.58328247 69.58628082 -75.58530426 35.58328247 -69.58628082
		 75.58530426 35.58328247 -69.58628082 -75.58530426 -35.58328247 -69.58628082 75.58530426 -35.58328247 -69.58628082;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group1";
	setAttr ".t" -type "double3" 6284.5828569495807 -1.8189894035458559e-012 -396.84431561750722 ;
createNode transform -n "pCylinder2" -p "group1";
	setAttr ".t" -type "double3" -7682.9669235206011 1504.6696344576501 16182.127326021906 ;
	setAttr ".r" -type "double3" 0 -4.9574862019322037 0 ;
	setAttr ".s" -type "double3" 1.347926154949646 1 1.347926154949646 ;
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.1562500074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape6" -p "pCylinder2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.1562500074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -3307.8374 0 ;
	setAttr ".pt[1]" -type "float3" 0 -3307.8374 0 ;
	setAttr ".pt[2]" -type "float3" 0 -3307.8374 0 ;
	setAttr ".pt[3]" -type "float3" 0 -3307.8374 0 ;
	setAttr ".pt[4]" -type "float3" 0 -3307.8374 0 ;
	setAttr ".pt[5]" -type "float3" 0 -3307.8374 0 ;
	setAttr ".pt[6]" -type "float3" 0 -3307.8374 0 ;
	setAttr ".pt[7]" -type "float3" 0 -3307.8374 0 ;
	setAttr ".pt[16]" -type "float3" 0 -3307.8374 0 ;
	setAttr -s 18 ".vt[0:17]"  299.52914429 -2541.7578125 -299.52914429
		 0 -2541.7578125 -423.59814453 -299.52914429 -2541.7578125 -299.52914429 -423.59814453 -2541.7578125 0
		 -299.52914429 -2541.7578125 299.52914429 0 -2541.7578125 423.59817505 299.52914429 -2541.7578125 299.52914429
		 423.59820557 -2541.7578125 0 299.52914429 2541.7578125 -299.52914429 0 2541.7578125 -423.59814453
		 -299.52914429 2541.7578125 -299.52914429 -423.59814453 2541.7578125 0 -299.52914429 2541.7578125 299.52914429
		 0 2541.7578125 423.59817505 299.52914429 2541.7578125 299.52914429 423.59820557 2541.7578125 0
		 0 -2541.7578125 0 0 2541.7578125 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1;
	setAttr -s 24 -ch 80 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube8" -p "group1";
	setAttr ".t" -type "double3" -7872.9263841599359 165.98230319488408 16845.837372826281 ;
	setAttr ".r" -type "double3" 0 -220.64899434886206 0 ;
createNode mesh -n "pCubeShape8" -p "pCube8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.54166662693023682 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape14" -p "pCube8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.54166662693023682 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.54166663 0.25 0.54166663 0.5 0.54166663 0.75 0.54166663
		 0 0.54166663 1 0.45833331 0.25 0.45833331 0.5 0.45833331 0.75 0.45833331 0 0.45833331
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  -1350.5208 372.17746 37.17926 
		97.973251 0 185.13641 -1350.5208 372.17746 37.17926 97.973251 0 185.13641 -1328.6305 
		372.17746 -505.89392 262.75269 0 -219.10217 -1328.6305 372.17746 -505.89392 262.75269 
		0 -219.10217 -130.47359 0 203.74176 46.903263 4.5474735e-013 -478.23322 46.903263 
		4.5474735e-013 -478.23322 -130.47359 0 203.74176 -1165.5232 372.17746 74.01767 -1143.6332 
		372.17746 -469.05597 -1143.6332 372.17746 -469.05597 -1165.5232 372.17746 74.01767;
	setAttr -s 16 ".vt[0:15]"  -1131.37011719 -183.56710815 178.56513977
		 673.91308594 -183.56710815 178.56513977 -1131.37011719 183.56710815 178.56513977
		 673.91308594 183.56710815 178.56513977 -1131.37011719 183.56710815 -178.56513977
		 673.91308594 183.56710815 -178.56513977 -1131.37011719 -183.56710815 -178.56513977
		 673.91308594 -183.56710815 -178.56513977 72.15194702 183.56710815 178.56513977 72.15194702 183.56710815 -178.56513977
		 72.15194702 -183.56710815 -178.56513977 72.15194702 -183.56710815 178.56513977 -529.60906982 183.56710815 178.56513977
		 -529.60906982 183.56710815 -178.56513977 -529.60906982 -183.56710815 -178.56513977
		 -529.60906982 -183.56710815 178.56513977;
	setAttr -s 28 ".ed[0:27]"  0 15 0 2 12 0 4 13 0 6 14 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 3 0 9 5 0 8 9 1 10 7 0 9 10 1 11 1 0 10 11 1 11 8 1
		 12 8 0 13 9 0 12 13 1 14 10 0 13 14 1 15 11 0 14 15 1 15 12 1;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 27 -2 -5
		mu 0 4 0 22 19 2
		f 4 1 22 -3 -7
		mu 0 4 2 19 20 4
		f 4 2 24 -4 -9
		mu 0 4 4 20 21 6
		f 4 3 26 -1 -11
		mu 0 4 6 21 23 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 7 -14 -15
		mu 0 4 14 3 5 15
		f 4 -17 13 9 -16
		mu 0 4 16 15 5 7
		f 4 -19 15 11 -18
		mu 0 4 18 16 7 9
		f 4 -20 17 5 -13
		mu 0 4 14 17 1 3
		f 4 20 14 -22 -23
		mu 0 4 19 14 15 20
		f 4 -25 21 16 -24
		mu 0 4 21 20 15 16
		f 4 -27 23 18 -26
		mu 0 4 23 21 16 18
		f 4 -28 25 19 -21
		mu 0 4 19 22 17 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder5" -p "group1";
	setAttr ".t" -type "double3" -5974.8098198211283 1504.669634457651 17718.202551479386 ;
	setAttr ".r" -type "double3" 0 -4.9574862019322037 0 ;
	setAttr ".s" -type "double3" 1.347926154949646 1 1.347926154949646 ;
createNode mesh -n "pCylinderShape5" -p "pCylinder5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5000000074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape7" -p "pCylinder5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5625 0.50046992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -3307.8374 0 ;
	setAttr ".pt[1]" -type "float3" 0 -3307.8374 0 ;
	setAttr ".pt[2]" -type "float3" 0 -3307.8374 0 ;
	setAttr ".pt[3]" -type "float3" 0 -3307.8374 0 ;
	setAttr ".pt[4]" -type "float3" 0 -3307.8374 0 ;
	setAttr ".pt[5]" -type "float3" 0 -3307.8374 0 ;
	setAttr ".pt[6]" -type "float3" -37.916138 -3307.8374 -68.351006 ;
	setAttr ".pt[7]" -type "float3" 0 -3307.8374 0 ;
	setAttr ".pt[14]" -type "float3" -37.916138 0 -68.351006 ;
	setAttr ".pt[16]" -type "float3" 0 -3307.8374 0 ;
	setAttr -s 18 ".vt[0:17]"  299.52914429 -2541.7578125 -299.52914429
		 0 -2541.7578125 -423.59814453 -299.52914429 -2541.7578125 -299.52914429 -423.59814453 -2541.7578125 0
		 -299.52914429 -2541.7578125 299.52914429 0 -2541.7578125 423.59817505 299.52914429 -2541.7578125 299.52914429
		 423.59820557 -2541.7578125 0 299.52914429 2541.7578125 -299.52914429 0 2541.7578125 -423.59814453
		 -299.52914429 2541.7578125 -299.52914429 -423.59814453 2541.7578125 0 -299.52914429 2541.7578125 299.52914429
		 0 2541.7578125 423.59817505 299.52914429 2541.7578125 299.52914429 423.59820557 2541.7578125 0
		 0 -2541.7578125 0 0 2541.7578125 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1;
	setAttr -s 24 -ch 80 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube10";
	setAttr ".t" -type "double3" -2523.9347908251916 -458.7197680410253 5046.6184988880414 ;
	setAttr ".r" -type "double3" 0 0 11.918280299582049 ;
	setAttr ".rp" -type "double3" 0 339.74484252929687 0 ;
	setAttr ".rpt" -type "double3" -85.242224858699871 -10.867477655404153 0 ;
	setAttr ".sp" -type "double3" 0 339.74484252929687 0 ;
createNode mesh -n "pCubeShape10" -p "pCube10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape22" -p "pCube10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.125 0 0.375 0 0.375 0.25 0.125 0.25 0.375 0 0.625
		 0 0.625 0.25 0.375 0.25 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.125 0 0.125 0
		 0.125 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[2]" -type "float3" -19.251659 -20.065655 0 ;
	setAttr ".pt[4]" -type "float3" 0 54.210167 0 ;
	setAttr ".pt[8]" -type "float3" -479.59525 113.17689 480.03162 ;
	setAttr ".pt[9]" -type "float3" -100.29496 113.17689 362.66602 ;
	setAttr ".pt[10]" -type "float3" -119.54652 -31.507654 362.66632 ;
	setAttr ".pt[11]" -type "float3" -479.59512 42.768158 480.03192 ;
	setAttr ".pt[16]" -type "float3" 21.926718 138.80676 -519.52374 ;
	setAttr ".pt[17]" -type "float3" 0 0 -519.52374 ;
	setAttr ".pt[18]" -type "float3" 0 0 -519.52374 ;
	setAttr ".pt[19]" -type "float3" 0 0 -519.52374 ;
	setAttr ".pt[20]" -type "float3" -773.01184 113.17689 51.298813 ;
	setAttr ".pt[21]" -type "float3" -751.0849 127.36472 51.299179 ;
	setAttr -s 22 ".vt[0:21]"  -742.066894531 89.12523651 262.81591797 742.067138672 89.12526703 262.81591797
		 -742.066894531 590.36450195 262.81591797 846.77734375 563.22424316 262.81591797 -742.066894531 590.36450195 -435.04296875
		 846.77734375 563.22424316 -435.04296875 -742.066894531 89.12523651 -435.04296875
		 742.067138672 89.12526703 -435.04296875 -1537.39770508 89.12523651 -408.77392578
		 -1537.39770508 89.12523651 262.81591797 -1537.39819336 590.36444092 262.81591797
		 -1537.39819336 590.36444092 -408.77392578 -101.58496094 86.92223358 732.29541016
		 742.067138672 89.12526703 973.37109375 846.77734375 563.22424316 973.37109375 -101.58496094 588.16137695 732.29541016
		 -742.066894531 590.36450195 -435.04296875 846.77734375 563.22424316 -435.04296875
		 742.067138672 89.12526703 -435.04296875 -742.066894531 89.12523651 -435.04296875
		 -1537.39770508 89.12523651 -408.77392578 -1537.39819336 590.36444092 -408.77392578;
	setAttr -s 40 ".ed[0:39]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 5 7 0 6 0 0 7 1 0 6 8 0 0 9 0 8 9 0 2 10 0 9 10 0 4 11 0 10 11 0 11 8 0 0 12 0
		 1 13 0 12 13 0 3 14 0 13 14 0 2 15 0 15 14 0 12 15 0 4 16 0 5 17 0 16 17 0 7 18 0
		 17 18 0 6 19 0 19 18 0 16 19 0 8 20 0 19 20 0 11 21 0 21 20 0 16 21 0;
	setAttr -s 20 -ch 80 ".fc[0:19]" -type "polyFaces" 
		f 4 21 23 -26 -27
		mu 0 4 18 19 20 21
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 29 31 -34 -35
		mu 0 4 22 23 24 25
		f 4 3 10 -1 -10
		mu 0 4 6 7 9 8
		f 4 -11 -9 -8 -6
		mu 0 4 1 10 11 3
		f 4 13 15 17 18
		mu 0 4 14 15 16 17
		f 4 9 12 -14 -12
		mu 0 4 12 0 15 14
		f 4 4 14 -16 -13
		mu 0 4 0 2 16 15
		f 4 6 16 -18 -15
		mu 0 4 2 13 17 16
		f 4 34 36 -39 -40
		mu 0 4 29 26 27 28
		f 4 0 20 -22 -20
		mu 0 4 0 1 19 18
		f 4 5 22 -24 -21
		mu 0 4 1 3 20 19
		f 4 -2 24 25 -23
		mu 0 4 3 2 21 20
		f 4 -5 19 26 -25
		mu 0 4 2 0 18 21
		f 4 2 28 -30 -28
		mu 0 4 4 5 23 22
		f 4 8 30 -32 -29
		mu 0 4 5 7 24 23
		f 4 -4 32 33 -31
		mu 0 4 7 6 25 24
		f 4 11 35 -37 -33
		mu 0 4 12 14 27 26
		f 4 -19 37 38 -36
		mu 0 4 14 17 28 27
		f 4 -17 27 39 -38
		mu 0 4 17 13 29 28;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube11";
	setAttr ".t" -type "double3" -4830.5277135344486 -761.34225835022676 6187.9098016814442 ;
	setAttr ".r" -type "double3" 19.238231833107921 74.854173233454532 23.955931364933218 ;
	setAttr ".s" -type "double3" 1 1 1.9478018026410604 ;
	setAttr ".rp" -type "double3" -881.9583740234375 -9.1552734375e-005 454.90914667213588 ;
	setAttr ".rpt" -type "double3" 422.10858746456393 -189.74950807662603 403.76784060439576 ;
	setAttr ".sp" -type "double3" -881.9583740234375 -9.1552734375e-005 233.55001831054687 ;
	setAttr ".spt" -type "double3" 0 0 221.35912836158897 ;
createNode mesh -n "pCubeShape11" -p "pCube11";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "pCube11";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.125 0 0.375 0 0.375 0.25 0.125 0.25 0.375 0.75 0.625
		 0.75 0.625 1 0.375 1 0.375 0 0.375 0 0.125 0 0.125 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 236.81699 -12.746206 -274.16409 ;
	setAttr ".pt[2]" -type "float3" 236.81699 -12.746206 -274.16409 ;
	setAttr ".pt[12]" -type "float3" -523.65063 -2476.1602 20.839649 ;
	setAttr ".pt[13]" -type "float3" -523.65063 -2476.1602 20.839649 ;
	setAttr ".pt[14]" -type "float3" -523.65063 -2476.1602 20.839649 ;
	setAttr ".pt[15]" -type "float3" -286.83368 -2488.9067 -253.32449 ;
	setAttr ".pt[16]" -type "float3" -523.65063 -2476.1602 20.839649 ;
	setAttr ".pt[17]" -type "float3" -523.65063 -2476.1602 20.839649 ;
	setAttr -s 18 ".vt[0:17]"  -1262.95019531 -1387.82641602 686.85644531
		 370.27099609 -1387.82653809 686.85656738 -1027.39257813 273.95593262 677.48205566
		 605.828125 273.95581055 677.48168945 -628.99609375 273.95593262 -426.76306152 1226.0546875 273.95581055 -135.56542969
		 -864.55371094 -1387.82629395 -417.38891602 990.49707031 -1387.82653809 -126.19091797
		 -2605.30273438 -1387.82641602 -201.0070800781 -2605.30273438 -1387.82641602 686.85644531
		 -2369.74414063 273.95593262 677.48217773 -2369.74414063 273.95587158 -210.38134766
		 -864.55371094 -1387.82629395 -417.38891602 990.49707031 -1387.82653809 -126.19091797
		 370.27099609 -1387.82653809 686.85656738 -1262.95019531 -1387.82641602 686.85644531
		 -2605.30273438 -1387.82641602 686.85644531 -2605.30273438 -1387.82641602 -201.0070800781;
	setAttr -s 32 ".ed[0:31]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 7 1 0 6 8 0 0 9 0 8 9 0 2 10 0 9 10 0 4 11 0 10 11 0 11 8 0 6 12 0
		 7 13 0 12 13 0 1 14 0 13 14 0 0 15 0 15 14 0 12 15 0 9 16 0 15 16 0 8 17 0 17 16 0
		 12 17 0;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 21 23 -26 -27
		mu 0 4 18 19 20 21
		f 4 -11 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 13 15 17 18
		mu 0 4 14 15 16 17
		f 4 26 28 -31 -32
		mu 0 4 25 22 23 24
		f 4 4 14 -16 -13
		mu 0 4 0 2 16 15
		f 4 6 16 -18 -15
		mu 0 4 2 13 17 16
		f 4 8 11 -19 -17
		mu 0 4 13 12 14 17
		f 4 3 20 -22 -20
		mu 0 4 6 7 19 18
		f 4 10 22 -24 -21
		mu 0 4 7 9 20 19
		f 4 -1 24 25 -23
		mu 0 4 9 8 21 20
		f 4 12 27 -29 -25
		mu 0 4 0 15 23 22
		f 4 -14 29 30 -28
		mu 0 4 15 14 24 23
		f 4 -12 19 31 -30
		mu 0 4 14 12 25 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder3";
	setAttr ".t" -type "double3" -7996.6011652105462 1504.6696344576492 9340.7190193929655 ;
	setAttr ".r" -type "double3" 0 -4.9574862019322037 0 ;
	setAttr ".s" -type "double3" 3.2478792565768475 1 3.2478792565768475 ;
createNode mesh -n "pCylinderShape3" -p "pCylinder3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.50046992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape4" -p "pCylinder3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.50046992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 13 ".pt";
	setAttr ".pt[0]" -type "float3" 188.13948 -3307.8374 63.178226 ;
	setAttr ".pt[1]" -type "float3" 221.92094 -3307.8374 39.085598 ;
	setAttr ".pt[2]" -type "float3" 205.83653 -3307.8374 -85.864571 ;
	setAttr ".pt[3]" -type "float3" 0 -3307.8374 0 ;
	setAttr ".pt[4]" -type "float3" -67.979156 -3307.8374 16.720253 ;
	setAttr ".pt[5]" -type "float3" 0 -3307.8374 0 ;
	setAttr ".pt[6]" -type "float3" 0 -3307.8374 0 ;
	setAttr ".pt[7]" -type "float3" 0 -3307.8374 0 ;
	setAttr ".pt[8]" -type "float3" 188.13948 4.5474735e-013 63.178226 ;
	setAttr ".pt[9]" -type "float3" 221.92094 0 39.085598 ;
	setAttr ".pt[10]" -type "float3" 205.83653 4.5474735e-013 -85.864571 ;
	setAttr ".pt[12]" -type "float3" -67.979156 0 16.720253 ;
	setAttr ".pt[16]" -type "float3" 0 -3307.8374 0 ;
	setAttr -s 18 ".vt[0:17]"  299.52914429 -2541.7578125 -299.52914429
		 0 -2541.7578125 -423.59814453 -299.52914429 -2541.7578125 -299.52914429 -423.59814453 -2541.7578125 0
		 -299.52914429 -2541.7578125 299.52914429 0 -2541.7578125 423.59817505 299.52914429 -2541.7578125 299.52914429
		 423.59820557 -2541.7578125 0 299.52914429 2541.7578125 -299.52914429 0 2541.7578125 -423.59814453
		 -299.52914429 2541.7578125 -299.52914429 -423.59814453 2541.7578125 0 -299.52914429 2541.7578125 299.52914429
		 0 2541.7578125 423.59817505 299.52914429 2541.7578125 299.52914429 423.59820557 2541.7578125 0
		 0 -2541.7578125 0 0 2541.7578125 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1;
	setAttr -s 24 -ch 80 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube12";
	setAttr ".t" -type "double3" -5519.14618838353 -1402.6290478002579 10553.077774112457 ;
	setAttr ".r" -type "double3" 16.741368560461726 59.930274742158979 21.483826207221508 ;
	setAttr ".s" -type "double3" 1 1 2.7157053855252347 ;
	setAttr ".rp" -type "double3" -881.9583740234375 -9.1552734375e-005 127.87319496203997 ;
	setAttr ".rpt" -type "double3" 46.5812690953437 -241.46893676480306 -322.91146921920949 ;
	setAttr ".sp" -type "double3" -881.9583740234375 -9.1552734375e-005 81.85498046875 ;
	setAttr ".spt" -type "double3" 0 0 46.018214493289975 ;
createNode mesh -n "pCubeShape12" -p "pCube12";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape21" -p "pCube12";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.125 0 0.375 0 0.375 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -990.43408 28.625393 -218.04288 
		-1602.9917 28.625393 -263.3212 -1602.9918 28.625393 -263.32108 -990.43396 28.625393 
		-218.04294;
	setAttr -s 12 ".vt[0:11]"  -1027.39257813 -273.95593262 374.091796875
		 605.82836914 -273.95599365 374.091796875 -1027.39208984 273.95574951 374.091796875
		 605.82788086 273.95581055 374.091308594 -1027.39233398 273.95574951 -210.38183594
		 605.82788086 273.95581055 -210.38183594 -1027.39208984 -273.95587158 -210.38183594
		 605.828125 -273.95599365 -210.38183594 -1027.39208984 -273.95587158 -210.38183594
		 -1027.39257813 -273.95593262 374.091796875 -1027.39208984 273.95574951 374.091796875
		 -1027.39233398 273.95574951 -210.38183594;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 6 8 0 0 9 0 8 9 0 2 10 0 9 10 0 4 11 0 10 11 0 11 8 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 14 16 18 19
		mu 0 4 14 15 16 17
		f 4 10 13 -15 -13
		mu 0 4 12 0 15 14
		f 4 4 15 -17 -14
		mu 0 4 0 2 16 15
		f 4 6 17 -19 -16
		mu 0 4 2 13 17 16
		f 4 8 12 -20 -18
		mu 0 4 13 12 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube13";
	setAttr ".t" -type "double3" -1136.288418308992 -980.18746735720458 5015.0095421378783 ;
	setAttr ".s" -type "double3" 1.4925689485269953 1 1.4925689485269953 ;
createNode mesh -n "pCubeShape13" -p "pCube13";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape23" -p "pCube13";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 7 ".pt";
	setAttr ".pt[0]" -type "float3" -207.81754 1711.1073 186.40918 ;
	setAttr ".pt[1]" -type "float3" 1.1368684e-013 1711.1073 186.40918 ;
	setAttr ".pt[2]" -type "float3" -207.81754 0 186.40918 ;
	setAttr ".pt[3]" -type "float3" 0 0 186.40918 ;
	setAttr ".pt[4]" -type "float3" -207.81754 0 -4.5474735e-013 ;
	setAttr ".pt[6]" -type "float3" -207.81754 1711.1073 -9.094947e-013 ;
	setAttr ".pt[7]" -type "float3" 1.1368684e-013 1711.1073 -4.5474735e-013 ;
	setAttr -s 8 ".vt[0:7]"  -247.46516418 -1114.47753906 277.54977417
		 247.46516418 -1114.47753906 277.54977417 -247.46516418 1114.47753906 277.54977417
		 247.46516418 1114.47753906 277.54977417 -247.46516418 1114.47753906 -277.54977417
		 247.46516418 1114.47753906 -277.54977417 -247.46516418 -1114.47753906 -277.54977417
		 247.46516418 -1114.47753906 -277.54977417;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube14";
	setAttr ".t" -type "double3" -1605.6606169608394 -803.43811435519422 4990.9767572317287 ;
	setAttr ".s" -type "double3" 0.44609480840846327 1 0.44609480840846327 ;
	setAttr ".rp" -type "double3" -46.35316522261143 855.55364990234375 41.578083649137042 ;
	setAttr ".sp" -type "double3" -103.90877532958984 855.55364990234375 93.20458984375 ;
	setAttr ".spt" -type "double3" 57.555610106978413 0 -51.626506194612958 ;
createNode mesh -n "pCubeShape14" -p "pCube14";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape28" -p "pCube14";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -207.81754 1644.1956 186.40918 
		1.1368684e-013 1558.2307 186.40918 -207.81754 -66.911819 186.40918 0 -152.87717 186.40918 
		-207.81754 -66.911819 -464.40018 0 -152.87717 -464.40018 -207.81754 1644.1956 -464.40018 
		1.1368684e-013 1558.2307 -464.40018;
	setAttr -s 8 ".vt[0:7]"  -247.46516418 -1114.47753906 277.54977417
		 247.46516418 -1114.47753906 277.54977417 -247.46516418 1114.47753906 277.54977417
		 247.46516418 1114.47753906 277.54977417 -247.46516418 1114.47753906 -277.54977417
		 247.46516418 1114.47753906 -277.54977417 -247.46516418 -1114.47753906 -277.54977417
		 247.46516418 -1114.47753906 -277.54977417;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder4";
	setAttr ".t" -type "double3" -291.82848408851578 -1084.9908310735918 9787.2015669368775 ;
createNode mesh -n "pCylinderShape4" -p "pCylinder4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.8750317394733429 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 78 ".pt";
	setAttr ".pt[0]" -type "float3" -0.00073242188 0.00048828125 -0.00024414063 ;
	setAttr ".pt[1]" -type "float3" -7.6293945e-006 0.00048828125 0 ;
	setAttr ".pt[2]" -type "float3" -0.00048828125 0.00048828125 -0.00012207031 ;
	setAttr ".pt[3]" -type "float3" -0.00073242188 0.00048828125 -0.00012207031 ;
	setAttr ".pt[4]" -type "float3" 0.00073242188 0.00048828125 0.00048828125 ;
	setAttr ".pt[5]" -type "float3" 1.1444092e-005 0.00048828125 0 ;
	setAttr ".pt[6]" -type "float3" -0.00048828125 0.00048828125 0 ;
	setAttr ".pt[7]" -type "float3" 0.00073242188 0.00048828125 -1.4551915e-011 ;
	setAttr ".pt[8]" -type "float3" -0.00073242188 -0.00048828125 -0.00024414063 ;
	setAttr ".pt[9]" -type "float3" -7.6293945e-006 -0.00048828125 0 ;
	setAttr ".pt[10]" -type "float3" -0.00048828125 -0.00048828125 -0.00012207031 ;
	setAttr ".pt[11]" -type "float3" -0.00073242188 -0.00048828125 -0.00012207031 ;
	setAttr ".pt[12]" -type "float3" 0.00073242188 -0.00048828125 0.00048828125 ;
	setAttr ".pt[13]" -type "float3" 1.1444092e-005 -0.00048828125 0 ;
	setAttr ".pt[14]" -type "float3" -0.00048828125 -0.00048828125 0 ;
	setAttr ".pt[15]" -type "float3" 0.00073242188 -0.00048828125 -1.4551915e-011 ;
	setAttr ".pt[17]" -type "float3" 0.00036621094 0.00048828125 0.00073242188 ;
	setAttr ".pt[18]" -type "float3" 0.00036621094 -0.00048828125 0.00073242188 ;
	setAttr ".pt[20]" -type "float3" 0.00012207031 -0.00048828125 -0.00048828125 ;
	setAttr ".pt[21]" -type "float3" 0.00012207031 0.00048828125 -0.00048828125 ;
	setAttr ".pt[22]" -type "float3" -0.0017089844 0.00048828125 -0.00012207031 ;
	setAttr ".pt[23]" -type "float3" -0.0017089844 -0.00048828125 -0.00012207031 ;
	setAttr ".pt[26]" -type "float3" 0 -0.00048828125 -0.00012207031 ;
	setAttr ".pt[27]" -type "float3" 0 0.00048828125 -0.00012207031 ;
	setAttr ".pt[29]" -type "float3" 0 -0.00048828125 0.00012207031 ;
	setAttr ".pt[32]" -type "float3" 0.00073242188 -0.00048828125 0 ;
	setAttr ".pt[33]" -type "float3" 0.00073242188 0.00048828125 0 ;
	setAttr ".pt[34]" -type "float3" 0.00012207031 0.00048828125 -0.0009765625 ;
	setAttr ".pt[35]" -type "float3" 0.00012207031 -0.00048828125 -0.0009765625 ;
	setAttr ".pt[39]" -type "float3" 0.00012207031 -0.00048828125 0.0009765625 ;
	setAttr ".pt[40]" -type "float3" 0.00012207031 0.00048828125 0.0009765625 ;
	setAttr ".pt[41]" -type "float3" 0.00073242188 0 0.00048828125 ;
	setAttr ".pt[42]" -type "float3" 0.00036621094 0 0.00073242188 ;
	setAttr ".pt[43]" -type "float3" 1.1444092e-005 0 0 ;
	setAttr ".pt[44]" -type "float3" 0.00012207031 0 -0.0009765625 ;
	setAttr ".pt[45]" -type "float3" -0.00048828125 0 0 ;
	setAttr ".pt[46]" -type "float3" 0 0 0.00012207031 ;
	setAttr ".pt[47]" -type "float3" 0.00073242188 0 -1.4551915e-011 ;
	setAttr ".pt[48]" -type "float3" 0 0 -0.00012207031 ;
	setAttr ".pt[49]" -type "float3" -0.00073242188 0 -0.00024414063 ;
	setAttr ".pt[50]" -type "float3" 0.00012207031 0 0.0009765625 ;
	setAttr ".pt[51]" -type "float3" -7.6293945e-006 0 0 ;
	setAttr ".pt[52]" -type "float3" 0.00012207031 0 -0.00048828125 ;
	setAttr ".pt[53]" -type "float3" -0.00048828125 0 -0.00012207031 ;
	setAttr ".pt[54]" -type "float3" -0.0017089844 0 -0.00012207031 ;
	setAttr ".pt[55]" -type "float3" -0.00073242188 0 -0.00012207031 ;
	setAttr ".pt[56]" -type "float3" 0.00073242188 0 0 ;
	setAttr ".pt[57]" -type "float3" 0.00073242188 -0.00018310547 0.00048828125 ;
	setAttr ".pt[58]" -type "float3" 0.00036621094 -0.00018310547 0.00073242188 ;
	setAttr ".pt[59]" -type "float3" 1.1444092e-005 -0.00018310547 0 ;
	setAttr ".pt[60]" -type "float3" 0.00012207031 -0.00018310547 -0.0009765625 ;
	setAttr ".pt[61]" -type "float3" -0.00048828125 -0.00018310547 0 ;
	setAttr ".pt[62]" -type "float3" 0 -0.00018310547 0.00012207031 ;
	setAttr ".pt[63]" -type "float3" 0.00073242188 -0.00018310547 -1.4551915e-011 ;
	setAttr ".pt[64]" -type "float3" 0 -0.00018310547 -0.00012207031 ;
	setAttr ".pt[65]" -type "float3" -0.00073242188 -0.00018310547 -0.00024414063 ;
	setAttr ".pt[66]" -type "float3" 0.00012207031 -0.00018310547 0.0009765625 ;
	setAttr ".pt[67]" -type "float3" -7.6293945e-006 -0.00018310547 0 ;
	setAttr ".pt[68]" -type "float3" 0.00012207031 -0.00018310547 -0.00048828125 ;
	setAttr ".pt[69]" -type "float3" -0.00048828125 -0.00018310547 -0.00012207031 ;
	setAttr ".pt[70]" -type "float3" -0.0017089844 -0.00018310547 -0.00012207031 ;
	setAttr ".pt[71]" -type "float3" -0.00073242188 -0.00018310547 -0.00012207031 ;
	setAttr ".pt[72]" -type "float3" 0.00073242188 -0.00018310547 0 ;
	setAttr ".pt[73]" -type "float3" 0.00073242188 0.00018310547 0.00048828125 ;
	setAttr ".pt[74]" -type "float3" 0.00036621094 0.00018310547 0.00073242188 ;
	setAttr ".pt[75]" -type "float3" 1.1444092e-005 0.00018310547 0 ;
	setAttr ".pt[76]" -type "float3" 0.00012207031 0.00018310547 -0.0009765625 ;
	setAttr ".pt[77]" -type "float3" -0.00048828125 0.00018310547 0 ;
	setAttr ".pt[79]" -type "float3" 0.00073242188 0.00018310547 -1.4551915e-011 ;
	setAttr ".pt[80]" -type "float3" 0 0.00018310547 -0.00012207031 ;
	setAttr ".pt[81]" -type "float3" -0.00073242188 0.00018310547 -0.00024414063 ;
	setAttr ".pt[82]" -type "float3" 0.00012207031 0.00018310547 0.0009765625 ;
	setAttr ".pt[83]" -type "float3" -7.6293945e-006 0.00018310547 0 ;
	setAttr ".pt[84]" -type "float3" 0.00012207031 0.00018310547 -0.00048828125 ;
	setAttr ".pt[85]" -type "float3" -0.00048828125 0.00018310547 -0.00012207031 ;
	setAttr ".pt[86]" -type "float3" -0.0017089844 0.00018310547 -0.00012207031 ;
	setAttr ".pt[87]" -type "float3" -0.00073242188 0.00018310547 -0.00012207031 ;
	setAttr ".pt[88]" -type "float3" 0.00073242188 0.00018310547 0 ;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape33" -p "pCylinder4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.453125 0.45347744226455688 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 95 ".uvst[0].uvsp[0:94]" -type "float2" 0.375 0.3125 0.40625
		 0.3125 0.4375 0.3125 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375
		 0.3125 0.625 0.3125 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875
		 0.68843985 0.5 0.68843985 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985
		 0.625 0.68843985 0.46875 0.68843985 0.515625 0.3125 0.515625 0.68843985 0.46875 0.68843985
		 0.421875 0.68843985 0.421875 0.3125 0.453125 0.3125 0.453125 0.68843985 0.4453125
		 0.68843985 0.4375 0.68843985 0.609375 0.68843985 0.609375 0.3125 0.578125 0.3125
		 0.578125 0.68843985 0.5 0.68843985 0.4921875 0.68843985 0.484375 0.68843985 0.484375
		 0.3125 0.546875 0.3125 0.546875 0.68843985 0.5390625 0.68843985 0.53125 0.68843985
		 0.5234375 0.68843985 0.390625 0.68843985 0.515625 0.68843985 0.390625 0.3125 0.5
		 0.50046992 0.515625 0.50046992 0.53125 0.50046992 0.546875 0.50046992 0.5625 0.50046992
		 0.578125 0.50046992 0.59375 0.50046992 0.609375 0.50046992 0.375 0.50046992 0.625
		 0.50046992 0.390625 0.50046992 0.40625 0.50046992 0.421875 0.50046992 0.4375 0.50046992
		 0.453125 0.50046992 0.46875 0.50046992 0.484375 0.50046992 0.5 0.59445488 0.515625
		 0.59445488 0.53125 0.59445488 0.546875 0.59445488 0.5625 0.59445488 0.578125 0.59445488
		 0.59375 0.59445488 0.609375 0.59445488 0.375 0.59445488 0.625 0.59445488 0.390625
		 0.59445488 0.40625 0.59445488 0.421875 0.59445488 0.4375 0.59445488 0.453125 0.59445488
		 0.46875 0.59445488 0.484375 0.59445488 0.5 0.40648496 0.515625 0.40648496 0.53125
		 0.40648496 0.546875 0.40648496 0.5625 0.40648496 0.578125 0.40648496 0.59375 0.40648496
		 0.609375 0.40648496 0.375 0.40648496 0.625 0.40648496 0.390625 0.40648496 0.40625
		 0.40648496 0.421875 0.40648496 0.4375 0.40648496 0.453125 0.40648496 0.46875 0.40648496
		 0.484375 0.40648496;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt";
	setAttr ".pt[2]" -type "float3" 1950.2935 1.8189894e-012 2235.802 ;
	setAttr ".pt[3]" -type "float3" 1147.8071 0 1351.1881 ;
	setAttr ".pt[10]" -type "float3" 1950.2935 1.8189894e-012 2235.802 ;
	setAttr ".pt[11]" -type "float3" 1147.8071 0 1351.1881 ;
	setAttr ".pt[20]" -type "float3" 502.14911 -2.7284841e-012 2996.1055 ;
	setAttr ".pt[21]" -type "float3" 502.14911 -2.7284841e-012 2996.1055 ;
	setAttr ".pt[22]" -type "float3" 2232.6914 4.5474735e-012 1069.5623 ;
	setAttr ".pt[23]" -type "float3" 2232.6914 4.5474735e-012 1069.5623 ;
	setAttr ".pt[24]" -type "float3" 1439.2686 0 1650.7557 ;
	setAttr ".pt[52]" -type "float3" 502.14911 4.5474735e-013 2996.1055 ;
	setAttr ".pt[53]" -type "float3" 1950.2935 4.5474735e-013 2235.802 ;
	setAttr ".pt[54]" -type "float3" 2232.6914 0 1069.5623 ;
	setAttr ".pt[55]" -type "float3" 1147.8071 -4.5474735e-013 1351.1881 ;
	setAttr ".pt[68]" -type "float3" 502.14911 4.5474735e-013 2996.1055 ;
	setAttr ".pt[69]" -type "float3" 1950.2935 4.5474735e-013 2235.802 ;
	setAttr ".pt[70]" -type "float3" 2232.6914 0 1069.5623 ;
	setAttr ".pt[71]" -type "float3" 1147.8071 -4.5474735e-013 1351.1881 ;
	setAttr ".pt[84]" -type "float3" 502.14911 4.5474735e-013 2996.1055 ;
	setAttr ".pt[85]" -type "float3" 1950.2935 4.5474735e-013 2235.802 ;
	setAttr ".pt[86]" -type "float3" 2232.6914 0 1069.5623 ;
	setAttr ".pt[87]" -type "float3" 1147.8071 -4.5474735e-013 1351.1881 ;
	setAttr -s 89 ".vt[0:88]"  7154.20410156 -5644.64453125 -7154.20410156
		 0 -5644.64453125 -10117.57226563 -7154.20410156 -5644.64453125 -7154.20410156 -10881.16894531 -5644.64453125 243.76455688
		 -7917.80029297 -5644.64453125 7397.96875 0 -5644.64453125 10117.57226563 7154.20458984 -5644.64453125 7154.20458984
		 10117.57324219 -5644.64453125 0 7154.20410156 4890.38037109 -7154.20410156 0 4890.38037109 -10117.57226563
		 -7154.20410156 4890.38037109 -7154.20410156 -10881.16894531 4890.38037109 243.76455688
		 -7917.80029297 4890.38037109 7397.96875 0 4890.38037109 10117.57226563 7154.20458984 4890.38037109 7154.20458984
		 10117.57324219 4890.38037109 0 0 4890.38037109 0 -3958.90014648 -5644.64453125 8757.77050781
		 -3958.90014648 4890.38037109 8757.77050781 -5440.58447266 4890.38037109 121.88227844
		 -3577.10205078 4890.38037109 -8635.88867188 -3577.10205078 -5644.64453125 -8635.88867188
		 -9017.68652344 -5644.64453125 -3455.21972656 -9017.68652344 4890.38037109 -3455.21972656
		 -4508.84326172 4890.38037109 -4257.0034179688 0 4890.38037109 -5058.78613281 8635.88867188 4890.38037109 -3577.10205078
		 8635.88867188 -5644.64453125 -3577.10205078 8635.88867188 -5644.64453125 3577.10229492
		 8635.88867188 4890.38037109 3577.10229492 0 4890.38037109 5058.78613281 -4699.7421875 4890.38037109 4439.82617188
		 -9399.484375 4890.38037109 3820.86669922 -9399.484375 -5644.64453125 3820.86669922
		 3577.10229492 -5644.64453125 8635.88867188 3577.10229492 4890.38037109 8635.88867188
		 4317.94433594 4890.38037109 4317.94433594 5058.78662109 4890.38037109 0 4317.94433594 4890.38037109 -4317.94433594
		 3577.10205078 4890.38037109 -8635.88867188 3577.10205078 -5644.64453125 -8635.88867188
		 -7917.80029297 -377.13208008 7397.96875 -3958.90014648 -377.13208008 8757.77050781
		 0 -377.13208008 10117.57226563 3577.10229492 -377.13208008 8635.88867188 7154.20458984 -377.13208008 7154.20458984
		 8635.88867188 -377.13208008 3577.10229492 10117.57324219 -377.13208008 0 8635.88867188 -377.13208008 -3577.10205078
		 7154.20410156 -377.13208008 -7154.20410156 3577.10205078 -377.13208008 -8635.88867188
		 0 -377.13208008 -10117.57226563 -3577.10205078 -377.13208008 -8635.88867188 -7154.20410156 -377.13208008 -7154.20410156
		 -9017.68652344 -377.13208008 -3455.21972656 -10881.16894531 -377.13208008 243.76455688
		 -9399.484375 -377.13208008 3820.86669922 -7917.80029297 2256.62402344 7397.96875
		 -3958.90014648 2256.62402344 8757.77050781 0 2256.62402344 10117.57226563 3577.10229492 2256.62402344 8635.88867188
		 7154.20458984 2256.62402344 7154.20458984 8635.88867188 2256.62402344 3577.10229492
		 10117.57324219 2256.62402344 0 8635.88867188 2256.62402344 -3577.10205078 7154.20410156 2256.62402344 -7154.20410156
		 3577.10205078 2256.62402344 -8635.88867188 0 2256.62402344 -10117.57226563 -3577.10205078 2256.62402344 -8635.88867188
		 -7154.20410156 2256.62402344 -7154.20410156 -9017.68652344 2256.62402344 -3455.21972656
		 -10881.16894531 2256.62402344 243.76455688 -9399.484375 2256.62402344 3820.86669922
		 -7917.80029297 -3010.88818359 7397.96875 -3958.90014648 -3010.88818359 8757.77050781
		 0 -3010.88818359 10117.57226563 3577.10229492 -3010.88818359 8635.88867188 7154.20458984 -3010.88818359 7154.20458984
		 8635.88867188 -3010.88818359 3577.10229492 10117.57324219 -3010.88818359 0 8635.88867188 -3010.88818359 -3577.10205078
		 7154.20410156 -3010.88818359 -7154.20410156 3577.10205078 -3010.88818359 -8635.88867188
		 0 -3010.88818359 -10117.57226563 -3577.10205078 -3010.88818359 -8635.88867188 -7154.20410156 -3010.88818359 -7154.20410156
		 -9017.68652344 -3010.88818359 -3455.21972656 -10881.16894531 -3010.88818359 243.76455688
		 -9399.484375 -3010.88818359 3820.86669922;
	setAttr -s 168 ".ed";
	setAttr ".ed[0:165]"  0 40 0 1 21 0 2 22 0 3 33 0 4 17 0 5 34 0 6 28 0 7 27 0
		 8 39 0 9 20 0 10 23 0 11 32 0 12 18 0 13 35 0 14 29 0 15 26 0 0 81 0 1 83 0 2 85 0
		 3 87 0 4 73 0 5 75 0 6 77 0 7 79 0 9 25 1 16 30 1 15 37 1 16 19 1 17 5 0 18 13 0
		 17 74 1 19 11 1 18 31 1 20 10 0 19 24 1 21 2 0 20 68 1 22 3 0 23 11 0 22 86 1 24 20 1
		 23 24 1 25 16 1 24 25 1 26 8 0 25 38 1 27 0 0 26 64 1 28 7 0 29 15 0 28 78 1 30 13 1
		 29 36 1 31 19 1 30 31 1 32 12 0 31 32 1 33 4 0 32 72 1 34 6 0 35 14 0 34 76 1 36 30 1
		 35 36 1 37 16 1 36 37 1 38 26 1 37 38 1 39 9 0 38 39 1 40 1 0 39 66 1 41 57 0 42 58 1
		 41 42 1 43 59 0 42 43 1 44 60 1 43 44 1 45 61 0 44 45 1 46 62 1 45 46 1 47 63 0 46 47 1
		 48 80 1 47 48 1 49 65 0 48 49 1 50 82 1 49 50 1 51 67 0 50 51 1 52 84 1 51 52 1 53 69 0
		 52 53 1 54 70 1 53 54 1 55 71 0 54 55 1 56 88 1 55 56 1 56 41 1 57 12 0 58 18 1 57 58 1
		 59 13 0 58 59 1 60 35 1 59 60 1 61 14 0 60 61 1 62 29 1 61 62 1 63 15 0 62 63 1 64 48 1
		 63 64 1 65 8 0 64 65 1 66 50 1 65 66 1 67 9 0 66 67 1 68 52 1 67 68 1 69 10 0 68 69 1
		 70 23 1 69 70 1 71 11 0 70 71 1 72 56 1 71 72 1 72 57 1 73 41 0 74 42 1 73 74 1 75 43 0
		 74 75 1 76 44 1 75 76 1 77 45 0 76 77 1 78 46 1 77 78 1 79 47 0 78 79 1 80 27 1 79 80 1
		 81 49 0 80 81 1 82 40 1 81 82 1 83 51 0 82 83 1 84 21 1 83 84 1 85 53 0 84 85 1 86 54 1
		 85 86 1 87 55 0 86 87 1 88 33 1;
	setAttr ".ed[166:167]" 87 88 1 88 73 1;
	setAttr -s 80 -ch 320 ".fc[0:79]" -type "polyFaces" 
		f 4 16 154 153 -1
		mu 0 4 0 86 88 43
		f 4 17 158 157 -2
		mu 0 4 1 89 90 23
		f 4 39 164 -20 -38
		mu 0 4 24 92 93 3
		f 4 19 166 165 -4
		mu 0 4 3 93 94 35
		f 4 30 140 -22 -29
		mu 0 4 19 79 80 5
		f 4 61 144 -23 -60
		mu 0 4 36 81 82 6
		f 4 50 148 -24 -49
		mu 0 4 30 83 84 7
		f 4 23 150 149 -8
		mu 0 4 7 84 85 29
		f 4 42 27 34 43
		mu 0 4 27 18 21 26
		f 4 66 -16 26 67
		mu 0 4 40 28 16 39
		f 4 -27 -50 52 65
		mu 0 4 39 16 31 38
		f 4 -28 25 54 53
		mu 0 4 21 18 32 33
		f 4 20 138 -31 -5
		mu 0 4 4 78 79 19
		f 4 -32 -54 56 -12
		mu 0 4 12 21 33 34
		f 4 -35 31 -39 41
		mu 0 4 26 21 12 25
		f 4 -158 160 -19 -36
		mu 0 4 23 90 91 2
		f 4 18 162 -40 -3
		mu 0 4 2 91 92 24
		f 4 -41 -42 -11 -34
		mu 0 4 22 26 25 11
		f 4 24 -44 40 -10
		mu 0 4 10 27 26 22
		f 4 -9 -45 -67 69
		mu 0 4 42 17 28 40
		f 4 -150 152 -17 -47
		mu 0 4 29 85 87 8
		f 4 22 146 -51 -7
		mu 0 4 6 82 83 30
		f 4 -53 -15 -61 63
		mu 0 4 38 31 15 37
		f 4 -55 51 -30 32
		mu 0 4 33 32 14 20
		f 4 -57 -33 -13 -56
		mu 0 4 34 33 20 13
		f 4 -166 167 -21 -58
		mu 0 4 35 94 78 4
		f 4 21 142 -62 -6
		mu 0 4 5 80 81 36
		f 4 -63 -64 -14 -52
		mu 0 4 32 38 37 14
		f 4 -65 -66 62 -26
		mu 0 4 18 39 38 32
		f 4 45 -68 64 -43
		mu 0 4 27 40 39 18
		f 4 -69 -70 -46 -25
		mu 0 4 10 42 40 27
		f 4 -154 156 -18 -71
		mu 0 4 43 88 89 1
		f 4 72 106 -74 -75
		mu 0 4 44 61 62 45
		f 4 -77 73 108 -76
		mu 0 4 46 45 62 63
		f 4 -79 75 110 -78
		mu 0 4 47 46 63 64
		f 4 -81 77 112 -80
		mu 0 4 48 47 64 65
		f 4 -83 79 114 -82
		mu 0 4 49 48 65 66
		f 4 -85 81 116 -84
		mu 0 4 50 49 66 67
		f 4 -87 83 118 117
		mu 0 4 51 50 67 68
		f 4 -89 -118 120 -88
		mu 0 4 53 51 68 70
		f 4 -91 87 122 121
		mu 0 4 54 52 69 71
		f 4 -93 -122 124 -92
		mu 0 4 55 54 71 72
		f 4 -95 91 126 125
		mu 0 4 56 55 72 73
		f 4 -97 -126 128 -96
		mu 0 4 57 56 73 74
		f 4 -99 95 130 -98
		mu 0 4 58 57 74 75
		f 4 -101 97 132 -100
		mu 0 4 59 58 75 76
		f 4 -103 99 134 133
		mu 0 4 60 59 76 77
		f 4 -104 -134 135 -73
		mu 0 4 44 60 77 61
		f 4 104 12 -106 -107
		mu 0 4 61 13 20 62
		f 4 -109 105 29 -108
		mu 0 4 63 62 20 14
		f 4 -111 107 13 -110
		mu 0 4 64 63 14 37
		f 4 -113 109 60 -112
		mu 0 4 65 64 37 15
		f 4 -115 111 14 -114
		mu 0 4 66 65 15 31
		f 4 -117 113 49 -116
		mu 0 4 67 66 31 16
		f 4 -119 115 15 47
		mu 0 4 68 67 16 28
		f 4 -121 -48 44 -120
		mu 0 4 70 68 28 17
		f 4 -123 119 8 71
		mu 0 4 71 69 9 41
		f 4 -125 -72 68 -124
		mu 0 4 72 71 41 10
		f 4 -127 123 9 36
		mu 0 4 73 72 10 22
		f 4 -129 -37 33 -128
		mu 0 4 74 73 22 11
		f 4 -131 127 10 -130
		mu 0 4 75 74 11 25
		f 4 -133 129 38 -132
		mu 0 4 76 75 25 12
		f 4 -135 131 11 58
		mu 0 4 77 76 12 34
		f 4 -136 -59 55 -105
		mu 0 4 61 77 34 13
		f 4 136 74 -138 -139
		mu 0 4 78 44 45 79
		f 4 -141 137 76 -140
		mu 0 4 80 79 45 46
		f 4 -143 139 78 -142
		mu 0 4 81 80 46 47
		f 4 -145 141 80 -144
		mu 0 4 82 81 47 48
		f 4 -147 143 82 -146
		mu 0 4 83 82 48 49
		f 4 -149 145 84 -148
		mu 0 4 84 83 49 50
		f 4 -151 147 86 85
		mu 0 4 85 84 50 51
		f 4 -153 -86 88 -152
		mu 0 4 87 85 51 53
		f 4 -155 151 90 89
		mu 0 4 88 86 52 54
		f 4 -157 -90 92 -156
		mu 0 4 89 88 54 55
		f 4 -159 155 94 93
		mu 0 4 90 89 55 56
		f 4 -161 -94 96 -160
		mu 0 4 91 90 56 57
		f 4 -163 159 98 -162
		mu 0 4 92 91 57 58
		f 4 -165 161 100 -164
		mu 0 4 93 92 58 59
		f 4 -167 163 102 101
		mu 0 4 94 93 59 60
		f 4 -168 -102 103 -137
		mu 0 4 78 94 60 44;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "pCube15";
	setAttr ".t" -type "double3" -8502.6214552579149 -2812.6200018198674 13095.928423969679 ;
	setAttr ".r" -type "double3" 0 22.793802655997023 0 ;
createNode mesh -n "pCubeShape15" -p "pCube15";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape19" -p "pCube15";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.375 0.75 0.25 0.25 0.25 0.375 0.375 0.25 0
		 0.375 0.875 0.625 0.875 0.75 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[1]" -type "float3" 272.17123 0 -28.005569 ;
	setAttr ".pt[3]" -type "float3" 272.17123 0 -28.005569 ;
	setAttr ".pt[4]" -type "float3" -33.395424 -4.5474735e-013 -829.16833 ;
	setAttr ".pt[5]" -type "float3" -595.89307 -4.5474735e-013 -829.16833 ;
	setAttr ".pt[6]" -type "float3" -33.395424 -4.5474735e-013 -829.16833 ;
	setAttr ".pt[7]" -type "float3" -595.89307 -4.5474735e-013 -829.16833 ;
	setAttr ".pt[8]" -type "float3" 350.70242 0 3.6379788e-012 ;
	setAttr ".pt[11]" -type "float3" 350.70242 0 3.6379788e-012 ;
	setAttr -s 12 ".vt[0:11]"  -1395.63720703 -621.77453613 3856.96826172
		 1395.63720703 -621.77453613 3856.96826172 -1395.63720703 621.77453613 3856.96826172
		 1395.63720703 621.77453613 3856.96826172 -1395.63720703 621.77453613 -2174.91333008
		 1395.63720703 621.77453613 -2174.91333008 -1395.63720703 -621.77453613 -2174.91333008
		 1395.63720703 -621.77453613 -2174.91333008 1395.63720703 621.77453613 841.02746582
		 -1395.63720703 621.77453613 841.02746582 -1395.63720703 -621.77453613 841.02746582
		 1395.63720703 -621.77453613 841.02746582;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 9 1 10 0 0 9 10 1 11 1 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 14 -7
		mu 0 4 2 3 14 17
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 18 17 -1 -16
		mu 0 4 19 20 9 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -15 12 -3 -14
		mu 0 4 17 14 5 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 11 -19 -11
		mu 0 4 6 7 20 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube16";
	setAttr ".t" -type "double3" -8806.1249612787433 -2053.4312943870277 15057.966883619911 ;
	setAttr ".r" -type "double3" 0 26.015223368887963 0 ;
createNode mesh -n "pCubeShape16" -p "pCube16";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape18" -p "pCube16";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[1]" -type "float3" 206.69504 0 0 ;
	setAttr ".pt[3]" -type "float3" 206.69504 0 0 ;
	setAttr ".pt[5]" -type "float3" 206.69504 0 0 ;
	setAttr ".pt[7]" -type "float3" 206.69504 0 0 ;
	setAttr -s 8 ".vt[0:7]"  -313.88461304 -200.8167572 480.63583374 313.88461304 -200.8167572 480.63583374
		 -313.88461304 200.8167572 480.63583374 313.88461304 200.8167572 480.63583374 -313.88461304 200.8167572 -480.63583374
		 313.88461304 200.8167572 -480.63583374 -313.88461304 -200.8167572 -480.63583374 313.88461304 -200.8167572 -480.63583374;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube17";
	setAttr ".t" -type "double3" -7383.9392416573055 -2777.8952707845515 16088.004848823271 ;
	setAttr ".r" -type "double3" 0 24.779648354172103 0 ;
createNode mesh -n "pCubeShape17" -p "pCube17";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  0 -958.66589 0 0 -958.66589 
		0 0 -958.66589 0 0 -958.66589 0;
	setAttr -s 8 ".vt[0:7]"  -343.86920166 -1574.66394043 575.096984863
		 343.86920166 -1574.66394043 575.096984863 -343.86920166 1574.66394043 575.096984863
		 343.86920166 1574.66394043 575.096984863 -343.86920166 1574.66394043 -575.096984863
		 343.86920166 1574.66394043 -575.096984863 -343.86920166 -1574.66394043 -575.096984863
		 343.86920166 -1574.66394043 -575.096984863;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube18";
	setAttr ".t" -type "double3" -8160.6455133906111 -2053.4312943870277 16591.276394432633 ;
	setAttr ".r" -type "double3" 0 26.015223368887963 0 ;
createNode mesh -n "pCubeShape18" -p "pCube18";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape17" -p "pCube18";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[1]" -type "float3" 206.69504 0 0 ;
	setAttr ".pt[3]" -type "float3" 206.69504 0 0 ;
	setAttr ".pt[5]" -type "float3" 206.69504 0 0 ;
	setAttr ".pt[7]" -type "float3" 206.69504 0 0 ;
	setAttr -s 8 ".vt[0:7]"  -313.88461304 -200.8167572 480.63583374 313.88461304 -200.8167572 480.63583374
		 -313.88461304 200.8167572 480.63583374 313.88461304 200.8167572 480.63583374 -313.88461304 200.8167572 -480.63583374
		 313.88461304 200.8167572 -480.63583374 -313.88461304 -200.8167572 -480.63583374 313.88461304 -200.8167572 -480.63583374;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube19";
	setAttr ".t" -type "double3" -7007.8710705851254 -2988.9230027417643 17788.415383331514 ;
	setAttr ".r" -type "double3" 0 -18.496615919578034 0 ;
	setAttr ".rp" -type "double3" -331.5994873046875 1107.3837280273437 -440.69888305664062 ;
	setAttr ".rpt" -type "double3" 156.94075882064888 0 -82.43403893588804 ;
	setAttr ".sp" -type "double3" -331.5994873046875 1107.3837280273437 -440.69888305664062 ;
createNode mesh -n "pCubeShape19" -p "pCube19";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape16" -p "pCube19";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -663.19904 2519.7981 -881.39777 
		9.1552734e-005 2519.7981 -881.39752 -663.19916 -305.03064 -881.39777 -9.094947e-013 
		-305.03064 -881.39777 0 -305.03064 0 0 -305.03064 0 -9.1552734e-005 2519.7981 -0.00024414063 
		-0.00012207031 2519.7981 3.0517578e-005;
	setAttr -s 8 ".vt[0:7]"  -732.52502441 -1616.63757324 751.61273193
		 732.52502441 -1616.63757324 751.61273193 -732.52502441 1616.63757324 751.61273193
		 732.52502441 1616.63757324 751.61273193 -732.52502441 1616.63757324 -751.61273193
		 732.52502441 1616.63757324 -751.61273193 -732.52502441 -1616.63757324 -751.61273193
		 732.52502441 -1616.63757324 -751.61273193;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube20";
	setAttr ".t" -type "double3" -5217.6139072609958 -2203.7192147311162 17883.988453612143 ;
	setAttr ".r" -type "double3" 0 -18.86953334546185 0 ;
createNode mesh -n "pCubeShape20" -p "pCube20";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape15" -p "pCube20";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 0 727.98657 0 ;
	setAttr ".pt[1]" -type "float3" 5.7220459e-006 727.98657 0 ;
	setAttr ".pt[3]" -type "float3" 5.7220459e-006 0 0 ;
	setAttr ".pt[5]" -type "float3" 5.7220459e-006 0 0 ;
	setAttr ".pt[6]" -type "float3" 0 727.98657 0 ;
	setAttr ".pt[7]" -type "float3" 5.7220459e-006 727.98657 0 ;
	setAttr -s 8 ".vt[0:7]"  -771.79614258 -537.92370605 378.86904907
		 771.79614258 -537.92370605 378.86904907 -771.79614258 537.92370605 378.86904907 771.79614258 537.92370605 378.86904907
		 -771.79614258 537.92370605 -378.86904907 771.79614258 537.92370605 -378.86904907
		 -771.79614258 -537.92370605 -378.86904907 771.79614258 -537.92370605 -378.86904907;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube21";
	setAttr ".t" -type "double3" -3308.4892809702128 -3642.677215476363 16701.71925382434 ;
	setAttr ".r" -type "double3" 0 27.752277195081245 0 ;
	setAttr ".rp" -type "double3" -146.50601196289062 0 448.67520141601562 ;
	setAttr ".rpt" -type "double3" 225.77818382475374 0 16.608981288786879 ;
	setAttr ".sp" -type "double3" -146.50601196289062 0 448.67520141601562 ;
createNode mesh -n "pCubeShape21" -p "pCube21";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape8" -p "pCube21";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 7 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -1388.1045 897.35046 ;
	setAttr ".pt[1]" -type "float3" -293.01202 -1388.1045 897.35046 ;
	setAttr ".pt[2]" -type "float3" 0 0 897.35046 ;
	setAttr ".pt[3]" -type "float3" -293.01202 0 897.35046 ;
	setAttr ".pt[5]" -type "float3" -293.01202 0 0 ;
	setAttr ".pt[6]" -type "float3" 0 -1388.1045 0 ;
	setAttr ".pt[7]" -type "float3" -293.01202 -1388.1045 0 ;
	setAttr -s 8 ".vt[0:7]"  -962.85418701 -1836.78735352 400.48162842
		 962.85418701 -1836.78735352 400.48162842 -962.85418701 1836.78735352 400.48162842
		 962.85418701 1836.78735352 400.48162842 -962.85418701 1836.78735352 -400.48162842
		 962.85418701 1836.78735352 -400.48162842 -962.85418701 -1836.78735352 -400.48162842
		 962.85418701 -1836.78735352 -400.48162842;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube22";
	setAttr ".t" -type "double3" 1203.1204054460793 265.23077824046413 19090.372375224877 ;
	setAttr ".r" -type "double3" 0 45.173420077693748 0 ;
	setAttr ".rp" -type "double3" 0 376.069580078125 0 ;
	setAttr ".sp" -type "double3" 0 376.069580078125 0 ;
createNode mesh -n "pCubeShape22" -p "pCube22";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape13" -p "pCube22";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 752.13916 0 0 752.13916 
		0 -3.6379788e-012 9.6591196 3.6379788e-012 -3.6379788e-012 9.6591196 3.6379788e-012 
		-5.4569682e-012 9.6591196 -851.40662 -5.4569682e-012 9.6591196 -851.40662 -1.8189894e-012 
		752.13916 -851.40662 -1.8189894e-012 752.13916 -851.40662;
	setAttr -s 8 ".vt[0:7]"  -641.41967773 -644.64959717 476.081329346
		 641.41967773 -644.64959717 476.081329346 -641.41967773 644.64959717 476.081329346
		 641.41967773 644.64959717 476.081329346 -641.41967773 644.64959717 -476.081329346
		 641.41967773 644.64959717 -476.081329346 -641.41967773 -644.64959717 -476.081329346
		 641.41967773 -644.64959717 -476.081329346;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube23";
	setAttr ".t" -type "double3" 1732.1192595231551 487.79743351510751 18014.69451844976 ;
	setAttr ".r" -type "double3" -13.760936640320027 42.406073663973977 -19.274728070256426 ;
	setAttr ".s" -type "double3" 1 1 2.1697085373481899 ;
createNode mesh -n "pCubeShape23" -p "pCube23";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.6875 0.3125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape11" -p "pCube23";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.6875 0.3125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 31 ".uvst[0].uvsp[0:30]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.375 0.75 0.25 0.25 0.25 0.375 0.375 0.25 0
		 0.375 0.875 0.625 0.875 0.75 0 0.59159458 0.375 0.59159458 0.25 0.59159458 0 0.59159458
		 1 0.59159458 0.875 0.59159458 0.75 0.59159458 0.5 0.625 0.375 0.625 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[3]" -type "float3" 0 -185.98254 0 ;
	setAttr ".pt[8]" -type "float3" 0 -185.98254 0 ;
	setAttr -s 20 ".vt[0:19]"  -859.91503906 -191.6887207 376.6953125 2130.74609375 -191.6887207 376.69482422
		 -859.91601563 191.68823242 376.6953125 2130.74414063 191.68823242 376.6953125 -859.91503906 191.68823242 -376.69433594
		 2130.74511719 191.68823242 -376.69433594 -859.91503906 -191.6887207 -376.69433594
		 2130.74511719 -191.6887207 -376.69433594 2130.74511719 191.68823242 0.00048828125
		 -859.91601563 191.68823242 0.00048828125 -859.91503906 -191.6887207 0 2130.74609375 -191.6887207 0.00048828125
		 1731.12695313 191.68823242 0.00048828125 1731.12792969 191.68823242 376.69482422
		 1731.12792969 -191.6887207 376.69482422 1731.12792969 -191.6887207 0 1731.12792969 -191.6887207 -376.69433594
		 1731.12792969 191.68823242 -376.69433594 2092.42895508 500.23477173 0.00048828125
		 2092.42895508 500.23477173 -376.69433594;
	setAttr -s 37 ".ed[0:36]"  0 14 0 2 13 0 4 17 0 6 16 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 12 0 10 0 0 9 10 1 11 1 0 10 15 1 11 8 1
		 12 9 1 13 3 0 12 13 1 14 1 0 13 14 1 15 11 1 14 15 1 16 7 0 15 16 1 17 5 0 16 17 1
		 17 12 0 8 18 0 18 12 0 5 19 0 18 19 0 17 19 0;
	setAttr -s 19 -ch 74 ".fc[0:18]" -type "polyFaces" 
		f 4 23 5 -22 24
		mu 0 4 24 1 3 23
		f 4 21 7 14 22
		mu 0 4 23 3 14 22
		f 4 29 9 -28 30
		mu 0 4 28 5 7 27
		f 4 25 17 -24 26
		mu 0 4 26 20 9 25
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 31 -34 35 -37
		mu 0 4 28 22 29 30
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 27 11 -26 28
		mu 0 4 27 7 20 26
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 1 -23 20 -7
		mu 0 4 2 23 22 17
		f 4 0 -25 -2 -5
		mu 0 4 0 24 23 2
		f 4 18 -27 -1 -16
		mu 0 4 19 26 25 8
		f 4 3 -29 -19 -11
		mu 0 4 6 27 26 19
		f 4 2 -31 -4 -9
		mu 0 4 4 28 27 6
		f 4 -21 -32 -3 -14
		mu 0 4 17 22 28 4
		f 3 -15 32 33
		mu 0 3 22 14 29
		f 4 12 34 -36 -33
		mu 0 4 14 5 30 29
		f 3 -30 36 -35
		mu 0 3 5 28 30;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube24";
	setAttr ".t" -type "double3" 6151.2131207337488 -1237.2369956063453 14914.352275530207 ;
	setAttr ".r" -type "double3" 0 -38.397020147625369 0 ;
createNode mesh -n "pCubeShape24" -p "pCube24";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[95]" -type "float3" -6.1675906e-005 -5.8292784e-008 9.329617e-005 ;
	setAttr ".pt[117]" -type "float3" 3.7670135e-005 -2.4182955e-006 -0.00022339821 ;
	setAttr ".pt[118]" -type "float3" 5.2452087e-006 -1.5846104e-005 0.00010156631 ;
	setAttr ".pt[139]" -type "float3" -9.3579292e-006 0 0.00017243624 ;
createNode mesh -n "polySurfaceShape3" -p "pCube24";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.375 0.5
		 0.625 0.5 0.625 0.75 0.375 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -4991.8442 0 ;
	setAttr ".pt[1]" -type "float3" 0 -4991.8442 0 ;
	setAttr ".pt[6]" -type "float3" 0 -4991.8442 0 ;
	setAttr ".pt[7]" -type "float3" 0 -4991.8442 0 ;
	setAttr ".pt[10]" -type "float3" 0 -4991.8442 0 ;
	setAttr ".pt[11]" -type "float3" 0 -4991.8442 0 ;
	setAttr ".pt[12]" -type "float3" -993.66449 -3.4106051e-012 -737.53558 ;
	setAttr ".pt[13]" -type "float3" -2313.1477 -3.4106051e-012 -1112.9486 ;
	setAttr ".pt[14]" -type "float3" -2313.1477 -4991.8442 -1112.9486 ;
	setAttr ".pt[15]" -type "float3" -993.66449 -4991.8442 -737.53558 ;
	setAttr -s 16 ".vt[0:15]"  -2219.34277344 -510.58312988 2993.609375
		 2219.34179688 -510.58312988 2993.609375 -2219.34277344 510.58312988 2993.609375 2219.34179688 510.58312988 2993.609375
		 -2219.34179688 510.58312988 -2993.61035156 2219.34179688 510.58312988 -2993.609375
		 -2219.34179688 -510.58312988 -2993.61035156 2219.34179688 -510.58312988 -2993.609375
		 -2517.83398438 510.58312988 -3596.17773438 355.86914063 510.58312988 -6979.040039063
		 355.86914063 -510.58312988 -6979.040039063 -2517.83398438 -510.58312988 -3596.17773438
		 -2517.83398438 510.58312988 -3596.17773438 355.86914063 510.58312988 -6979.040039063
		 355.86914063 -510.58312988 -6979.040039063 -2517.83398438 -510.58312988 -3596.17773438;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 4 8 0 5 9 0 8 9 0 7 10 0 9 10 0 6 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 2 13 -15 -13
		mu 0 4 4 5 15 14
		f 4 9 15 -17 -14
		mu 0 4 5 7 16 15
		f 4 -4 17 18 -16
		mu 0 4 7 6 17 16
		f 4 -9 12 19 -18
		mu 0 4 6 4 14 17
		f 4 14 21 -23 -21
		mu 0 4 14 15 19 18
		f 4 16 23 -25 -22
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 20 27 -26
		mu 0 4 17 14 18 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube25";
	setAttr ".t" -type "double3" 3963.609919872104 -527.06693400714983 14538.819493484203 ;
	setAttr ".r" -type "double3" 0 -34.11842877746394 0 ;
createNode mesh -n "pCubeShape25" -p "pCube25";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.8333333432674408 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape12" -p "pCube25";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.8333333432674408 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 39 ".uvst[0].uvsp[0:38]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.41666666 0.79166669 0.25 0.20833334 0.25 0.375
		 0.41666666 0.20833334 0 0.375 0.83333337 0.625 0.83333337 0.79166669 0 0.625 0.33333331
		 0.70833337 0.25 0.29166669 0.25 0.375 0.33333331 0.29166669 0 0.375 0.91666669 0.625
		 0.91666669 0.70833337 0 0.5 0.41666666 0.5 0.33333331 0.5 0.25 0.5 0 0.5 1 0.5 0.91666669
		 0.5 0.83333337 0.5 0.75 0.5 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -332.28759766 -527.066955566 1010.91223145
		 861.88330078 -527.066955566 1006.1083374 -332.28759766 527.066955566 1010.91223145
		 861.88330078 527.066955566 1006.1083374 -145.03527832 527.066955566 -1474.26171875
		 1656.20776367 527.066955566 -986.47540283 -145.03527832 -527.066955566 -1474.26171875
		 1656.20776367 -527.066955566 -986.47540283 1327.16625977 527.066955566 -401.99057007
		 -207.45272827 527.066955566 -645.87023926 -207.45272827 -527.066955566 -645.87023926
		 1327.16625977 -527.066955566 -401.99057007 861.88330078 527.066955566 335.36950684
		 -269.87017822 527.066955566 182.52099609 -269.87017822 -527.066955566 182.52099609
		 861.88330078 -527.066955566 335.36950684 559.85675049 527.066955566 -523.93041992
		 296.0065612793 527.066955566 258.94525146 264.79785156 527.066955566 1008.51025391
		 264.79785156 -527.066955566 1008.51025391 296.0065612793 -527.066955566 258.94525146
		 559.85675049 -527.066955566 -523.93041992 755.58624268 -527.066955566 -1230.36853027
		 755.58624268 527.066955566 -1230.36853027;
	setAttr -s 44 ".ed[0:43]"  0 19 0 2 18 0 4 23 0 6 22 0 0 2 0 1 3 0 2 13 0
		 3 12 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 16 1 10 14 0 9 10 1 11 15 0 10 21 1
		 11 8 1 12 8 0 13 9 0 12 17 1 14 0 0 13 14 1 15 1 0 14 20 1 15 12 1 16 9 1 17 13 1
		 16 17 1 18 3 0 17 18 1 19 1 0 18 19 1 20 15 1 19 20 1 21 11 1 20 21 1 22 7 0 21 22 1
		 23 5 0 22 23 1 23 16 1;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 33 5 -32 34
		mu 0 4 33 1 3 32
		f 4 31 7 22 32
		mu 0 4 32 3 22 31
		f 4 41 9 -40 42
		mu 0 4 38 5 7 37
		f 4 35 25 -34 36
		mu 0 4 35 28 9 34
		f 4 -26 27 -8 -6
		mu 0 4 1 29 23 3
		f 4 23 4 6 24
		mu 0 4 26 0 2 24
		f 4 43 -15 12 -42
		mu 0 4 38 30 14 5
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 39 11 -38 40
		mu 0 4 37 7 20 36
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 -23 20 14 30
		mu 0 4 31 22 14 30
		f 4 15 -25 21 16
		mu 0 4 18 26 24 16
		f 4 37 17 -36 38
		mu 0 4 36 20 28 35
		f 4 -28 -18 19 -21
		mu 0 4 23 29 21 15
		f 4 -30 -31 28 -22
		mu 0 4 25 31 30 17
		f 4 1 -33 29 -7
		mu 0 4 2 32 31 25
		f 4 0 -35 -2 -5
		mu 0 4 0 33 32 2
		f 4 26 -37 -1 -24
		mu 0 4 27 35 34 8
		f 4 18 -39 -27 -16
		mu 0 4 19 36 35 27
		f 4 3 -41 -19 -11
		mu 0 4 6 37 36 19
		f 4 2 -43 -4 -9
		mu 0 4 4 38 37 6
		f 4 -29 -44 -3 -14
		mu 0 4 17 30 38 4;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube26";
	setAttr ".t" -type "double3" 6559.4031003875107 -140.76508362250047 13469.35596045597 ;
	setAttr ".r" -type "double3" 0 38.342945758563879 0 ;
	setAttr ".s" -type "double3" 1.2069736427527236 0.7001085080361823 1 ;
createNode mesh -n "pCubeShape26" -p "pCube26";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.37361490726470947 0.50000005960464478 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape9" -p "pCube26";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.54166663 0.5 0.54166663 0.75 0.54166663 0 0.54166663
		 1 0.54166663 0.25 0.45833331 0.5 0.45833331 0.75 0.45833331 0 0.45833331 1 0.45833331
		 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt";
	setAttr ".pt[0]" -type "float3" -285.00003 0 0 ;
	setAttr ".pt[2]" -type "float3" -285.00003 0 0 ;
	setAttr ".pt[3]" -type "float3" 1.0231815e-012 -20.766693 0 ;
	setAttr ".pt[4]" -type "float3" -285.00003 0 0 ;
	setAttr ".pt[5]" -type "float3" 1.0231815e-012 -20.766693 0 ;
	setAttr ".pt[6]" -type "float3" -285.00003 0 0 ;
	setAttr ".pt[8]" -type "float3" -140.64066 283.21759 0 ;
	setAttr ".pt[9]" -type "float3" -140.64066 283.21759 0 ;
	setAttr ".pt[10]" -type "float3" -140.64066 283.21759 0 ;
	setAttr ".pt[11]" -type "float3" -140.64066 283.21759 0 ;
	setAttr ".pt[12]" -type "float3" -140.64066 283.21759 0 ;
	setAttr ".pt[13]" -type "float3" -140.64066 283.21759 0 ;
	setAttr ".pt[14]" -type "float3" -140.64066 283.21759 0 ;
	setAttr ".pt[15]" -type "float3" -140.64066 283.21759 0 ;
	setAttr -s 16 ".vt[0:15]"  -890.29125977 -62.64848328 434.21148682 890.29125977 -62.64848328 434.21148682
		 -890.29125977 203.42022705 434.21148682 890.29125977 203.42022705 434.21148682 -890.29125977 203.42022705 -434.21148682
		 890.29125977 203.42022705 -434.21148682 -890.29125977 -62.64848328 -434.21148682
		 890.29125977 -62.64848328 -434.21148682 296.76367188 203.42022705 -434.21148682 296.76367188 -62.64848328 -434.21148682
		 296.76367188 -62.64848328 434.21148682 296.76367188 203.42022705 434.21148682 -296.76379395 203.42022705 -434.21148682
		 -296.76379395 -62.64848328 -434.21148682 -296.76379395 -62.64848328 434.21148682
		 -296.76379395 203.42022705 434.21148682;
	setAttr -s 28 ".ed[0:27]"  0 14 0 2 15 0 4 12 0 6 13 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 5 0 9 7 0 8 9 1 10 1 0 9 10 1 11 3 0 10 11 1 11 8 1
		 12 8 0 13 9 0 12 13 1 14 10 0 13 14 1 15 11 0 14 15 1 15 12 1;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 26 -2 -5
		mu 0 4 0 21 23 2
		f 4 1 27 -3 -7
		mu 0 4 2 23 19 4
		f 4 2 22 -4 -9
		mu 0 4 4 19 20 6
		f 4 3 24 -1 -11
		mu 0 4 6 20 22 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 9 -14 -15
		mu 0 4 14 5 7 15
		f 4 -17 13 11 -16
		mu 0 4 17 15 7 9
		f 4 -19 15 5 -18
		mu 0 4 18 16 1 3
		f 4 -20 17 7 -13
		mu 0 4 14 18 3 5
		f 4 20 14 -22 -23
		mu 0 4 19 14 15 20
		f 4 -25 21 16 -24
		mu 0 4 22 20 15 17
		f 4 -27 23 18 -26
		mu 0 4 23 21 16 18
		f 4 -28 25 19 -21
		mu 0 4 19 23 18 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "pCube27";
	setAttr ".t" -type "double3" 7987.8894721777906 -389.30612330175683 13021.955736372063 ;
createNode mesh -n "pCubeShape27" -p "pCube27";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape10" -p "pCube27";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 11 ".pt";
	setAttr ".pt[0]" -type "float3" 894.59564 9.094947e-013 -2207.679 ;
	setAttr ".pt[1]" -type "float3" 373.8959 9.094947e-013 -2586.4431 ;
	setAttr ".pt[2]" -type "float3" 894.59564 -10.361478 -2207.679 ;
	setAttr ".pt[3]" -type "float3" 373.8959 -10.361478 -2586.4431 ;
	setAttr ".pt[4]" -type "float3" -252.83237 -10.361478 390.36554 ;
	setAttr ".pt[5]" -type "float3" 0 -10.361478 0 ;
	setAttr ".pt[6]" -type "float3" -252.83237 -9.094947e-013 390.36554 ;
	setAttr ".pt[8]" -type "float3" 595.95392 -10.361478 -1419.3641 ;
	setAttr ".pt[9]" -type "float3" 595.95392 -10.361478 -1419.3641 ;
	setAttr ".pt[10]" -type "float3" 595.95392 0 -1419.3641 ;
	setAttr ".pt[11]" -type "float3" 595.95392 0 -1419.3641 ;
	setAttr -s 12 ".vt[0:11]"  -738.33740234 -389.30612183 3110.87109375
		 1116.41210938 -389.30612183 3110.87109375 -738.33740234 389.30612183 3110.87109375
		 1116.41210938 389.30612183 3110.87109375 -738.33740234 389.30612183 -985.057617188
		 1116.41210938 389.30612183 -985.057617188 -738.33740234 -389.30612183 -985.057617188
		 1116.41210938 -389.30612183 -985.057617188 -738.33740234 389.30612183 -985.057617188
		 1116.41210938 389.30612183 -985.057617188 1116.41210938 -389.30612183 -985.057617188
		 -738.33740234 -389.30612183 -985.057617188;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 4 8 0 5 9 0 8 9 0 7 10 0 9 10 0 6 11 0 11 10 0 8 11 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 14 16 -19 -20
		mu 0 4 14 15 16 17
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 2 13 -15 -13
		mu 0 4 4 5 15 14
		f 4 9 15 -17 -14
		mu 0 4 5 7 16 15
		f 4 -4 17 18 -16
		mu 0 4 7 6 17 16
		f 4 -9 12 19 -18
		mu 0 4 6 4 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube28";
	setAttr ".t" -type "double3" -8414.3633324889997 -1849.4685725460786 16776.460896182092 ;
	setAttr ".r" -type "double3" 0 23.732261293399624 0 ;
createNode mesh -n "pCubeShape28" -p "pCube28";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -75.58530426 -35.58328247 69.58628082 75.58530426 -35.58328247 69.58628082
		 -75.58530426 35.58328247 69.58628082 75.58530426 35.58328247 69.58628082 -75.58530426 35.58328247 -69.58628082
		 75.58530426 35.58328247 -69.58628082 -75.58530426 -35.58328247 -69.58628082 75.58530426 -35.58328247 -69.58628082;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube29";
	setAttr ".t" -type "double3" 8920.9175111451823 14.593298458596683 11861.536647798248 ;
	setAttr ".r" -type "double3" 0 23.732261293399624 0 ;
createNode mesh -n "pCubeShape29" -p "pCube29";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -75.58530426 -35.58328247 69.58628082 75.58530426 -35.58328247 69.58628082
		 -75.58530426 35.58328247 69.58628082 75.58530426 35.58328247 69.58628082 -75.58530426 35.58328247 -69.58628082
		 75.58530426 35.58328247 -69.58628082 -75.58530426 -35.58328247 -69.58628082 75.58530426 -35.58328247 -69.58628082;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube30";
	setAttr ".t" -type "double3" 6965.7741614492652 -776.58768106672346 11930.792584949309 ;
	setAttr ".r" -type "double3" 0 -26.39225974778164 0 ;
	setAttr ".s" -type "double3" 1.496549512896572 1 1.496549512896572 ;
createNode mesh -n "pCubeShape30" -p "pCube30";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -173.99723816 -224.48074341 152.87765503
		 173.99723816 -224.48074341 152.87765503 -173.99723816 224.48074341 152.87765503 173.99723816 224.48074341 152.87765503
		 -173.99723816 224.48074341 -152.87765503 173.99723816 224.48074341 -152.87765503
		 -173.99723816 -224.48074341 -152.87765503 173.99723816 -224.48074341 -152.87765503;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube31";
	setAttr ".t" -type "double3" 7222.2321809138666 -604.02946914967902 11437.58148521506 ;
	setAttr ".r" -type "double3" 0 -26.39225974778164 0 ;
	setAttr ".s" -type "double3" 1.496549512896572 1 1.496549512896572 ;
createNode mesh -n "pCubeShape31" -p "pCube31";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -173.99723816 -224.48074341 152.87765503
		 173.99723816 -224.48074341 152.87765503 -173.99723816 224.48074341 152.87765503 173.99723816 224.48074341 152.87765503
		 -173.99723816 224.48074341 -152.87765503 173.99723816 224.48074341 -152.87765503
		 -173.99723816 -224.48074341 -152.87765503 173.99723816 -224.48074341 -152.87765503;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube32";
	setAttr ".t" -type "double3" 7492.929918510853 -428.84163121383006 10921.468398291907 ;
	setAttr ".r" -type "double3" 0 -26.39225974778164 0 ;
	setAttr ".s" -type "double3" 1.496549512896572 1 1.496549512896572 ;
createNode mesh -n "pCubeShape32" -p "pCube32";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -132.86292 0 ;
	setAttr ".pt[1]" -type "float3" 0 -132.86292 0 ;
	setAttr ".pt[6]" -type "float3" 0 -132.86292 0 ;
	setAttr ".pt[7]" -type "float3" 0 -132.86292 0 ;
	setAttr -s 8 ".vt[0:7]"  -173.99723816 -224.48074341 152.87765503
		 173.99723816 -224.48074341 152.87765503 -173.99723816 224.48074341 152.87765503 173.99723816 224.48074341 152.87765503
		 -173.99723816 224.48074341 -152.87765503 173.99723816 224.48074341 -152.87765503
		 -173.99723816 -224.48074341 -152.87765503 173.99723816 -224.48074341 -152.87765503;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane1";
	setAttr ".t" -type "double3" -1012.6030275334559 -4345.5566225011271 10339.337109017957 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -11000 -2.4424907e-012 11000 11000 -2.4424907e-012 11000
		 -11000 2.4424907e-012 -11000 11000 2.4424907e-012 -11000;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 19 ".lnk";
	setAttr -s 19 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr -s 3 ".dli[1:2]"  1 2;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode lambert -n "scarf_txt";
createNode shadingEngine -n "zen_scarfSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode file -n "file17";
	setAttr ".ftn" -type "string" "/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/diffuse/scarf_diffuse.tga";
createNode place2dTexture -n "place2dTexture1";
createNode bump2d -n "bump2d1";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 1.9999999e-005 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode file -n "file28";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/normals/scarf_normal.tga";
createNode place2dTexture -n "place2dTexture2";
createNode lambert -n "belt_txt";
createNode shadingEngine -n "zen_beltSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode file -n "file10";
	setAttr ".ftn" -type "string" "/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/diffuse/belt_diffuse.tga";
createNode place2dTexture -n "place2dTexture3";
createNode bump2d -n "bump2d2";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 1.9999999e-005 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode file -n "file22";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/normals/belt_normal.tga";
createNode place2dTexture -n "place2dTexture4";
createNode lambert -n "bag_txt";
createNode shadingEngine -n "zen_bagSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode file -n "file9";
	setAttr ".ftn" -type "string" "/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/diffuse/bag_diffuse.tga";
createNode place2dTexture -n "place2dTexture5";
createNode bump2d -n "bump2d3";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 1.9999999e-005 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode file -n "file21";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/normals/bag_normal.tga";
createNode place2dTexture -n "place2dTexture6";
createNode lambert -n "eyeMouth_txt";
createNode shadingEngine -n "zen_leftEyeSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
createNode file -n "file19";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/diffuse/eyesTeeth_diffuse.png";
createNode place2dTexture -n "place2dTexture7";
createNode lambert -n "legs_txt";
createNode shadingEngine -n "zen_LegsSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
createNode file -n "file20";
	setAttr ".ftn" -type "string" "/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/diffuse/legs_diffuse.tga";
createNode place2dTexture -n "place2dTexture8";
createNode bump2d -n "bump2d4";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 1.9999999e-005 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode file -n "file25";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/normals/legs_normal.tga";
createNode place2dTexture -n "place2dTexture9";
createNode lambert -n "skirt_txt";
createNode shadingEngine -n "zen_skirtSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
createNode file -n "file14";
	setAttr ".ftn" -type "string" "/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/diffuse/skirt_diffuse.tga";
createNode place2dTexture -n "place2dTexture10";
createNode bump2d -n "bump2d5";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 1.9999999e-005 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode file -n "file30";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/normals/skirt_normal.tga";
createNode place2dTexture -n "place2dTexture11";
createNode lambert -n "hair_txt";
createNode shadingEngine -n "zen_hairSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
createNode file -n "file16";
	setAttr ".ftn" -type "string" "/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/diffuse/hair_diffuse.tga";
createNode place2dTexture -n "place2dTexture12";
createNode bump2d -n "bump2d6";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 1.9999999e-005 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode file -n "file23";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/normals/hair_normal.tga";
createNode place2dTexture -n "place2dTexture13";
createNode lambert -n "headHand_txt";
createNode shadingEngine -n "zen_headHandsSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
createNode file -n "file15";
	setAttr ".ftn" -type "string" "/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/diffuse/headHand_diffuse.tga";
createNode place2dTexture -n "place2dTexture14";
createNode bump2d -n "bump2d7";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 1.9999999e-005 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode file -n "file24";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/normals/headHands_normal.tga";
createNode place2dTexture -n "place2dTexture15";
createNode lambert -n "shoes_txt";
createNode shadingEngine -n "shoes:polySurface1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
createNode file -n "file12";
	setAttr ".ftn" -type "string" "/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/diffuse/shoes_diffuse.tga";
createNode place2dTexture -n "place2dTexture16";
createNode bump2d -n "bump2d8";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 1.9999999e-005 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode file -n "file29";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/normals/shoes_normal.tga";
createNode place2dTexture -n "place2dTexture17";
createNode lambert -n "sleeves_txt";
createNode shadingEngine -n "sleeves:polySurface1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
createNode file -n "file13";
	setAttr ".ftn" -type "string" "/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/diffuse/sleeves_diffuse.tga";
createNode place2dTexture -n "place2dTexture18";
createNode bump2d -n "bump2d9";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 1.9999999e-005 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode file -n "file31";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/normals/sleeves_normal.tga";
createNode place2dTexture -n "place2dTexture19";
createNode lambert -n "turtleneck_txt";
createNode shadingEngine -n "turtleneck:polySurface1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo11";
createNode file -n "file18";
	setAttr ".ftn" -type "string" "/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/diffuse/turtleneck_diffuse.tga";
createNode place2dTexture -n "place2dTexture20";
createNode bump2d -n "bump2d10";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 1.9999999e-005 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode file -n "file32";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/normals/turtleneck_normal.tga";
createNode place2dTexture -n "place2dTexture21";
createNode lambert -n "overshirt_txt";
createNode shadingEngine -n "overshirt:polySurface1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo12";
createNode file -n "file8";
	setAttr ".ftn" -type "string" "/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/diffuse/overshirt_diffuse.tga";
createNode place2dTexture -n "place2dTexture22";
createNode bump2d -n "bump2d11";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 1.9999999e-005 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode file -n "file26";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/normals/overshirt_normal.tga";
createNode place2dTexture -n "place2dTexture23";
createNode lambert -n "pantsLegs_txt";
createNode shadingEngine -n "pantsLegs:polySurface1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo13";
createNode file -n "file11";
	setAttr ".ftn" -type "string" "/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/diffuse/pantsLegs_diffuse.tga";
createNode place2dTexture -n "place2dTexture24";
createNode bump2d -n "bump2d12";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 1.9999999e-005 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode file -n "file27";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/normals/pantsLegs_normal.tga";
createNode place2dTexture -n "place2dTexture25";
createNode displayLayer -n "layer2";
	setAttr ".do" 1;
createNode displayLayer -n "layer1";
	setAttr ".do" 2;
createNode lambert -n "lambert2";
createNode shadingEngine -n "worm_v2:pCylinder1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo14";
createNode script -n "worm_v3:uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 0\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 0\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"perPolygonSort\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 0\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"perPolygonSort\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 0\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n"
		+ "                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n"
		+ "            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n"
		+ "                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"perPolygonSort\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 0\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"perPolygonSort\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 0\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "worm_v3:sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode lambert -n "lambert3";
	setAttr ".c" -type "float3" 1 0 0.8704052 ;
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo15";
createNode lambert -n "lava";
	setAttr ".c" -type "float3" 1 0.40457404 0 ;
createNode shadingEngine -n "lambert4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo16";
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[4:5]" "e[8:9]" "e[15]" "e[18]";
	setAttr ".ix" -type "matrix" 0.23876975193500682 0.10608716571279682 -0.96526396329290209 0
		 -0.092705861274587853 0.99196480284817956 0.086089797279986363 0 1.8828248868146926 0.13426195397419247 0.48049561462935031 0
		 -5519.5263131893444 -888.88418479476627 6083.0444016756837 1;
	setAttr ".wt" 0.63598847389221191;
	setAttr ".dr" no;
	setAttr ".re" 4;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 3;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[19:20]" "e[22]" "e[24]" "e[27]" "e[29]";
	setAttr ".ix" -type "matrix" 0.23876975193500682 0.10608716571279682 -0.96526396329290209 0
		 -0.092705861274587853 0.99196480284817956 0.086089797279986363 0 1.8828248868146926 0.13426195397419247 0.48049561462935031 0
		 -5519.5263131893444 -888.88418479476627 6083.0444016756837 1;
	setAttr ".wt" 0.28223475813865662;
	setAttr ".re" 24;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 3;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[0:3]" "e[21]" "e[25]" "e[40]" "e[43]" "e[52]" "e[55]" "e[64]" "e[67]" "e[70]" "e[74]" "e[82]" "e[86]" "e[94]" "e[98]";
	setAttr ".ix" -type "matrix" 0.23876975193500682 0.10608716571279682 -0.96526396329290209 0
		 -0.092705861274587853 0.99196480284817956 0.086089797279986363 0 1.8828248868146926 0.13426195397419247 0.48049561462935031 0
		 -5519.5263131893444 -888.88418479476627 6083.0444016756837 1;
	setAttr ".wt" 0.30277317762374878;
	setAttr ".re" 40;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 3;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 17 "e[11:12]" "e[14]" "e[16]" "e[28]" "e[31]" "e[34]" "e[38]" "e[46]" "e[50]" "e[58]" "e[62]" "e[76]" "e[79]" "e[88]" "e[91]" "e[100]" "e[103]";
	setAttr ".ix" -type "matrix" 0.23876975193500682 0.10608716571279682 -0.96526396329290209 0
		 -0.092705861274587853 0.99196480284817956 0.086089797279986363 0 1.8828248868146926 0.13426195397419247 0.48049561462935031 0
		 -5519.5263131893444 -888.88418479476627 6083.0444016756837 1;
	setAttr ".wt" 0.64503383636474609;
	setAttr ".dr" no;
	setAttr ".re" 14;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 3;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 31 "e[6:7]" "e[10]" "e[13]" "e[17]" "e[23]" "e[26]" "e[30]" "e[36]" "e[42]" "e[48]" "e[54]" "e[60]" "e[66]" "e[72]" "e[78]" "e[84]" "e[90]" "e[96]" "e[102]" "e[120]" "e[138]" "e[156]" "e[174]" "e[192]" "e[210]" "e[230]" "e[247]" "e[266]" "e[283]" "e[302]" "e[319]";
	setAttr ".ix" -type "matrix" 0.23876975193500682 0.10608716571279682 -0.96526396329290209 0
		 -0.092705861274587853 0.99196480284817956 0.086089797279986363 0 1.8828248868146926 0.13426195397419247 0.48049561462935031 0
		 -5519.5263131893444 -888.88418479476627 6083.0444016756837 1;
	setAttr ".wt" 0.50200271606445313;
	setAttr ".dr" no;
	setAttr ".re" 319;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[40:41]" "e[46]" "e[48]" "e[51]" "e[53]" "e[59]" "e[62]" "e[82]" "e[85]" "e[87]" "e[91]" "e[98]" "e[106]" "e[118]" "e[126]" "e[140]" "e[148]" "e[160]" "e[168]" "e[188]" "e[204]" "e[220]" "e[236]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -70.118457189276342 -404.45457001799798 3152.7261053962497 1;
	setAttr ".wt" 0.24818061292171478;
	setAttr ".re" 91;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[4:5]" "e[8:9]" "e[16]" "e[19]" "e[24]" "e[27]";
	setAttr ".ix" -type "matrix" 0.78372576106576231 0 0.62110702092464842 0 -0 1 0 0
		 -0.62110702092464842 -0 0.78372576106576231 0 6151.2131207337488 -1237.2369956063453 14914.352275530207 1;
	setAttr ".wt" 0.1850590854883194;
	setAttr ".re" 8;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 7;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[0:3]" "e[14]" "e[18]" "e[22]" "e[26]" "e[32]" "e[40]" "e[48]" "e[56]" "e[64]" "e[72]" "e[80]" "e[88]" "e[96]" "e[104]" "e[112]" "e[120]" "e[128]" "e[136]";
	setAttr ".ix" -type "matrix" 0.78372576106576231 0 0.62110702092464842 0 -0 1 0 0
		 -0.62110702092464842 -0 0.78372576106576231 0 6151.2131207337488 -1237.2369956063453 14914.352275530207 1;
	setAttr ".wt" 0.2568332850933075;
	setAttr ".re" 22;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "e[6:7]" "e[10:11]" "e[30]" "e[34]" "e[46]" "e[50]" "e[62]" "e[66]" "e[78]" "e[82]" "e[94]" "e[98]" "e[110]" "e[114]" "e[126]" "e[130]" "e[162]" "e[180]" "e[206]" "e[224]" "e[250]" "e[268]" "e[294]" "e[312]";
	setAttr ".ix" -type "matrix" 0.78372576106576231 0 0.62110702092464842 0 -0 1 0 0
		 -0.62110702092464842 -0 0.78372576106576231 0 6151.2131207337488 -1237.2369956063453 14914.352275530207 1;
	setAttr ".wt" 0.71343034505844116;
	setAttr ".dr" no;
	setAttr ".re" 6;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 5;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 25 "e[20:21]" "e[23]" "e[25]" "e[38]" "e[42]" "e[54]" "e[58]" "e[70]" "e[74]" "e[86]" "e[90]" "e[102]" "e[106]" "e[118]" "e[122]" "e[134]" "e[138]" "e[158]" "e[183]" "e[202]" "e[227]" "e[246]" "e[271]" "e[290]" "e[315]";
	setAttr ".ix" -type "matrix" 0.78372576106576231 0 0.62110702092464842 0 -0 1 0 0
		 -0.62110702092464842 -0 0.78372576106576231 0 6151.2131207337488 -1237.2369956063453 14914.352275530207 1;
	setAttr ".wt" 0.57944303750991821;
	setAttr ".dr" no;
	setAttr ".re" 20;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[16:23]";
	setAttr ".ix" -type "matrix" 3.2357292452853548 0 0.28067047672892981 0 -0 1 0 0
		 -0.28067047672892981 -0 3.2357292452853548 0 -7996.6011652105462 1504.6696344576492 9340.7190193929655 1;
	setAttr ".wt" 0.82898533344268799;
	setAttr ".dr" no;
	setAttr ".re" 23;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 10;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[16:23]";
	setAttr ".ix" -type "matrix" 0.99625909390969836 0 0.086416536624808762 0 -0 1 0 0
		 -0.086416536624808762 -0 0.99625909390969836 0 -1467.856965413778 1504.6696344576515 5666.9490509647349 1;
	setAttr ".wt" 0.79396194219589233;
	setAttr ".dr" no;
	setAttr ".re" 21;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 10;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[16:23]";
	setAttr ".ix" -type "matrix" 1.342883689787318 0 0.11648310993674373 0 0 1 0 0 -0.11648310993674373 0 1.342883689787318 0
		 -1398.3840665710204 1504.6696344576483 15785.283010404399 1;
	setAttr ".wt" 0.75261348485946655;
	setAttr ".dr" no;
	setAttr ".re" 16;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 10;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[16:23]";
	setAttr ".ix" -type "matrix" 1.342883689787318 0 0.11648310993674373 0 0 1 0 0 -0.11648310993674373 0 1.342883689787318 0
		 309.77303712845242 1504.6696344576492 17321.358235861877 1;
	setAttr ".wt" 0.80860340595245361;
	setAttr ".dr" no;
	setAttr ".re" 16;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 10;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 0.88496913112361231 0 -0.46564969339442153 0 0 1 0 0
		 0.46564969339442153 0 0.88496913112361231 0 -3308.4892809702128 -3642.677215476363 16701.71925382434 1;
	setAttr ".wt" 0.068998105823993683;
	setAttr ".re" 9;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 8;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 17 "e[0:3]" "e[14]" "e[18]" "e[22]" "e[26]" "e[30]" "e[34]" "e[38]" "e[42]" "e[46]" "e[50]" "e[54]" "e[58]" "e[62]" "e[66]" "e[70]" "e[74]";
	setAttr ".ix" -type "matrix" 0.88496913112361231 0 -0.46564969339442153 0 0 1 0 0
		 0.46564969339442153 0 0.88496913112361231 0 -3308.4892809702128 -3642.677215476363 16701.71925382434 1;
	setAttr ".wt" 0.35569152235984802;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 22 "e[6:7]" "e[10:11]" "e[16]" "e[19]" "e[24]" "e[27]" "e[32]" "e[35]" "e[40]" "e[43]" "e[48]" "e[51]" "e[56]" "e[59]" "e[64]" "e[67]" "e[72]" "e[75]" "e[96]" "e[115]" "e[136]" "e[155]";
	setAttr ".ix" -type "matrix" 0.88496913112361231 0 -0.46564969339442153 0 0 1 0 0
		 0.46564969339442153 0 0.88496913112361231 0 -3308.4892809702128 -3642.677215476363 16701.71925382434 1;
	setAttr ".wt" 0.58588624000549316;
	setAttr ".dr" no;
	setAttr ".re" 115;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[56:57]" "e[59]" "e[61]" "e[63]" "e[65]" "e[67]" "e[69]";
	setAttr ".ix" -type "matrix" 1.342883689787318 0 0.11648310993674373 0 0 1 0 0 -0.11648310993674373 0 1.342883689787318 0
		 309.77303712845242 1504.6696344576492 17321.358235861877 1;
	setAttr ".wt" 0.58477562665939331;
	setAttr ".dr" no;
	setAttr ".re" 69;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing19";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[40:41]" "e[43]" "e[45]" "e[47]" "e[49]" "e[51]" "e[53]";
	setAttr ".ix" -type "matrix" 1.342883689787318 0 0.11648310993674373 0 0 1 0 0 -0.11648310993674373 0 1.342883689787318 0
		 309.77303712845242 1504.6696344576492 17321.358235861877 1;
	setAttr ".wt" 0.3861062228679657;
	setAttr ".re" 53;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing20";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[72:73]" "e[75]" "e[77]" "e[79]" "e[81]" "e[83]" "e[85]";
	setAttr ".ix" -type "matrix" 1.342883689787318 0 0.11648310993674373 0 0 1 0 0 -0.11648310993674373 0 1.342883689787318 0
		 309.77303712845242 1504.6696344576492 17321.358235861877 1;
	setAttr ".wt" 0.61833399534225464;
	setAttr ".dr" no;
	setAttr ".re" 85;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[88:89]" "e[91]" "e[93]" "e[95]" "e[97]" "e[99]" "e[101]";
	setAttr ".ix" -type "matrix" 1.342883689787318 0 0.11648310993674373 0 0 1 0 0 -0.11648310993674373 0 1.342883689787318 0
		 309.77303712845242 1504.6696344576492 17321.358235861877 1;
	setAttr ".wt" 0.39421796798706055;
	setAttr ".re" 101;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing22";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[104:105]" "e[107]" "e[109]" "e[111]" "e[113]" "e[115]" "e[117]";
	setAttr ".ix" -type "matrix" 1.342883689787318 0 0.11648310993674373 0 0 1 0 0 -0.11648310993674373 0 1.342883689787318 0
		 309.77303712845242 1504.6696344576492 17321.358235861877 1;
	setAttr ".wt" 0.37675783038139343;
	setAttr ".re" 117;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing23";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[120:121]" "e[123]" "e[125]" "e[127]" "e[129]" "e[131]" "e[133]";
	setAttr ".ix" -type "matrix" 1.342883689787318 0 0.11648310993674373 0 0 1 0 0 -0.11648310993674373 0 1.342883689787318 0
		 309.77303712845242 1504.6696344576492 17321.358235861877 1;
	setAttr ".wt" 0.63011562824249268;
	setAttr ".dr" no;
	setAttr ".re" 133;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing24";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[136:137]" "e[139]" "e[141]" "e[143]" "e[145]" "e[147]" "e[149]";
	setAttr ".ix" -type "matrix" 1.342883689787318 0 0.11648310993674373 0 0 1 0 0 -0.11648310993674373 0 1.342883689787318 0
		 309.77303712845242 1504.6696344576492 17321.358235861877 1;
	setAttr ".wt" 0.48341682553291321;
	setAttr ".re" 149;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing25";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[152:153]" "e[155]" "e[157]" "e[159]" "e[161]" "e[163]" "e[165]";
	setAttr ".ix" -type "matrix" 1.342883689787318 0 0.11648310993674373 0 0 1 0 0 -0.11648310993674373 0 1.342883689787318 0
		 309.77303712845242 1504.6696344576492 17321.358235861877 1;
	setAttr ".wt" 0.55774819850921631;
	setAttr ".dr" no;
	setAttr ".re" 165;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing26";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[168:169]" "e[171]" "e[173]" "e[175]" "e[177]" "e[179]" "e[181]";
	setAttr ".ix" -type "matrix" 1.342883689787318 0 0.11648310993674373 0 0 1 0 0 -0.11648310993674373 0 1.342883689787318 0
		 309.77303712845242 1504.6696344576492 17321.358235861877 1;
	setAttr ".wt" 0.53392434120178223;
	setAttr ".dr" no;
	setAttr ".re" 181;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing27";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[184:185]" "e[187]" "e[189]" "e[191]" "e[193]" "e[195]" "e[197]";
	setAttr ".ix" -type "matrix" 1.342883689787318 0 0.11648310993674373 0 0 1 0 0 -0.11648310993674373 0 1.342883689787318 0
		 309.77303712845242 1504.6696344576492 17321.358235861877 1;
	setAttr ".wt" 0.11067593842744827;
	setAttr ".re" 189;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing28";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[16:23]";
	setAttr ".ix" -type "matrix" 1.342883689787318 0 0.11648310993674373 0 0 1 0 0 -0.11648310993674373 0 1.342883689787318 0
		 309.77303712845242 1504.6696344576492 17321.358235861877 1;
	setAttr ".wt" 0.47133195400238037;
	setAttr ".re" 17;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing29";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[136:137]" "e[139]" "e[141]" "e[143]" "e[145]" "e[147]" "e[149]";
	setAttr ".ix" -type "matrix" 1.342883689787318 0 0.11648310993674373 0 0 1 0 0 -0.11648310993674373 0 1.342883689787318 0
		 -1398.3840665710204 1504.6696344576483 15785.283010404399 1;
	setAttr ".wt" 0.35762986540794373;
	setAttr ".re" 149;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing30";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[152:153]" "e[155]" "e[157]" "e[159]" "e[161]" "e[163]" "e[165]";
	setAttr ".ix" -type "matrix" 1.342883689787318 0 0.11648310993674373 0 0 1 0 0 -0.11648310993674373 0 1.342883689787318 0
		 -1398.3840665710204 1504.6696344576483 15785.283010404399 1;
	setAttr ".wt" 0.39072772860527039;
	setAttr ".re" 165;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing31";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[184:185]" "e[187]" "e[189]" "e[191]" "e[193]" "e[195]" "e[197]";
	setAttr ".ix" -type "matrix" 1.342883689787318 0 0.11648310993674373 0 0 1 0 0 -0.11648310993674373 0 1.342883689787318 0
		 -1398.3840665710204 1504.6696344576483 15785.283010404399 1;
	setAttr ".wt" 0.87563532590866089;
	setAttr ".dr" no;
	setAttr ".re" 189;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing32";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[168:169]" "e[171]" "e[173]" "e[175]" "e[177]" "e[179]" "e[181]";
	setAttr ".ix" -type "matrix" 1.342883689787318 0 0.11648310993674373 0 0 1 0 0 -0.11648310993674373 0 1.342883689787318 0
		 -1398.3840665710204 1504.6696344576483 15785.283010404399 1;
	setAttr ".wt" 0.66579991579055786;
	setAttr ".dr" no;
	setAttr ".re" 181;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing33";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[16:23]";
	setAttr ".ix" -type "matrix" 1.342883689787318 0 0.11648310993674373 0 0 1 0 0 -0.11648310993674373 0 1.342883689787318 0
		 -1398.3840665710204 1504.6696344576483 15785.283010404399 1;
	setAttr ".wt" 0.84166854619979858;
	setAttr ".dr" no;
	setAttr ".re" 17;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing34";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[120:121]" "e[123]" "e[125]" "e[127]" "e[129]" "e[131]" "e[133]";
	setAttr ".ix" -type "matrix" 1.342883689787318 0 0.11648310993674373 0 0 1 0 0 -0.11648310993674373 0 1.342883689787318 0
		 -1398.3840665710204 1504.6696344576483 15785.283010404399 1;
	setAttr ".wt" 0.73659032583236694;
	setAttr ".dr" no;
	setAttr ".re" 133;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing35";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[104:105]" "e[107]" "e[109]" "e[111]" "e[113]" "e[115]" "e[117]";
	setAttr ".ix" -type "matrix" 1.342883689787318 0 0.11648310993674373 0 0 1 0 0 -0.11648310993674373 0 1.342883689787318 0
		 -1398.3840665710204 1504.6696344576483 15785.283010404399 1;
	setAttr ".wt" 0.60391366481781006;
	setAttr ".dr" no;
	setAttr ".re" 117;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing36";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[88:89]" "e[91]" "e[93]" "e[95]" "e[97]" "e[99]" "e[101]";
	setAttr ".ix" -type "matrix" 1.342883689787318 0 0.11648310993674373 0 0 1 0 0 -0.11648310993674373 0 1.342883689787318 0
		 -1398.3840665710204 1504.6696344576483 15785.283010404399 1;
	setAttr ".wt" 0.49510043859481812;
	setAttr ".re" 101;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing37";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[72:73]" "e[75]" "e[77]" "e[79]" "e[81]" "e[83]" "e[85]";
	setAttr ".ix" -type "matrix" 1.342883689787318 0 0.11648310993674373 0 0 1 0 0 -0.11648310993674373 0 1.342883689787318 0
		 -1398.3840665710204 1504.6696344576483 15785.283010404399 1;
	setAttr ".wt" 0.49391812086105347;
	setAttr ".re" 85;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing38";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[40:41]" "e[43]" "e[45]" "e[47]" "e[49]" "e[51]" "e[53]";
	setAttr ".ix" -type "matrix" 1.342883689787318 0 0.11648310993674373 0 0 1 0 0 -0.11648310993674373 0 1.342883689787318 0
		 -1398.3840665710204 1504.6696344576483 15785.283010404399 1;
	setAttr ".wt" 0.30453011393547058;
	setAttr ".re" 53;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing39";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[56:57]" "e[59]" "e[61]" "e[63]" "e[65]" "e[67]" "e[69]";
	setAttr ".ix" -type "matrix" 1.342883689787318 0 0.11648310993674373 0 0 1 0 0 -0.11648310993674373 0 1.342883689787318 0
		 -1398.3840665710204 1504.6696344576483 15785.283010404399 1;
	setAttr ".wt" 0.63200724124908447;
	setAttr ".dr" no;
	setAttr ".re" 69;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing40";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[88:89]" "e[91]" "e[93]" "e[95]" "e[97]" "e[99]" "e[101]";
	setAttr ".ix" -type "matrix" 0.99625909390969836 0 0.086416536624808762 0 -0 1 0 0
		 -0.086416536624808762 -0 0.99625909390969836 0 -1467.856965413778 1504.6696344576515 5666.9490509647349 1;
	setAttr ".wt" 0.65628182888031006;
	setAttr ".dr" no;
	setAttr ".re" 88;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing41";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[72:73]" "e[75]" "e[77]" "e[79]" "e[81]" "e[83]" "e[85]";
	setAttr ".ix" -type "matrix" 0.99625909390969836 0 0.086416536624808762 0 -0 1 0 0
		 -0.086416536624808762 -0 0.99625909390969836 0 -1467.856965413778 1504.6696344576515 5666.9490509647349 1;
	setAttr ".wt" 0.48846513032913208;
	setAttr ".re" 72;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing42";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[56:57]" "e[59]" "e[61]" "e[63]" "e[65]" "e[67]" "e[69]";
	setAttr ".ix" -type "matrix" 0.99625909390969836 0 0.086416536624808762 0 -0 1 0 0
		 -0.086416536624808762 -0 0.99625909390969836 0 -1467.856965413778 1504.6696344576515 5666.9490509647349 1;
	setAttr ".wt" 0.20747590065002441;
	setAttr ".re" 56;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing43";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[40:41]" "e[43]" "e[45]" "e[47]" "e[49]" "e[51]" "e[53]";
	setAttr ".ix" -type "matrix" 0.99625909390969836 0 0.086416536624808762 0 -0 1 0 0
		 -0.086416536624808762 -0 0.99625909390969836 0 -1467.856965413778 1504.6696344576515 5666.9490509647349 1;
	setAttr ".wt" 0.33534064888954163;
	setAttr ".re" 40;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing44";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[104:105]" "e[107]" "e[109]" "e[111]" "e[113]" "e[115]" "e[117]";
	setAttr ".ix" -type "matrix" 0.99625909390969836 0 0.086416536624808762 0 -0 1 0 0
		 -0.086416536624808762 -0 0.99625909390969836 0 -1467.856965413778 1504.6696344576515 5666.9490509647349 1;
	setAttr ".wt" 0.6459423303604126;
	setAttr ".dr" no;
	setAttr ".re" 104;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing45";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[120:121]" "e[123]" "e[125]" "e[127]" "e[129]" "e[131]" "e[133]";
	setAttr ".ix" -type "matrix" 0.99625909390969836 0 0.086416536624808762 0 -0 1 0 0
		 -0.086416536624808762 -0 0.99625909390969836 0 -1467.856965413778 1504.6696344576515 5666.9490509647349 1;
	setAttr ".wt" 0.57285034656524658;
	setAttr ".dr" no;
	setAttr ".re" 120;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing46";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[136:137]" "e[139]" "e[141]" "e[143]" "e[145]" "e[147]" "e[149]";
	setAttr ".ix" -type "matrix" 0.99625909390969836 0 0.086416536624808762 0 -0 1 0 0
		 -0.086416536624808762 -0 0.99625909390969836 0 -1467.856965413778 1504.6696344576515 5666.9490509647349 1;
	setAttr ".wt" 0.55445218086242676;
	setAttr ".dr" no;
	setAttr ".re" 136;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing47";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[152:153]" "e[155]" "e[157]" "e[159]" "e[161]" "e[163]" "e[165]";
	setAttr ".ix" -type "matrix" 0.99625909390969836 0 0.086416536624808762 0 -0 1 0 0
		 -0.086416536624808762 -0 0.99625909390969836 0 -1467.856965413778 1504.6696344576515 5666.9490509647349 1;
	setAttr ".wt" 0.54509520530700684;
	setAttr ".dr" no;
	setAttr ".re" 152;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing48";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[168:169]" "e[171]" "e[173]" "e[175]" "e[177]" "e[179]" "e[181]";
	setAttr ".ix" -type "matrix" 0.99625909390969836 0 0.086416536624808762 0 -0 1 0 0
		 -0.086416536624808762 -0 0.99625909390969836 0 -1467.856965413778 1504.6696344576515 5666.9490509647349 1;
	setAttr ".wt" 0.47664672136306763;
	setAttr ".re" 168;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing49";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[184:185]" "e[187]" "e[189]" "e[191]" "e[193]" "e[195]" "e[197]";
	setAttr ".ix" -type "matrix" 0.99625909390969836 0 0.086416536624808762 0 -0 1 0 0
		 -0.086416536624808762 -0 0.99625909390969836 0 -1467.856965413778 1504.6696344576515 5666.9490509647349 1;
	setAttr ".wt" 0.67148458957672119;
	setAttr ".dr" no;
	setAttr ".re" 184;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing50";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[16:23]";
	setAttr ".ix" -type "matrix" 0.99625909390969836 0 0.086416536624808762 0 -0 1 0 0
		 -0.086416536624808762 -0 0.99625909390969836 0 -1467.856965413778 1504.6696344576515 5666.9490509647349 1;
	setAttr ".wt" 0.69482994079589844;
	setAttr ".dr" no;
	setAttr ".re" 21;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing51";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[6:7]" "e[10:11]" "e[16]" "e[19]" "e[24]" "e[27]";
	setAttr ".ix" -type "matrix" 0.94664342639695498 0 -0.74876671771601344 0 0 0.7001085080361823 0 0
		 0.62036708275444552 0 0.78431159792185845 0 6559.4031003875107 -140.76508362250047 13469.35596045597 1;
	setAttr ".wt" 0.48025339841842651;
	setAttr ".re" 27;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing52";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[20:21]" "e[23]" "e[25]" "e[36]" "e[43]" "e[52]" "e[59]";
	setAttr ".ix" -type "matrix" 0.94664342639695498 0 -0.74876671771601344 0 0 0.7001085080361823 0 0
		 0.62036708275444552 0 0.78431159792185845 0 6559.4031003875107 -140.76508362250047 13469.35596045597 1;
	setAttr ".wt" 0.45759105682373047;
	setAttr ".re" 59;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing53";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[0:3]" "e[30]" "e[34]" "e[46]" "e[50]";
	setAttr ".ix" -type "matrix" 0.94664342639695498 0 -0.74876671771601344 0 0 0.7001085080361823 0 0
		 0.62036708275444552 0 0.78431159792185845 0 6559.4031003875107 -140.76508362250047 13469.35596045597 1;
	setAttr ".wt" 0.52371203899383545;
	setAttr ".dr" no;
	setAttr ".re" 46;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing54";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[12:13]" "e[15]" "e[17]" "e[38]" "e[42]" "e[54]" "e[58]";
	setAttr ".ix" -type "matrix" 0.94664342639695498 0 -0.74876671771601344 0 0 0.7001085080361823 0 0
		 0.62036708275444552 0 0.78431159792185845 0 6559.4031003875107 -140.76508362250047 13469.35596045597 1;
	setAttr ".wt" 0.56044548749923706;
	setAttr ".dr" no;
	setAttr ".re" 58;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode lambert -n "lambert5";
createNode shadingEngine -n "lambert5SG";
	setAttr ".ihi" 0;
	setAttr -s 39 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo17";
createNode checker -n "checker1";
createNode place2dTexture -n "place2dTexture26";
	setAttr ".re" -type "float2" 4 4 ;
createNode polyPlanarProj -n "polyPlanarProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:313]";
	setAttr ".ix" -type "matrix" 0.78372576106576231 0 0.62110702092464842 0 -0 1 0 0
		 -0.62110702092464842 -0 0.78372576106576231 0 6151.2131207337488 -1237.2369956063453 14914.352275530207 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 6658.67626953125 -3733.158935546875 12997.8720703125 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 4522.3999769053053 4041.152444591668 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "f[2]" "f[19]" "f[27]" "f[35]" "f[43]" "f[51]" "f[59]" "f[67]" "f[70:77]" "f[92:99]" "f[114:121]" "f[136:143]";
	setAttr ".ix" -type "matrix" 0.78372576106576231 0 0.62110702092464842 0 -0 1 0 0
		 -0.62110702092464842 -0 0.78372576106576231 0 6151.2131207337488 -1237.2369956063453 14914.352275530207 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 7867.046875 -3733.158935546875 8346.83544921875 ;
	setAttr ".ro" -type "double3" 0 27.399502890922676 0 ;
	setAttr ".ps" -type "double2" 2672.2173725469238 2388.5227905437246 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "f[1]" "f[6]" "f[10]" "f[89:91]" "f[111:113]" "f[133:135]" "f[155:157]" "f[179:183]" "f[205:209]" "f[231:235]" "f[257:261]" "f[283:287]" "f[309:313]";
	setAttr ".ix" -type "matrix" 0.78372576106576231 0 0.62110702092464842 0 -0 1 0 0
		 -0.62110702092464842 -0 0.78372576106576231 0 6151.2131207337488 -1237.2369956063453 14914.352275530207 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 6858.0603831997723 -727.05234694238993 12641.739667128333 ;
	setAttr ".ro" -type "double3" -94.24112058428355 30.633312922305624 4.5112160809007982 ;
	setAttr ".ps" -type "double2" 2703.4603476647799 3714.0384836608823 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "f[13]" "f[20]" "f[28]" "f[36]" "f[44]" "f[52]" "f[60]" "f[68]" "f[288:295]";
	setAttr ".ix" -type "matrix" 0.78372576106576231 0 0.62110702092464842 0 -0 1 0 0
		 -0.62110702092464842 -0 0.78372576106576231 0 6151.2131207337488 -1237.2369956063453 14914.352275530207 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 6159.9448005287713 -3429.631953157269 9665.690346626161 ;
	setAttr ".ro" -type "double3" 0 108.75063562641438 0 ;
	setAttr ".ps" -type "double2" 3090.8456662440458 2372.4100994566325 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "f[9]" "f[21]" "f[29]" "f[37]" "f[45]" "f[53]" "f[61]" "f[69]";
	setAttr ".ix" -type "matrix" 0.78372576106576231 0 0.62110702092464842 0 -0 1 0 0
		 -0.62110702092464842 -0 0.78372576106576231 0 6151.2131207337488 -1237.2369956063453 14914.352275530207 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 6341.369873046875 -3727.9716296601878 10860.9208984375 ;
	setAttr ".ro" -type "double3" 0 77.777873434211855 0 ;
	setAttr ".ps" -type "double2" 2975.3244753656832 2405.1653619313793 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "f[5]" "f[14]" "f[22]" "f[30]" "f[38]" "f[46]" "f[54]" "f[62]" "f[158:165]" "f[184:191]" "f[210:217]" "f[236:243]" "f[262:269]";
	setAttr ".ix" -type "matrix" 0.78372576106576231 0 0.62110702092464842 0 -0 1 0 0
		 -0.62110702092464842 -0 0.78372576106576231 0 6151.2131207337488 -1237.2369956063453 14914.352275530207 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 4411.85498046875 -4170.6420449553389 13535.9091796875 ;
	setAttr ".ro" -type "double3" 0 51.302702900822467 0 ;
	setAttr ".ps" -type "double2" 3079.4430942988424 2638.7267797108884 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "f[0]" "f[15]" "f[23]" "f[31]" "f[39]" "f[47]" "f[55]" "f[63]" "f[81:88]" "f[103:110]" "f[125:132]" "f[147:154]";
	setAttr ".ix" -type "matrix" 0.78372576106576231 0 0.62110702092464842 0 -0 1 0 0
		 -0.62110702092464842 -0 0.78372576106576231 0 6151.2131207337488 -1237.2369956063453 14914.352275530207 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 4291.8583984375 -3480.6075228759642 17260.5224609375 ;
	setAttr ".ro" -type "double3" 0 140.33445925604229 0 ;
	setAttr ".ps" -type "double2" 2756.896484375 2558.951216677694 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7987.8894721777906 -389.30612330175683 13021.955736372063 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 8348.48779296875 -10.361480712890625 12271.34130859375 ;
	setAttr ".ro" -type "double3" -91.984328278051436 -23.728567109286018 -0.71161894334674869 ;
	setAttr ".ps" -type "double2" 2703.5361328125 3307.6142578125 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7987.8894721777906 -389.30612330175683 13021.955736372063 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 7713.8200899991425 -439.01025020617249 10617.533203125 ;
	setAttr ".ps" -type "double2" 2772.9942097628959 1180.8606920318337 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7987.8894721777906 -389.30612330175683 13021.955736372063 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 7459.4907527946289 -394.48686218261719 11427.898947998305 ;
	setAttr ".ro" -type "double3" 0 67.897106791790577 0 ;
	setAttr ".ps" -type "double2" 3252.5105003838203 1972.1260664930683 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7987.8894721777906 -389.30612330175683 13021.955736372063 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 7570.435302734375 -394.48686218261719 13176.203125 ;
	setAttr ".ro" -type "double3" 0 -52.620543947211075 0 ;
	setAttr ".ps" -type "double2" 5099.2763382539288 1952.8426296349573 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "f[1]" "f[9]" "f[13:14]" "f[20:22]" "f[28:30]" "f[36:38]" "f[44:46]" "f[52:54]" "f[60:62]" "f[68:70]" "f[76:77]";
	setAttr ".ix" -type "matrix" 0.94664342639695498 0 -0.74876671771601344 0 0 0.7001085080361823 0 0
		 0.62036708275444552 0 0.78431159792185845 0 6559.4031003875107 -140.76508362250047 13469.35596045597 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 6424.506591796875 93.523197174072266 13576.0556640625 ;
	setAttr ".ro" -type "double3" -89.999999999999986 39.135841033977826 -4.1004931961563454e-015 ;
	setAttr ".ps" -type "double2" 2494.11083984375 2227.75390625 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "f[0]" "f[3]" "f[7]" "f[11]" "f[16:18]" "f[24:26]" "f[32:34]" "f[40:42]" "f[48:50]" "f[56:58]" "f[64:66]" "f[72:74]";
	setAttr ".ix" -type "matrix" 0.94664342639695498 0 -0.74876671771601344 0 0 0.7001085080361823 0 0
		 0.62036708275444552 0 0.78431159792185845 0 6559.4031003875107 -140.76508362250047 13469.35596045597 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 6424.50634765625 7.6541748046875 13576.056640625 ;
	setAttr ".ro" -type "double3" -89.999999999999972 37.418513702153334 -4.0046352476623357e-015 ;
	setAttr ".ps" -type "double2" 2494.1103515625 2227.75390625 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "f[2]" "f[6]" "f[10]" "f[35]" "f[43]" "f[51]" "f[59]" "f[67]" "f[75]";
	setAttr ".ix" -type "matrix" 0.94664342639695498 0 -0.74876671771601344 0 0 0.7001085080361823 0 0
		 0.62036708275444552 0 0.78431159792185845 0 6559.4031003875107 -140.76508362250047 13469.35596045597 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 6150.1249875600943 7.6541671752929687 13239.274274429366 ;
	setAttr ".ro" -type "double3" 0 36.988329022968109 0 ;
	setAttr ".ps" -type "double2" 2498.0711536346057 1268.9492934289553 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "f[0]" "f[8]" "f[12]" "f[31]" "f[39]" "f[47]" "f[55]" "f[63]" "f[71]";
	setAttr ".ix" -type "matrix" 0.94664342639695498 0 -0.74876671771601344 0 0 0.7001085080361823 0 0
		 0.62036708275444552 0 0.78431159792185845 0 6559.4031003875107 -140.76508362250047 13469.35596045597 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 6931.2853083556065 7.6541671752929687 13718.411263882592 ;
	setAttr ".ro" -type "double3" 0 39.857231551730173 0 ;
	setAttr ".ps" -type "double2" 2447.0321156022155 1193.0583044876873 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[4]" "f[9]" "f[17]";
	setAttr ".ix" -type "matrix" 0.69699496248215898 -0.2437390863153221 -0.67438066407383446 0
		 0.16919920107543829 0.96980518974201391 -0.17564032653377112 0 1.5119142694616452 0.018042760757528215 1.5560928113785912 0
		 1732.1192595231551 487.79743351510751 18014.69451844976 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 3201.504150390625 119.33760070800781 16563.5849609375 ;
	setAttr ".ro" -type "double3" 13.299781570406209 135.68532293579651 -1.1151969502772916 ;
	setAttr ".ps" -type "double2" 1268.033203125 687.16677856445312 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "f[1]" "f[6]" "f[10]" "f[15]";
	setAttr ".ix" -type "matrix" 0.69699496248215898 -0.2437390863153221 -0.67438066407383446 0
		 0.16919920107543829 0.96980518974201391 -0.17564032653377112 0 1.5119142694616452 0.018042760757528215 1.5560928113785912 0
		 1732.1192595231551 487.79743351510751 18014.69451844976 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 2191.6998291015625 432.03707885742187 17538.3388671875 ;
	setAttr ".ro" -type "double3" -89.999999999999986 -46.13659377989682 4.5899325633893807e-015 ;
	setAttr ".ps" -type "double2" 1597.4147968853767 1610.1632506728934 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[16]";
	setAttr ".ix" -type "matrix" 0.69699496248215898 -0.2437390863153221 -0.67438066407383446 0
		 0.16919920107543829 0.96980518974201391 -0.17564032653377112 0 1.5119142694616452 0.018042760757528215 1.5560928113785912 0
		 1732.1192595231551 487.79743351510751 18014.69451844976 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 3123.156005859375 219.24976569843517 16664.6650390625 ;
	setAttr ".ro" -type "double3" 0 104.24762713513407 0 ;
	setAttr ".ps" -type "double2" 369.90646811461897 594.87195073617363 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj19";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[2]" "f[14]" "f[18]";
	setAttr ".ix" -type "matrix" 0.69699496248215898 -0.2437390863153221 -0.67438066407383446 0
		 0.16919920107543829 0.96980518974201391 -0.17564032653377112 0 1.5119142694616452 0.018042760757528215 1.5560928113785912 0
		 1732.1192595231551 487.79743351510751 18014.69451844976 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 1585.9578298638273 336.87673762728809 17016.361826976125 ;
	setAttr ".ro" -type "double3" -12.551612239805369 41.91683602793676 -18.431566511040604 ;
	setAttr ".ps" -type "double2" 1740.2180569911245 2071.7121384160223 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj20";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[11]";
	setAttr ".ix" -type "matrix" 0.69699496248215898 -0.2437390863153221 -0.67438066407383446 0
		 0.16919920107543829 0.96980518974201391 -0.17564032653377112 0 1.5119142694616452 0.018042760757528215 1.5560928113785912 0
		 1732.1192595231551 487.79743351510751 18014.69451844976 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 2836.0376858266918 290.04223231072069 18082.940484139133 ;
	setAttr ".ro" -type "double3" -17.164549927041502 41.821002907430014 -24.854239590072265 ;
	setAttr ".ps" -type "double2" 1766.514047533175 1100.7431640625 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "f[1]" "f[6]" "f[10]" "f[14:15]" "f[21]";
	setAttr ".ix" -type "matrix" 0.82787996627188598 0 0.56090530523936122 0 -0 1 0 0
		 -0.56090530523936122 -0 0.82787996627188598 0 3963.609919872104 -527.06693400714983 14538.819493484203 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 4504.780029296875 0 14546.07421875 ;
	setAttr ".ro" -type "double3" -89.999999999999986 51.012444702028581 0 ;
	setAttr ".ps" -type "double2" 1988.6761009500128 1882.0417491083158 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj22";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[2]" "f[20]";
	setAttr ".ix" -type "matrix" 0.82787996627188598 0 0.56090530523936122 0 -0 1 0 0
		 -0.56090530523936122 -0 0.82787996627188598 0 3963.609919872104 -527.06693400714983 14538.819493484203 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 5293.6553621515313 -527.0670166015625 13960.229009683453 ;
	setAttr ".ro" -type "double3" 0 131.62609054920352 0 ;
	setAttr ".ps" -type "double2" 1950.1279932870636 1054.134033203125 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj23";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[5]" "f[7]" "f[11]";
	setAttr ".ix" -type "matrix" 0.82787996627188598 0 0.56090530523936122 0 -0 1 0 0
		 -0.56090530523936122 -0 0.82787996627188598 0 3963.609919872104 -527.06693400714983 14538.819493484203 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 3976.9120383873847 -527.0670166015625 14109.942765908077 ;
	setAttr ".ro" -type "double3" 0 51.895980593589144 0 ;
	setAttr ".ps" -type "double2" 2062.740710597318 1746.9516472842847 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj24";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[4]" "f[9]" "f[13]";
	setAttr ".ix" -type "matrix" 0.82787996627188598 0 0.56090530523936122 0 -0 1 0 0
		 -0.56090530523936122 -0 0.82787996627188598 0 3963.609919872104 -527.06693400714983 14538.819493484203 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 5001.6096155668156 -527.0670166015625 15251.446033157243 ;
	setAttr ".ro" -type "double3" 0 55.603480386974901 0 ;
	setAttr ".ps" -type "double2" 1775.2578125 1650.0923678961908 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj25";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.7049633090742925 0 -0.70924377534034344 0 0 1 0 0
		 0.70924377534034344 0 0.7049633090742925 0 1203.1204054460793 265.23077824046413 19090.372375224877 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 901.1929931640625 919.53948974609375 18790.267578125 ;
	setAttr ".ro" -type "double3" -90 44.688622287005529 0 ;
	setAttr ".ps" -type "double2" 1812.6303244399032 1810.7807508799096 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj26";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[1]" "f[6]" "f[10]";
	setAttr ".ix" -type "matrix" -0.75871454450674203 -0 -0.6514232417974718 0 0 1 0 0
		 0.6514232417974718 0 -0.75871454450674203 0 -1588.3435272103552 165.98230319488226 16448.993057208772 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1061.405517578125 535.63813781738281 17120.51220703125 ;
	setAttr ".ro" -type "double3" -90 -45.048070547952477 -4.5017620807283833e-015 ;
	setAttr ".ps" -type "double2" 1408.0008729509495 1602.1923829717775 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj27";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "f[1]" "f[57]" "f[77:79]" "f[101:103]" "f[125]";
	setAttr ".ix" -type "matrix" 0.88496913112361231 0 -0.46564969339442153 0 0 1 0 0
		 0.46564969339442153 0 0.88496913112361231 0 -3308.4892809702128 -3642.677215476363 16701.71925382434 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -3229.2169189453125 -1805.889892578125 17167.0029296875 ;
	setAttr ".ro" -type "double3" -89.999999999999986 28.484368127650004 0 ;
	setAttr ".ps" -type "double2" 2235.704833984375 2263.220703125 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj28";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.94625746602631022 0 0.32341429775052677 0 -0 1 0 0
		 -0.32341429775052677 -0 0.94625746602631022 0 -5217.6139072609958 -2203.7192147311162 17883.988453612143 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -5217.61376953125 -1665.7955322265625 17883.98828125 ;
	setAttr ".ro" -type "double3" -89.999999999999986 -20.787112320386157 0 ;
	setAttr ".ps" -type "double2" 1055.5539642328474 967.15871016265089 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj29";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.94834239462663994 0 0.31724864468396136 0 -0 1 0 0
		 -0.31724864468396136 -0 0.94834239462663994 0 -7007.8710705851254 -2988.9230027417643 17788.415383331514 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -7182.52978515625 -1677.316162109375 17370.482421875 ;
	setAttr ".ro" -type "double3" -89.999999999999986 -21.47585029914681 0 ;
	setAttr ".ps" -type "double2" 1071.8887362294574 896.83209405378011 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj30";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.89867754027752866 0 -0.43860993901270723 0 0 1 0 0
		 0.43860993901270723 0 0.89867754027752866 0 -8160.6455133906111 -2053.4312943870277 16591.276394432633 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -8067.769287109375 -1852.6146240234375 16545.9482421875 ;
	setAttr ".ro" -type "double3" -89.999999999999986 24.65962831558166 0 ;
	setAttr ".ps" -type "double2" 1171.53759765625 1310.286027908975 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj31";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.89867754027752866 0 -0.43860993901270723 0 0 1 0 0
		 0.43860993901270723 0 0.89867754027752866 0 -8806.1249612787433 -2053.4312943870277 15057.966883619911 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -8713.248779296875 -1852.6146240234375 15012.6376953125 ;
	setAttr ".ro" -type "double3" -89.999999999999972 26.411017196879129 -1.7756037712410533e-015 ;
	setAttr ".ps" -type "double2" 1171.53759765625 1362.8050894962603 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj32";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[6]";
	setAttr ".ix" -type "matrix" 0.92190506145403128 0 -0.387415871726287 0 0 1 0 0 0.387415871726287 0 0.92190506145403128 0
		 -8502.6214552579149 -2812.6200018198674 13095.928423969679 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -8232.77099609375 -2190.845703125 13604.498046875 ;
	setAttr ".ro" -type "double3" -89.999999999999986 22.770202042526769 0 ;
	setAttr ".ps" -type "double2" 1523.2259901741347 1245.4396608608195 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj33";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.93152218443201318 0 -0.36368450600900015 0 -0.068395894109341313 0.98215681186238279 -0.17518561179875392 0
		 0.35719521494554518 0.18806381074603359 0.91490085884082861 0 -7558.2403364855927 -2772.8569066637419 13813.608267786816 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -7522.62646484375 -1994.752685546875 13904.82763671875 ;
	setAttr ".ro" -type "double3" -106.08365216942505 19.187982403010476 -5.1530029506451749 ;
	setAttr ".ps" -type "double2" 1364.1005859375 1011.7410552744211 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj34";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[8]";
	setAttr ".ix" -type "matrix" 0.46624082296309388 0.18350512616948741 -0.86541629501195405 0
		 -0.11875062645964155 0.98237838499623487 0.1443294751865746 0 2.3807270933159463 0.09634354258036304 1.3030395887789583 0
		 -6138.1926757844894 -1490.1403022731665 9488.1180845774052 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -6437.1335400235139 -1369.3530883789065 10425.976702328127 ;
	setAttr ".ro" -type "double3" -89.999999999999972 56.611717067221896 5.7795691075661893e-015 ;
	setAttr ".ps" -type "double2" 1615.488376953431 1624.1494792960104 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj35";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "f[1]" "f[8]" "f[68]" "f[86]" "f[104]" "f[123]" "f[141]" "f[159:164]" "f[189:196]" "f[221:223]";
	setAttr ".ix" -type "matrix" 0.23876975193500682 0.10608716571279682 -0.96526396329290209 0
		 -0.092705861274587853 0.99196480284817956 0.086089797279986363 0 1.8828248868146926 0.13426195397419247 0.48049561462935031 0
		 -5519.5263131893444 -888.88418479476627 6083.0444016756837 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -5315.774658203125 -679.33712768554687 6788.8046875 ;
	setAttr ".ro" -type "double3" -89.999999999999972 -34.81914929134399 0 ;
	setAttr ".ps" -type "double2" 2213.0195560744814 2169.8927679127351 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj36";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "f[1]" "f[8]" "f[12]" "f[14]" "f[19]";
	setAttr ".ix" -type "matrix" 0.9784431455624909 0.2065163695734028 0 0 -0.2065163695734028 0.9784431455624909 0 0
		 0 0 1 0 -2539.014144223454 -462.26341558013098 5046.6184988880414 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -3376.5966796875 2.1857452392578125 5056.0208740234375 ;
	setAttr ".ro" -type "double3" -88.600909049222537 16.567341826559797 4.8956711178644081 ;
	setAttr ".ps" -type "double2" 1770.9583875464966 1531.3761888160061 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj37";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1.4925689485269953 0 0 0 0 1 0 0 0 0 1.4925689485269953 0
		 -1136.288418308992 -980.18746735720458 5015.0095421378783 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1291.3794860839844 134.29010009765625 5154.1240234375 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 1048.8997192382812 1106.7529296875 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj38";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1.4925689485269953 0 0 0 0 1 0 0 0 0 1.4925689485269953 0
		 675.60574031814122 -980.1874673572047 5015.0095421378828 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 520.51473999023437 134.29010009765625 5154.1240234375 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 1048.8997192382812 1106.7529296875 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj39";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "f[1]" "f[12]" "f[16]" "f[19:20]" "f[36:37]" "f[46]" "f[54:56]" "f[65:66]" "f[75:76]" "f[85:91]" "f[103:107]" "f[120:121]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -70.118457189276342 -404.45457001799798 3152.7261053962497 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -206.3592529296875 -218.82890319824219 4416.2005615234375 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 1164.2938102670869 1050.6621910087933 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj40";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "f[4]" "f[24]" "f[30]" "f[34]" "f[39]" "f[45]" "f[92:93]" "f[108:109]" "f[122:126]" "f[146:150]" "f[170:174]" "f[194:198]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -70.118457189276342 -404.45457001799798 3152.7261053962497 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 1404.7000732421875 -1672.1494750976562 4416.20458984375 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 951.73915346483136 951.40875429799871 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj41";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "f[5]" "f[21]" "f[27]" "f[33]" "f[38]" "f[42]" "f[101:102]" "f[117:118]" "f[134:138]" "f[158:162]" "f[182:186]" "f[206:210]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -70.118457189276342 -404.45457001799798 3152.7261053962497 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1817.41845703125 -1672.1475601196289 4416.1895751953125 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 1046.4571210767081 1046.0939006540284 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj42";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "f[2]" "f[13]" "f[15]" "f[26]" "f[28:29]" "f[47:48]" "f[57:58]" "f[73:74]" "f[83:84]" "f[127:133]" "f[151:157]" "f[175:181]" "f[199:205]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -70.118457189276342 -404.45457001799798 3152.7261053962497 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -206.3592529296875 -1672.1486968994141 2864.0487060546875 ;
	setAttr ".ps" -type "double2" 962.82978476842857 844.88173534408111 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj43";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[7]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -70.118457189276342 -404.45457001799798 3152.7261053962497 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 175.35474395751953 -404.45497894287109 2864.0458984375 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 398.58069395957637 752.42021219833532 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj44";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -70.118457189276342 -404.45457001799798 3152.7261053962497 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -381.93087768554687 -404.45394134521484 2864.0384521484375 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 783.65777743192223 1479.3576964405015 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj45";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -70.118457189276342 -404.45457001799798 3152.7261053962497 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -105.72423553466797 -218.828857421875 2864.04248046875 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 1050.4830451690343 839.23754490840099 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj46";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -70.118457189276342 -404.45457001799798 3152.7261053962497 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -78.201056654558514 -461.19734191894531 2864.042236328125 ;
	setAttr ".ro" -type "double3" -28.636062630747315 0 0 ;
	setAttr ".ps" -type "double2" 913.79780950763404 695.69025904918192 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj47";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "f[1]" "f[8]" "f[10]" "f[16]" "f[20]" "f[24]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -95.621213356249456 -15.838693339813595 183.96987021434654 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -90.3289794921875 -3.5811586380004883 962.34525299072266 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 645.75024669026288 583.4302742612432 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj48";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "f[4]" "f[7]" "f[11]" "f[15]" "f[19]" "f[23]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -95.621213356249456 -15.838693339813595 183.96987021434654 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 119.79727172851562 -235.68196582794189 962.34525299072266 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 484.52292387332773 464.20162010192871 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj49";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "f[5]" "f[9]" "f[13]" "f[17]" "f[21]" "f[25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -95.621213356249456 -15.838693339813595 183.96987021434654 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -300.45552062988281 -235.68197011947632 962.34525299072266 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 585.92952749319898 464.20161151885986 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj50";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -95.621213356249456 -15.838693339813595 183.96987021434654 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -90.329345703125 -54.353442668914795 2146.473388671875 ;
	setAttr ".ps" -type "double2" 135.44118615648517 101.54457950592041 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj51";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "f[3]" "f[6]" "f[12]" "f[14]" "f[18]" "f[22]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -95.621213356249456 -15.838693339813595 183.96987021434654 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -90.3291015625 -286.45424270629883 930.35233306884766 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 503.69146728515625 408.11840753913845 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj52";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 1.4925689485269953 0 0 0 0 1 0 0 0 0 1.4925689485269953 0
		 675.60574031814122 -980.1874673572047 5015.0095421378828 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 1044.964599609375 -124.6337890625 5154.1240234375 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 1106.7529296875 517.8477783203125 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj53";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1.4925689485269953 0 0 0 0 1 0 0 0 0 1.4925689485269953 0
		 675.60574031814122 -980.1874673572047 5015.0095421378828 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 520.51473999023437 -124.6337890625 5707.500244140625 ;
	setAttr ".ps" -type "double2" 1048.8997192382812 517.8477783203125 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj54";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 1.4925689485269953 0 0 0 0 1 0 0 0 0 1.4925689485269953 0
		 675.60574031814122 -980.1874673572047 5015.0095421378828 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -3.93511962890625 -124.6337890625 5154.123291015625 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 1106.75341796875 517.8477783203125 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj55";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 1.4925689485269953 0 0 0 0 1 0 0 0 0 1.4925689485269953 0
		 675.60574031814122 -980.1874673572047 5015.0095421378828 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 520.51473999023437 -124.6337890625 4600.7470703125 ;
	setAttr ".ps" -type "double2" 1048.8997192382812 517.8477783203125 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj56";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 1.4925689485269953 0 0 0 0 1 0 0 0 0 1.4925689485269953 0
		 -1136.288418308992 -980.18746735720458 5015.0095421378783 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1291.3793334960937 -124.6337890625 4600.74755859375 ;
	setAttr ".ps" -type "double2" 1048.8995361328125 517.8477783203125 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj57";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 1.4925689485269953 0 0 0 0 1 0 0 0 0 1.4925689485269953 0
		 -1136.288418308992 -980.18746735720458 5015.0095421378783 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -766.929443359375 -124.6337890625 5154.1240234375 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 1106.7529296875 517.8477783203125 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj58";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1.4925689485269953 0 0 0 0 1 0 0 0 0 1.4925689485269953 0
		 -1136.288418308992 -980.18746735720458 5015.0095421378783 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1291.3789978027344 -124.6337890625 5707.50048828125 ;
	setAttr ".ps" -type "double2" 1048.8992309570312 517.8477783203125 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj59";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[2]" "f[9]";
	setAttr ".ix" -type "matrix" 0.9784431455624909 0.2065163695734028 0 0 -0.2065163695734028 0.9784431455624909 0 0
		 0 0 1 0 -2539.014144223454 -462.26341558013098 5046.6184988880414 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -3635.2867032675849 -262.21965498557961 4390.5975341796875 ;
	setAttr ".ps" -type "double2" 1783.4076011050547 1005.152587890625 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj60";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[4]" "f[11]" "f[15]";
	setAttr ".ix" -type "matrix" 0.9784431455624909 0.2065163695734028 0 0 -0.2065163695734028 0.9784431455624909 0 0
		 0 0 1 0 -2539.014144223454 -462.26341558013098 5046.6184988880414 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1829.0773315429687 20.588493485380695 4950.4604041331586 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 1462.5867116457212 1140.8676538308741 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj61";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[7]" "f[13]";
	setAttr ".ix" -type "matrix" 0.9784431455624909 0.2065163695734028 0 0 -0.2065163695734028 0.9784431455624909 0 0
		 0 0 1 0 -2539.014144223454 -462.26341558013098 5046.6184988880414 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -3235.5969739607403 -113.52017987903287 5664.710693359375 ;
	setAttr ".ps" -type "double2" 1392.0702005479334 866.225341796875 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj62";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[5]" "f[18]";
	setAttr ".ix" -type "matrix" 0.9784431455624909 0.2065163695734028 0 0 -0.2065163695734028 0.9784431455624909 0 0
		 0 0 1 0 -2539.014144223454 -462.26341558013098 5046.6184988880414 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -4543.0331094220164 -487.03758239746094 5193.2267973304106 ;
	setAttr ".ro" -type "double3" 0 132.98816936925923 0 ;
	setAttr ".ps" -type "double2" 1602.3158627848698 1450.5670183397947 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj63";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "f[0]" "f[7]" "f[12:13]" "f[16]" "f[21:22]" "f[27:28]" "f[33:34]" "f[39:40]" "f[45:46]" "f[51]" "f[60:67]" "f[78:85]" "f[96:103]" "f[106:113]" "f[124:131]" "f[142:149]";
	setAttr ".ix" -type "matrix" 0.23876975193500682 0.10608716571279682 -0.96526396329290209 0
		 -0.092705861274587853 0.99196480284817956 0.086089797279986363 0 1.8828248868146926 0.13426195397419247 0.48049561462935031 0
		 -5519.5263131893444 -888.88418479476627 6083.0444016756837 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -4419.5170804478003 -2710.3141755970792 7479.6823947310595 ;
	setAttr ".ro" -type "double3" -2.3965943794394162 71.249947533178243 -2.5307401967205805 ;
	setAttr ".ps" -type "double2" 1801.3333556662196 1653.526527379101 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj64";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "f[4]" "f[11]" "f[20]" "f[26]" "f[32]" "f[35]" "f[41]" "f[47]" "f[165:172]" "f[197:204]";
	setAttr ".ix" -type "matrix" 0.23876975193500682 0.10608716571279682 -0.96526396329290209 0
		 -0.092705861274587853 0.99196480284817956 0.086089797279986363 0 1.8828248868146926 0.13426195397419247 0.48049561462935031 0
		 -5519.5263131893444 -888.88418479476627 6083.0444016756837 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -4680.0794743987617 -2699.9609098490246 5557.1416546020018 ;
	setAttr ".ro" -type "double3" -6.8865351260334213 -54.071070964794316 8.4832211851335977 ;
	setAttr ".ps" -type "double2" 1641.95849609375 1563.5602120715469 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj65";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "f[5]" "f[14]" "f[17]" "f[23]" "f[29]" "f[38]" "f[44]" "f[50]" "f[181:188]" "f[213:220]";
	setAttr ".ix" -type "matrix" 0.23876975193500682 0.10608716571279682 -0.96526396329290209 0
		 -0.092705861274587853 0.99196480284817956 0.086089797279986363 0 1.8828248868146926 0.13426195397419247 0.48049561462935031 0
		 -5519.5263131893444 -888.88418479476627 6083.0444016756837 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -5541.403564453125 -2927.7615051269531 8701.837890625 ;
	setAttr ".ps" -type "double2" 1413.2488471865254 1499.9611715226658 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyCylProj -n "polyCylProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:191]";
	setAttr ".ix" -type "matrix" 0.99625909390969836 0 0.086416536624808762 0 -0 1 0 0
		 -0.086416536624808762 -0 0.99625909390969836 0 -1467.856965413778 1504.6696344576515 5666.9490509647349 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1467.8568725585937 -149.2491455078125 5666.94921875 ;
	setAttr ".ps" -type "double2" 180 8391.353271484375 ;
	setAttr ".r" 1699.5394323392086;
createNode polyPlanarProj -n "polyPlanarProj66";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[16:23]";
	setAttr ".ix" -type "matrix" 0.99625909390969836 0 0.086416536624808762 0 -0 1 0 0
		 -0.086416536624808762 -0 0.99625909390969836 0 -1467.856965413778 1504.6696344576515 5666.9490509647349 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1467.8567504882812 4046.427490234375 5666.948486328125 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 844.0269775390625 844.02783203125 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj67";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[8:15]";
	setAttr ".ix" -type "matrix" 0.99625909390969836 0 0.086416536624808762 0 -0 1 0 0
		 -0.086416536624808762 -0 0.99625909390969836 0 -1467.856965413778 1504.6696344576515 5666.9490509647349 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1467.8580322265625 -4344.923828125 5666.95361328125 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 844.02685546875 844.0283203125 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyCylProj -n "polyCylProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:191]";
	setAttr ".ix" -type "matrix" 1.342883689787318 0 0.11648310993674373 0 0 1 0 0 -0.11648310993674373 0 1.342883689787318 0
		 309.77303712845242 1504.6696344576492 17321.358235861877 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 309.77311706542969 -149.2486572265625 17321.357421875 ;
	setAttr ".ps" -type "double2" 180 8391.352294921875 ;
	setAttr ".r" 1137.6875;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 186 ".tk";
	setAttr ".tk[0:165]" -type "float3"  0 0.00024414063 0 0 0.00024414063 0
		 0 0.00024414063 0 0 0.00024414063 0 0 0.00024414063 0 0 0.00024414063 0 0 0.00024414063
		 0 0 0.00024414063 0 0 0 0 0 0 0 0 -0.00024414063 0 0 -0.00024414063 0 0 -0.00024414063
		 0 0 -0.00024414063 0 0 0 0 0 0 0 0 0.00024414063 0 0 -0.00024414063 0 0 0.00024414063
		 0 0 0.00024414063 0 0 0.00024414063 0 0 0.00012207031 0 0 0.00012207031 0 0 0.00012207031
		 0 0 0.00012207031 0 0 0.00024414063 0 0 -0.00012207031 0 0 -0.00012207031 0 0 -0.00012207031
		 0 0 -0.00024414063 0 0 -0.00024414063 0 0 -0.00024414063 0 0 -0.00024414063 0 0 -0.00012207031
		 0 0 0.00018310547 0 0 0.00024414063 0 0 0.00018310547 0 0 0.00030517578 0 0 6.1035156e-005
		 0 0 0.00018310547 0 0 6.1035156e-005 0 0 0.00030517578 0 0 -6.1035156e-005 0 0 -6.1035156e-005
		 0 0 -6.1035156e-005 0 0 -0.00012207031 0 0 -0.00012207031 0 0 0 0 0 -6.1035156e-005
		 0 0 -0.00012207031 0 0 -3.0517578e-005 0 0 -3.0517578e-005 0 0 -3.0517578e-005 0
		 0 3.0517578e-005 0 0 0 0 0 0 0 0 3.0517578e-005 0 0 1.5258789e-005 0 0 1.5258789e-005
		 0 0 1.5258789e-005 0 0 1.5258789e-005 0 0 0 0 0 -3.0517578e-005 0 0 0 0 0 0 0 0 1.5258789e-005
		 0 0 0 0 0 0 0 0 0 0 0 0.00018310547 0 0 0.00018310547 0 0 0.00018310547 0 0 0.00018310547
		 0 0 0.00018310547 0 0 -0.00018310547 0 0 -0.00018310547 0 0 -0.00018310547 0 0 -0.00030517578
		 0 0 -0.00030517578 0 0 -0.00030517578 0 0 -0.00030517578 0 0 -0.00018310547 0 0 0.00012207031
		 0 0 0.00012207031 0 0 0.00012207031 0 0 0.00048828125 0 0 0.00048828125 0 0 0.00048828125
		 0 0 0.00048828125 0 0 0.00012207031 0 0 -0.00024414063 0 0 -0.00024414063 0 0 -0.00024414063
		 0 0 -0.00024414063 0 0 -0.00024414063 0 0 -0.00024414063 0 0 -0.00024414063 0 0 -0.00024414063
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.00012207031 0 0 0.00012207031 0 0 0.00012207031 0 0
		 0.00012207031 0 0 0.00012207031 0 0 0.00012207031 0 0 0.00012207031 0 0 0.00012207031
		 0 0 0.00036621094 0 0 0.00036621094 0 0 0.00036621094 0 0 0.00036621094 0 0 -0.00012207031
		 0 0 -0.00012207031 0 0 -0.00012207031 0 0 -0.00012207031 0 0 -0.00012207031 0 0 -0.00012207031
		 0 0 -0.00012207031 0 0 -0.00012207031 0 0 -6.1035156e-005 0 0 -6.1035156e-005 0 0
		 0 0 0 -6.1035156e-005 0 0 -6.1035156e-005 0 0 0 0 0 6.1035156e-005 0 0 0 0 0 0 0
		 0 -3.0517578e-005 0 0 -9.1552734e-005 0 0 3.0517578e-005 0 0 -3.0517578e-005 0 0
		 6.1035156e-005 0 0 6.1035156e-005 0 0 0 0 0 -7.2759576e-012 0 0 2.1827873e-011 0
		 0 2.1827873e-011 0 0 2.1827873e-011 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -3.0517578e-005 0
		 0 -3.0517578e-005 0 0 -3.0517578e-005 0 0 -3.0517578e-005 0 0 -3.0517578e-005 0 0
		 -3.0517578e-005 0 0 -3.0517578e-005 0 0 -3.0517578e-005 0 0 -0.00012207031 0 0 -0.00012207031
		 0 0 -0.00012207031 0 0 -0.00012207031 0 0 -0.00012207031 0 0 -0.00012207031 0 0 -6.1035156e-005
		 0 0 -0.00012207031 0 0 0.00024414063 0 0 0.00024414063 0 0 0.00024414063 0 0 0.00024414063
		 0;
	setAttr ".tk[166:185]" 0 0.00012207031 0 0 0.00012207031 0 0 0.00012207031
		 0 0 0.00012207031 0 0 -0.00024414063 0 0 -0.00024414063 0 0 -0.00024414063 0 0 -0.00024414063
		 0 0 -0.00024414063 0 0 -0.00024414063 0 0 -0.00024414063 0 0 -0.00024414063 0 0 -0.00061035156
		 0 0 -0.00061035156 0 0 -0.00061035156 0 0 -0.00061035156 0 0 -0.00061035156 0 0 -0.00061035156
		 0 0 -0.00061035156 0 0 -0.00061035156 0;
createNode polyCylProj -n "polyCylProj3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:191]";
	setAttr ".ix" -type "matrix" 1.342883689787318 0 0.11648310993674373 0 0 1 0 0 -0.11648310993674373 0 1.342883689787318 0
		 -1398.3840665710204 1504.6696344576483 15785.283010404399 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1398.3839721679687 -149.2491455078125 15785.283203125 ;
	setAttr ".ps" -type "double2" 180 8391.353271484375 ;
	setAttr ".r" 1137.6861572265625;
createNode polyPlanarProj -n "polyPlanarProj68";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[16:23]";
	setAttr ".ix" -type "matrix" 1.342883689787318 0 0.11648310993674373 0 0 1 0 0 -0.11648310993674373 0 1.342883689787318 0
		 309.77303712845242 1504.6696344576492 17321.358235861877 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 309.77323913574219 4046.42724609375 17321.3583984375 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 1137.6861877441406 1137.689453125 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj69";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[16:23]";
	setAttr ".ix" -type "matrix" 1.342883689787318 0 0.11648310993674373 0 0 1 0 0 -0.11648310993674373 0 1.342883689787318 0
		 -1398.3840665710204 1504.6696344576483 15785.283010404399 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1398.3843078613281 4046.427490234375 15785.28662109375 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 1137.6862182617187 1137.6865234375 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj70";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "f[2]" "f[22]" "f[26]" "f[30]" "f[34]" "f[38:42]" "f[58:62]";
	setAttr ".ix" -type "matrix" 0.88496913112361231 0 -0.46564969339442153 0 0 1 0 0
		 0.46564969339442153 0 0.88496913112361231 0 -3308.4892809702128 -3642.677215476363 16701.71925382434 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -3643.3829486584559 -3491.5910697305408 16425.843700299789 ;
	setAttr ".ro" -type "double3" 0 28.816055277908713 0 ;
	setAttr ".ps" -type "double2" 2266.0792845132032 1690.9544876909624 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj71";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "f[0]" "f[24]" "f[28]" "f[32]" "f[36]" "f[52:56]" "f[72:76]";
	setAttr ".ix" -type "matrix" 0.88496913112361231 0 -0.46564969339442153 0 0 1 0 0
		 0.46564969339442153 0 0.88496913112361231 0 -3308.4892809702128 -3642.677215476363 16701.71925382434 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -2826.195438377571 -3001.8028688047975 17913.380285217416 ;
	setAttr ".ro" -type "double3" 0 33.822633370779883 0 ;
	setAttr ".ps" -type "double2" 2217.4082311820207 1897.589593126736 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj72";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "f[4]" "f[25]" "f[29]" "f[33]" "f[37]" "f[96:100]" "f[120:124]";
	setAttr ".ix" -type "matrix" 0.88496913112361231 0 -0.46564969339442153 0 0 1 0 0
		 0.46564969339442153 0 0.88496913112361231 0 -3308.4892809702128 -3642.677215476363 16701.71925382434 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -2506.77392578125 -3024.2366055721013 16786.8701171875 ;
	setAttr ".ro" -type "double3" 0 117.34213981920057 0 ;
	setAttr ".ps" -type "double2" 2246.952729340951 1961.6796749815621 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj73";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "f[5]" "f[23]" "f[27]" "f[31]" "f[35]" "f[80:84]" "f[104:108]";
	setAttr ".ix" -type "matrix" 0.88496913112361231 0 -0.46564969339442153 0 0 1 0 0
		 0.46564969339442153 0 0.88496913112361231 0 -3308.4892809702128 -3642.677215476363 16701.71925382434 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -3938.5738555062112 -3303.3510361377771 17573.112603999798 ;
	setAttr ".ro" -type "double3" 0 116.73726907595324 0 ;
	setAttr ".ps" -type "double2" 2385.0433555619074 2412.2082784440313 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj74";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[7]";
	setAttr ".ix" -type "matrix" 0.46624082296309388 0.18350512616948741 -0.86541629501195405 0
		 -0.11875062645964155 0.98237838499623487 0.1443294751865746 0 2.3807270933159463 0.09634354258036304 1.3030395887789583 0
		 -6138.1926757844894 -1490.1403022731665 9488.1180845774052 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -5973.9067485319993 -1621.7842257972982 10592.894012015238 ;
	setAttr ".ro" -type "double3" 15.006008788417391 54.758979014381275 15.359054246463391 ;
	setAttr ".ps" -type "double2" 1468.2792975750763 1129.366455078125 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj75";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.46624082296309388 0.18350512616948741 -0.86541629501195405 0
		 -0.11875062645964155 0.98237838499623487 0.1443294751865746 0 2.3807270933159463 0.09634354258036304 1.3030395887789583 0
		 -6138.1926757844894 -1490.1403022731665 9488.1180845774052 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -5660.856689453125 -1371.08154296875 9070.484375 ;
	setAttr ".ps" -type "double2" 1456.53759765625 594.567138671875 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj76";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 0.46624082296309388 0.18350512616948741 -0.86541629501195405 0
		 -0.11875062645964155 0.98237838499623487 0.1443294751865746 0 2.3807270933159463 0.09634354258036304 1.3030395887789583 0
		 -6138.1926757844894 -1490.1403022731665 9488.1180845774052 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -7603.306884765625 -1903.8065185546875 11296.6103515625 ;
	setAttr ".ps" -type "double2" 1063.14599609375 598.716064453125 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj77";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[4]" "f[9]";
	setAttr ".ix" -type "matrix" 0.92190506145403128 0 -0.387415871726287 0 0 1 0 0 0.387415871726287 0 0.92190506145403128 0
		 -8502.6214552579149 -2812.6200018198674 13095.928423969679 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -7353.8797397614553 -2812.6202392578125 12760.3955688431 ;
	setAttr ".ro" -type "double3" 0 121.98050493931535 0 ;
	setAttr ".ps" -type "double2" 1134.6472613114452 1207.7468575322293 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj78";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 0.92190506145403128 0 -0.387415871726287 0 0 1 0 0 0.387415871726287 0 0.92190506145403128 0
		 -8502.6214552579149 -2812.6200018198674 13095.928423969679 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -6888.33740234375 -2812.6201171875 16586.056640625 ;
	setAttr ".ps" -type "double2" 1303.3950029080866 1243.5498046875 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj79";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.93152218443201318 0 -0.36368450600900015 0 -0.068395894109341313 0.98215681186238279 -0.17518561179875392 0
		 0.35719521494554518 0.18806381074603359 0.91490085884082861 0 -7558.2403364855927 -2772.8569066637419 13813.608267786816 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -7198.0988225684359 -2727.2496337890625 13900.659529639439 ;
	setAttr ".ro" -type "double3" 0 -74.809671943075173 0 ;
	setAttr ".ps" -type "double2" 814.78828302773343 835.90090152535504 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj80";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 0.93152218443201318 0 -0.36368450600900015 0 -0.068395894109341313 0.98215681186238279 -0.17518561179875392 0
		 0.35719521494554518 0.18806381074603359 0.91490085884082861 0 -7558.2403364855927 -2772.8569066637419 13813.608267786816 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -7752.0166015625 -2727.2496337890625 14144.95458984375 ;
	setAttr ".ro" -type "double3" 0 -60.154384551525695 0 ;
	setAttr ".ps" -type "double2" 905.3203125 1887.932373046875 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj81";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 0.93152218443201318 0 -0.36368450600900015 0 -0.068395894109341313 0.98215681186238279 -0.17518561179875392 0
		 0.35719521494554518 0.18806381074603359 0.91490085884082861 0 -7558.2403364855927 -2772.8569066637419 13813.608267786816 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -6922.9510803318726 -2515.7803955078125 14980.259315833377 ;
	setAttr ".ro" -type "double3" 0 29.738726701664422 0 ;
	setAttr ".ps" -type "double2" 1294.3213260154157 860.94582697200963 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj82";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "f[0]" "f[11]" "f[17]" "f[31:32]" "f[35]" "f[52:53]" "f[62:63]" "f[78:79]" "f[140:145]" "f[164:169]" "f[188:193]" "f[212:217]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -70.118457189276342 -404.45457001799798 3152.7261053962497 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -19.7845458984375 -1672.1488265991211 5870.0234375 ;
	setAttr ".ps" -type "double2" 946.74608197916268 965.91404328688918 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyCylProj -n "polyCylProj4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:103]";
	setAttr ".ix" -type "matrix" 3.2357292452853548 0 0.28067047672892981 0 -0 1 0 0
		 -0.28067047672892981 -0 3.2357292452853548 0 -7996.6011652105462 1504.6696344576492 9340.7190193929655 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -7859.775390625 -149.2491455078125 9389.38037109375 ;
	setAttr ".ps" -type "double2" 180 8391.353271484375 ;
	setAttr ".r" 3014.94921875;
createNode polyPlanarProj -n "polyPlanarProj83";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[16:23]";
	setAttr ".ix" -type "matrix" 3.2357292452853548 0 0.28067047672892981 0 -0 1 0 0
		 -0.28067047672892981 -0 3.2357292452853548 0 -7996.6011652105462 1504.6696344576492 9340.7190193929655 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -7859.775634765625 4046.427490234375 9389.38134765625 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 3014.94873046875 2643.9755859375 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj84";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.85599714384431413 0 -0.5169805506306564 0 0 1 0 0
		 0.5169805506306564 0 0.85599714384431413 0 -8969.1522876101408 -3146.2292922160509 13891.690131013767 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -8737.5771484375 1053.413818359375 13986.19677734375 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 2051.767578125 1654.4814453125 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj85";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.85599714384431413 0 -0.5169805506306564 0 0 1 0 0
		 0.5169805506306564 0 0.85599714384431413 0 -8969.1522876101408 -3146.2292922160509 13891.690131013767 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -7870.830810546875 -2766.9859619140625 13564.68994140625 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 1320.0880823935188 886.56320518265534 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj86";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 0.85599714384431413 0 -0.5169805506306564 0 0 1 0 0
		 0.5169805506306564 0 0.85599714384431413 0 -8969.1522876101408 -3146.2292922160509 13891.690131013767 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -9538.14697265625 -2766.9859619140625 14440.37109375 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 746.1328125 1132.9294513637942 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj87";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 0.85599714384431413 0 -0.5169805506306564 0 0 1 0 0
		 0.5169805506306564 0 0.85599714384431413 0 -8969.1522876101408 -3146.2292922160509 13891.690131013767 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -8512.26220703125 -2766.9859619140625 14391.93017578125 ;
	setAttr ".ps" -type "double2" 930.73455758843738 1080.2375859894662 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj88";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.85599714384431413 0 -0.5169805506306564 0 0 1 0 0
		 0.5169805506306564 0 0.85599714384431413 0 -8969.1522876101408 -3146.2292922160509 13891.690131013767 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -8896.714599609375 -2766.9859619140625 13613.130859375 ;
	setAttr ".ps" -type "double2" 1435.2762088253621 876.78388714528569 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj89";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.89867754027752866 0 -0.43860993901270723 0 0 1 0 0
		 0.43860993901270723 0 0.89867754027752866 0 -8806.1249612787433 -2053.4312943870277 15057.966883619911 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -8338.291015625 -2053.4313354492187 14829.63525390625 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 863.8740234375 401.6334228515625 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj90";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 0.89867754027752866 0 -0.43860993901270723 0 0 1 0 0
		 0.43860993901270723 0 0.89867754027752866 0 -8806.1249612787433 -2053.4312943870277 15057.966883619911 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -8502.43701171875 -2053.4313354492187 15444.57421875 ;
	setAttr ".ps" -type "double2" 749.9150390625 401.6334228515625 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj91";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.89867754027752866 0 -0.43860993901270723 0 0 1 0 0
		 0.43860993901270723 0 0.89867754027752866 0 -8160.6455133906111 -2053.4312943870277 16591.276394432633 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -8278.580078125 -2053.4315185546875 16114.01171875 ;
	setAttr ".ps" -type "double2" 749.9140625 401.633544921875 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj92";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.89867754027752866 0 -0.43860993901270723 0 0 1 0 0
		 0.43860993901270723 0 0.89867754027752866 0 -8160.6455133906111 -2053.4312943870277 16591.276394432633 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -7692.810546875 -2053.4317016601562 16362.9462890625 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 863.873046875 401.6336669921875 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj93";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 0.89867754027752866 0 -0.43860993901270723 0 0 1 0 0
		 0.43860993901270723 0 0.89867754027752866 0 -8806.1249612787433 -2053.4312943870277 15057.966883619911 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -8502.43701171875 -2053.4313354492187 15444.57421875 ;
	setAttr ".ro" -type "double3" 0 25.459518973117238 0 ;
	setAttr ".ps" -type "double2" 1211.7903313412421 841.27341963727008 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj94";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 0.94834239462663994 0 0.31724864468396136 0 -0 1 0 0
		 -0.31724864468396136 -0 0.94834239462663994 0 -7007.8710705851254 -2988.9230027417643 17788.415383331514 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -7877.21435546875 -1881.5396118164062 17032.8896484375 ;
	setAttr ".ro" -type "double3" -0.11681055165664535 26.342123757208501 0.027021537950899968 ;
	setAttr ".ps" -type "double2" 1623.0229305334228 953.96602697398646 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj95";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.94834239462663994 0 0.31724864468396136 0 -0 1 0 0
		 -0.31724864468396136 -0 0.94834239462663994 0 -7007.8710705851254 -2988.9230027417643 17788.415383331514 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -6639.1244790023138 -1881.539794921875 17128.443922997751 ;
	setAttr ".ro" -type "double3" 0 157.935366425924 0 ;
	setAttr ".ps" -type "double2" 996.27557661721664 920.94470914929639 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj96";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.94834239462663994 0 0.31724864468396136 0 -0 1 0 0
		 -0.31724864468396136 -0 0.94834239462663994 0 -7007.8710705851254 -2988.9230027417643 17788.415383331514 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -6159.2865906405596 -1881.5396118164062 17540.705710143564 ;
	setAttr ".ro" -type "double3" 0 77.231646950909294 0 ;
	setAttr ".ps" -type "double2" 922.23087170724455 876.48138958265793 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj97";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 0.94625746602631022 0 0.32341429775052677 0 -0 1 0 0
		 -0.32341429775052677 -0 0.94625746602631022 0 -5217.6139072609958 -2203.7192147311162 17883.988453612143 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -5947.931396484375 -1839.7259521484375 17634.3779296875 ;
	setAttr ".ro" -type "double3" 0 70.645420199953193 0 ;
	setAttr ".ps" -type "double2" 1112.883269245259 590.02011197955369 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj98";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.94625746602631022 0 0.32341429775052677 0 -0 1 0 0
		 -0.32341429775052677 -0 0.94625746602631022 0 -5217.6139072609958 -2203.7192147311162 17883.988453612143 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -5330.0719217062588 -1839.7259521484375 17458.190967450832 ;
	setAttr ".ro" -type "double3" 0 164.02135791615035 0 ;
	setAttr ".ps" -type "double2" 1039.2595319188813 881.20558795165039 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj99";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.94625746602631022 0 0.32341429775052677 0 -0 1 0 0
		 -0.32341429775052677 -0 0.94625746602631022 0 -5217.6139072609958 -2203.7192147311162 17883.988453612143 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -4492.2300950108665 -1839.7259521484375 18154.552948384891 ;
	setAttr ".ro" -type "double3" 0 76.75265562204126 0 ;
	setAttr ".ps" -type "double2" 923.74613151423068 752.84640121274754 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj100";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[13]";
	setAttr ".ix" -type "matrix" -0.75871454450674203 -0 -0.6514232417974718 0 0 1 0 0
		 0.6514232417974718 0 -0.75871454450674203 0 -1588.3435272103552 165.98230319488226 16448.993057208772 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -716.36676025390625 352.07102966308594 16779.26171875 ;
	setAttr ".ps" -type "double2" 1157.3656005859375 739.31167602539062 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj101";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[2]" "f[7]" "f[11]";
	setAttr ".ix" -type "matrix" -0.75871454450674203 -0 -0.6514232417974718 0 0 1 0 0
		 0.6514232417974718 0 -0.75871454450674203 0 -1588.3435272103552 165.98230319488226 16448.993057208772 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1362.9156494140625 352.07102966308594 17355.671875 ;
	setAttr ".ps" -type "double2" 2390.277587890625 739.31167602539062 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj102";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.7049633090742925 0 -0.70924377534034344 0 0 1 0 0
		 0.70924377534034344 0 0.7049633090742925 0 1203.1204054460793 265.23077824046413 19090.372375224877 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 1353.3699035644531 646.12991333007812 18335.345703125 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 1271.44921875 546.81915283203125 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj103";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 0.7049633090742925 0 -0.70924377534034344 0 0 1 0 0
		 0.70924377534034344 0 0.7049633090742925 0 1203.1204054460793 265.23077824046413 19090.372375224877 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 449.01483154296875 646.12991333007812 19245.1904296875 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 1271.451171875 546.81915283203125 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj104";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.7049633090742925 0 -0.70924377534034344 0 0 1 0 0
		 0.70924377534034344 0 0.7049633090742925 0 1203.1204054460793 265.23077824046413 19090.372375224877 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 261.60723876953125 646.12991333007812 18154.54296875 ;
	setAttr ".ps" -type "double2" 904.3543701171875 546.81915283203125 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj105";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 0.7049633090742925 0 -0.70924377534034344 0 0 1 0 0
		 0.70924377534034344 0 0.7049633090742925 0 1203.1204054460793 265.23077824046413 19090.372375224877 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 1540.7772216796875 646.12991333007812 19425.9931640625 ;
	setAttr ".ps" -type "double2" 904.3564453125 546.81915283203125 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj106";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1.3534956420873032 0 0 0 0 1 0 0 0 0 1.3534956420873032 0
		 455.9780737097476 -1156.8465179101588 4013.8242896717438 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 455.97810363769531 -119.82205200195312 4013.8243408203125 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 669.88607788085937 751.324951171875 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj107";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.44609480840846327 0 0 0 0 1 0 0 0 0 0.44609480840846327 0
		 -1605.6606169608394 -803.43811435519422 4990.9767572317287 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1652.0137939453125 201.1448974609375 4928.971435546875 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 313.4921875 537.94970703125 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj108";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 1.3534956420873032 0 0 0 0 1 0 0 0 0 1.3534956420873032 0
		 455.9780737097476 -1156.8465179101588 4013.8242896717438 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 790.921142578125 -698.76605224609375 4013.8243408203125 ;
	setAttr ".ps" -type "double2" 0 1350.5181884765625 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj109";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 1.3534956420873032 0 0 0 0 1 0 0 0 0 1.3534956420873032 0
		 455.9780737097476 -1156.8465179101588 4013.8242896717438 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 790.921142578125 -698.7659912109375 4013.8243408203125 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 751.324951171875 1350.518310546875 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj110";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1.3534956420873032 0 0 0 0 1 0 0 0 0 1.3534956420873032 0
		 455.9780737097476 -1156.8465179101588 4013.8242896717438 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 455.97810363769531 -698.76593017578125 4389.48681640625 ;
	setAttr ".ps" -type "double2" 669.88607788085937 1350.5184326171875 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj111";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 1.3534956420873032 0 0 0 0 1 0 0 0 0 1.3534956420873032 0
		 455.9780737097476 -1156.8465179101588 4013.8242896717438 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 121.03514099121094 -698.765869140625 4013.8243408203125 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 751.324951171875 1350.5185546875 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj112";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.44609480840846327 0 0 0 0 1 0 0 0 0 0.44609480840846327 0
		 -1605.6606169608394 -803.43811435519422 4990.9767572317287 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1652.0137329101562 -57.7786865234375 4659.9970703125 ;
	setAttr ".ps" -type "double2" 313.4920654296875 603.8125 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj113";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 0.44609480840846327 0 0 0 0 1 0 0 0 0 0.44609480840846327 0
		 -1605.6606169608394 -803.43811435519422 4990.9767572317287 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1652.013671875 -57.7786865234375 5197.947265625 ;
	setAttr ".ps" -type "double2" 313.491943359375 603.8125 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj114";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.44609480840846327 0 0 0 0 1 0 0 0 0 0.44609480840846327 0
		 -1605.6606169608394 -803.43811435519422 4990.9767572317287 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1495.2677001953125 -100.7613525390625 4928.972412109375 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 537.95068359375 517.84716796875 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj115";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.73610044477839365 0 0.67687231823812311 0 -0 1.3662160711659888 0 0
		 -0.67687231823812311 -0 0.73610044477839365 0 -935.42497704882499 233.09254271646523 5539.0893263464368 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -939.8304443359375 233.09255218505859 5484.33740234375 ;
	setAttr ".ps" -type "double2" 210.19677734375 203.24116516113281 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj116";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.73610044477839365 0 0.67687231823812311 0 -0 1.3662160711659888 0 0
		 -0.67687231823812311 -0 0.73610044477839365 0 -935.42497704882499 233.09254271646523 5539.0893263464368 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -880.67294311523437 233.09255981445312 5534.683837890625 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 210.19677734375 203.24114990234375 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj117";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.73610044477839365 0 0.67687231823812311 0 -0 1.3662160711659888 0 0
		 -0.67687231823812311 -0 0.73610044477839365 0 -935.42497704882499 233.09254271646523 5539.0893263464368 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -990.17648315429687 233.09255981445312 5543.495361328125 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 210.19677734375 203.24114990234375 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj118";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.73610044477839365 0 0.67687231823812311 0 -0 1.3662160711659888 0 0
		 -0.67687231823812311 -0 0.73610044477839365 0 -935.42497704882499 233.09254271646523 5539.0893263464368 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -931.01895141601563 233.09255981445312 5593.842041015625 ;
	setAttr ".ps" -type "double2" 210.19622802734375 203.24114990234375 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj119";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 -0 0 0 0 -0.99711363517585849 0.075923636282686169 0
		 -0 -0.075923636282686169 -0.99711363517585849 0 -601.54115744105877 3164.5996989943387 10415.910994062084 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -436.34400939941406 3164.599609375 10251.19091796875 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 431.7021484375 1343.00244140625 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj120";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 1 -0 0 0 0 -0.99711363517585849 0.075923636282686169 0
		 -0 -0.075923636282686169 -0.99711363517585849 0 -601.54115744105877 3164.5996989943387 10415.910994062084 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -436.343994140625 3177.141845703125 10529.5 ;
	setAttr ".ps" -type "double2" 330.394287109375 1368.0869140625 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj121";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 -0 0 0 0 -0.99711363517585849 0.075923636282686169 0
		 -0 -0.075923636282686169 -0.99711363517585849 0 -601.54115744105877 3164.5996989943387 10415.910994062084 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -766.73812866210937 3177.141845703125 10529.49951171875 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 329.4404296875 1368.0869140625 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj122";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 1 -0 0 0 0 -0.99711363517585849 0.075923636282686169 0
		 -0 -0.075923636282686169 -0.99711363517585849 0 -601.54115744105877 3164.5996989943387 10415.910994062084 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -766.73809814453125 3164.599609375 10251.189453125 ;
	setAttr ".ps" -type "double2" 330.394287109375 1343.00244140625 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj123";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1 -0 0 0 0 -0.99711363517585849 0.075923636282686169 0
		 -0 -0.075923636282686169 -0.99711363517585849 0 -601.54115744105877 3164.5996989943387 10415.910994062084 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -601.54096984863281 3836.0999755859375 10364.77685546875 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 660.78842163085937 658.8818359375 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj124";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1 -0 0 0 0 -0.99711363517585849 0.075923636282686169 0
		 -0 -0.075923636282686169 -0.99711363517585849 0 150.01168669852302 3173.8242652448585 9591.7683382495288 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 150.01168823242187 3845.325439453125 9540.63818359375 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 660.78851318359375 658.8818359375 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj125";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1 -0 0 0 0 -0.99711363517585849 0.075923636282686169 0
		 -0 -0.075923636282686169 -0.99711363517585849 0 443.85438935475952 3168.8191043141687 10593.078122318262 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 443.85440063476562 3840.3203125 10541.94775390625 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 660.78851318359375 658.8818359375 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj126";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 -0 0 0 0 -0.99711363517585849 0.075923636282686169 0
		 -0 -0.075923636282686169 -0.99711363517585849 0 443.85438935475952 3168.8191043141687 10593.078122318262 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 278.65727233886719 3181.3612060546875 10706.66845703125 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 329.4404296875 1368.087158203125 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj127";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 1 -0 0 0 0 -0.99711363517585849 0.075923636282686169 0
		 -0 -0.075923636282686169 -0.99711363517585849 0 443.85438935475952 3168.8191043141687 10593.078122318262 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 609.05152893066406 3181.36083984375 10706.66845703125 ;
	setAttr ".ps" -type "double2" 330.39425659179687 1368.0869140625 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj128";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 1 -0 0 0 0 -0.99711363517585849 0.075923636282686169 0
		 -0 -0.075923636282686169 -0.99711363517585849 0 443.85438935475952 3168.8191043141687 10593.078122318262 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 278.65725708007812 3168.81884765625 10428.36083984375 ;
	setAttr ".ps" -type "double2" 330.394287109375 1343.0029296875 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj129";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 -0 0 0 0 -0.99711363517585849 0.075923636282686169 0
		 -0 -0.075923636282686169 -0.99711363517585849 0 443.85438935475952 3168.8191043141687 10593.078122318262 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 609.05152893066406 3168.818603515625 10428.36181640625 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 431.7021484375 1343.00244140625 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj130";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 -0 0 0 0 -0.99711363517585849 0.075923636282686169 0
		 -0 -0.075923636282686169 -0.99711363517585849 0 150.01168669852302 3173.8242652448585 9591.7683382495288 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 315.20881652832031 3173.82421875 9427.048828125 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 431.703125 1343.00244140625 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj131";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 1 -0 0 0 0 -0.99711363517585849 0.075923636282686169 0
		 -0 -0.075923636282686169 -0.99711363517585849 0 150.01168669852302 3173.8242652448585 9591.7683382495288 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -15.185409545898437 3173.8240966796875 9427.04931640625 ;
	setAttr ".ps" -type "double2" 330.39425659179687 1343.002197265625 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj132";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 1 -0 0 0 0 -0.99711363517585849 0.075923636282686169 0
		 -0 -0.075923636282686169 -0.99711363517585849 0 150.01168669852302 3173.8242652448585 9591.7683382495288 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 315.20883941650391 3186.3665771484375 9705.3583984375 ;
	setAttr ".ps" -type "double2" 330.39421081542969 1368.087158203125 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj133";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 -0 0 0 0 -0.99711363517585849 0.075923636282686169 0
		 -0 -0.075923636282686169 -0.99711363517585849 0 150.01168669852302 3173.8242652448585 9591.7683382495288 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -15.185371398925781 3186.3665771484375 9705.35888671875 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 329.4482421875 1368.087158203125 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj134";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "f[8:11]" "f[13:14]" "f[17:19]" "f[22:24]" "f[27:30]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -291.82848408851578 -1084.9908310735918 9787.2015669368775 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -99.72216796875 3805.3896484375 9787.201171875 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 2498.2740624660751 2546.6275430818823 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyCylProj -n "polyCylProj5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "f[0:5]" "f[7]" "f[12]" "f[15:16]" "f[20]" "f[25:26]" "f[31:67]" "f[70:75]" "f[77:79]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -291.82848408851578 -1084.9908310735918 9787.2015669368775 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -99.72216796875 -1462.122802734375 9787.20068359375 ;
	setAttr ".ps" -type "double2" 180 10535.02490234375 ;
	setAttr ".r" 20235.1455078125;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 19 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 19 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 38 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 26 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "layer1.di" "zenreg.do";
connectAttr "polyPlanarProj51.out" "enterShape.i";
connectAttr "polyPlanarProj82.out" "pCubeShape2.i";
connectAttr "polyPlanarProj133.out" "pConeShape1.i";
connectAttr "polyPlanarProj123.out" "pConeShape3.i";
connectAttr "polyPlanarProj129.out" "pConeShape4.i";
connectAttr "polyPlanarProj111.out" "pCubeShape3.i";
connectAttr "polyPlanarProj55.out" "pCubeShape4.i";
connectAttr "polyPlanarProj88.out" "pCubeShape5.i";
connectAttr "polyPlanarProj118.out" "coverrock4Shape.i";
connectAttr "polyPlanarProj67.out" "pCylinderShape1.i";
connectAttr "polyPlanarProj81.out" "pCubeShape6.i";
connectAttr "polyPlanarProj69.out" "pCylinderShape2.i";
connectAttr "polyPlanarProj101.out" "pCubeShape8.i";
connectAttr "polyPlanarProj68.out" "pCylinderShape5.i";
connectAttr "polyPlanarProj62.out" "pCubeShape10.i";
connectAttr "polyPlanarProj65.out" "pCubeShape11.i";
connectAttr "polyPlanarProj83.out" "pCylinderShape3.i";
connectAttr "polyPlanarProj76.out" "pCubeShape12.i";
connectAttr "polyPlanarProj58.out" "pCubeShape13.i";
connectAttr "polyPlanarProj114.out" "pCubeShape14.i";
connectAttr "polyCylProj5.out" "pCylinderShape4.i";
connectAttr "polyPlanarProj78.out" "pCubeShape15.i";
connectAttr "polyPlanarProj93.out" "pCubeShape16.i";
connectAttr "polyPlanarProj92.out" "pCubeShape18.i";
connectAttr "polyPlanarProj96.out" "pCubeShape19.i";
connectAttr "polyPlanarProj99.out" "pCubeShape20.i";
connectAttr "polyPlanarProj73.out" "pCubeShape21.i";
connectAttr "polyPlanarProj105.out" "pCubeShape22.i";
connectAttr "polyPlanarProj20.out" "pCubeShape23.i";
connectAttr "polyPlanarProj7.out" "pCubeShape24.i";
connectAttr "polyPlanarProj24.out" "pCubeShape25.i";
connectAttr "polyPlanarProj15.out" "pCubeShape26.i";
connectAttr "polyPlanarProj11.out" "pCubeShape27.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "zen_scarfSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "zen_beltSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "zen_bagSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "zen_leftEyeSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "zen_LegsSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "zen_skirtSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "zen_hairSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "zen_headHandsSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "shoes:polySurface1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "sleeves:polySurface1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "turtleneck:polySurface1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "overshirt:polySurface1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pantsLegs:polySurface1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "worm_v2:pCylinder1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "zen_scarfSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "zen_beltSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "zen_bagSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "zen_leftEyeSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "zen_LegsSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "zen_skirtSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "zen_hairSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "zen_headHandsSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "shoes:polySurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "sleeves:polySurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "turtleneck:polySurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "overshirt:polySurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pantsLegs:polySurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "worm_v2:pCylinder1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "file17.oc" "scarf_txt.c";
connectAttr "bump2d1.o" "scarf_txt.n";
connectAttr "scarf_txt.oc" "zen_scarfSG.ss";
connectAttr "zen_scarfSG.msg" "materialInfo1.sg";
connectAttr "scarf_txt.msg" "materialInfo1.m";
connectAttr "file17.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.o" "file17.uv";
connectAttr "place2dTexture1.ofu" "file17.ofu";
connectAttr "place2dTexture1.ofv" "file17.ofv";
connectAttr "place2dTexture1.rf" "file17.rf";
connectAttr "place2dTexture1.reu" "file17.reu";
connectAttr "place2dTexture1.rev" "file17.rev";
connectAttr "place2dTexture1.vt1" "file17.vt1";
connectAttr "place2dTexture1.vt2" "file17.vt2";
connectAttr "place2dTexture1.vt3" "file17.vt3";
connectAttr "place2dTexture1.vc1" "file17.vc1";
connectAttr "place2dTexture1.ofs" "file17.fs";
connectAttr "file28.oa" "bump2d1.bv";
connectAttr "place2dTexture2.o" "file28.uv";
connectAttr "place2dTexture2.ofu" "file28.ofu";
connectAttr "place2dTexture2.ofv" "file28.ofv";
connectAttr "place2dTexture2.rf" "file28.rf";
connectAttr "place2dTexture2.reu" "file28.reu";
connectAttr "place2dTexture2.rev" "file28.rev";
connectAttr "place2dTexture2.vt1" "file28.vt1";
connectAttr "place2dTexture2.vt2" "file28.vt2";
connectAttr "place2dTexture2.vt3" "file28.vt3";
connectAttr "place2dTexture2.vc1" "file28.vc1";
connectAttr "place2dTexture2.ofs" "file28.fs";
connectAttr "file10.oc" "belt_txt.c";
connectAttr "bump2d2.o" "belt_txt.n";
connectAttr "belt_txt.oc" "zen_beltSG.ss";
connectAttr "zen_beltSG.msg" "materialInfo2.sg";
connectAttr "belt_txt.msg" "materialInfo2.m";
connectAttr "file10.msg" "materialInfo2.t" -na;
connectAttr "place2dTexture3.o" "file10.uv";
connectAttr "place2dTexture3.ofu" "file10.ofu";
connectAttr "place2dTexture3.ofv" "file10.ofv";
connectAttr "place2dTexture3.rf" "file10.rf";
connectAttr "place2dTexture3.reu" "file10.reu";
connectAttr "place2dTexture3.rev" "file10.rev";
connectAttr "place2dTexture3.vt1" "file10.vt1";
connectAttr "place2dTexture3.vt2" "file10.vt2";
connectAttr "place2dTexture3.vt3" "file10.vt3";
connectAttr "place2dTexture3.vc1" "file10.vc1";
connectAttr "place2dTexture3.ofs" "file10.fs";
connectAttr "file22.oa" "bump2d2.bv";
connectAttr "place2dTexture4.o" "file22.uv";
connectAttr "place2dTexture4.ofu" "file22.ofu";
connectAttr "place2dTexture4.ofv" "file22.ofv";
connectAttr "place2dTexture4.rf" "file22.rf";
connectAttr "place2dTexture4.reu" "file22.reu";
connectAttr "place2dTexture4.rev" "file22.rev";
connectAttr "place2dTexture4.vt1" "file22.vt1";
connectAttr "place2dTexture4.vt2" "file22.vt2";
connectAttr "place2dTexture4.vt3" "file22.vt3";
connectAttr "place2dTexture4.vc1" "file22.vc1";
connectAttr "place2dTexture4.ofs" "file22.fs";
connectAttr "file9.oc" "bag_txt.c";
connectAttr "bump2d3.o" "bag_txt.n";
connectAttr "bag_txt.oc" "zen_bagSG.ss";
connectAttr "zen_bagSG.msg" "materialInfo3.sg";
connectAttr "bag_txt.msg" "materialInfo3.m";
connectAttr "file9.msg" "materialInfo3.t" -na;
connectAttr "place2dTexture5.o" "file9.uv";
connectAttr "place2dTexture5.ofu" "file9.ofu";
connectAttr "place2dTexture5.ofv" "file9.ofv";
connectAttr "place2dTexture5.rf" "file9.rf";
connectAttr "place2dTexture5.reu" "file9.reu";
connectAttr "place2dTexture5.rev" "file9.rev";
connectAttr "place2dTexture5.vt1" "file9.vt1";
connectAttr "place2dTexture5.vt2" "file9.vt2";
connectAttr "place2dTexture5.vt3" "file9.vt3";
connectAttr "place2dTexture5.vc1" "file9.vc1";
connectAttr "place2dTexture5.ofs" "file9.fs";
connectAttr "file21.oa" "bump2d3.bv";
connectAttr "place2dTexture6.o" "file21.uv";
connectAttr "place2dTexture6.ofu" "file21.ofu";
connectAttr "place2dTexture6.ofv" "file21.ofv";
connectAttr "place2dTexture6.rf" "file21.rf";
connectAttr "place2dTexture6.reu" "file21.reu";
connectAttr "place2dTexture6.rev" "file21.rev";
connectAttr "place2dTexture6.vt1" "file21.vt1";
connectAttr "place2dTexture6.vt2" "file21.vt2";
connectAttr "place2dTexture6.vt3" "file21.vt3";
connectAttr "place2dTexture6.vc1" "file21.vc1";
connectAttr "place2dTexture6.ofs" "file21.fs";
connectAttr "file19.oc" "eyeMouth_txt.c";
connectAttr "file19.ot" "eyeMouth_txt.it";
connectAttr "eyeMouth_txt.oc" "zen_leftEyeSG.ss";
connectAttr "zen_leftEyeSG.msg" "materialInfo4.sg";
connectAttr "eyeMouth_txt.msg" "materialInfo4.m";
connectAttr "file19.msg" "materialInfo4.t" -na;
connectAttr "place2dTexture7.o" "file19.uv";
connectAttr "place2dTexture7.ofu" "file19.ofu";
connectAttr "place2dTexture7.ofv" "file19.ofv";
connectAttr "place2dTexture7.rf" "file19.rf";
connectAttr "place2dTexture7.reu" "file19.reu";
connectAttr "place2dTexture7.rev" "file19.rev";
connectAttr "place2dTexture7.vt1" "file19.vt1";
connectAttr "place2dTexture7.vt2" "file19.vt2";
connectAttr "place2dTexture7.vt3" "file19.vt3";
connectAttr "place2dTexture7.vc1" "file19.vc1";
connectAttr "place2dTexture7.ofs" "file19.fs";
connectAttr "file20.oc" "legs_txt.c";
connectAttr "bump2d4.o" "legs_txt.n";
connectAttr "legs_txt.oc" "zen_LegsSG.ss";
connectAttr "zen_LegsSG.msg" "materialInfo5.sg";
connectAttr "legs_txt.msg" "materialInfo5.m";
connectAttr "file20.msg" "materialInfo5.t" -na;
connectAttr "place2dTexture8.o" "file20.uv";
connectAttr "place2dTexture8.ofu" "file20.ofu";
connectAttr "place2dTexture8.ofv" "file20.ofv";
connectAttr "place2dTexture8.rf" "file20.rf";
connectAttr "place2dTexture8.reu" "file20.reu";
connectAttr "place2dTexture8.rev" "file20.rev";
connectAttr "place2dTexture8.vt1" "file20.vt1";
connectAttr "place2dTexture8.vt2" "file20.vt2";
connectAttr "place2dTexture8.vt3" "file20.vt3";
connectAttr "place2dTexture8.vc1" "file20.vc1";
connectAttr "place2dTexture8.ofs" "file20.fs";
connectAttr "file25.oa" "bump2d4.bv";
connectAttr "place2dTexture9.o" "file25.uv";
connectAttr "place2dTexture9.ofu" "file25.ofu";
connectAttr "place2dTexture9.ofv" "file25.ofv";
connectAttr "place2dTexture9.rf" "file25.rf";
connectAttr "place2dTexture9.reu" "file25.reu";
connectAttr "place2dTexture9.rev" "file25.rev";
connectAttr "place2dTexture9.vt1" "file25.vt1";
connectAttr "place2dTexture9.vt2" "file25.vt2";
connectAttr "place2dTexture9.vt3" "file25.vt3";
connectAttr "place2dTexture9.vc1" "file25.vc1";
connectAttr "place2dTexture9.ofs" "file25.fs";
connectAttr "file14.oc" "skirt_txt.c";
connectAttr "bump2d5.o" "skirt_txt.n";
connectAttr "skirt_txt.oc" "zen_skirtSG.ss";
connectAttr "zen_skirtSG.msg" "materialInfo6.sg";
connectAttr "skirt_txt.msg" "materialInfo6.m";
connectAttr "file14.msg" "materialInfo6.t" -na;
connectAttr "place2dTexture10.o" "file14.uv";
connectAttr "place2dTexture10.ofu" "file14.ofu";
connectAttr "place2dTexture10.ofv" "file14.ofv";
connectAttr "place2dTexture10.rf" "file14.rf";
connectAttr "place2dTexture10.reu" "file14.reu";
connectAttr "place2dTexture10.rev" "file14.rev";
connectAttr "place2dTexture10.vt1" "file14.vt1";
connectAttr "place2dTexture10.vt2" "file14.vt2";
connectAttr "place2dTexture10.vt3" "file14.vt3";
connectAttr "place2dTexture10.vc1" "file14.vc1";
connectAttr "place2dTexture10.ofs" "file14.fs";
connectAttr "file30.oa" "bump2d5.bv";
connectAttr "place2dTexture11.o" "file30.uv";
connectAttr "place2dTexture11.ofu" "file30.ofu";
connectAttr "place2dTexture11.ofv" "file30.ofv";
connectAttr "place2dTexture11.rf" "file30.rf";
connectAttr "place2dTexture11.reu" "file30.reu";
connectAttr "place2dTexture11.rev" "file30.rev";
connectAttr "place2dTexture11.vt1" "file30.vt1";
connectAttr "place2dTexture11.vt2" "file30.vt2";
connectAttr "place2dTexture11.vt3" "file30.vt3";
connectAttr "place2dTexture11.vc1" "file30.vc1";
connectAttr "place2dTexture11.ofs" "file30.fs";
connectAttr "file16.oc" "hair_txt.c";
connectAttr "bump2d6.o" "hair_txt.n";
connectAttr "hair_txt.oc" "zen_hairSG.ss";
connectAttr "zen_hairSG.msg" "materialInfo7.sg";
connectAttr "hair_txt.msg" "materialInfo7.m";
connectAttr "file16.msg" "materialInfo7.t" -na;
connectAttr "place2dTexture12.o" "file16.uv";
connectAttr "place2dTexture12.ofu" "file16.ofu";
connectAttr "place2dTexture12.ofv" "file16.ofv";
connectAttr "place2dTexture12.rf" "file16.rf";
connectAttr "place2dTexture12.reu" "file16.reu";
connectAttr "place2dTexture12.rev" "file16.rev";
connectAttr "place2dTexture12.vt1" "file16.vt1";
connectAttr "place2dTexture12.vt2" "file16.vt2";
connectAttr "place2dTexture12.vt3" "file16.vt3";
connectAttr "place2dTexture12.vc1" "file16.vc1";
connectAttr "place2dTexture12.ofs" "file16.fs";
connectAttr "file23.oa" "bump2d6.bv";
connectAttr "place2dTexture13.o" "file23.uv";
connectAttr "place2dTexture13.ofu" "file23.ofu";
connectAttr "place2dTexture13.ofv" "file23.ofv";
connectAttr "place2dTexture13.rf" "file23.rf";
connectAttr "place2dTexture13.reu" "file23.reu";
connectAttr "place2dTexture13.rev" "file23.rev";
connectAttr "place2dTexture13.vt1" "file23.vt1";
connectAttr "place2dTexture13.vt2" "file23.vt2";
connectAttr "place2dTexture13.vt3" "file23.vt3";
connectAttr "place2dTexture13.vc1" "file23.vc1";
connectAttr "place2dTexture13.ofs" "file23.fs";
connectAttr "file15.oc" "headHand_txt.c";
connectAttr "bump2d7.o" "headHand_txt.n";
connectAttr "headHand_txt.oc" "zen_headHandsSG.ss";
connectAttr "zen_headHandsSG.msg" "materialInfo8.sg";
connectAttr "headHand_txt.msg" "materialInfo8.m";
connectAttr "file15.msg" "materialInfo8.t" -na;
connectAttr "place2dTexture14.o" "file15.uv";
connectAttr "place2dTexture14.ofu" "file15.ofu";
connectAttr "place2dTexture14.ofv" "file15.ofv";
connectAttr "place2dTexture14.rf" "file15.rf";
connectAttr "place2dTexture14.reu" "file15.reu";
connectAttr "place2dTexture14.rev" "file15.rev";
connectAttr "place2dTexture14.vt1" "file15.vt1";
connectAttr "place2dTexture14.vt2" "file15.vt2";
connectAttr "place2dTexture14.vt3" "file15.vt3";
connectAttr "place2dTexture14.vc1" "file15.vc1";
connectAttr "place2dTexture14.ofs" "file15.fs";
connectAttr "file24.oa" "bump2d7.bv";
connectAttr "place2dTexture15.o" "file24.uv";
connectAttr "place2dTexture15.ofu" "file24.ofu";
connectAttr "place2dTexture15.ofv" "file24.ofv";
connectAttr "place2dTexture15.rf" "file24.rf";
connectAttr "place2dTexture15.reu" "file24.reu";
connectAttr "place2dTexture15.rev" "file24.rev";
connectAttr "place2dTexture15.vt1" "file24.vt1";
connectAttr "place2dTexture15.vt2" "file24.vt2";
connectAttr "place2dTexture15.vt3" "file24.vt3";
connectAttr "place2dTexture15.vc1" "file24.vc1";
connectAttr "place2dTexture15.ofs" "file24.fs";
connectAttr "file12.oc" "shoes_txt.c";
connectAttr "bump2d8.o" "shoes_txt.n";
connectAttr "shoes_txt.oc" "shoes:polySurface1SG.ss";
connectAttr "shoes:polySurface1SG.msg" "materialInfo9.sg";
connectAttr "shoes_txt.msg" "materialInfo9.m";
connectAttr "file12.msg" "materialInfo9.t" -na;
connectAttr "place2dTexture16.o" "file12.uv";
connectAttr "place2dTexture16.ofu" "file12.ofu";
connectAttr "place2dTexture16.ofv" "file12.ofv";
connectAttr "place2dTexture16.rf" "file12.rf";
connectAttr "place2dTexture16.reu" "file12.reu";
connectAttr "place2dTexture16.rev" "file12.rev";
connectAttr "place2dTexture16.vt1" "file12.vt1";
connectAttr "place2dTexture16.vt2" "file12.vt2";
connectAttr "place2dTexture16.vt3" "file12.vt3";
connectAttr "place2dTexture16.vc1" "file12.vc1";
connectAttr "place2dTexture16.ofs" "file12.fs";
connectAttr "file29.oa" "bump2d8.bv";
connectAttr "place2dTexture17.o" "file29.uv";
connectAttr "place2dTexture17.ofu" "file29.ofu";
connectAttr "place2dTexture17.ofv" "file29.ofv";
connectAttr "place2dTexture17.rf" "file29.rf";
connectAttr "place2dTexture17.reu" "file29.reu";
connectAttr "place2dTexture17.rev" "file29.rev";
connectAttr "place2dTexture17.vt1" "file29.vt1";
connectAttr "place2dTexture17.vt2" "file29.vt2";
connectAttr "place2dTexture17.vt3" "file29.vt3";
connectAttr "place2dTexture17.vc1" "file29.vc1";
connectAttr "place2dTexture17.ofs" "file29.fs";
connectAttr "file13.oc" "sleeves_txt.c";
connectAttr "bump2d9.o" "sleeves_txt.n";
connectAttr "sleeves_txt.oc" "sleeves:polySurface1SG.ss";
connectAttr "sleeves:polySurface1SG.msg" "materialInfo10.sg";
connectAttr "sleeves_txt.msg" "materialInfo10.m";
connectAttr "file13.msg" "materialInfo10.t" -na;
connectAttr "place2dTexture18.o" "file13.uv";
connectAttr "place2dTexture18.ofu" "file13.ofu";
connectAttr "place2dTexture18.ofv" "file13.ofv";
connectAttr "place2dTexture18.rf" "file13.rf";
connectAttr "place2dTexture18.reu" "file13.reu";
connectAttr "place2dTexture18.rev" "file13.rev";
connectAttr "place2dTexture18.vt1" "file13.vt1";
connectAttr "place2dTexture18.vt2" "file13.vt2";
connectAttr "place2dTexture18.vt3" "file13.vt3";
connectAttr "place2dTexture18.vc1" "file13.vc1";
connectAttr "place2dTexture18.ofs" "file13.fs";
connectAttr "file31.oa" "bump2d9.bv";
connectAttr "place2dTexture19.o" "file31.uv";
connectAttr "place2dTexture19.ofu" "file31.ofu";
connectAttr "place2dTexture19.ofv" "file31.ofv";
connectAttr "place2dTexture19.rf" "file31.rf";
connectAttr "place2dTexture19.reu" "file31.reu";
connectAttr "place2dTexture19.rev" "file31.rev";
connectAttr "place2dTexture19.vt1" "file31.vt1";
connectAttr "place2dTexture19.vt2" "file31.vt2";
connectAttr "place2dTexture19.vt3" "file31.vt3";
connectAttr "place2dTexture19.vc1" "file31.vc1";
connectAttr "place2dTexture19.ofs" "file31.fs";
connectAttr "file18.oc" "turtleneck_txt.c";
connectAttr "bump2d10.o" "turtleneck_txt.n";
connectAttr "turtleneck_txt.oc" "turtleneck:polySurface1SG.ss";
connectAttr "turtleneck:polySurface1SG.msg" "materialInfo11.sg";
connectAttr "turtleneck_txt.msg" "materialInfo11.m";
connectAttr "file18.msg" "materialInfo11.t" -na;
connectAttr "place2dTexture20.o" "file18.uv";
connectAttr "place2dTexture20.ofu" "file18.ofu";
connectAttr "place2dTexture20.ofv" "file18.ofv";
connectAttr "place2dTexture20.rf" "file18.rf";
connectAttr "place2dTexture20.reu" "file18.reu";
connectAttr "place2dTexture20.rev" "file18.rev";
connectAttr "place2dTexture20.vt1" "file18.vt1";
connectAttr "place2dTexture20.vt2" "file18.vt2";
connectAttr "place2dTexture20.vt3" "file18.vt3";
connectAttr "place2dTexture20.vc1" "file18.vc1";
connectAttr "place2dTexture20.ofs" "file18.fs";
connectAttr "file32.oa" "bump2d10.bv";
connectAttr "place2dTexture21.o" "file32.uv";
connectAttr "place2dTexture21.ofu" "file32.ofu";
connectAttr "place2dTexture21.ofv" "file32.ofv";
connectAttr "place2dTexture21.rf" "file32.rf";
connectAttr "place2dTexture21.reu" "file32.reu";
connectAttr "place2dTexture21.rev" "file32.rev";
connectAttr "place2dTexture21.vt1" "file32.vt1";
connectAttr "place2dTexture21.vt2" "file32.vt2";
connectAttr "place2dTexture21.vt3" "file32.vt3";
connectAttr "place2dTexture21.vc1" "file32.vc1";
connectAttr "place2dTexture21.ofs" "file32.fs";
connectAttr "file8.oc" "overshirt_txt.c";
connectAttr "bump2d11.o" "overshirt_txt.n";
connectAttr "overshirt_txt.oc" "overshirt:polySurface1SG.ss";
connectAttr "overshirt:polySurface1SG.msg" "materialInfo12.sg";
connectAttr "overshirt_txt.msg" "materialInfo12.m";
connectAttr "file8.msg" "materialInfo12.t" -na;
connectAttr "place2dTexture22.o" "file8.uv";
connectAttr "place2dTexture22.ofu" "file8.ofu";
connectAttr "place2dTexture22.ofv" "file8.ofv";
connectAttr "place2dTexture22.rf" "file8.rf";
connectAttr "place2dTexture22.reu" "file8.reu";
connectAttr "place2dTexture22.rev" "file8.rev";
connectAttr "place2dTexture22.vt1" "file8.vt1";
connectAttr "place2dTexture22.vt2" "file8.vt2";
connectAttr "place2dTexture22.vt3" "file8.vt3";
connectAttr "place2dTexture22.vc1" "file8.vc1";
connectAttr "place2dTexture22.ofs" "file8.fs";
connectAttr "file26.oa" "bump2d11.bv";
connectAttr "place2dTexture23.o" "file26.uv";
connectAttr "place2dTexture23.ofu" "file26.ofu";
connectAttr "place2dTexture23.ofv" "file26.ofv";
connectAttr "place2dTexture23.rf" "file26.rf";
connectAttr "place2dTexture23.reu" "file26.reu";
connectAttr "place2dTexture23.rev" "file26.rev";
connectAttr "place2dTexture23.vt1" "file26.vt1";
connectAttr "place2dTexture23.vt2" "file26.vt2";
connectAttr "place2dTexture23.vt3" "file26.vt3";
connectAttr "place2dTexture23.vc1" "file26.vc1";
connectAttr "place2dTexture23.ofs" "file26.fs";
connectAttr "file11.oc" "pantsLegs_txt.c";
connectAttr "bump2d12.o" "pantsLegs_txt.n";
connectAttr "pantsLegs_txt.oc" "pantsLegs:polySurface1SG.ss";
connectAttr "pantsLegs:polySurface1SG.msg" "materialInfo13.sg";
connectAttr "pantsLegs_txt.msg" "materialInfo13.m";
connectAttr "file11.msg" "materialInfo13.t" -na;
connectAttr "place2dTexture24.o" "file11.uv";
connectAttr "place2dTexture24.ofu" "file11.ofu";
connectAttr "place2dTexture24.ofv" "file11.ofv";
connectAttr "place2dTexture24.rf" "file11.rf";
connectAttr "place2dTexture24.reu" "file11.reu";
connectAttr "place2dTexture24.rev" "file11.rev";
connectAttr "place2dTexture24.vt1" "file11.vt1";
connectAttr "place2dTexture24.vt2" "file11.vt2";
connectAttr "place2dTexture24.vt3" "file11.vt3";
connectAttr "place2dTexture24.vc1" "file11.vc1";
connectAttr "place2dTexture24.ofs" "file11.fs";
connectAttr "file27.oa" "bump2d12.bv";
connectAttr "place2dTexture25.o" "file27.uv";
connectAttr "place2dTexture25.ofu" "file27.ofu";
connectAttr "place2dTexture25.ofv" "file27.ofv";
connectAttr "place2dTexture25.rf" "file27.rf";
connectAttr "place2dTexture25.reu" "file27.reu";
connectAttr "place2dTexture25.rev" "file27.rev";
connectAttr "place2dTexture25.vt1" "file27.vt1";
connectAttr "place2dTexture25.vt2" "file27.vt2";
connectAttr "place2dTexture25.vt3" "file27.vt3";
connectAttr "place2dTexture25.vc1" "file27.vc1";
connectAttr "place2dTexture25.ofs" "file27.fs";
connectAttr "layerManager.dli[1]" "layer2.id";
connectAttr "layerManager.dli[2]" "layer1.id";
connectAttr "lambert2.oc" "worm_v2:pCylinder1SG.ss";
connectAttr "worm_v2:pCylinder1SG.msg" "materialInfo14.sg";
connectAttr "lambert2.msg" "materialInfo14.m";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "pCubeShape7.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape28.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape29.iog" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo15.sg";
connectAttr "lambert3.msg" "materialInfo15.m";
connectAttr "lava.oc" "lambert4SG.ss";
connectAttr "pPlaneShape1.iog" "lambert4SG.dsm" -na;
connectAttr "lambert4SG.msg" "materialInfo16.sg";
connectAttr "lava.msg" "materialInfo16.m";
connectAttr "polySurfaceShape1.o" "polySplitRing1.ip";
connectAttr "pCubeShape11.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pCubeShape11.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "pCubeShape11.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "pCubeShape11.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pCubeShape11.wm" "polySplitRing5.mp";
connectAttr "polySurfaceShape2.o" "polySplitRing6.ip";
connectAttr "pCubeShape2.wm" "polySplitRing6.mp";
connectAttr "polySurfaceShape3.o" "polySplitRing7.ip";
connectAttr "pCubeShape24.wm" "polySplitRing7.mp";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "pCubeShape24.wm" "polySplitRing8.mp";
connectAttr "polySplitRing8.out" "polySplitRing9.ip";
connectAttr "pCubeShape24.wm" "polySplitRing9.mp";
connectAttr "polySplitRing9.out" "polySplitRing10.ip";
connectAttr "pCubeShape24.wm" "polySplitRing10.mp";
connectAttr "polySurfaceShape4.o" "polySplitRing11.ip";
connectAttr "pCylinderShape3.wm" "polySplitRing11.mp";
connectAttr "polySurfaceShape5.o" "polySplitRing12.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing12.mp";
connectAttr "polySurfaceShape6.o" "polySplitRing13.ip";
connectAttr "pCylinderShape2.wm" "polySplitRing13.mp";
connectAttr "polySurfaceShape7.o" "polySplitRing14.ip";
connectAttr "pCylinderShape5.wm" "polySplitRing14.mp";
connectAttr "polySurfaceShape8.o" "polySplitRing15.ip";
connectAttr "pCubeShape21.wm" "polySplitRing15.mp";
connectAttr "polySplitRing15.out" "polySplitRing16.ip";
connectAttr "pCubeShape21.wm" "polySplitRing16.mp";
connectAttr "polySplitRing16.out" "polySplitRing17.ip";
connectAttr "pCubeShape21.wm" "polySplitRing17.mp";
connectAttr "polySplitRing14.out" "polySplitRing18.ip";
connectAttr "pCylinderShape5.wm" "polySplitRing18.mp";
connectAttr "polySplitRing18.out" "polySplitRing19.ip";
connectAttr "pCylinderShape5.wm" "polySplitRing19.mp";
connectAttr "polySplitRing19.out" "polySplitRing20.ip";
connectAttr "pCylinderShape5.wm" "polySplitRing20.mp";
connectAttr "polySplitRing20.out" "polySplitRing21.ip";
connectAttr "pCylinderShape5.wm" "polySplitRing21.mp";
connectAttr "polySplitRing21.out" "polySplitRing22.ip";
connectAttr "pCylinderShape5.wm" "polySplitRing22.mp";
connectAttr "polySplitRing22.out" "polySplitRing23.ip";
connectAttr "pCylinderShape5.wm" "polySplitRing23.mp";
connectAttr "polySplitRing23.out" "polySplitRing24.ip";
connectAttr "pCylinderShape5.wm" "polySplitRing24.mp";
connectAttr "polySplitRing24.out" "polySplitRing25.ip";
connectAttr "pCylinderShape5.wm" "polySplitRing25.mp";
connectAttr "polySplitRing25.out" "polySplitRing26.ip";
connectAttr "pCylinderShape5.wm" "polySplitRing26.mp";
connectAttr "polySplitRing26.out" "polySplitRing27.ip";
connectAttr "pCylinderShape5.wm" "polySplitRing27.mp";
connectAttr "polySplitRing27.out" "polySplitRing28.ip";
connectAttr "pCylinderShape5.wm" "polySplitRing28.mp";
connectAttr "polySplitRing13.out" "polySplitRing29.ip";
connectAttr "pCylinderShape2.wm" "polySplitRing29.mp";
connectAttr "polySplitRing29.out" "polySplitRing30.ip";
connectAttr "pCylinderShape2.wm" "polySplitRing30.mp";
connectAttr "polySplitRing30.out" "polySplitRing31.ip";
connectAttr "pCylinderShape2.wm" "polySplitRing31.mp";
connectAttr "polySplitRing31.out" "polySplitRing32.ip";
connectAttr "pCylinderShape2.wm" "polySplitRing32.mp";
connectAttr "polySplitRing32.out" "polySplitRing33.ip";
connectAttr "pCylinderShape2.wm" "polySplitRing33.mp";
connectAttr "polySplitRing33.out" "polySplitRing34.ip";
connectAttr "pCylinderShape2.wm" "polySplitRing34.mp";
connectAttr "polySplitRing34.out" "polySplitRing35.ip";
connectAttr "pCylinderShape2.wm" "polySplitRing35.mp";
connectAttr "polySplitRing35.out" "polySplitRing36.ip";
connectAttr "pCylinderShape2.wm" "polySplitRing36.mp";
connectAttr "polySplitRing36.out" "polySplitRing37.ip";
connectAttr "pCylinderShape2.wm" "polySplitRing37.mp";
connectAttr "polySplitRing37.out" "polySplitRing38.ip";
connectAttr "pCylinderShape2.wm" "polySplitRing38.mp";
connectAttr "polySplitRing38.out" "polySplitRing39.ip";
connectAttr "pCylinderShape2.wm" "polySplitRing39.mp";
connectAttr "polySplitRing12.out" "polySplitRing40.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing40.mp";
connectAttr "polySplitRing40.out" "polySplitRing41.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing41.mp";
connectAttr "polySplitRing41.out" "polySplitRing42.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing42.mp";
connectAttr "polySplitRing42.out" "polySplitRing43.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing43.mp";
connectAttr "polySplitRing43.out" "polySplitRing44.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing44.mp";
connectAttr "polySplitRing44.out" "polySplitRing45.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing45.mp";
connectAttr "polySplitRing45.out" "polySplitRing46.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing46.mp";
connectAttr "polySplitRing46.out" "polySplitRing47.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing47.mp";
connectAttr "polySplitRing47.out" "polySplitRing48.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing48.mp";
connectAttr "polySplitRing48.out" "polySplitRing49.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing49.mp";
connectAttr "polySplitRing49.out" "polySplitRing50.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing50.mp";
connectAttr "polySurfaceShape9.o" "polySplitRing51.ip";
connectAttr "pCubeShape26.wm" "polySplitRing51.mp";
connectAttr "polySplitRing51.out" "polySplitRing52.ip";
connectAttr "pCubeShape26.wm" "polySplitRing52.mp";
connectAttr "polySplitRing52.out" "polySplitRing53.ip";
connectAttr "pCubeShape26.wm" "polySplitRing53.mp";
connectAttr "polySplitRing53.out" "polySplitRing54.ip";
connectAttr "pCubeShape26.wm" "polySplitRing54.mp";
connectAttr "checker1.oc" "lambert5.c";
connectAttr "lambert5.oc" "lambert5SG.ss";
connectAttr "coverrock4Shape.iog" "lambert5SG.dsm" -na;
connectAttr "enterShape.iog" "lambert5SG.dsm" -na;
connectAttr "coverrock3Shape.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape4.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape13.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape2.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape10.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape11.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape12.iog" "lambert5SG.dsm" -na;
connectAttr "coverrock5Shape.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape5.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape16.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape6.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape15.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape18.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape19.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape20.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape21.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape22.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape8.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape23.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape25.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape26.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape27.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape30.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape31.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape32.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape24.iog" "lambert5SG.dsm" -na;
connectAttr "pCylinderShape4.iog" "lambert5SG.dsm" -na;
connectAttr "pCylinderShape3.iog" "lambert5SG.dsm" -na;
connectAttr "pCylinderShape5.iog" "lambert5SG.dsm" -na;
connectAttr "pCylinderShape2.iog" "lambert5SG.dsm" -na;
connectAttr "pCylinderShape1.iog" "lambert5SG.dsm" -na;
connectAttr "pConeShape4.iog" "lambert5SG.dsm" -na;
connectAttr "pConeShape3.iog" "lambert5SG.dsm" -na;
connectAttr "pConeShape1.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape17.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape14.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape3.iog" "lambert5SG.dsm" -na;
connectAttr "lambert5SG.msg" "materialInfo17.sg";
connectAttr "lambert5.msg" "materialInfo17.m";
connectAttr "checker1.msg" "materialInfo17.t" -na;
connectAttr "place2dTexture26.o" "checker1.uv";
connectAttr "place2dTexture26.ofs" "checker1.fs";
connectAttr "polySplitRing10.out" "polyPlanarProj1.ip";
connectAttr "pCubeShape24.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyPlanarProj2.ip";
connectAttr "pCubeShape24.wm" "polyPlanarProj2.mp";
connectAttr "polyPlanarProj2.out" "polyPlanarProj3.ip";
connectAttr "pCubeShape24.wm" "polyPlanarProj3.mp";
connectAttr "polyPlanarProj3.out" "polyPlanarProj4.ip";
connectAttr "pCubeShape24.wm" "polyPlanarProj4.mp";
connectAttr "polyPlanarProj4.out" "polyPlanarProj5.ip";
connectAttr "pCubeShape24.wm" "polyPlanarProj5.mp";
connectAttr "polyPlanarProj5.out" "polyPlanarProj6.ip";
connectAttr "pCubeShape24.wm" "polyPlanarProj6.mp";
connectAttr "polyPlanarProj6.out" "polyPlanarProj7.ip";
connectAttr "pCubeShape24.wm" "polyPlanarProj7.mp";
connectAttr "polySurfaceShape10.o" "polyPlanarProj8.ip";
connectAttr "pCubeShape27.wm" "polyPlanarProj8.mp";
connectAttr "polyPlanarProj8.out" "polyPlanarProj9.ip";
connectAttr "pCubeShape27.wm" "polyPlanarProj9.mp";
connectAttr "polyPlanarProj9.out" "polyPlanarProj10.ip";
connectAttr "pCubeShape27.wm" "polyPlanarProj10.mp";
connectAttr "polyPlanarProj10.out" "polyPlanarProj11.ip";
connectAttr "pCubeShape27.wm" "polyPlanarProj11.mp";
connectAttr "polySplitRing54.out" "polyPlanarProj12.ip";
connectAttr "pCubeShape26.wm" "polyPlanarProj12.mp";
connectAttr "polyPlanarProj12.out" "polyPlanarProj13.ip";
connectAttr "pCubeShape26.wm" "polyPlanarProj13.mp";
connectAttr "polyPlanarProj13.out" "polyPlanarProj14.ip";
connectAttr "pCubeShape26.wm" "polyPlanarProj14.mp";
connectAttr "polyPlanarProj14.out" "polyPlanarProj15.ip";
connectAttr "pCubeShape26.wm" "polyPlanarProj15.mp";
connectAttr "polySurfaceShape11.o" "polyPlanarProj16.ip";
connectAttr "pCubeShape23.wm" "polyPlanarProj16.mp";
connectAttr "polyPlanarProj16.out" "polyPlanarProj17.ip";
connectAttr "pCubeShape23.wm" "polyPlanarProj17.mp";
connectAttr "polyPlanarProj17.out" "polyPlanarProj18.ip";
connectAttr "pCubeShape23.wm" "polyPlanarProj18.mp";
connectAttr "polyPlanarProj18.out" "polyPlanarProj19.ip";
connectAttr "pCubeShape23.wm" "polyPlanarProj19.mp";
connectAttr "polyPlanarProj19.out" "polyPlanarProj20.ip";
connectAttr "pCubeShape23.wm" "polyPlanarProj20.mp";
connectAttr "polySurfaceShape12.o" "polyPlanarProj21.ip";
connectAttr "pCubeShape25.wm" "polyPlanarProj21.mp";
connectAttr "polyPlanarProj21.out" "polyPlanarProj22.ip";
connectAttr "pCubeShape25.wm" "polyPlanarProj22.mp";
connectAttr "polyPlanarProj22.out" "polyPlanarProj23.ip";
connectAttr "pCubeShape25.wm" "polyPlanarProj23.mp";
connectAttr "polyPlanarProj23.out" "polyPlanarProj24.ip";
connectAttr "pCubeShape25.wm" "polyPlanarProj24.mp";
connectAttr "polySurfaceShape13.o" "polyPlanarProj25.ip";
connectAttr "pCubeShape22.wm" "polyPlanarProj25.mp";
connectAttr "polySurfaceShape14.o" "polyPlanarProj26.ip";
connectAttr "pCubeShape8.wm" "polyPlanarProj26.mp";
connectAttr "polySplitRing17.out" "polyPlanarProj27.ip";
connectAttr "pCubeShape21.wm" "polyPlanarProj27.mp";
connectAttr "polySurfaceShape15.o" "polyPlanarProj28.ip";
connectAttr "pCubeShape20.wm" "polyPlanarProj28.mp";
connectAttr "polySurfaceShape16.o" "polyPlanarProj29.ip";
connectAttr "pCubeShape19.wm" "polyPlanarProj29.mp";
connectAttr "polySurfaceShape17.o" "polyPlanarProj30.ip";
connectAttr "pCubeShape18.wm" "polyPlanarProj30.mp";
connectAttr "polySurfaceShape18.o" "polyPlanarProj31.ip";
connectAttr "pCubeShape16.wm" "polyPlanarProj31.mp";
connectAttr "polySurfaceShape19.o" "polyPlanarProj32.ip";
connectAttr "pCubeShape15.wm" "polyPlanarProj32.mp";
connectAttr "polySurfaceShape20.o" "polyPlanarProj33.ip";
connectAttr "pCubeShape6.wm" "polyPlanarProj33.mp";
connectAttr "polySurfaceShape21.o" "polyPlanarProj34.ip";
connectAttr "pCubeShape12.wm" "polyPlanarProj34.mp";
connectAttr "polySplitRing5.out" "polyPlanarProj35.ip";
connectAttr "pCubeShape11.wm" "polyPlanarProj35.mp";
connectAttr "polySurfaceShape22.o" "polyPlanarProj36.ip";
connectAttr "pCubeShape10.wm" "polyPlanarProj36.mp";
connectAttr "polySurfaceShape23.o" "polyPlanarProj37.ip";
connectAttr "pCubeShape13.wm" "polyPlanarProj37.mp";
connectAttr "polySurfaceShape24.o" "polyPlanarProj38.ip";
connectAttr "pCubeShape4.wm" "polyPlanarProj38.mp";
connectAttr "polySplitRing6.out" "polyPlanarProj39.ip";
connectAttr "pCubeShape2.wm" "polyPlanarProj39.mp";
connectAttr "polyPlanarProj39.out" "polyPlanarProj40.ip";
connectAttr "pCubeShape2.wm" "polyPlanarProj40.mp";
connectAttr "polyPlanarProj40.out" "polyPlanarProj41.ip";
connectAttr "pCubeShape2.wm" "polyPlanarProj41.mp";
connectAttr "polyPlanarProj41.out" "polyPlanarProj42.ip";
connectAttr "pCubeShape2.wm" "polyPlanarProj42.mp";
connectAttr "polyPlanarProj42.out" "polyPlanarProj43.ip";
connectAttr "pCubeShape2.wm" "polyPlanarProj43.mp";
connectAttr "polyPlanarProj43.out" "polyPlanarProj44.ip";
connectAttr "pCubeShape2.wm" "polyPlanarProj44.mp";
connectAttr "polyPlanarProj44.out" "polyPlanarProj45.ip";
connectAttr "pCubeShape2.wm" "polyPlanarProj45.mp";
connectAttr "polyPlanarProj45.out" "polyPlanarProj46.ip";
connectAttr "pCubeShape2.wm" "polyPlanarProj46.mp";
connectAttr "polySurfaceShape25.o" "polyPlanarProj47.ip";
connectAttr "enterShape.wm" "polyPlanarProj47.mp";
connectAttr "polyPlanarProj47.out" "polyPlanarProj48.ip";
connectAttr "enterShape.wm" "polyPlanarProj48.mp";
connectAttr "polyPlanarProj48.out" "polyPlanarProj49.ip";
connectAttr "enterShape.wm" "polyPlanarProj49.mp";
connectAttr "polyPlanarProj49.out" "polyPlanarProj50.ip";
connectAttr "enterShape.wm" "polyPlanarProj50.mp";
connectAttr "polyPlanarProj50.out" "polyPlanarProj51.ip";
connectAttr "enterShape.wm" "polyPlanarProj51.mp";
connectAttr "polyPlanarProj38.out" "polyPlanarProj52.ip";
connectAttr "pCubeShape4.wm" "polyPlanarProj52.mp";
connectAttr "polyPlanarProj52.out" "polyPlanarProj53.ip";
connectAttr "pCubeShape4.wm" "polyPlanarProj53.mp";
connectAttr "polyPlanarProj53.out" "polyPlanarProj54.ip";
connectAttr "pCubeShape4.wm" "polyPlanarProj54.mp";
connectAttr "polyPlanarProj54.out" "polyPlanarProj55.ip";
connectAttr "pCubeShape4.wm" "polyPlanarProj55.mp";
connectAttr "polyPlanarProj37.out" "polyPlanarProj56.ip";
connectAttr "pCubeShape13.wm" "polyPlanarProj56.mp";
connectAttr "polyPlanarProj56.out" "polyPlanarProj57.ip";
connectAttr "pCubeShape13.wm" "polyPlanarProj57.mp";
connectAttr "polyPlanarProj57.out" "polyPlanarProj58.ip";
connectAttr "pCubeShape13.wm" "polyPlanarProj58.mp";
connectAttr "polyPlanarProj36.out" "polyPlanarProj59.ip";
connectAttr "pCubeShape10.wm" "polyPlanarProj59.mp";
connectAttr "polyPlanarProj59.out" "polyPlanarProj60.ip";
connectAttr "pCubeShape10.wm" "polyPlanarProj60.mp";
connectAttr "polyPlanarProj60.out" "polyPlanarProj61.ip";
connectAttr "pCubeShape10.wm" "polyPlanarProj61.mp";
connectAttr "polyPlanarProj61.out" "polyPlanarProj62.ip";
connectAttr "pCubeShape10.wm" "polyPlanarProj62.mp";
connectAttr "polyPlanarProj35.out" "polyPlanarProj63.ip";
connectAttr "pCubeShape11.wm" "polyPlanarProj63.mp";
connectAttr "polyPlanarProj63.out" "polyPlanarProj64.ip";
connectAttr "pCubeShape11.wm" "polyPlanarProj64.mp";
connectAttr "polyPlanarProj64.out" "polyPlanarProj65.ip";
connectAttr "pCubeShape11.wm" "polyPlanarProj65.mp";
connectAttr "polySplitRing50.out" "polyCylProj1.ip";
connectAttr "pCylinderShape1.wm" "polyCylProj1.mp";
connectAttr "polyCylProj1.out" "polyPlanarProj66.ip";
connectAttr "pCylinderShape1.wm" "polyPlanarProj66.mp";
connectAttr "polyPlanarProj66.out" "polyPlanarProj67.ip";
connectAttr "pCylinderShape1.wm" "polyPlanarProj67.mp";
connectAttr "polyTweak1.out" "polyCylProj2.ip";
connectAttr "pCylinderShape5.wm" "polyCylProj2.mp";
connectAttr "polySplitRing28.out" "polyTweak1.ip";
connectAttr "polySplitRing39.out" "polyCylProj3.ip";
connectAttr "pCylinderShape2.wm" "polyCylProj3.mp";
connectAttr "polyCylProj2.out" "polyPlanarProj68.ip";
connectAttr "pCylinderShape5.wm" "polyPlanarProj68.mp";
connectAttr "polyCylProj3.out" "polyPlanarProj69.ip";
connectAttr "pCylinderShape2.wm" "polyPlanarProj69.mp";
connectAttr "polyPlanarProj27.out" "polyPlanarProj70.ip";
connectAttr "pCubeShape21.wm" "polyPlanarProj70.mp";
connectAttr "polyPlanarProj70.out" "polyPlanarProj71.ip";
connectAttr "pCubeShape21.wm" "polyPlanarProj71.mp";
connectAttr "polyPlanarProj71.out" "polyPlanarProj72.ip";
connectAttr "pCubeShape21.wm" "polyPlanarProj72.mp";
connectAttr "polyPlanarProj72.out" "polyPlanarProj73.ip";
connectAttr "pCubeShape21.wm" "polyPlanarProj73.mp";
connectAttr "polyPlanarProj34.out" "polyPlanarProj74.ip";
connectAttr "pCubeShape12.wm" "polyPlanarProj74.mp";
connectAttr "polyPlanarProj74.out" "polyPlanarProj75.ip";
connectAttr "pCubeShape12.wm" "polyPlanarProj75.mp";
connectAttr "polyPlanarProj75.out" "polyPlanarProj76.ip";
connectAttr "pCubeShape12.wm" "polyPlanarProj76.mp";
connectAttr "polyPlanarProj32.out" "polyPlanarProj77.ip";
connectAttr "pCubeShape15.wm" "polyPlanarProj77.mp";
connectAttr "polyPlanarProj77.out" "polyPlanarProj78.ip";
connectAttr "pCubeShape15.wm" "polyPlanarProj78.mp";
connectAttr "polyPlanarProj33.out" "polyPlanarProj79.ip";
connectAttr "pCubeShape6.wm" "polyPlanarProj79.mp";
connectAttr "polyPlanarProj79.out" "polyPlanarProj80.ip";
connectAttr "pCubeShape6.wm" "polyPlanarProj80.mp";
connectAttr "polyPlanarProj80.out" "polyPlanarProj81.ip";
connectAttr "pCubeShape6.wm" "polyPlanarProj81.mp";
connectAttr "polyPlanarProj46.out" "polyPlanarProj82.ip";
connectAttr "pCubeShape2.wm" "polyPlanarProj82.mp";
connectAttr "polySplitRing11.out" "polyCylProj4.ip";
connectAttr "pCylinderShape3.wm" "polyCylProj4.mp";
connectAttr "polyCylProj4.out" "polyPlanarProj83.ip";
connectAttr "pCylinderShape3.wm" "polyPlanarProj83.mp";
connectAttr "polySurfaceShape26.o" "polyPlanarProj84.ip";
connectAttr "pCubeShape5.wm" "polyPlanarProj84.mp";
connectAttr "polyPlanarProj84.out" "polyPlanarProj85.ip";
connectAttr "pCubeShape5.wm" "polyPlanarProj85.mp";
connectAttr "polyPlanarProj85.out" "polyPlanarProj86.ip";
connectAttr "pCubeShape5.wm" "polyPlanarProj86.mp";
connectAttr "polyPlanarProj86.out" "polyPlanarProj87.ip";
connectAttr "pCubeShape5.wm" "polyPlanarProj87.mp";
connectAttr "polyPlanarProj87.out" "polyPlanarProj88.ip";
connectAttr "pCubeShape5.wm" "polyPlanarProj88.mp";
connectAttr "polyPlanarProj31.out" "polyPlanarProj89.ip";
connectAttr "pCubeShape16.wm" "polyPlanarProj89.mp";
connectAttr "polyPlanarProj89.out" "polyPlanarProj90.ip";
connectAttr "pCubeShape16.wm" "polyPlanarProj90.mp";
connectAttr "polyPlanarProj30.out" "polyPlanarProj91.ip";
connectAttr "pCubeShape18.wm" "polyPlanarProj91.mp";
connectAttr "polyPlanarProj91.out" "polyPlanarProj92.ip";
connectAttr "pCubeShape18.wm" "polyPlanarProj92.mp";
connectAttr "polyPlanarProj90.out" "polyPlanarProj93.ip";
connectAttr "pCubeShape16.wm" "polyPlanarProj93.mp";
connectAttr "polyPlanarProj29.out" "polyPlanarProj94.ip";
connectAttr "pCubeShape19.wm" "polyPlanarProj94.mp";
connectAttr "polyPlanarProj94.out" "polyPlanarProj95.ip";
connectAttr "pCubeShape19.wm" "polyPlanarProj95.mp";
connectAttr "polyPlanarProj95.out" "polyPlanarProj96.ip";
connectAttr "pCubeShape19.wm" "polyPlanarProj96.mp";
connectAttr "polyPlanarProj28.out" "polyPlanarProj97.ip";
connectAttr "pCubeShape20.wm" "polyPlanarProj97.mp";
connectAttr "polyPlanarProj97.out" "polyPlanarProj98.ip";
connectAttr "pCubeShape20.wm" "polyPlanarProj98.mp";
connectAttr "polyPlanarProj98.out" "polyPlanarProj99.ip";
connectAttr "pCubeShape20.wm" "polyPlanarProj99.mp";
connectAttr "polyPlanarProj26.out" "polyPlanarProj100.ip";
connectAttr "pCubeShape8.wm" "polyPlanarProj100.mp";
connectAttr "polyPlanarProj100.out" "polyPlanarProj101.ip";
connectAttr "pCubeShape8.wm" "polyPlanarProj101.mp";
connectAttr "polyPlanarProj25.out" "polyPlanarProj102.ip";
connectAttr "pCubeShape22.wm" "polyPlanarProj102.mp";
connectAttr "polyPlanarProj102.out" "polyPlanarProj103.ip";
connectAttr "pCubeShape22.wm" "polyPlanarProj103.mp";
connectAttr "polyPlanarProj103.out" "polyPlanarProj104.ip";
connectAttr "pCubeShape22.wm" "polyPlanarProj104.mp";
connectAttr "polyPlanarProj104.out" "polyPlanarProj105.ip";
connectAttr "pCubeShape22.wm" "polyPlanarProj105.mp";
connectAttr "polySurfaceShape27.o" "polyPlanarProj106.ip";
connectAttr "pCubeShape3.wm" "polyPlanarProj106.mp";
connectAttr "polySurfaceShape28.o" "polyPlanarProj107.ip";
connectAttr "pCubeShape14.wm" "polyPlanarProj107.mp";
connectAttr "polyPlanarProj106.out" "polyPlanarProj108.ip";
connectAttr "pCubeShape3.wm" "polyPlanarProj108.mp";
connectAttr "polyPlanarProj108.out" "polyPlanarProj109.ip";
connectAttr "pCubeShape3.wm" "polyPlanarProj109.mp";
connectAttr "polyPlanarProj109.out" "polyPlanarProj110.ip";
connectAttr "pCubeShape3.wm" "polyPlanarProj110.mp";
connectAttr "polyPlanarProj110.out" "polyPlanarProj111.ip";
connectAttr "pCubeShape3.wm" "polyPlanarProj111.mp";
connectAttr "polyPlanarProj107.out" "polyPlanarProj112.ip";
connectAttr "pCubeShape14.wm" "polyPlanarProj112.mp";
connectAttr "polyPlanarProj112.out" "polyPlanarProj113.ip";
connectAttr "pCubeShape14.wm" "polyPlanarProj113.mp";
connectAttr "polyPlanarProj113.out" "polyPlanarProj114.ip";
connectAttr "pCubeShape14.wm" "polyPlanarProj114.mp";
connectAttr "polySurfaceShape29.o" "polyPlanarProj115.ip";
connectAttr "coverrock4Shape.wm" "polyPlanarProj115.mp";
connectAttr "polyPlanarProj115.out" "polyPlanarProj116.ip";
connectAttr "coverrock4Shape.wm" "polyPlanarProj116.mp";
connectAttr "polyPlanarProj116.out" "polyPlanarProj117.ip";
connectAttr "coverrock4Shape.wm" "polyPlanarProj117.mp";
connectAttr "polyPlanarProj117.out" "polyPlanarProj118.ip";
connectAttr "coverrock4Shape.wm" "polyPlanarProj118.mp";
connectAttr "polySurfaceShape30.o" "polyPlanarProj119.ip";
connectAttr "pConeShape3.wm" "polyPlanarProj119.mp";
connectAttr "polyPlanarProj119.out" "polyPlanarProj120.ip";
connectAttr "pConeShape3.wm" "polyPlanarProj120.mp";
connectAttr "polyPlanarProj120.out" "polyPlanarProj121.ip";
connectAttr "pConeShape3.wm" "polyPlanarProj121.mp";
connectAttr "polyPlanarProj121.out" "polyPlanarProj122.ip";
connectAttr "pConeShape3.wm" "polyPlanarProj122.mp";
connectAttr "polyPlanarProj122.out" "polyPlanarProj123.ip";
connectAttr "pConeShape3.wm" "polyPlanarProj123.mp";
connectAttr "polySurfaceShape31.o" "polyPlanarProj124.ip";
connectAttr "pConeShape1.wm" "polyPlanarProj124.mp";
connectAttr "polySurfaceShape32.o" "polyPlanarProj125.ip";
connectAttr "pConeShape4.wm" "polyPlanarProj125.mp";
connectAttr "polyPlanarProj125.out" "polyPlanarProj126.ip";
connectAttr "pConeShape4.wm" "polyPlanarProj126.mp";
connectAttr "polyPlanarProj126.out" "polyPlanarProj127.ip";
connectAttr "pConeShape4.wm" "polyPlanarProj127.mp";
connectAttr "polyPlanarProj127.out" "polyPlanarProj128.ip";
connectAttr "pConeShape4.wm" "polyPlanarProj128.mp";
connectAttr "polyPlanarProj128.out" "polyPlanarProj129.ip";
connectAttr "pConeShape4.wm" "polyPlanarProj129.mp";
connectAttr "polyPlanarProj124.out" "polyPlanarProj130.ip";
connectAttr "pConeShape1.wm" "polyPlanarProj130.mp";
connectAttr "polyPlanarProj130.out" "polyPlanarProj131.ip";
connectAttr "pConeShape1.wm" "polyPlanarProj131.mp";
connectAttr "polyPlanarProj131.out" "polyPlanarProj132.ip";
connectAttr "pConeShape1.wm" "polyPlanarProj132.mp";
connectAttr "polyPlanarProj132.out" "polyPlanarProj133.ip";
connectAttr "pConeShape1.wm" "polyPlanarProj133.mp";
connectAttr "polySurfaceShape33.o" "polyPlanarProj134.ip";
connectAttr "pCylinderShape4.wm" "polyPlanarProj134.mp";
connectAttr "polyPlanarProj134.out" "polyCylProj5.ip";
connectAttr "pCylinderShape4.wm" "polyCylProj5.mp";
connectAttr "zen_scarfSG.pa" ":renderPartition.st" -na;
connectAttr "zen_beltSG.pa" ":renderPartition.st" -na;
connectAttr "zen_bagSG.pa" ":renderPartition.st" -na;
connectAttr "zen_leftEyeSG.pa" ":renderPartition.st" -na;
connectAttr "zen_LegsSG.pa" ":renderPartition.st" -na;
connectAttr "zen_skirtSG.pa" ":renderPartition.st" -na;
connectAttr "zen_hairSG.pa" ":renderPartition.st" -na;
connectAttr "zen_headHandsSG.pa" ":renderPartition.st" -na;
connectAttr "shoes:polySurface1SG.pa" ":renderPartition.st" -na;
connectAttr "sleeves:polySurface1SG.pa" ":renderPartition.st" -na;
connectAttr "turtleneck:polySurface1SG.pa" ":renderPartition.st" -na;
connectAttr "overshirt:polySurface1SG.pa" ":renderPartition.st" -na;
connectAttr "pantsLegs:polySurface1SG.pa" ":renderPartition.st" -na;
connectAttr "worm_v2:pCylinder1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "scarf_txt.msg" ":defaultShaderList1.s" -na;
connectAttr "belt_txt.msg" ":defaultShaderList1.s" -na;
connectAttr "bag_txt.msg" ":defaultShaderList1.s" -na;
connectAttr "eyeMouth_txt.msg" ":defaultShaderList1.s" -na;
connectAttr "legs_txt.msg" ":defaultShaderList1.s" -na;
connectAttr "skirt_txt.msg" ":defaultShaderList1.s" -na;
connectAttr "hair_txt.msg" ":defaultShaderList1.s" -na;
connectAttr "headHand_txt.msg" ":defaultShaderList1.s" -na;
connectAttr "shoes_txt.msg" ":defaultShaderList1.s" -na;
connectAttr "sleeves_txt.msg" ":defaultShaderList1.s" -na;
connectAttr "turtleneck_txt.msg" ":defaultShaderList1.s" -na;
connectAttr "overshirt_txt.msg" ":defaultShaderList1.s" -na;
connectAttr "pantsLegs_txt.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "lava.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert5.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture11.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture12.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture13.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture14.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture15.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture16.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture17.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture18.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture19.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture20.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture21.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture22.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d11.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture23.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture24.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d12.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture25.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture26.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file17.msg" ":defaultTextureList1.tx" -na;
connectAttr "file28.msg" ":defaultTextureList1.tx" -na;
connectAttr "file10.msg" ":defaultTextureList1.tx" -na;
connectAttr "file22.msg" ":defaultTextureList1.tx" -na;
connectAttr "file9.msg" ":defaultTextureList1.tx" -na;
connectAttr "file21.msg" ":defaultTextureList1.tx" -na;
connectAttr "file19.msg" ":defaultTextureList1.tx" -na;
connectAttr "file20.msg" ":defaultTextureList1.tx" -na;
connectAttr "file25.msg" ":defaultTextureList1.tx" -na;
connectAttr "file14.msg" ":defaultTextureList1.tx" -na;
connectAttr "file30.msg" ":defaultTextureList1.tx" -na;
connectAttr "file16.msg" ":defaultTextureList1.tx" -na;
connectAttr "file23.msg" ":defaultTextureList1.tx" -na;
connectAttr "file15.msg" ":defaultTextureList1.tx" -na;
connectAttr "file24.msg" ":defaultTextureList1.tx" -na;
connectAttr "file12.msg" ":defaultTextureList1.tx" -na;
connectAttr "file29.msg" ":defaultTextureList1.tx" -na;
connectAttr "file13.msg" ":defaultTextureList1.tx" -na;
connectAttr "file31.msg" ":defaultTextureList1.tx" -na;
connectAttr "file18.msg" ":defaultTextureList1.tx" -na;
connectAttr "file32.msg" ":defaultTextureList1.tx" -na;
connectAttr "file8.msg" ":defaultTextureList1.tx" -na;
connectAttr "file26.msg" ":defaultTextureList1.tx" -na;
connectAttr "file11.msg" ":defaultTextureList1.tx" -na;
connectAttr "file27.msg" ":defaultTextureList1.tx" -na;
connectAttr "checker1.msg" ":defaultTextureList1.tx" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"file17\" \"fileTextureName\" \"/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/diffuse/scarf_diffuse.tga\" 2237360602 \"\" \"sourceImages\"\n1\n\"file28\" \"fileTextureName\" \"/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/normals/scarf_normal.tga\" 3822583140 \"\" \"sourceImages\"\n2\n\"file10\" \"fileTextureName\" \"/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/diffuse/belt_diffuse.tga\" 778614099 \"\" \"sourceImages\"\n3\n\"file22\" \"fileTextureName\" \"/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/normals/belt_normal.tga\" 4101724156 \"\" \"sourceImages\"\n4\n\"file9\" \"fileTextureName\" \"/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/diffuse/bag_diffuse.tga\" 2942694108 \"\" \"sourceImages\"\n5\n\"file21\" \"fileTextureName\" \"/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/normals/bag_normal.tga\" 93648255 \"\" \"sourceImages\"\n6\n\"file19\" \"fileTextureName\" \"/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/diffuse/eyesTeeth_diffuse.png\" 2142466552 \"\" \"sourceImages\"\n7\n\"file20\" \"fileTextureName\" \"/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/diffuse/legs_diffuse.tga\" 1017216589 \"\" \"sourceImages\"\n8\n\"file25\" \"fileTextureName\" \"/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/normals/legs_normal.tga\" 2321095077 \"\" \"sourceImages\"\n9\n\"file14\" \"fileTextureName\" \"/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/diffuse/skirt_diffuse.tga\" 3986303363 \"\" \"sourceImages\"\n10\n\"file30\" \"fileTextureName\" \"/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/normals/skirt_normal.tga\" 4280573110 \"\" \"sourceImages\"\n11\n\"file16\" \"fileTextureName\" \"/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/diffuse/hair_diffuse.tga\" 1960958892 \"\" \"sourceImages\"\n12\n\"file23\" \"fileTextureName\" \"/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/normals/hair_normal.tga\" 2026550018 \"\" \"sourceImages\"\n13\n\"file15\" \"fileTextureName\" \"/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/diffuse/headHand_diffuse.tga\" 160531580 \"\" \"sourceImages\"\n14\n\"file24\" \"fileTextureName\" \"/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/normals/headHands_normal.tga\" 804541654 \"\" \"sourceImages\"\n15\n\"file12\" \"fileTextureName\" \"/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/diffuse/shoes_diffuse.tga\" 2560940407 \"\" \"sourceImages\"\n16\n\"file29\" \"fileTextureName\" \"/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/normals/shoes_normal.tga\" 2876716148 \"\" \"sourceImages\"\n17\n\"file13\" \"fileTextureName\" \"/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/diffuse/sleeves_diffuse.tga\" 4058862695 \"\" \"sourceImages\"\n18\n\"file31\" \"fileTextureName\" \"/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/normals/sleeves_normal.tga\" 2862408866 \"\" \"sourceImages\"\n19\n\"file18\" \"fileTextureName\" \"/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/diffuse/turtleneck_diffuse.tga\" 3704035932 \"\" \"sourceImages\"\n20\n\"file32\" \"fileTextureName\" \"/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/normals/turtleneck_normal.tga\" 2042504581 \"\" \"sourceImages\"\n21\n\"file8\" \"fileTextureName\" \"/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/diffuse/overshirt_diffuse.tga\" 2249324552 \"\" \"sourceImages\"\n22\n\"file26\" \"fileTextureName\" \"/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/normals/overshirt_normal.tga\" 493876716 \"\" \"sourceImages\"\n23\n\"file11\" \"fileTextureName\" \"/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/diffuse/pantsLegs_diffuse.tga\" 1030784402 \"\" \"sourceImages\"\n24\n\"file27\" \"fileTextureName\" \"/Users/jzb25/Desktop/Zenobia_v14_retexture/textures/normals/pantsLegs_normal.tga\" 2002087001 \"\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of env_level4_finalBossV4.ma
