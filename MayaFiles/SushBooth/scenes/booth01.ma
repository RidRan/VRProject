//Maya ASCII 2022 scene
//Name: booth01.ma
//Last modified: Mon, Mar 21, 2022 12:38:15 AM
//Codeset: UTF-8
requires maya "2022";
requires "mtoa" "4.2.4";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202108111415-612a77abf4";
fileInfo "osv" "Mac OS X 10.16";
fileInfo "UUID" "C86D2E33-574D-6688-5EBA-DCB0BC95F273";
createNode transform -s -n "persp";
	rename -uid "DC52F591-2848-F5D9-0EE8-289D64A84E38";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 12.304286765468847 5.9297390475634826 2.299989227135621 ;
	setAttr ".r" -type "double3" -18.338352729212861 800.99999999870784 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "45536986-724D-5254-6613-EB8060376894";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 16.135125393613841;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -2.8228559079937146 0.85317821362659974 -0.095914799260886863 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "F0D20DBB-1E46-7E39-DC08-11BEE4C6B6C0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.3967668068849366 1000.1033820919512 0.17765736579917205 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "5971B64C-7544-A101-9BDC-8F87466BCEA5";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 999.06296596667471;
	setAttr ".ow" 1.986073774763006;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 2.3967668068849366 1.0404161252761877 0.1776573657989502 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "0F0FA5E8-8F46-F77B-9AB2-29A4F6C68388";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "9023A655-6940-5DB3-5E10-F69BB7C73976";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "C8515439-B349-FCBF-5713-C1B91E77DA35";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "97AEE655-B343-CE3C-5707-8183B9F7E825";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "table";
	rename -uid "DB3FE17B-E645-54FB-6C52-6C92E6E0CB2D";
	setAttr ".t" -type "double3" 0 0.85317820310592651 0 ;
	setAttr ".s" -type "double3" 1 1.706356349457151 5.9000214655013741 ;
	setAttr ".rp" -type "double3" 0.5 -0.85317820310592651 2.9500107765197754 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001663037774 0.50000000741846251 ;
	setAttr ".spt" -type "double3" 0 -0.35317818647554877 2.4500107691013127 ;
createNode mesh -n "tableShape" -p "table";
	rename -uid "C9A9E36B-BA4A-65E0-8ED4-A9A857E2D60A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "chair";
	rename -uid "A7DA56D7-9C4C-4993-8A7F-86979B38571A";
	setAttr ".t" -type "double3" 1.6421040255222485 0.85317820689926505 2.0776781171268279 ;
	setAttr ".s" -type "double3" 0.68624840494819184 0.34312420247409592 0.68624840494819184 ;
	setAttr ".rp" -type "double3" -0.17072596673601081 -0.85317820689926505 0.25 ;
	setAttr ".sp" -type "double3" -0.34145193347202163 -3.4127128275970602 0.5 ;
	setAttr ".spt" -type "double3" 0.17072596673601081 2.5595346206977951 -0.25 ;
createNode mesh -n "chairShape" -p "chair";
	rename -uid "16485EED-D340-9BA6-C963-789460A759A0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999997019767761 0.37499998509883881 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 41 ".pt";
	setAttr ".pt[4]" -type "float3" -0.060706083 0.086496986 -0.058586173 ;
	setAttr ".pt[5]" -type "float3" -0.060706083 0.086496986 0.058586173 ;
	setAttr ".pt[10]" -type "float3" 0.060706083 0.086496986 -0.058586173 ;
	setAttr ".pt[11]" -type "float3" 0.060706083 0.086496986 0.058586173 ;
	setAttr ".pt[28]" -type "float3" 0 0.013585761 0 ;
	setAttr ".pt[35]" -type "float3" 0 0.013585761 0 ;
	setAttr ".pt[36]" -type "float3" 0 0.045754418 0 ;
	setAttr ".pt[37]" -type "float3" 0 0.045754232 0 ;
	setAttr ".pt[38]" -type "float3" 0 0.013585761 0 ;
	setAttr ".pt[42]" -type "float3" 0 0.013585761 0 ;
	setAttr ".pt[43]" -type "float3" 0 0.045754418 0 ;
	setAttr ".pt[44]" -type "float3" 0 0.013585761 0 ;
	setAttr ".pt[50]" -type "float3" 0 0.045754232 0 ;
	setAttr ".pt[51]" -type "float3" 0 0.013585761 0 ;
	setAttr ".pt[62]" -type "float3" 0 0.013585761 0 ;
	setAttr ".pt[69]" -type "float3" 0 0.013585761 0 ;
	setAttr ".pt[70]" -type "float3" 0 0.045754418 0 ;
	setAttr ".pt[73]" -type "float3" 0 0.013585761 0 ;
	setAttr ".pt[74]" -type "float3" 0 0.045754232 0 ;
	setAttr ".pt[75]" -type "float3" 0 0.045754232 0 ;
	setAttr ".pt[76]" -type "float3" 0 0.013585761 0 ;
	setAttr ".pt[84]" -type "float3" 0 0.013585761 0 ;
	setAttr ".pt[85]" -type "float3" 0 0.045754418 0 ;
	setAttr ".pt[86]" -type "float3" 0 0.013585761 0 ;
	setAttr ".pt[98]" -type "float3" 0 0.013585761 0 ;
	setAttr ".pt[99]" -type "float3" 0 0.045754232 0 ;
	setAttr ".pt[102]" -type "float3" 0 0.013585761 0 ;
	setAttr ".pt[103]" -type "float3" 0 0.045754232 0 ;
	setAttr ".pt[106]" -type "float3" 0 0.013585761 0 ;
	setAttr ".pt[107]" -type "float3" 0 0.045754232 0 ;
	setAttr ".pt[108]" -type "float3" 0 0.045754232 0 ;
	setAttr ".pt[109]" -type "float3" 0 0.013585761 0 ;
	setAttr ".pt[128]" -type "float3" 0 0.013585761 0 ;
	setAttr ".pt[132]" -type "float3" 0 0.013585761 0 ;
	setAttr ".pt[134]" -type "float3" 0 0.013585761 0 ;
	setAttr ".pt[138]" -type "float3" 0 0.013585761 0 ;
createNode transform -n "wallL";
	rename -uid "1EBE8068-F94D-11FE-7936-9383586E1449";
	setAttr ".t" -type "double3" 0 0.5 2.7261285403741922 ;
	setAttr ".s" -type "double3" 5.0360514687497959 4 0.27611765157566909 ;
	setAttr ".rp" -type "double3" 0.5 -0.5 0.22388223614558336 ;
	setAttr ".sp" -type "double3" 0.5 -0.49999999999999978 -0.50000020826840519 ;
	setAttr ".spt" -type "double3" 0 -2.2204460492503131e-16 0.72388244441398852 ;
createNode mesh -n "wallLShape" -p "wallL";
	rename -uid "FBB19F69-B841-78CB-3E47-03A130482CAB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "wallR";
	rename -uid "C700D7C1-434C-452E-41B6-DA9B68D5BA7C";
	setAttr ".t" -type "double3" 0 0.5 -3.4500108143316188 ;
	setAttr ".s" -type "double3" 5.0360514687497959 4 0.27611765157566909 ;
	setAttr ".rp" -type "double3" 0.5 -0.5 0.50000003781184321 ;
	setAttr ".sp" -type "double3" 0.49999999999999989 -0.49999999999999994 0.50000033530637467 ;
	setAttr ".spt" -type "double3" 0 0 -2.9749453150929028e-07 ;
createNode mesh -n "wallRShape" -p "wallR";
	rename -uid "BAFC0B3C-1545-8D97-9C1D-37A46072BB97";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
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
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "wallB";
	rename -uid "DE33DC65-F04A-05FC-2DC1-3BACEDD02D91";
	setAttr ".t" -type "double3" -5.0360512733459473 0.5 -3.4500108143316188 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 5.5060658537461888 4 0.27611765157566909 ;
	setAttr ".rp" -type "double3" 0.5 -0.5 0.50000003781184321 ;
	setAttr ".sp" -type "double3" 0.49999999999999989 -0.49999999999999994 0.50000033530637467 ;
	setAttr ".spt" -type "double3" 0 0 -2.9749453150929028e-07 ;
createNode mesh -n "wallBShape" -p "wallB";
	rename -uid "29A11E27-E14D-52B9-7C76-A2A7EF5A524E";
	setAttr -k off ".v";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.12169734 0 5.5511151e-16 
		0.050147988 0 -2.7755576e-16 -0.12169734 0 5.5511151e-16 0.050147988 0 -2.7755576e-16 
		-0.12169734 0 4.9960036e-16 0.050147988 0 -2.220446e-16 -0.12169734 0 4.9960036e-16 
		0.050147988 0 -2.220446e-16;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
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
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "building_station";
	rename -uid "2D36571B-1041-0419-3AAB-CBA9F0755EE5";
	setAttr ".t" -type "double3" -3.0360511153737058 0.50000001052067322 -2.4473074825665666 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".s" -type "double3" 5.5664388077085327 1 1 ;
	setAttr ".rp" -type "double3" -0.50000020910180454 -0.50000001052067322 0.50000018819544412 ;
	setAttr ".rpt" -type "double3" -0.99999994887043686 0 -1.0000002922987989 ;
	setAttr ".sp" -type "double3" -0.50000008235046534 -0.50000001052067322 0.50000018819544412 ;
	setAttr ".spt" -type "double3" -1.267513392022579e-07 0 0 ;
createNode mesh -n "building_stationShape" -p "building_station";
	rename -uid "5F03DC7F-2440-4C34-7024-FE93D417A615";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[5]" -type "float3" -0.0025441933 0 0.0023276429 ;
	setAttr ".pt[6]" -type "float3" 0.0025441931 0 0.0023276429 ;
	setAttr ".pt[8]" -type "float3" -0.0025441933 0 -0.0023276429 ;
	setAttr ".pt[10]" -type "float3" 0.0025441931 0 -0.0023276429 ;
	setAttr ".dr" 1;
createNode transform -n "building_station1";
	rename -uid "ED9928E8-1647-DD5C-4F80-6990BCD73FD4";
	setAttr ".t" -type "double3" -1.4859094195368634 0.50000001052067322 1.4508632096999232 ;
	setAttr ".s" -type "double3" 2.3594309020110633 1 1 ;
	setAttr ".rp" -type "double3" -0.49999989315543292 1.0435482158358331 -0.50000004937554898 ;
	setAttr ".rpt" -type "double3" -1.0000001442321895 0 0.99999985576781114 ;
	setAttr ".sp" -type "double3" -0.49999997625754655 1.0435482158358331 -0.50000004937554898 ;
	setAttr ".spt" -type "double3" 8.3102113634936359e-08 0 0 ;
createNode mesh -n "building_station1Shape" -p "building_station1";
	rename -uid "639D3583-644E-7079-9C9D-419A01066DC6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt";
	setAttr ".pt[44]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".pt[45]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".pt[46]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".pt[47]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".pt[48]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".pt[49]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".pt[50]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".pt[51]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".pt[52]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".pt[53]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".pt[54]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".pt[55]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".pt[56]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".pt[57]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".pt[58]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".pt[59]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape1" -p "building_station1";
	rename -uid "20BAAC6F-C04A-3BE6-67D2-ECABFCA81C27";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.50366235 0.37749973 0.49375063 0.625 0 0.375 0.24633759 0.37749973
		 0.25624937 0.62250024 0.25624937 0.62250024 0.49375063 0.625 0.50366241 0.375 0.75
		 0.875 0 0.87499994 0.24633759 0.625 0.24633759 0.125 0 0.375 0 0.125 0.24633759;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 2.9802322e-08 1.5435482 0 ;
	setAttr ".pt[1]" -type "float3" 2.9802322e-08 1.5435482 0 ;
	setAttr ".pt[2]" -type "float3" 2.9802322e-08 1.5435482 0 ;
	setAttr ".pt[3]" -type "float3" 2.9802322e-08 1.5435482 0 ;
	setAttr ".pt[5]" -type "float3" -0.0025441933 0 0.0023276429 ;
	setAttr ".pt[6]" -type "float3" 0.0025441931 0 0.0023276429 ;
	setAttr ".pt[8]" -type "float3" -0.0025441933 0 -0.0023276429 ;
	setAttr ".pt[10]" -type "float3" 0.0025441931 0 -0.0023276429 ;
	setAttr -s 12 ".vt[0:11]"  -0.50000006 -0.5 0.5 0.55957735 -0.5 0.5
		 -0.50000006 -0.5 -0.5 0.55957735 -0.5 -0.5 -0.50000006 1.18135893 0.5 -0.48940533 1.20635641 0.47500253
		 0.54898274 1.20635641 0.47500253 0.55957735 1.18135893 0.5 -0.48940533 1.20635641 -0.47500253
		 -0.50000006 1.18135893 -0.5 0.54898274 1.20635641 -0.47500253 0.55957735 1.18135893 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "building_station2";
	rename -uid "1C46C9FF-4F4B-65EF-BC44-EB80BB099D47";
	setAttr ".t" -type "double3" 0.086243654983331197 0.50000001052067322 -1.2579147146124812 ;
	setAttr ".s" -type "double3" 0.7 1 0.7 ;
	setAttr ".rp" -type "double3" -0.49999989315543292 1.0435482158358331 -0.50000004937554898 ;
	setAttr ".rpt" -type "double3" -1.0000001442321895 0 0.99999985576781114 ;
	setAttr ".sp" -type "double3" -0.49999997625754655 1.0435482158358331 -0.50000004937554898 ;
	setAttr ".spt" -type "double3" 8.3102113634936359e-08 0 0 ;
createNode mesh -n "building_station2Shape" -p "building_station2";
	rename -uid "37DB37EB-394B-2038-1FCA-BDB560180DA7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.50366235 0.37749973 0.49375063 0.625 0 0.375 0.24633759 0.37749973
		 0.25624937 0.62250024 0.25624937 0.62250024 0.49375063 0.625 0.50366241 0.375 0.75
		 0.875 0 0.87499994 0.24633759 0.625 0.24633759 0.125 0 0.375 0 0.125 0.24633759 0.54166663
		 0.24633759 0.54083341 0.25624937 0.54083341 0.49375063 0.54166663 0.50366241 0.54166663
		 0.75 0.54166663 0 0.54166663 1 0.45833331 0.24633759 0.45916659 0.25624937 0.45916659
		 0.49375063 0.45833331 0.50366235 0.45833331 0.75 0.45833331 0 0.45833331 1 0.3774997
		 0.41458353 0.375 0.41788742 0.20833334 0.24633759 0.20833334 0 0.375 0.83333337 0.45833331
		 0.83333337 0.54166663 0.83333337 0.625 0.83333337 0.79166669 0 0.625 0.41788748 0.79166663
		 0.24633759 0.62250024 0.41458353 0.54083341 0.41458353 0.45916659 0.41458353 0.3774997
		 0.33541644 0.375 0.33211249 0.29166669 0.24633759 0.29166669 0 0.375 0.91666669 0.45833331
		 0.91666669 0.54166663 0.91666669 0.625 0.91666669 0.70833337 0 0.625 0.33211255 0.70833331
		 0.24633759 0.62250024 0.33541644 0.54083341 0.33541644 0.45916659 0.33541644 0.375
		 0.91666669 0.45833331 0.91666669 0.45833331 1 0.375 1 0.54166663 1 0.54166663 0.91666669
		 0.625 0.91666669 0.625 1 0.375 0.75 0.45833331 0.75 0.45833331 0.83333337 0.375 0.83333337
		 0.625 0.83333337 0.54166663 0.83333337 0.54166663 0.75 0.625 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt";
	setAttr ".pt[44]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".pt[45]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".pt[46]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".pt[47]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".pt[48]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".pt[49]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".pt[50]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".pt[51]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".pt[52]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".pt[53]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".pt[54]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".pt[55]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".pt[56]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".pt[57]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".pt[58]" -type "float3" 0 -1.5435482 0 ;
	setAttr ".pt[59]" -type "float3" 0 -1.5435482 0 ;
	setAttr -s 60 ".vt[0:59]"  -0.5 1.043548226 0.5 0.55957735 1.043548226 0.5
		 -0.5 1.043548226 -0.5 0.55957735 1.043548226 -0.5 -0.50000006 1.18135893 0.5 -0.4919495 1.20635641 0.47733021
		 0.5515269 1.20635641 0.47733021 0.55957735 1.18135893 0.5 -0.4919495 1.20635641 -0.47733021
		 -0.50000006 1.18135893 -0.5 0.5515269 1.20635641 -0.47733021 0.55957735 1.18135893 -0.5
		 0.52232087 1.18135893 0.5 0.51483655 1.20635641 0.47733021 0.51483655 1.20635641 -0.47733021
		 0.52232087 1.18135893 -0.5 0.52232087 1.043548226 -0.5 0.52232087 1.043548226 0.5
		 -0.46274364 1.18135893 0.5 -0.45525926 1.20635641 0.47733021 -0.45525926 1.20635641 -0.47733021
		 -0.46274364 1.18135893 -0.5 -0.46274352 1.043548226 -0.5 -0.46274352 1.043548226 0.5
		 -0.4919495 1.20635641 -0.39863777 -0.50000006 1.18135893 -0.41756964 -0.5 1.043548226 -0.41756964
		 -0.46274352 1.043548226 -0.41756964 0.52232087 1.043548226 -0.41756964 0.55957735 1.043548226 -0.41756964
		 0.55957735 1.18135893 -0.41756964 0.5515269 1.20635641 -0.39863777 0.51483655 1.20635641 -0.39863777
		 -0.45525926 1.20635641 -0.39863777 -0.4919495 1.20635641 0.39863753 -0.50000006 1.18135893 0.4175694
		 -0.5 1.043548226 0.4175694 -0.46274352 1.043548226 0.4175694 0.52232087 1.043548226 0.4175694
		 0.55957735 1.043548226 0.4175694 0.55957735 1.18135893 0.4175694 0.5515269 1.20635641 0.39863753
		 0.51483655 1.20635641 0.39863777 -0.45525926 1.20635641 0.39863777 -0.5 1.043548226 0.4175694
		 -0.46274352 1.043548226 0.4175694 -0.46274352 1.043548226 0.5 -0.5 1.043548226 0.5
		 0.52232087 1.043548226 0.4175694 0.52232087 1.043548226 0.5 0.55957735 1.043548226 0.4175694
		 0.55957735 1.043548226 0.5 -0.5 1.043548226 -0.5 -0.46274352 1.043548226 -0.5 -0.46274352 1.043548226 -0.41756964
		 -0.5 1.043548226 -0.41756964 0.52232087 1.043548226 -0.41756964 0.55957735 1.043548226 -0.41756964
		 0.52232087 1.043548226 -0.5 0.55957735 1.043548226 -0.5;
	setAttr -s 116 ".ed[0:115]"  0 23 0 2 22 0 2 26 0 3 29 0 4 5 0 5 34 0
		 8 9 0 9 25 0 4 18 0 7 6 0 6 13 0 7 40 0 11 10 0 10 31 0 8 20 0 11 15 0 1 7 0 4 0 0
		 11 3 0 2 9 0 12 7 0 13 19 0 12 13 1 14 10 0 13 42 1 15 21 0 14 15 1 16 3 0 15 16 1
		 17 1 0 16 28 0 17 12 1 18 12 0 19 5 0 18 19 1 20 14 0 19 43 1 21 9 0 20 21 1 22 16 0
		 21 22 1 23 17 0 22 27 0 23 18 1 24 8 0 25 35 0 24 25 1 26 36 0 25 26 1 27 37 1 26 27 0
		 28 38 1 27 28 1 29 39 0 28 29 0 30 11 0 29 30 1 31 41 0 30 31 1 32 14 1 31 32 1 33 20 1
		 32 33 1 33 24 1 34 24 0 35 4 0 34 35 1 36 0 0 35 36 1 37 23 0 36 37 0 38 17 0 37 38 1
		 39 1 0 38 39 0 40 30 0 39 40 1 41 6 0 40 41 1 42 32 1 41 42 1 43 33 1 42 43 1 43 34 1
		 36 44 0 37 45 0 44 45 0 23 46 0 45 46 0 0 47 0 47 46 0 44 47 0 38 48 0 17 49 0 48 49 0
		 39 50 0 48 50 0 1 51 0 50 51 0 49 51 0 2 52 0 22 53 0 52 53 0 27 54 0 53 54 0 26 55 0
		 55 54 0 52 55 0 28 56 0 29 57 0 56 57 0 16 58 0 58 56 0 3 59 0 58 59 0 59 57 0;
	setAttr -s 58 -ch 232 ".fc[0:57]" -type "polyFaces" 
		f 4 86 88 -91 -92
		mu 0 4 60 61 62 63
		f 4 4 5 66 65
		mu 0 4 6 7 46 47
		f 4 -5 8 34 33
		mu 0 4 7 6 25 26
		f 4 -10 11 78 77
		mu 0 4 8 14 55 57
		f 4 -7 14 38 37
		mu 0 4 3 4 27 28
		f 4 0 43 -9 17
		mu 0 4 16 30 25 6
		f 4 -34 36 83 -6
		mu 0 4 7 26 59 46
		f 4 -38 40 -2 19
		mu 0 4 3 28 29 11
		f 4 -74 76 -12 -17
		mu 0 4 5 54 56 14
		f 4 67 -18 -66 68
		mu 0 4 49 16 6 48
		f 4 -23 20 9 10
		mu 0 4 19 18 14 8
		f 4 -25 -11 -78 80
		mu 0 4 58 19 8 57
		f 4 -27 23 -13 15
		mu 0 4 21 20 9 10
		f 4 -29 -16 18 -28
		mu 0 4 22 21 10 0
		f 4 -95 96 98 -100
		mu 0 4 64 65 66 67
		f 4 -32 29 16 -21
		mu 0 4 18 23 5 14
		f 4 -35 32 22 21
		mu 0 4 26 25 18 19
		f 4 -37 -22 24 82
		mu 0 4 59 26 19 58
		f 4 -39 35 26 25
		mu 0 4 28 27 20 21
		f 4 -41 -26 28 -40
		mu 0 4 29 28 21 22
		f 4 -70 72 71 -42
		mu 0 4 31 51 52 24
		f 4 -44 41 31 -33
		mu 0 4 25 30 23 18
		f 4 -47 44 6 7
		mu 0 4 33 32 4 3
		f 4 2 -49 -8 -20
		mu 0 4 15 35 34 17
		f 4 102 104 -107 -108
		mu 0 4 68 69 70 71
		f 4 -53 -43 39 30
		mu 0 4 38 37 29 22
		f 4 -111 -113 114 115
		mu 0 4 72 73 74 75
		f 4 -57 -4 -19 -56
		mu 0 4 42 40 12 13
		f 4 -59 55 12 13
		mu 0 4 43 41 10 9
		f 4 -60 -61 -14 -24
		mu 0 4 20 44 43 9
		f 4 -62 -63 59 -36
		mu 0 4 27 45 44 20
		f 4 -64 61 -15 -45
		mu 0 4 32 45 27 4
		f 4 -67 64 46 45
		mu 0 4 47 46 32 33
		f 4 47 -69 -46 48
		mu 0 4 35 49 48 34
		f 4 50 49 -71 -48
		mu 0 4 36 37 51 50
		f 4 -73 -50 52 51
		mu 0 4 52 51 37 38
		f 4 -75 -52 54 53
		mu 0 4 53 52 38 39
		f 4 -77 -54 56 -76
		mu 0 4 56 54 40 42
		f 4 -79 75 58 57
		mu 0 4 57 55 41 43
		f 4 -80 -81 -58 60
		mu 0 4 44 58 57 43
		f 4 -82 -83 79 62
		mu 0 4 45 59 58 44
		f 4 -84 81 63 -65
		mu 0 4 46 59 45 32
		f 4 70 85 -87 -85
		mu 0 4 50 51 61 60
		f 4 69 87 -89 -86
		mu 0 4 51 31 62 61
		f 4 -1 89 90 -88
		mu 0 4 31 1 63 62
		f 4 -68 84 91 -90
		mu 0 4 1 50 60 63
		f 4 -72 92 94 -94
		mu 0 4 24 52 65 64
		f 4 74 95 -97 -93
		mu 0 4 52 53 66 65
		f 4 73 97 -99 -96
		mu 0 4 53 2 67 66
		f 4 -30 93 99 -98
		mu 0 4 2 24 64 67
		f 4 1 101 -103 -101
		mu 0 4 11 29 69 68
		f 4 42 103 -105 -102
		mu 0 4 29 37 70 69
		f 4 -51 105 106 -104
		mu 0 4 37 36 71 70
		f 4 -3 100 107 -106
		mu 0 4 36 11 68 71
		f 4 -55 108 110 -110
		mu 0 4 39 38 73 72
		f 4 -31 111 112 -109
		mu 0 4 38 22 74 73
		f 4 27 113 -115 -112
		mu 0 4 22 0 75 74
		f 4 3 109 -116 -114
		mu 0 4 0 39 72 75;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape1" -p "building_station2";
	rename -uid "FFB67368-7E45-C950-0178-31836FF26E76";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.50366235 0.37749973 0.49375063 0.625 0 0.375 0.24633759 0.37749973
		 0.25624937 0.62250024 0.25624937 0.62250024 0.49375063 0.625 0.50366241 0.375 0.75
		 0.875 0 0.87499994 0.24633759 0.625 0.24633759 0.125 0 0.375 0 0.125 0.24633759;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 2.9802322e-08 1.5435482 0 ;
	setAttr ".pt[1]" -type "float3" 2.9802322e-08 1.5435482 0 ;
	setAttr ".pt[2]" -type "float3" 2.9802322e-08 1.5435482 0 ;
	setAttr ".pt[3]" -type "float3" 2.9802322e-08 1.5435482 0 ;
	setAttr ".pt[5]" -type "float3" -0.0025441933 0 0.0023276429 ;
	setAttr ".pt[6]" -type "float3" 0.0025441931 0 0.0023276429 ;
	setAttr ".pt[8]" -type "float3" -0.0025441933 0 -0.0023276429 ;
	setAttr ".pt[10]" -type "float3" 0.0025441931 0 -0.0023276429 ;
	setAttr -s 12 ".vt[0:11]"  -0.50000006 -0.5 0.5 0.55957735 -0.5 0.5
		 -0.50000006 -0.5 -0.5 0.55957735 -0.5 -0.5 -0.50000006 1.18135893 0.5 -0.48940533 1.20635641 0.47500253
		 0.54898274 1.20635641 0.47500253 0.55957735 1.18135893 0.5 -0.48940533 1.20635641 -0.47500253
		 -0.50000006 1.18135893 -0.5 0.54898274 1.20635641 -0.47500253 0.55957735 1.18135893 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "48AB96DC-0E4C-AF52-6817-3380F2709754";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "A65F1CC7-2443-0AC5-0078-DABA7CB5C523";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "79839638-2944-5392-C8EA-5E9EBF17C3D9";
createNode displayLayerManager -n "layerManager";
	rename -uid "CDF37CBD-2A49-8ACF-99C7-AFBD799E5081";
createNode displayLayer -n "defaultLayer";
	rename -uid "7E78AB3C-CA4E-829E-DA5B-E2AA1EA78364";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "076CA9B0-E147-ABE8-B5EC-0EBA389AD0DF";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "ABCFEE53-4B40-3BA7-4D14-0D9C3F5A45AD";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "17A66B65-E24F-498A-ADAB-52921351C6E2";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "809585DB-AC4C-8690-E215-07A8D27EEC01";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.706356349457151 0 0 0 0 4.9295744956361904 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.8531782 0 ;
	setAttr ".rs" 2039016703;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.5 0.85317817472857549 -2.4647872478180952 ;
	setAttr ".cbx" -type "double3" 0.5 0.85317817472857549 2.4647872478180952 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "D0D8AB22-8848-D78B-8849-EFA98DC3DED7";
	setAttr ".ics" -type "componentList" 1 "f[7]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.706356349457151 0 0 0 0 4.9295744956361904 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.5 0.94956219 0 ;
	setAttr ".rs" 712258539;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.5 0.85317817472857549 -2.4647872478180952 ;
	setAttr ".cbx" -type "double3" 0.5 1.0459462592861875 2.4647872478180952 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak1";
	rename -uid "82E064EE-1543-DFB7-3855-EE895B130085";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[8]" -type "float3" 0 0.11297061 0 ;
	setAttr ".tk[9]" -type "float3" 0 0.11297061 0 ;
	setAttr ".tk[10]" -type "float3" 0 0.11297061 0 ;
	setAttr ".tk[11]" -type "float3" 0 0.11297061 0 ;
createNode polyCube -n "polyCube2";
	rename -uid "BE1995EC-C141-E529-C00A-AE93B03E5917";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "F8DE0E89-1C4E-6A28-BD9F-33A6FB64A8C7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 0.5 0 0 0 0 0.25 0 0 0 0 0.5 0 2.3967668068849366 0 0 1;
	setAttr ".wt" 0.19328086078166962;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "74472D66-C944-2FE0-87E0-618FA240F55E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[0:3]" "e[14]" "e[18]" "e[22]" "e[26]";
	setAttr ".ix" -type "matrix" 0.5 0 0 0 0 0.25 0 0 0 0 0.5 0 2.3967668068849366 0 0 1;
	setAttr ".wt" 0.85292595624923706;
	setAttr ".dr" no;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "4ED154E3-2F41-84BD-3897-CCA2B8ACB557";
	setAttr ".ics" -type "componentList" 4 "f[3]" "f[8]" "f[18]" "f[20]";
	setAttr ".ix" -type "matrix" 0.5 0 0 0 0 0.25 0 0 0 0 0.5 0 2.3967668068849366 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.3967669 -0.125 0 ;
	setAttr ".rs" 990108878;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.1467668068849366 -0.125 -0.25 ;
	setAttr ".cbx" -type "double3" 2.6467668068849366 -0.125 0.25 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak2";
	rename -uid "E6697F2F-B148-4D43-49BA-C586AB222D4E";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk";
	setAttr ".tk[8]" -type "float3" 0 0 -0.16286179 ;
	setAttr ".tk[9]" -type "float3" 0 0 -0.16286179 ;
	setAttr ".tk[10]" -type "float3" 0 0 -0.16286179 ;
	setAttr ".tk[11]" -type "float3" 0 0 -0.16286179 ;
	setAttr ".tk[12]" -type "float3" 0 0 0.16286179 ;
	setAttr ".tk[13]" -type "float3" 0 0 0.16286179 ;
	setAttr ".tk[14]" -type "float3" 0 0 0.16286179 ;
	setAttr ".tk[15]" -type "float3" 0 0 0.16286179 ;
	setAttr ".tk[16]" -type "float3" 0.17478564 0 0 ;
	setAttr ".tk[17]" -type "float3" 0.17478564 0 0.16286179 ;
	setAttr ".tk[18]" -type "float3" 0.17478564 0 -0.16286179 ;
	setAttr ".tk[19]" -type "float3" 0.17478564 0 0 ;
	setAttr ".tk[20]" -type "float3" 0.17478564 0 0 ;
	setAttr ".tk[21]" -type "float3" 0.17478564 0 -0.16286179 ;
	setAttr ".tk[22]" -type "float3" 0.17478564 0 0.16286179 ;
	setAttr ".tk[23]" -type "float3" 0.17478564 0 0 ;
	setAttr ".tk[24]" -type "float3" -0.17478564 0 0 ;
	setAttr ".tk[25]" -type "float3" -0.17478564 0 0.16286179 ;
	setAttr ".tk[26]" -type "float3" -0.17478564 0 -0.16286179 ;
	setAttr ".tk[27]" -type "float3" -0.17478564 0 0 ;
	setAttr ".tk[28]" -type "float3" -0.17478564 0 0 ;
	setAttr ".tk[29]" -type "float3" -0.17478564 0 -0.16286179 ;
	setAttr ".tk[30]" -type "float3" -0.17478564 0 0.16286179 ;
	setAttr ".tk[31]" -type "float3" -0.17478564 0 0 ;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "D79E3D1D-CF43-E218-48FF-E482E8018DBB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[14]" "e[18:27]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.706356349457151 0 0 0 0 5.9000214655013741 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.4;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak3";
	rename -uid "5AF38629-304C-4AA0-A70F-8EA53EED6C8C";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[12]" -type "float3" 0.60623163 0 0 ;
	setAttr ".tk[13]" -type "float3" 0.60623163 0 0 ;
	setAttr ".tk[14]" -type "float3" 0.60623163 0 0 ;
	setAttr ".tk[15]" -type "float3" 0.60623163 0 0 ;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "283E1EEC-C24E-0156-7071-8091FEE6F882";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[52]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.706356349457151 0 0 0 0 5.9000214655013741 0
		 0 0 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak4";
	rename -uid "382E67BA-A74D-1330-07BD-DB83424CA311";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[18]" -type "float3" 0 -0.0066169929 0.0019137338 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "B8840735-904D-1A80-02FC-4FB62188528A";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[53]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.706356349457151 0 0 0 0 5.9000214655013741 0
		 0 0 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak5";
	rename -uid "C438C682-EA47-EC08-50E5-C8B3411D71AD";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[29]" -type "float3" 1.1292286e-08 -0.0066169919 -0.0019137358 ;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "28371EE9-FC4B-692D-9745-E7AD1FA298DD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[1:2]" "e[4:9]" "e[12:13]" "e[20:21]" "e[28]" "e[33]" "e[44]" "e[49]" "e[65]" "e[68]" "e[79]" "e[89]";
	setAttr ".ix" -type "matrix" 0.5 0 0 0 0 0.25 0 0 0 0 0.5 0 2.3967668068849366 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.75;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak6";
	rename -uid "5CD502B7-684E-A16D-C805-CD800CDBCBA3";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk";
	setAttr ".tk[32]" -type "float3" 0 -2.9127128 0 ;
	setAttr ".tk[33]" -type "float3" 0 -2.9127128 0 ;
	setAttr ".tk[34]" -type "float3" 0 -2.9127128 0 ;
	setAttr ".tk[35]" -type "float3" 0 -2.9127128 0 ;
	setAttr ".tk[36]" -type "float3" 0 -2.9127128 0 ;
	setAttr ".tk[37]" -type "float3" 0 -2.9127128 0 ;
	setAttr ".tk[38]" -type "float3" 0 -2.9127128 0 ;
	setAttr ".tk[39]" -type "float3" 0 -2.9127128 0 ;
	setAttr ".tk[40]" -type "float3" 0 -2.9127128 0 ;
	setAttr ".tk[41]" -type "float3" 0 -2.9127128 0 ;
	setAttr ".tk[42]" -type "float3" 0 -2.9127128 0 ;
	setAttr ".tk[43]" -type "float3" 0 -2.9127128 0 ;
	setAttr ".tk[44]" -type "float3" 0 -2.9127128 0 ;
	setAttr ".tk[45]" -type "float3" 0 -2.9127128 0 ;
	setAttr ".tk[46]" -type "float3" 0 -2.9127128 0 ;
	setAttr ".tk[47]" -type "float3" 0 -2.9127128 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "FF5369BF-D94C-3BBD-9500-4CB32E76848D";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.5 0 0 0 0 0.25 0 0 0 0 0.5 0 2.3967668068849366 0.91541612527618765 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.3967669 0.79041612 1.4901161e-08 ;
	setAttr ".rs" 381319628;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.226040746017627 0.79041614017734885 -0.16476421058177948 ;
	setAttr ".cbx" -type "double3" 2.5674928677522462 0.79041614017734885 0.16476424038410187 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "1A214665-7A41-7D0E-CEF3-88A1DD8445C9";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.5 0 0 0 0 0.25 0 0 0 0 0.5 0 2.3967668068849366 0.91541612527618765 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.3967669 0.54012311 1.4901161e-08 ;
	setAttr ".rs" 1321591797;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.226040746017627 0.54012310884247183 -0.16476421058177948 ;
	setAttr ".cbx" -type "double3" 2.5674928677522462 0.54012310884247183 0.16476424038410187 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak7";
	rename -uid "5D1ECECB-6241-38F4-D593-8AB088654ED6";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk";
	setAttr ".tk[7]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".tk[8]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".tk[13]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".tk[14]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".tk[140]" -type "float3" 0 -1.0011721 0 ;
	setAttr ".tk[141]" -type "float3" 0 -1.0011721 0 ;
	setAttr ".tk[142]" -type "float3" 0 -1.0011721 0 ;
	setAttr ".tk[143]" -type "float3" 0 -1.0011721 0 ;
createNode polyTweak -n "polyTweak8";
	rename -uid "5AC86293-5347-FE99-BF36-179E02EA245F";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[144]" -type "float3" 0 -0.21640557 0 ;
	setAttr ".tk[145]" -type "float3" 0 -0.21640557 0 ;
	setAttr ".tk[146]" -type "float3" 0 -0.21640557 0 ;
	setAttr ".tk[147]" -type "float3" 0 -0.21640557 0 ;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "9038B333-3743-4FB2-1E13-B7BBF4165B5B";
	setAttr ".dc" -type "componentList" 1 "f[136]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "4D889CCF-F84D-30F3-DEF2-9185546D2A36";
	setAttr ".dc" -type "componentList" 1 "f[135]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "CB3C4BA6-694B-10F6-8510-B49D922448DB";
	setAttr ".dc" -type "componentList" 1 "f[135]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "CD11A815-9540-0694-1A2B-BA80EFA30626";
	setAttr ".dc" -type "componentList" 1 "f[134]";
createNode polyBridgeEdge -n "polyBridgeEdge1";
	rename -uid "A22EA79E-7840-3123-8685-A3A279810984";
	setAttr ".ics" -type "componentList" 2 "e[272]" "e[274]";
	setAttr ".ix" -type "matrix" 0.5 0 0 0 0 0.25 0 0 0 0 0.5 0 2.3967668068849366 0.91541612527618765 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 140;
	setAttr ".sv2" 143;
	setAttr ".d" 1;
createNode polyBevel3 -n "polyBevel3";
	rename -uid "3A75EFE8-BD48-C34C-873D-D89AE3DB9CDD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[272:275]" "e[278]" "e[280]" "e[282:283]";
	setAttr ".ix" -type "matrix" 0.5 0 0 0 0 0.25 0 0 0 0 0.5 0 2.3967668068849366 0.91541612527618765 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.3;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyCube -n "polyCube3";
	rename -uid "D8840677-154D-BBEE-70FE-CA81D51ED0F7";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube4";
	rename -uid "261F8BC0-6F4B-A42F-2D96-5CAB99475C09";
	setAttr ".cuv" 4;
createNode polyBevel3 -n "polyBevel4";
	rename -uid "E8F2BBE8-734A-2900-3886-6E899373847A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[1:2]" "e[6:7]";
	setAttr ".ix" -type "matrix" 2.3594309020110633 0 0 0 0 1 0 0 0 0 1 0 -1.8202844607809578 0.50000001052067322 2.5000000493755481 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.05;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak9";
	rename -uid "12B99432-6E4E-F877-CAA4-769697B094A9";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[1]" -type "float3" 0.059577495 0 0 ;
	setAttr ".tk[2]" -type "float3" 0 0.70635641 0 ;
	setAttr ".tk[3]" -type "float3" 0.059577495 0.70635641 0 ;
	setAttr ".tk[4]" -type "float3" 0 0.70635641 0 ;
	setAttr ".tk[5]" -type "float3" 0.059577495 0.70635641 0 ;
	setAttr ".tk[7]" -type "float3" 0.059577495 0 0 ;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "53A47B8B-3B4E-BCC7-8F43-A280AADBB880";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[0:1]" "e[8]" "e[10]" "e[14:15]";
	setAttr ".ix" -type "matrix" 5.2389890248495681e-16 0 -2.3594309020110633 0 0 1 0 0
		 1 0 2.2204460492503131e-16 0 -4.0360512239703983 0.50000001052067322 0.3794863223898558 1;
	setAttr ".wt" 0.12466293573379517;
	setAttr ".re" 8;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "70323979-D64B-D505-211B-B29D54A8ACE1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[2:3]" "e[5]" "e[7]" "e[11]" "e[13]" "e[24]" "e[30]" "e[36]" "e[42]";
	setAttr ".ix" -type "matrix" 5.2389890248495681e-16 0 -2.3594309020110633 0 0 1 0 0
		 1 0 2.2204460492503131e-16 0 -4.0360512239703983 0.50000001052067322 0.3794863223898558 1;
	setAttr ".wt" 0.41896736621856689;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "7962E43F-8A4C-7639-2C5A-28A8285872C3";
	setAttr ".ics" -type "componentList" 4 "f[0]" "f[14]" "f[24]" "f[26]";
	setAttr ".ix" -type "matrix" 5.2389890248495681e-16 0 -2.3594309020110633 0 0 1 0 0
		 1 0 2.2204460492503131e-16 0 -4.0360512239703983 0.50000001052067322 0.3794863223898558 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -4.0360513 1.5435482 0.30920202 ;
	setAttr ".rs" 2017052607;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.5360512239703983 1.5435482368771796 -0.94079775946944488 ;
	setAttr ".cbx" -type "double3" -3.5360512239703978 1.5435482368771796 1.5592017733953876 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak10";
	rename -uid "754EEE7B-3C41-8ECB-593C-4F8736372071";
	setAttr ".uopa" yes;
	setAttr -s 34 ".tk";
	setAttr ".tk[12]" -type "float3" 0.31593606 0 0 ;
	setAttr ".tk[13]" -type "float3" 0.3111352 0 0 ;
	setAttr ".tk[14]" -type "float3" 0.3111352 0 0 ;
	setAttr ".tk[15]" -type "float3" 0.31593606 0 0 ;
	setAttr ".tk[16]" -type "float3" 0.31593606 0 0 ;
	setAttr ".tk[17]" -type "float3" 0.31593606 0 0 ;
	setAttr ".tk[18]" -type "float3" -0.31593606 0 0 ;
	setAttr ".tk[19]" -type "float3" -0.31113517 0 0 ;
	setAttr ".tk[20]" -type "float3" -0.31113517 0 0 ;
	setAttr ".tk[21]" -type "float3" -0.31593606 0 0 ;
	setAttr ".tk[22]" -type "float3" -0.31593603 0 0 ;
	setAttr ".tk[23]" -type "float3" -0.31593603 0 0 ;
	setAttr ".tk[24]" -type "float3" 0 0 -0.23952755 ;
	setAttr ".tk[25]" -type "float3" 0 0 -0.25090277 ;
	setAttr ".tk[26]" -type "float3" 0 0 -0.25090277 ;
	setAttr ".tk[27]" -type "float3" -0.31593603 0 -0.25090277 ;
	setAttr ".tk[28]" -type "float3" 0.31593606 0 -0.25090277 ;
	setAttr ".tk[29]" -type "float3" 0 0 -0.25090277 ;
	setAttr ".tk[30]" -type "float3" 0 0 -0.25090277 ;
	setAttr ".tk[31]" -type "float3" 0 0 -0.23952755 ;
	setAttr ".tk[32]" -type "float3" 0.3111352 0 -0.23952755 ;
	setAttr ".tk[33]" -type "float3" -0.31113517 0 -0.23952755 ;
	setAttr ".tk[34]" -type "float3" 0 0 0.23952755 ;
	setAttr ".tk[35]" -type "float3" 0 0 0.25090277 ;
	setAttr ".tk[36]" -type "float3" 0 0 0.25090277 ;
	setAttr ".tk[37]" -type "float3" -0.31593603 0 0.25090277 ;
	setAttr ".tk[38]" -type "float3" 0.31593606 0 0.25090277 ;
	setAttr ".tk[39]" -type "float3" 0 0 0.25090277 ;
	setAttr ".tk[40]" -type "float3" 0 0 0.25090277 ;
	setAttr ".tk[41]" -type "float3" 0 0 0.23952755 ;
	setAttr ".tk[42]" -type "float3" 0.3111352 0 0.23952755 ;
	setAttr ".tk[43]" -type "float3" -0.31113517 0 0.23952755 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "52471A09-5441-AD8D-E4F9-F893F03EAFD6";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top|topShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1172\n            -height 658\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side|sideShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1172\n            -height 656\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front|frontShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n"
		+ "            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n"
		+ "            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1172\n            -height 656\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp|perspShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n"
		+ "            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2358\n            -height 1402\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n"
		+ "            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n"
		+ "                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2358\\n    -height 1402\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2358\\n    -height 1402\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "26043329-1541-4BF1-19CF-FBB64DDC6B69";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 8 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polyMergeVert2.out" "tableShape.i";
connectAttr "polyBevel3.out" "chairShape.i";
connectAttr "polyCube3.out" "wallLShape.i";
connectAttr "polyBevel4.out" "building_stationShape.i";
connectAttr "polyExtrudeFace6.out" "building_station1Shape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polyExtrudeFace1.ip";
connectAttr "tableShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace2.ip";
connectAttr "tableShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "polyCube2.out" "polySplitRing1.ip";
connectAttr "chairShape.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "chairShape.wm" "polySplitRing2.mp";
connectAttr "polyTweak2.out" "polyExtrudeFace3.ip";
connectAttr "chairShape.wm" "polyExtrudeFace3.mp";
connectAttr "polySplitRing2.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyBevel1.ip";
connectAttr "tableShape.wm" "polyBevel1.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyMergeVert1.ip";
connectAttr "tableShape.wm" "polyMergeVert1.mp";
connectAttr "polyBevel1.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyMergeVert2.ip";
connectAttr "tableShape.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert1.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyBevel2.ip";
connectAttr "chairShape.wm" "polyBevel2.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak6.ip";
connectAttr "polyBevel2.out" "polyExtrudeFace4.ip";
connectAttr "chairShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyTweak7.out" "polyExtrudeFace5.ip";
connectAttr "chairShape.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak7.ip";
connectAttr "polyExtrudeFace5.out" "polyTweak8.ip";
connectAttr "polyTweak8.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "polyBridgeEdge1.ip";
connectAttr "chairShape.wm" "polyBridgeEdge1.mp";
connectAttr "polyBridgeEdge1.out" "polyBevel3.ip";
connectAttr "chairShape.wm" "polyBevel3.mp";
connectAttr "polyTweak9.out" "polyBevel4.ip";
connectAttr "building_stationShape.wm" "polyBevel4.mp";
connectAttr "polyCube4.out" "polyTweak9.ip";
connectAttr "|building_station1|polySurfaceShape1.o" "polySplitRing3.ip";
connectAttr "building_station1Shape.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "building_station1Shape.wm" "polySplitRing4.mp";
connectAttr "polyTweak10.out" "polyExtrudeFace6.ip";
connectAttr "building_station1Shape.wm" "polyExtrudeFace6.mp";
connectAttr "polySplitRing4.out" "polyTweak10.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "tableShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "chairShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "wallLShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "wallRShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "wallBShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "building_stationShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "building_station1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "building_station2Shape.iog" ":initialShadingGroup.dsm" -na;
// End of booth01.ma
