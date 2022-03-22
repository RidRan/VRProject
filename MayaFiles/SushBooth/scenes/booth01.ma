//Maya ASCII 2022 scene
//Name: booth01.ma
//Last modified: Tue, Mar 22, 2022 05:50:20 PM
//Codeset: 1252
requires maya "2022";
requires "mtoa" "5.0.0.1";
requires "mtoa" "4.2.4";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202110272215-ad32f8f1e6";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19042)";
fileInfo "UUID" "55F8905F-433F-C481-C44C-508B50C65B80";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "DC52F591-2848-F5D9-0EE8-289D64A84E38";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 13.328139747643091 4.2595625908829664 8.2584368817128375 ;
	setAttr ".r" -type "double3" -0.93835273119391716 -3535.4000000021379 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "45536986-724D-5254-6613-EB8060376894";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 16.787061728319358;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.8341719494228153 3.9846473842767556 1.0588419555643744 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "F0D20DBB-1E46-7E39-DC08-11BEE4C6B6C0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.1820870725479278 1000.1447313274804 -2.0464910580718834 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "5971B64C-7544-A101-9BDC-8F87466BCEA5";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 995.62754967007709;
	setAttr ".ow" 5.6286116363470589;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" -2.1569368865052683 4.5171816574030323 2.7270142528245538 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "0F0FA5E8-8F46-F77B-9AB2-29A4F6C68388";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.018025734374898 1.9999999999999991 1000.1040483023473 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "9023A655-6940-5DB3-5E10-F69BB7C73976";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 997.01597864253313;
	setAttr ".ow" 12.419044887422919;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -2.018025734374898 1.9999999999999991 3.088069659814193 ;
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
	setAttr ".pv" -type "double2" 0.47093871235847473 0.38382723554968834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
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
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[2]" -type "float3" 0 0.22968173 0 ;
	setAttr ".pt[4]" -type "float3" 0 0.22968173 0 ;
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
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[2]" -type "float3" 0 0.22968173 0 ;
	setAttr ".pt[4]" -type "float3" 0 0.22968173 0 ;
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
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.12169734 0 5.5511151e-16 
		0.050147988 0 -2.7755576e-16 -0.12169734 0.22968173 5.5511151e-16 0.050147988 0.22968173 
		-2.7755576e-16 -0.12169734 0.22968173 4.9960036e-16 0.050147988 0.22968173 -2.220446e-16 
		-0.12169734 0 4.9960036e-16 0.050147988 0 -2.220446e-16;
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
	setAttr ".t" -type "double3" -3.0360511153737058 0.50000001052067322 2.5081039968493046 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".s" -type "double3" 0.84416530949403423 1 1 ;
	setAttr ".rp" -type "double3" -0.50000020910180454 -0.50000001052067322 0.50000018819544412 ;
	setAttr ".rpt" -type "double3" -0.99999994887043686 0 -1.0000002922987989 ;
	setAttr ".sp" -type "double3" -0.50000008235046534 -0.50000001052067322 0.50000018819544412 ;
	setAttr ".spt" -type "double3" -1.267513392022579e-07 0 0 ;
createNode mesh -n "building_stationShape" -p "building_station";
	rename -uid "5F03DC7F-2440-4C34-7024-FE93D417A615";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.37500001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "plateSquare";
	rename -uid "45F27552-4693-AFE8-1244-1D84B8826F6F";
	setAttr ".t" -type "double3" -0.32414858191610701 1.966149688330169 1.1302483854240004 ;
	setAttr ".s" -type "double3" 0.3992127934823701 0.034296239605497339 0.3992127934823701 ;
	setAttr ".rp" -type "double3" 0.36773236022180811 -0.0670253044037772 0.36447662115097046 ;
	setAttr ".sp" -type "double3" 0.36773236022180811 -0.78018346363408853 0.36447662115097046 ;
	setAttr ".spt" -type "double3" 0 0.71315815923031134 0 ;
createNode mesh -n "plateSquareShape" -p "plateSquare";
	rename -uid "707153A7-4C81-A37B-A734-C2A484AA74D0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000001490116119 0.37499997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -0.28018439 0 ;
	setAttr ".pt[1]" -type "float3" 0 -0.28018439 0 ;
	setAttr ".pt[2]" -type "float3" 0 -0.28018439 0 ;
	setAttr ".pt[3]" -type "float3" 0 -0.28018439 0 ;
	setAttr ".pt[4]" -type "float3" -0.080831423 0 -0.080115765 ;
	setAttr ".pt[5]" -type "float3" 0.080831423 0 -0.080115765 ;
	setAttr ".pt[6]" -type "float3" -0.080831423 0 0.080115765 ;
	setAttr ".pt[7]" -type "float3" 0.080831423 0 0.080115765 ;
	setAttr ".pt[64]" -type "float3" 0 -0.12826274 0 ;
	setAttr ".pt[65]" -type "float3" -0.0056662783 -0.099566281 0.0056161135 ;
	setAttr ".pt[66]" -type "float3" 0 -0.12826274 0 ;
	setAttr ".pt[67]" -type "float3" 0.0056662783 -0.099566281 0.0056161135 ;
	setAttr ".pt[68]" -type "float3" 0 -0.12826274 0 ;
	setAttr ".pt[69]" -type "float3" -0.0056662783 -0.099566281 -0.0056161135 ;
	setAttr ".pt[70]" -type "float3" 0 -0.12826274 0 ;
	setAttr ".pt[71]" -type "float3" 0.0056662783 -0.099566281 -0.0056161135 ;
createNode transform -n "sauceDish";
	rename -uid "21FDAF7E-4D7A-DD99-91C5-7AB4FC3609DD";
	setAttr ".t" -type "double3" -0.25354426193640145 1.8989021407947182 2.1697581633526299 ;
	setAttr ".s" -type "double3" 0.099659253759789873 0.099659253759789873 0.099659253759789873 ;
	setAttr ".rp" -type "double3" 0 0.00022224313167338425 0 ;
	setAttr ".sp" -type "double3" 0 0.001067040153616361 0 ;
	setAttr ".spt" -type "double3" 0 -0.00084479702194297673 0 ;
createNode mesh -n "sauceDishShape" -p "sauceDish";
	rename -uid "1F839112-4B46-F1BE-A83F-40B799010269";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
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
	setAttr -s 16 ".pt[44:59]" -type "float3"  0 -1.5435482 0 0 -1.5435482 
		0 0 -1.5435482 0 0 -1.5435482 0 0 -1.5435482 0 0 -1.5435482 0 0 -1.5435482 0 0 -1.5435482 
		0 0 -1.5435482 0 0 -1.5435482 0 0 -1.5435482 0 0 -1.5435482 0 0 -1.5435482 0 0 -1.5435482 
		0 0 -1.5435482 0 0 -1.5435482 0;
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
	setAttr -s 16 ".pt[44:59]" -type "float3"  0 -1.5435482 0 0 -1.5435482 
		0 0 -1.5435482 0 0 -1.5435482 0 0 -1.5435482 0 0 -1.5435482 0 0 -1.5435482 0 0 -1.5435482 
		0 0 -1.5435482 0 0 -1.5435482 0 0 -1.5435482 0 0 -1.5435482 0 0 -1.5435482 0 0 -1.5435482 
		0 0 -1.5435482 0 0 -1.5435482 0;
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
createNode transform -n "roof";
	rename -uid "3366966F-450B-740C-0957-AA84B4AEC2D3";
	setAttr ".t" -type "double3" 0 4.5 3.0022463420404519 ;
	setAttr ".r" -type "double3" -90 0 -10 ;
	setAttr ".s" -type "double3" 5.4127593948506094 6.4884866164432129 0.095904474869301287 ;
	setAttr ".rp" -type "double3" 0.5 -0.5 0.22388223614558336 ;
	setAttr ".sp" -type "double3" 0.5 -0.49999999999999978 -0.50000020826840519 ;
	setAttr ".spt" -type "double3" 0 -2.2204460492503131e-16 0.72388244441398852 ;
createNode mesh -n "roofShape" -p "roof";
	rename -uid "54C15E5B-45EF-3354-E551-16A814789F00";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.3749999888241291 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 45 ".pt";
	setAttr ".pt[296]" -type "float3" 0 0 -0.41624439 ;
	setAttr ".pt[297]" -type "float3" 2.220446e-16 0 -0.41624439 ;
	setAttr ".pt[298]" -type "float3" 2.220446e-16 0 -0.41624439 ;
	setAttr ".pt[299]" -type "float3" 0 0 -0.41624439 ;
	setAttr ".pt[300]" -type "float3" 0 0 -0.41624445 ;
	setAttr ".pt[301]" -type "float3" 2.220446e-16 0 -0.41624445 ;
	setAttr ".pt[302]" -type "float3" 2.220446e-16 0 -0.41624445 ;
	setAttr ".pt[303]" -type "float3" 0 0 -0.41624445 ;
	setAttr ".pt[304]" -type "float3" 0 0 -0.41624445 ;
	setAttr ".pt[305]" -type "float3" 2.220446e-16 0 -0.41624445 ;
	setAttr ".pt[306]" -type "float3" 2.220446e-16 0 -0.41624445 ;
	setAttr ".pt[307]" -type "float3" 0 0 -0.41624445 ;
	setAttr ".pt[308]" -type "float3" 0 0 -0.41624445 ;
	setAttr ".pt[309]" -type "float3" 2.220446e-16 0 -0.41624445 ;
	setAttr ".pt[310]" -type "float3" 2.220446e-16 0 -0.41624445 ;
	setAttr ".pt[311]" -type "float3" 0 0 -0.41624445 ;
	setAttr ".pt[312]" -type "float3" 0 0 -0.41624445 ;
	setAttr ".pt[313]" -type "float3" 2.220446e-16 0 -0.41624445 ;
	setAttr ".pt[314]" -type "float3" 2.220446e-16 0 -0.41624445 ;
	setAttr ".pt[315]" -type "float3" 0 0 -0.41624445 ;
	setAttr ".pt[316]" -type "float3" 0 0 -0.41624445 ;
	setAttr ".pt[317]" -type "float3" 2.220446e-16 0 -0.41624445 ;
	setAttr ".pt[318]" -type "float3" 2.220446e-16 0 -0.41624445 ;
	setAttr ".pt[319]" -type "float3" 0 0 -0.41624445 ;
	setAttr ".pt[320]" -type "float3" 0 0 -0.41624445 ;
	setAttr ".pt[321]" -type "float3" 2.220446e-16 0 -0.41624445 ;
	setAttr ".pt[322]" -type "float3" 2.220446e-16 0 -0.41624445 ;
	setAttr ".pt[323]" -type "float3" 0 0 -0.41624445 ;
	setAttr ".pt[324]" -type "float3" 0 0 -0.41624445 ;
	setAttr ".pt[325]" -type "float3" 2.220446e-16 0 -0.41624445 ;
	setAttr ".pt[326]" -type "float3" 2.220446e-16 0 -0.41624445 ;
	setAttr ".pt[327]" -type "float3" 0 0 -0.41624445 ;
	setAttr ".pt[328]" -type "float3" 0 0 -0.41624445 ;
	setAttr ".pt[329]" -type "float3" 2.220446e-16 0 -0.41624445 ;
	setAttr ".pt[330]" -type "float3" 2.220446e-16 0 -0.41624445 ;
	setAttr ".pt[331]" -type "float3" 0 0 -0.41624445 ;
	setAttr ".pt[332]" -type "float3" 0 0 -0.41624445 ;
	setAttr ".pt[333]" -type "float3" 2.220446e-16 0 -0.41624445 ;
	setAttr ".pt[334]" -type "float3" 2.220446e-16 0 -0.41624445 ;
	setAttr ".pt[335]" -type "float3" 0 0 -0.41624445 ;
	setAttr ".pt[336]" -type "float3" 0 0 -0.41624445 ;
	setAttr ".pt[337]" -type "float3" 2.220446e-16 0 -0.41624445 ;
	setAttr ".pt[338]" -type "float3" 2.220446e-16 0 -0.41624445 ;
	setAttr ".pt[339]" -type "float3" 0 0 -0.41624445 ;
createNode mesh -n "polySurfaceShape2" -p "roof";
	rename -uid "7A86F20C-4C9F-DA75-AE38-6696B085923D";
	setAttr -k off ".v";
	setAttr ".io" yes;
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
createNode transform -n "floor";
	rename -uid "5F1EA0E8-401C-26DE-FFAA-B8A219CC33E8";
	setAttr ".t" -type "double3" -3.6028826384473724 0 0 ;
createNode mesh -n "floorShape" -p "floor";
	rename -uid "11AE8A81-446B-C7BF-A40C-DCB65EAD385A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.43316865 0 2.4500108 3.6028824 
		0 2.4500108 -0.43316865 0 -2.4500108 3.6028826 0 -2.4500108;
createNode transform -n "bigBowl";
	rename -uid "61AC7265-49C6-6DC4-3983-0A800739EEC3";
	setAttr ".t" -type "double3" -0.11477741086262983 2.0786831437527038 2.4964473811655279 ;
	setAttr ".s" -type "double3" 0.34185227687675501 0.34984806101686505 0.34185227687675501 ;
	setAttr ".rp" -type "double3" 6.1527529737759323e-09 -0.1795587598263122 4.5809056548051785e-10 ;
	setAttr ".sp" -type "double3" 6.1527529737759323e-09 -0.1795587598263122 4.5809056548051785e-10 ;
createNode mesh -n "bigBowlShape" -p "bigBowl";
	rename -uid "25BBFB1B-4928-BA8B-B27F-ADA05E531A15";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000002980232239 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 234 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -0.023892814 0 0.023892816 0.023892816 
		0 0.023892816 -0.023892814 0 -0.023892816 0.023892816 0 -0.023892816 -0.076119214 
		0 0.076119177 0.076119177 0 0.076119177 0.076119177 0 -0.076119177 -0.076119214 0 
		-0.076119177 1.6080919e-09 0 -0.030987946 -0.05226858 0 -0.052268609 0.03098795 0 
		-1.7867693e-10 -0.03098798 0 3.5735387e-10 0.065248311 0 0.065248303 -0.065248333 
		0 0.065248333 0.065248311 0 -0.065248303 -0.065248318 0 -0.065248303 1.2507356e-09 
		0 0.030987946 0.05226858 0 0.052268609 -0.05226858 0 0.05226858 8.135868e-09 0 0.095481195 
		0.095481165 0 0 7.3535622e-09 0 -0.095481195 -0.095481195 0 0 0.052268609 0 -0.05226858 
		1.2837328e-09 0 0.055253074 1.0628633e-11 0 -3.9363651e-13 1.9535076e-09 0 -0.055253103 
		8.8817842e-16 0 4.4408921e-16 0.055253044 0 4.4651599e-10 -0.055253081 0 4.4651599e-10 
		2.6425582e-09 0 0.068291925 0.068291925 0 8.5243826e-11 2.8130502e-09 0 -0.068291925 
		-0.068291895 0 -8.5243826e-11 -0.040431276 0 0.040431283 -0.0403057 0 0.040305704 
		-0.048675135 0 0.048675135 6.7664585e-10 0 0.033178288 7.9540396e-10 0 0.03230254 
		1.1237562e-09 0 0.042773407 0.040431287 0 0.040431283 0.040305715 0 0.040305715 0.048675139 
		0 0.048675135 -0.040431276 0 -0.040431306 -0.0403057 0 -0.040305704 -0.048675135 
		0 -0.048675135 6.7664585e-10 0 -0.033178259 6.570734e-10 0 -0.03230251 1.2214751e-09 
		0 -0.042773407 0.040431287 0 -0.040431306 0.040305715 0 -0.040305704 0.048675112 
		0 -0.048675139 -0.033178277 0 -1.353293e-10 -0.03230254 0 -1.0374872e-10 -0.042773407 
		0 -4.8858986e-11 0.033178288 0 1.353293e-10 0.032302544 0 1.0374872e-10 0.042773437 
		0 4.8858986e-11 0.043192573 0 0.043192573 0.016390139 0 0.038242973 1.2185517e-09 
		0 0.038285647 -0.016390158 0 0.038242973 -0.043192588 0 0.043192573 -0.016390158 
		0 -0.038242973 1.0662324e-09 0 -0.038285669 -0.043192588 0 -0.043192603 0.016390139 
		0 -0.038243007 0.043192573 0 -0.043192603 0.038242977 0 -0.016390137 0.03828565 0 
		-1.5231931e-10 0.038242977 0 0.016390137 -0.038242973 0 0.016390137 -0.038285699 
		0 1.5231931e-10 -0.038243033 0 -0.016390137 -0.020318361 0 0.047408536 1.4558951e-09 
		0 0.051119864 -0.05470451 0 0.054704629 0.020318368 0 0.047408536 0.05470461 0 0.054704629 
		0.047408536 0 0.020318376 0.051119834 0 0 0.047408536 0 -0.020318376 0.05470461 0 
		-0.054704629 0.020318368 0 -0.047408506 1.698548e-09 0 -0.051119864 -0.020318361 
		0 -0.047408506 -0.05470451 0 -0.054704629 -0.047408506 0 -0.020318376 -0.051119804 
		0 0 -0.047408506 0 0.020318376 -0.039021526 0 0.03902147 -0.037366763 0 0.016016088 
		-0.030950805 0 0 -0.043667208 0 0.043667242 -0.03634062 0 0 -0.016016111 0 0.037366763 
		9.6240771e-10 0 0.036340605 7.7548101e-10 0 0.030950774 0.016016088 0 0.037366763 
		0.043667242 0 0.043667242 0.03902147 0 0.03902147 -0.039021526 0 -0.03902147 -0.016016116 
		0 -0.037366703 7.7548101e-10 0 -0.030950805 -0.043667208 0 -0.043667242 9.6240771e-10 
		0 -0.036340717 0.016016088 0 -0.037366703 0.03902147 0 -0.03902147 0.043667242 0 
		-0.043667242 0.037366766 0 -0.016016088 0.030950774 0 0 0.036340747 0 0 -0.037366718 
		0 -0.016016088 0.037366766 0 0.016016088 -0.012678029 0 0.02515427 2.2614943e-09 
		0 0.063047267 -0.024809923 0 0.057928659 -0.045837671 0 0.0458377 0.012678022 0 0.02515427 
		0.045837708 0 0.0458377 0.024809876 0 0.057928659 -0.046456285 0 0.089950725 3.6801682e-09 
		0 0.031228846 -0.031228758 0 -3.6801681e-10 -0.089950725 0 0.046456326 0.046456307 
		0 0.089950725 0.089950703 0 0.046456326 0.031228866 0 -3.6801681e-10 0.089950703 
		0 -0.046456326 0.046456307 0 -0.089950725 4.048192e-09 0 -0.031228846 -0.046456285 
		0 -0.089950725 -0.089950725 0 -0.046456326 0.024809876 0 -0.057928659 0.045837708 
		0 -0.045837671 0.012678022 0 -0.02515427 2.2614943e-09 0 -0.063047297 -0.024809923 
		0 -0.057928659 -0.012678029 0 -0.025154281 -0.045837671 0 -0.0458377 3.835843e-10 
		0 -0.0045137764 -0.0045137461 0 0 -0.025154268 0 -0.012678022 0.025154272 0 -0.012678022 
		0.0045137769 0 0 0.025154272 0 0.012678022 3.835843e-10 0 0.0045137764 -0.025154239 
		0 0.012678022 0.063047267 0 0 0.057928659 0 0.024809876 0.057928659 0 -0.024809876 
		-0.063047297 0 0 -0.057928652 0 -0.024809901 -0.057928652 0 0.024809876 0.030156644 
		0 0.070156984 0.078466155 0 0.078466102 5.6019065e-09 0 0.09471228 -0.030156644 0 
		0.070156984 -0.078466102 0 0.078466102 0.070156984 0 -0.030156644 0.078466155 0 -0.078466102 
		0.094712295 0 0 0.070156984 0 0.030156644 -0.030156644 0 -0.070156984 -0.078466102 
		0 -0.078466102 5.6019065e-09 0 -0.09471228;
	setAttr ".pt[166:233]" 0.030156644 0 -0.070156984 -0.070156984 0 0.030156644 
		-0.09471222 0 0 -0.070156984 0 -0.030156644 -0.025603987 0 0.059921842 0.025603991 
		0 0.05992195 -0.032215398 0 0.032215465 0.032215439 0 0.032215465 0.032215439 0 -0.032215465 
		-0.032215398 0 -0.032215465 0.025603991 0 -0.05992195 -0.025603987 0 -0.05992195 
		-0.0031654267 0 -0.003165442 0.0031654423 0 -0.003165442 0.0031654423 0 0.003165442 
		-0.0031654267 0 0.003165442 0.059921842 0 0.025603987 0.05992195 0 -0.025603987 -0.05992195 
		0 -0.025603987 -0.05992195 0 0.025603987 0.039825086 0 0.091755956 -0.039825082 0 
		0.091755956 0.091755971 0 -0.039825097 0.091755971 0 0.039825097 -0.039825082 0 -0.091755956 
		0.039825086 0 -0.091755956 -0.091755956 0 0.039825097 -0.091755956 0 -0.039825097 
		0.018403456 0 0.042941406 -0.018403456 0 0.042941406 -0.018403456 0 -0.042941459 
		0.018403456 0 -0.042941459 0.04294141 0 -0.018403456 0.04294141 0 0.018403456 -0.042941455 
		0 0.018403456 -0.042941455 0 -0.018403456 -0.023642547 0 0.055165946 0.023642553 
		0 0.055165946 0.055165932 0 0.02364257 0.055165932 0 -0.02364257 0.023642553 0 -0.055165946 
		-0.023642547 0 -0.055165946 -0.055165946 0 -0.02364257 -0.055165946 0 0.02364257 
		-0.036061812 0 0.015456194 -0.04132751 0 0.017713122 -0.017713107 0 0.041327558 -0.015456203 
		0 0.036061831 0.017713116 0 0.041327495 0.015456188 0 0.036061801 -0.015456203 0 
		-0.036061801 -0.017713107 0 -0.041327495 0.015456188 0 -0.036061801 0.017713116 0 
		-0.041327562 0.036061801 0 -0.015456194 0.041327514 0 -0.017713122 -0.041327562 0 
		-0.017713122 -0.036061812 0 -0.015456194 0.041327558 0 0.017713122 0.036061831 0 
		0.015456194 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".dr" 1;
createNode transform -n "plate";
	rename -uid "E94DD886-47B6-6D8B-D359-729E41F7D732";
	setAttr ".t" -type "double3" -0.12286536794072291 1.795551345048469 1.8314740210455092 ;
	setAttr ".s" -type "double3" 0.45746201342814707 0.45746201342814707 0.45746201342814707 ;
	setAttr ".rp" -type "double3" 0 0.10357303887792255 1.1102230246251565e-16 ;
	setAttr ".sp" -type "double3" 0 0.22640795484145837 0 ;
	setAttr ".spt" -type "double3" 0 -0.12283491596353582 1.1102230246251565e-16 ;
createNode mesh -n "plateShape" -p "plate";
	rename -uid "086E002D-4950-70A8-CA4A-098F5DFF934A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "stove";
	rename -uid "CD596D4C-47FF-EB51-D278-3E9754DAE2BC";
createNode transform -n "stove" -p "|stove";
	rename -uid "8C819F84-4F11-5A8F-A2E0-59BE86DDC308";
	setAttr ".t" -type "double3" -4.0360513708472219 0.85317820310592651 -4.4578192457187855 ;
	setAttr ".s" -type "double3" 1 1.706356349457151 1.4420965763549294 ;
	setAttr ".rp" -type "double3" -0.49999990249872539 -0.85317820310592651 1.5079141432975101 ;
	setAttr ".sp" -type "double3" -0.49999990249872539 -0.50000001663037774 -0.50000003201532928 ;
	setAttr ".spt" -type "double3" 0 -0.35317818647554877 2.0079141753128393 ;
createNode mesh -n "stoveShape" -p "|stove|stove";
	rename -uid "F52DA67F-48E2-8B4A-E971-9E843D95A1DE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.62499997019767761 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 65 ".uvst[0].uvsp[0:64]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.125 0 0.125 0.25 0.375 0 0.625 0 0.875 0 0.875 0.24400944 0.87336648
		 0.25 0.62663347 0.25 0.625 0.50599056 0.375 0.75 0.38463745 0.49836653 0.625 0.25163347
		 0.625 0.25 0.625 0.25163347 0.625 0.49836653 0.625 0.5 0.625 0.5 0.62499994 0.25163347
		 0.625 0.49836653 0.625 0.25163347 0.38463745 0.25163347 0.625 0.25163347 0.625 0.25
		 0.375 0.25 0.625 0.25163347 0.625 0.49836653 0.625 0.49836653 0.375 0.25 0.375 0.5
		 0.625 0.49836653 0.625 0.5 0.625 0.49836653 0.625 0.25 0.625 0.25 0.375 0.5 0.625
		 0.5 0.625 0.24400944 0.61477792 0.25 0.61477792 0.5 0.625 0.5 0.375 0.25 0.625 0.25
		 0.625 0.5 0.375 0.5 0.62486643 0.24935684 0.625 0.25091234 0.625 0.25107881 0.625
		 0.25163451 0.62472141 0.49973595 0.625 0.49908766 0.625 0.49836549 0.625 0.49892119
		 0.625 0.49836549 0.625 0.49908766 0.625 0.49892119 0.62499994 0.25091234 0.62499994
		 0.25163451 0.625 0.25107881 0.625 0.25 0.625 0.5 0.625 0.5 0.625 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".pt";
	setAttr ".pt[23]" -type "float3" -0.51179212 0 4.4408921e-16 ;
	setAttr ".pt[24]" -type "float3" -0.51179212 0 4.4408921e-16 ;
	setAttr ".pt[25]" -type "float3" -0.51179212 0 4.4408921e-16 ;
	setAttr ".pt[26]" -type "float3" -0.51179212 0 4.4408921e-16 ;
	setAttr ".pt[27]" -type "float3" -0.51179212 0 4.4408921e-16 ;
	setAttr ".pt[28]" -type "float3" -0.51179212 0 4.4408921e-16 ;
	setAttr ".pt[34]" -type "float3" -0.51179212 0 4.4408921e-16 ;
	setAttr ".pt[35]" -type "float3" -0.51179212 0 4.4408921e-16 ;
	setAttr ".pt[36]" -type "float3" -0.51179212 0 4.4408921e-16 ;
	setAttr ".pt[37]" -type "float3" -0.51179212 0 4.4408921e-16 ;
	setAttr ".pt[38]" -type "float3" -0.51179212 0 4.4408921e-16 ;
	setAttr ".pt[39]" -type "float3" -0.51179212 0 4.4408921e-16 ;
	setAttr ".pt[40]" -type "float3" -0.51179212 0 4.4408921e-16 ;
	setAttr ".pt[41]" -type "float3" -0.51179212 0 4.4408921e-16 ;
	setAttr ".pt[42]" -type "float3" -0.51179212 0 4.4408921e-16 ;
	setAttr ".pt[43]" -type "float3" -0.51179212 0 4.4408921e-16 ;
	setAttr ".pt[44]" -type "float3" -0.51179212 0 4.4408921e-16 ;
	setAttr ".pt[45]" -type "float3" -0.51179212 0 4.4408921e-16 ;
	setAttr ".pt[46]" -type "float3" -0.51179212 0 4.4408921e-16 ;
	setAttr ".pt[47]" -type "float3" -0.51179212 0 4.4408921e-16 ;
	setAttr ".pt[48]" -type "float3" -0.51179212 0 4.4408921e-16 ;
	setAttr ".pt[49]" -type "float3" -0.51179212 0 4.4408921e-16 ;
	setAttr ".pt[50]" -type "float3" -0.51179212 0 4.4408921e-16 ;
	setAttr ".pt[51]" -type "float3" -0.51179212 0 4.4408921e-16 ;
	setAttr ".pt[52]" -type "float3" -0.51179212 0 4.4408921e-16 ;
	setAttr ".pt[53]" -type "float3" -0.51179212 0 4.4408921e-16 ;
	setAttr ".pt[54]" -type "float3" -0.51179212 0 4.4408921e-16 ;
	setAttr ".pt[55]" -type "float3" -0.51179212 0 4.4408921e-16 ;
	setAttr -s 56 ".vt[0:55]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5
		 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.5 0.5903787 0.5 -0.48870903 0.60635364 0.49808627
		 -0.46145025 0.61297059 0.49346617 0.5 0.61297059 0.49346617 0.5 0.60635364 0.49808627
		 0.5 0.5903787 0.5 0.5 0.5903787 -0.5 0.5 0.60635364 -0.49808627 0.5 0.61297059 -0.49346617
		 -0.46145025 0.61297059 -0.49346617 -0.48870903 0.60635364 -0.49808627 -0.5 0.5903787 -0.5
		 0.5 0.5 0.5 0.5 0.52259195 0.5 0.45911181 0.5 0.5 0.5 0.47603777 0.5 0.5 0.5 0.49346617
		 1.094940662 0.52259195 0.49808627 1.067681909 0.52259195 0.5 1.067681909 0.50661701 0.49808627
		 1.067681909 0.5 0.49346617 1.094940662 0.50661701 0.49346617 1.10623169 0.52259195 0.49346617
		 0.5 0.5 -0.5 0.5 0.5 -0.49346617 0.5 0.47603777 -0.5 0.45911181 0.5 -0.5 0.5 0.52259195 -0.5
		 1.094940662 0.52259195 -0.49808627 1.10623169 0.52259195 -0.49346617 1.094940662 0.50661701 -0.49346617
		 1.067681909 0.5 -0.49346617 1.067681909 0.50661701 -0.49808627 1.067681909 0.52259195 -0.5
		 1.094940662 0.60635364 -0.49346617 1.10623169 0.5903787 -0.49346617 1.094940662 0.5903787 -0.49808627
		 1.067681909 0.5903787 -0.5 1.067681909 0.60635364 -0.49808627 1.067681909 0.61297059 -0.49346617
		 1.094940662 0.5903787 0.49808627 1.10623169 0.5903787 0.49346617 1.094940662 0.60635364 0.49346617
		 1.067681909 0.61297059 0.49346617 1.067681909 0.60635364 0.49808627 1.067681909 0.5903787 0.5
		 1.089930892 0.50955313 0.49723718 1.089930892 0.50955313 -0.49723718 1.089930892 0.60341769 -0.49723718
		 1.089930892 0.60341769 0.49723718;
	setAttr -s 108 ".ed[0:107]"  0 1 0 2 20 1 3 32 1 4 5 0 0 2 0 1 21 0 2 3 1
		 3 4 0 4 0 0 5 1 0 22 30 0 20 19 1 21 20 1 22 21 1 31 5 0 31 30 1 32 31 1 32 33 1
		 17 6 1 8 15 1 8 7 0 7 10 0 10 9 1 9 8 1 7 6 0 6 11 1 11 10 1 50 49 1 49 9 1 11 51 1
		 51 50 1 44 43 1 43 12 1 14 45 1 45 44 1 14 13 1 13 16 0 16 15 0 15 14 1 13 12 1 12 17 1
		 17 16 0 19 18 1 18 25 0 25 24 1 24 19 1 18 22 0 22 26 1 26 25 1 24 23 1 23 46 0 46 51 1
		 51 24 1 23 28 1 28 47 1 47 46 1 28 27 1 27 36 0 36 35 1 35 28 1 27 26 1 26 37 1 37 36 1
		 30 29 0 29 38 0 38 37 1 37 30 1 29 33 1 33 39 1 39 38 1 35 34 1 34 42 0 42 41 1 41 35 1
		 34 39 1 39 43 1 43 42 1 41 40 1 40 48 0 48 47 1 47 41 1 40 45 1 45 49 1 49 48 1 9 14 1
		 19 11 1 6 2 0 17 3 0 33 12 1 10 50 0 13 44 0 7 16 0 18 21 0 18 20 1 23 52 0 52 27 0
		 25 52 0 29 32 1 29 31 0 34 53 0 53 38 0 36 53 0 40 54 0 54 44 0 42 54 0 46 55 0 55 50 0
		 48 55 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 5 0 5 12 -2 -5
		mu 0 5 5 6 39 40 30
		f 5 2 16 14 -4 -8
		mu 0 5 37 41 11 0 12
		f 4 3 9 -1 -9
		mu 0 4 12 0 2 1
		f 6 -10 -15 15 -11 13 -6
		mu 0 6 6 7 8 9 10 39
		f 4 8 4 6 7
		mu 0 4 3 5 30 4
		f 4 20 21 22 23
		mu 0 4 23 43 44 24
		f 4 24 25 26 -22
		mu 0 4 43 26 35 44
		f 4 35 36 37 38
		mu 0 4 34 45 46 13
		f 4 39 40 41 -37
		mu 0 4 45 38 31 46
		f 4 42 43 44 45
		mu 0 4 25 47 49 36
		f 4 46 47 48 -44
		mu 0 4 47 14 16 49
		f 4 49 50 51 52
		mu 0 4 36 48 58 15
		f 4 53 54 55 -51
		mu 0 4 48 27 20 58
		f 4 56 57 58 59
		mu 0 4 27 50 53 28
		f 4 60 61 62 -58
		mu 0 4 50 16 17 53
		f 4 63 64 65 66
		mu 0 4 32 51 54 17
		f 4 67 68 69 -65
		mu 0 4 51 33 18 54
		f 4 70 71 72 73
		mu 0 4 28 52 56 29
		f 4 74 75 76 -72
		mu 0 4 52 18 19 56
		f 4 77 78 79 80
		mu 0 4 29 55 59 20
		f 4 81 82 83 -79
		mu 0 4 55 21 22 59
		f 4 -24 84 -39 -20
		mu 0 4 23 24 34 13
		f 5 1 11 85 -26 86
		mu 0 5 30 40 25 35 26
		f 4 -60 -74 -81 -55
		mu 0 4 27 28 29 20
		f 4 -7 -87 -19 87
		mu 0 4 37 30 26 31
		f 4 -48 10 -67 -62
		mu 0 4 16 14 32 17
		f 4 -69 88 -33 -76
		mu 0 4 18 33 38 19
		f 4 -85 -29 -83 -34
		mu 0 4 34 24 22 21
		f 4 -86 -46 -53 -30
		mu 0 4 35 25 36 15
		f 5 -18 -3 -88 -41 -89
		mu 0 5 33 41 37 31 38
		f 4 -23 89 27 28
		mu 0 4 24 44 60 22
		f 4 -27 29 30 -90
		mu 0 4 44 35 15 60
		f 4 -40 90 31 32
		mu 0 4 38 45 57 19
		f 4 -36 33 34 -91
		mu 0 4 45 34 21 57
		f 4 -25 91 -42 18
		mu 0 4 26 43 46 31
		f 4 -21 19 -38 -92
		mu 0 4 43 23 13 46
		f 3 -47 92 -14
		mu 0 3 14 47 39
		f 3 -93 93 -13
		mu 0 3 39 47 40
		f 3 -94 -43 -12
		mu 0 3 40 47 25
		f 4 -57 -54 94 95
		mu 0 4 50 27 48 61
		f 4 -50 -45 96 -95
		mu 0 4 48 36 49 61
		f 4 -49 -61 -96 -97
		mu 0 4 49 16 50 61
		f 3 -68 97 17
		mu 0 3 33 51 41
		f 3 -98 98 -17
		mu 0 3 41 51 42
		f 3 -99 -64 -16
		mu 0 3 42 51 32
		f 4 -70 -75 99 100
		mu 0 4 54 18 52 62
		f 4 -71 -59 101 -100
		mu 0 4 52 28 53 62
		f 4 -63 -66 -101 -102
		mu 0 4 53 17 54 62
		f 4 -35 -82 102 103
		mu 0 4 57 21 55 63
		f 4 -78 -73 104 -103
		mu 0 4 55 29 56 63
		f 4 -77 -32 -104 -105
		mu 0 4 56 19 57 63
		f 4 -31 -52 105 106
		mu 0 4 60 15 58 64
		f 4 -56 -80 107 -106
		mu 0 4 58 20 59 64
		f 4 -84 -28 -107 -108
		mu 0 4 59 22 60 64;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "heatComponent" -p "|stove";
	rename -uid "0A517D2A-4170-9F53-9260-F5978F41E548";
	setAttr ".t" -type "double3" -4.1752755198279345 1.9020335355976941 -1.8884710341734379 ;
	setAttr ".s" -type "double3" 0.36687603932504376 0.1871933155204269 0.36687603932504376 ;
	setAttr ".spt" -type "double3" -3.5498740734945531e-30 -1.0657923462222594e-16 -1.3805065841367707e-30 ;
createNode mesh -n "heatComponentShape" -p "heatComponent";
	rename -uid "5753FD51-499D-7266-E94E-2A816F908587";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".pt[0:25]" -type "float3"  0 0.13604562 0 0 0.13604562 
		0 0 -0.13604562 0 0 -0.13604562 0 0 -0.1360456 0 0 -0.13604562 0 0 0.13604562 0 0 
		0.13604562 0 0 -0.18366158 0 0 -6.4019004e-16 0 0 0.18366158 0 0 -6.4019004e-16 0 
		0 0.18366158 0 0 0.18366158 0 0 0.18366158 0 0 -6.4019004e-16 0 0 -0.18366158 0 0 
		-6.4019004e-16 0 0 -0.18366158 0 0 -0.18366158 0 0 -6.4019004e-16 0 0 -0.24488205 
		0 0 -6.4019004e-16 0 0 0.24488205 0 0 -6.4019004e-16 0 0 -6.4019004e-16 0;
createNode transform -n "heatComponent2" -p "|stove";
	rename -uid "5CAE95DD-44DD-5EAA-C227-109579AE5C6E";
	setAttr ".t" -type "double3" -3.7705586907551796 1.9020335355976941 -2.5627376985076169 ;
	setAttr ".s" -type "double3" 0.36687603932504376 0.1871933155204269 0.36687603932504376 ;
	setAttr ".spt" -type "double3" -3.5498740734945531e-30 -1.0657923462222594e-16 -1.3805065841367707e-30 ;
createNode mesh -n "heatComponentShape2" -p "heatComponent2";
	rename -uid "8B71A90F-48DA-037E-FECD-6CA2273E622C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 39 ".uvst[0].uvsp[0:38]" -type "float2" 0.375 0 0.375 1 0.625
		 0 0.625 1 0.375 0.25 0.625 0.25 0.375 0.5 0.125 0.25 0.625 0.5 0.875 0.25 0.375 0.75
		 0.125 0 0.625 0.75 0.875 0 0.5 0.125 0.5 0.375 0.5 0.625 0.5 0.875 0.75 0.125 0.25
		 0.125 0.5 0 0.5 1 0.625 0.125 0.5 0.25 0.375 0.125 0.625 0.375 0.75 0.25 0.5 0.5
		 0.375 0.375 0.25 0.25 0.625 0.625 0.875 0.125 0.5 0.75 0.375 0.625 0.125 0.125 0.625
		 0.875 0.75 0 0.375 0.875 0.25 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".pt[0:25]" -type "float3"  0 0.13604562 0 0 0.13604562 
		0 0 -0.13604562 0 0 -0.13604562 0 0 -0.1360456 0 0 -0.13604562 0 0 0.13604562 0 0 
		0.13604562 0 0 -0.18366158 0 0 -6.4019004e-16 0 0 0.18366158 0 0 -6.4019004e-16 0 
		0 0.18366158 0 0 0.18366158 0 0 0.18366158 0 0 -6.4019004e-16 0 0 -0.18366158 0 0 
		-6.4019004e-16 0 0 -0.18366158 0 0 -0.18366158 0 0 -6.4019004e-16 0 0 -0.24488205 
		0 0 -6.4019004e-16 0 0 0.24488205 0 0 -6.4019004e-16 0 0 -6.4019004e-16 0;
	setAttr -s 26 ".vt[0:25]"  -0.27777779 -0.27777779 0.27777779 0.27777779 -0.27777779 0.27777779
		 -0.27777779 0.27777779 0.27777776 0.27777779 0.27777779 0.27777779 -0.27777779 0.27777776 -0.27777779
		 0.27777779 0.27777779 -0.27777779 -0.27777779 -0.27777779 -0.27777776 0.27777779 -0.27777779 -0.27777779
		 -0.375 0.375 0 0.375 0 -0.375 0 -0.375 -0.375 -0.375 0 -0.375 0.375 -0.375 0 -0.375 -0.375 0
		 0 -0.375 0.375 0.375 0 0.375 0 0.375 0.375 -0.375 0 0.375 0.375 0.375 0 0 0.375 -0.375
		 0 0 0.5 0 0.5 0 0 0 -0.5 0 -0.5 0 0.5 0 0 -0.5 0 0;
	setAttr -s 48 ".ed[0:47]"  0 14 1 14 1 1 2 16 1 16 3 1 4 19 1 19 5 1
		 6 10 1 10 7 1 0 17 1 17 2 1 1 15 1 15 3 1 2 8 1 8 4 1 3 18 1 18 5 1 4 11 1 11 6 1
		 5 9 1 9 7 1 6 13 1 13 0 1 7 12 1 12 1 1 14 20 1 20 17 1 15 20 1 16 20 1 16 21 1 21 8 1
		 18 21 1 19 21 1 19 22 1 22 11 1 9 22 1 10 22 1 10 23 1 23 13 1 12 23 1 14 23 1 12 24 1
		 24 15 1 9 24 1 18 24 1 13 25 1 25 11 1 17 25 1 8 25 1;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 24 25 -9
		mu 0 4 0 20 14 24
		f 4 1 10 26 -25
		mu 0 4 20 2 22 14
		f 4 -27 11 -4 27
		mu 0 4 14 22 5 23
		f 4 -26 -28 -3 -10
		mu 0 4 24 14 23 4
		f 4 2 28 29 -13
		mu 0 4 4 23 15 28
		f 4 3 14 30 -29
		mu 0 4 23 5 25 15
		f 4 -31 15 -6 31
		mu 0 4 15 25 8 27
		f 4 -30 -32 -5 -14
		mu 0 4 28 15 27 6
		f 4 4 32 33 -17
		mu 0 4 6 27 16 33
		f 4 5 18 34 -33
		mu 0 4 27 8 30 16
		f 4 -35 19 -8 35
		mu 0 4 16 30 12 32
		f 4 -34 -36 -7 -18
		mu 0 4 33 16 32 10
		f 4 6 36 37 -21
		mu 0 4 10 32 17 37
		f 4 7 22 38 -37
		mu 0 4 32 12 35 17
		f 4 -39 23 -2 39
		mu 0 4 17 35 3 21
		f 4 -38 -40 -1 -22
		mu 0 4 37 17 21 1
		f 4 -24 40 41 -11
		mu 0 4 2 36 18 22
		f 4 -23 -20 42 -41
		mu 0 4 36 13 31 18
		f 4 -43 -19 -16 43
		mu 0 4 18 31 9 26
		f 4 -42 -44 -15 -12
		mu 0 4 22 18 26 5
		f 4 20 44 45 17
		mu 0 4 11 38 19 34
		f 4 21 8 46 -45
		mu 0 4 38 0 24 19
		f 4 -47 9 12 47
		mu 0 4 19 24 4 29
		f 4 -46 -48 13 16
		mu 0 4 34 19 29 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "heatComponent3" -p "|stove";
	rename -uid "F1527BBF-4B5B-39C8-3358-79A685307249";
	setAttr ".t" -type "double3" -4.1752753257751465 1.9020335355976941 -2.5627376985076169 ;
	setAttr ".s" -type "double3" 0.26810979629487613 0.13679923547004486 0.26810979629487613 ;
	setAttr ".spt" -type "double3" -3.5498740734945531e-30 -1.0657923462222594e-16 -1.3805065841367707e-30 ;
createNode mesh -n "heatComponentShape3" -p "heatComponent3";
	rename -uid "9643E02D-4AB6-4FC9-902A-7AB25AC85B11";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 39 ".uvst[0].uvsp[0:38]" -type "float2" 0.375 0 0.375 1 0.625
		 0 0.625 1 0.375 0.25 0.625 0.25 0.375 0.5 0.125 0.25 0.625 0.5 0.875 0.25 0.375 0.75
		 0.125 0 0.625 0.75 0.875 0 0.5 0.125 0.5 0.375 0.5 0.625 0.5 0.875 0.75 0.125 0.25
		 0.125 0.5 0 0.5 1 0.625 0.125 0.5 0.25 0.375 0.125 0.625 0.375 0.75 0.25 0.5 0.5
		 0.375 0.375 0.25 0.25 0.625 0.625 0.875 0.125 0.5 0.75 0.375 0.625 0.125 0.125 0.625
		 0.875 0.75 0 0.375 0.875 0.25 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".pt[0:25]" -type "float3"  0 0.13604562 0 0 0.13604562 
		0 0 -0.13604562 0 0 -0.13604562 0 0 -0.1360456 0 0 -0.13604562 0 0 0.13604562 0 0 
		0.13604562 0 0 -0.18366158 0 0 -6.4019004e-16 0 0 0.18366158 0 0 -6.4019004e-16 0 
		0 0.18366158 0 0 0.18366158 0 0 0.18366158 0 0 -6.4019004e-16 0 0 -0.18366158 0 0 
		-6.4019004e-16 0 0 -0.18366158 0 0 -0.18366158 0 0 -6.4019004e-16 0 0 -0.24488205 
		0 0 -6.4019004e-16 0 0 0.24488205 0 0 -6.4019004e-16 0 0 -6.4019004e-16 0;
	setAttr -s 26 ".vt[0:25]"  -0.27777779 -0.27777779 0.27777779 0.27777779 -0.27777779 0.27777779
		 -0.27777779 0.27777779 0.27777776 0.27777779 0.27777779 0.27777779 -0.27777779 0.27777776 -0.27777779
		 0.27777779 0.27777779 -0.27777779 -0.27777779 -0.27777779 -0.27777776 0.27777779 -0.27777779 -0.27777779
		 -0.375 0.375 0 0.375 0 -0.375 0 -0.375 -0.375 -0.375 0 -0.375 0.375 -0.375 0 -0.375 -0.375 0
		 0 -0.375 0.375 0.375 0 0.375 0 0.375 0.375 -0.375 0 0.375 0.375 0.375 0 0 0.375 -0.375
		 0 0 0.5 0 0.5 0 0 0 -0.5 0 -0.5 0 0.5 0 0 -0.5 0 0;
	setAttr -s 48 ".ed[0:47]"  0 14 1 14 1 1 2 16 1 16 3 1 4 19 1 19 5 1
		 6 10 1 10 7 1 0 17 1 17 2 1 1 15 1 15 3 1 2 8 1 8 4 1 3 18 1 18 5 1 4 11 1 11 6 1
		 5 9 1 9 7 1 6 13 1 13 0 1 7 12 1 12 1 1 14 20 1 20 17 1 15 20 1 16 20 1 16 21 1 21 8 1
		 18 21 1 19 21 1 19 22 1 22 11 1 9 22 1 10 22 1 10 23 1 23 13 1 12 23 1 14 23 1 12 24 1
		 24 15 1 9 24 1 18 24 1 13 25 1 25 11 1 17 25 1 8 25 1;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 24 25 -9
		mu 0 4 0 20 14 24
		f 4 1 10 26 -25
		mu 0 4 20 2 22 14
		f 4 -27 11 -4 27
		mu 0 4 14 22 5 23
		f 4 -26 -28 -3 -10
		mu 0 4 24 14 23 4
		f 4 2 28 29 -13
		mu 0 4 4 23 15 28
		f 4 3 14 30 -29
		mu 0 4 23 5 25 15
		f 4 -31 15 -6 31
		mu 0 4 15 25 8 27
		f 4 -30 -32 -5 -14
		mu 0 4 28 15 27 6
		f 4 4 32 33 -17
		mu 0 4 6 27 16 33
		f 4 5 18 34 -33
		mu 0 4 27 8 30 16
		f 4 -35 19 -8 35
		mu 0 4 16 30 12 32
		f 4 -34 -36 -7 -18
		mu 0 4 33 16 32 10
		f 4 6 36 37 -21
		mu 0 4 10 32 17 37
		f 4 7 22 38 -37
		mu 0 4 32 12 35 17
		f 4 -39 23 -2 39
		mu 0 4 17 35 3 21
		f 4 -38 -40 -1 -22
		mu 0 4 37 17 21 1
		f 4 -24 40 41 -11
		mu 0 4 2 36 18 22
		f 4 -23 -20 42 -41
		mu 0 4 36 13 31 18
		f 4 -43 -19 -16 43
		mu 0 4 18 31 9 26
		f 4 -42 -44 -15 -12
		mu 0 4 22 18 26 5
		f 4 20 44 45 17
		mu 0 4 11 38 19 34
		f 4 21 8 46 -45
		mu 0 4 38 0 24 19
		f 4 -47 9 12 47
		mu 0 4 19 24 4 29
		f 4 -46 -48 13 16
		mu 0 4 34 19 29 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "heatComponent4" -p "|stove";
	rename -uid "56894D41-45BD-DB67-806C-8990C39AF275";
	setAttr ".t" -type "double3" -3.7705585956573486 1.9020335355976941 -1.8884710073471069 ;
	setAttr ".s" -type "double3" 0.26810979629487613 0.13679923547004486 0.26810979629487613 ;
	setAttr ".spt" -type "double3" -3.5498740734945531e-30 -1.0657923462222594e-16 -1.3805065841367707e-30 ;
createNode mesh -n "heatComponentShape4" -p "heatComponent4";
	rename -uid "70C248AC-4CA2-4C46-9362-7CAC150648B1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 39 ".uvst[0].uvsp[0:38]" -type "float2" 0.375 0 0.375 1 0.625
		 0 0.625 1 0.375 0.25 0.625 0.25 0.375 0.5 0.125 0.25 0.625 0.5 0.875 0.25 0.375 0.75
		 0.125 0 0.625 0.75 0.875 0 0.5 0.125 0.5 0.375 0.5 0.625 0.5 0.875 0.75 0.125 0.25
		 0.125 0.5 0 0.5 1 0.625 0.125 0.5 0.25 0.375 0.125 0.625 0.375 0.75 0.25 0.5 0.5
		 0.375 0.375 0.25 0.25 0.625 0.625 0.875 0.125 0.5 0.75 0.375 0.625 0.125 0.125 0.625
		 0.875 0.75 0 0.375 0.875 0.25 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".pt[0:25]" -type "float3"  0 0.13604562 0 0 0.13604562 
		0 0 -0.13604562 0 0 -0.13604562 0 0 -0.1360456 0 0 -0.13604562 0 0 0.13604562 0 0 
		0.13604562 0 0 -0.18366158 0 0 -6.4019004e-16 0 0 0.18366158 0 0 -6.4019004e-16 0 
		0 0.18366158 0 0 0.18366158 0 0 0.18366158 0 0 -6.4019004e-16 0 0 -0.18366158 0 0 
		-6.4019004e-16 0 0 -0.18366158 0 0 -0.18366158 0 0 -6.4019004e-16 0 0 -0.24488205 
		0 0 -6.4019004e-16 0 0 0.24488205 0 0 -6.4019004e-16 0 0 -6.4019004e-16 0;
	setAttr -s 26 ".vt[0:25]"  -0.27777779 -0.27777779 0.27777779 0.27777779 -0.27777779 0.27777779
		 -0.27777779 0.27777779 0.27777776 0.27777779 0.27777779 0.27777779 -0.27777779 0.27777776 -0.27777779
		 0.27777779 0.27777779 -0.27777779 -0.27777779 -0.27777779 -0.27777776 0.27777779 -0.27777779 -0.27777779
		 -0.375 0.375 0 0.375 0 -0.375 0 -0.375 -0.375 -0.375 0 -0.375 0.375 -0.375 0 -0.375 -0.375 0
		 0 -0.375 0.375 0.375 0 0.375 0 0.375 0.375 -0.375 0 0.375 0.375 0.375 0 0 0.375 -0.375
		 0 0 0.5 0 0.5 0 0 0 -0.5 0 -0.5 0 0.5 0 0 -0.5 0 0;
	setAttr -s 48 ".ed[0:47]"  0 14 1 14 1 1 2 16 1 16 3 1 4 19 1 19 5 1
		 6 10 1 10 7 1 0 17 1 17 2 1 1 15 1 15 3 1 2 8 1 8 4 1 3 18 1 18 5 1 4 11 1 11 6 1
		 5 9 1 9 7 1 6 13 1 13 0 1 7 12 1 12 1 1 14 20 1 20 17 1 15 20 1 16 20 1 16 21 1 21 8 1
		 18 21 1 19 21 1 19 22 1 22 11 1 9 22 1 10 22 1 10 23 1 23 13 1 12 23 1 14 23 1 12 24 1
		 24 15 1 9 24 1 18 24 1 13 25 1 25 11 1 17 25 1 8 25 1;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 24 25 -9
		mu 0 4 0 20 14 24
		f 4 1 10 26 -25
		mu 0 4 20 2 22 14
		f 4 -27 11 -4 27
		mu 0 4 14 22 5 23
		f 4 -26 -28 -3 -10
		mu 0 4 24 14 23 4
		f 4 2 28 29 -13
		mu 0 4 4 23 15 28
		f 4 3 14 30 -29
		mu 0 4 23 5 25 15
		f 4 -31 15 -6 31
		mu 0 4 15 25 8 27
		f 4 -30 -32 -5 -14
		mu 0 4 28 15 27 6
		f 4 4 32 33 -17
		mu 0 4 6 27 16 33
		f 4 5 18 34 -33
		mu 0 4 27 8 30 16
		f 4 -35 19 -8 35
		mu 0 4 16 30 12 32
		f 4 -34 -36 -7 -18
		mu 0 4 33 16 32 10
		f 4 6 36 37 -21
		mu 0 4 10 32 17 37
		f 4 7 22 38 -37
		mu 0 4 32 12 35 17
		f 4 -39 23 -2 39
		mu 0 4 17 35 3 21
		f 4 -38 -40 -1 -22
		mu 0 4 37 17 21 1
		f 4 -24 40 41 -11
		mu 0 4 2 36 18 22
		f 4 -23 -20 42 -41
		mu 0 4 36 13 31 18
		f 4 -43 -19 -16 43
		mu 0 4 18 31 9 26
		f 4 -42 -44 -15 -12
		mu 0 4 22 18 26 5
		f 4 20 44 45 17
		mu 0 4 11 38 19 34
		f 4 21 8 46 -45
		mu 0 4 38 0 24 19
		f 4 -47 9 12 47
		mu 0 4 19 24 4 29
		f 4 -46 -48 13 16
		mu 0 4 34 19 29 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "knives";
	rename -uid "89929FF7-4B00-D9A4-AA32-D6928D6688E9";
	setAttr ".t" -type "double3" -0.38651549775309407 2.9857283470693545 2.5664222185143739 ;
	setAttr ".r" -type "double3" -89.999999999999957 -3.1805546814635183e-15 -90 ;
	setAttr ".s" -type "double3" 0.47106165882533207 0.47106165882533207 0.47106165882533207 ;
	setAttr ".rp" -type "double3" -0.55415201187133789 -0.0038639209233224392 0.36934912204742432 ;
	setAttr ".sp" -type "double3" -0.55415201187133789 -0.0038639209233224392 0.36934912204742432 ;
createNode transform -n "knife1" -p "knives";
	rename -uid "8D134DC3-4D84-27DC-D14B-46BD3ECC61B5";
	setAttr ".r" -type "double3" 0 -3.7567252833754292 0 ;
	setAttr ".s" -type "double3" 0.45568381959528076 0.10319012310357445 0.10319012310357445 ;
createNode mesh -n "knifeShape1" -p "knife1";
	rename -uid "A3695ABE-4036-903E-8419-229C01EF22CE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.48585039377212524 0.48592507839202881 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt";
	setAttr ".pt[40]" -type "float3" 0.023308067 -0.049462222 -0.058192156 ;
	setAttr ".pt[41]" -type "float3" 0.024361094 -0.059992433 -0.052134492 ;
	setAttr ".pt[43]" -type "float3" 0.024255473 -0.059765365 0.052590884 ;
	setAttr ".pt[44]" -type "float3" 0.023203487 -0.049898915 0.05807016 ;
	setAttr ".pt[46]" -type "float3" 0.023308067 0.049462222 0.058192156 ;
	setAttr ".pt[47]" -type "float3" 0.024361094 0.059992433 0.052134492 ;
	setAttr ".pt[49]" -type "float3" 0.024255473 0.059765365 -0.052590884 ;
	setAttr ".pt[50]" -type "float3" 0.023203487 0.049898915 -0.05807016 ;
	setAttr ".pt[53]" -type "float3" 0.024308288 0.074817836 -0.00022820101 ;
	setAttr ".pt[56]" -type "float3" 0 0 -0.34642512 ;
	setAttr ".pt[57]" -type "float3" 0 0 -0.42251518 ;
	setAttr ".pt[58]" -type "float3" 0 0 -0.36492166 ;
	setAttr ".pt[61]" -type "float3" 0 0 -0.36492166 ;
	setAttr ".pt[62]" -type "float3" 0 0 -0.42251518 ;
	setAttr ".pt[63]" -type "float3" 0 0 -0.34642512 ;
	setAttr ".pt[66]" -type "float3" 0.024308288 -0.074817836 0.00022820101 ;
	setAttr ".pt[73]" -type "float3" 0.023255784 -0.00021834878 0.074739225 ;
	setAttr ".pt[85]" -type "float3" 0 0 0.065025151 ;
	setAttr ".pt[87]" -type "float3" 0.023255784 0.00021834878 -0.074739225 ;
createNode transform -n "knife2" -p "knives";
	rename -uid "34CD5DFB-4B3D-5607-E296-1E976F2D6BCD";
	setAttr ".t" -type "double3" 0 0 -0.42737691527748112 ;
	setAttr ".s" -type "double3" 0.45568381959528076 0.10319012310357445 0.10319012310357445 ;
createNode mesh -n "knifeShape2" -p "knife2";
	rename -uid "057AA793-4A14-A0D8-BB13-A4AACA792A2C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 105 ".uvst[0].uvsp[0:104]" -type "float2" 0.125 0 0.375 0 0.375
		 0.25 0.125 0.25 0.125 0.25 0.375 0.25 0.375 0 0.125 0 0.125 0.25 0.375 0.25 0.375
		 0 0.125 0 0.125 0.25 0.375 0.25 0.375 0 0.125 0 0.37958139 0.97185016 0.37958139
		 0 0.37955707 0.028000474 0.625 0.97170079 0.61859161 0.97170079 0.625 0.77829921
		 0.65329921 0.028299242 0.37958139 0.22185014 0.61859161 0.22170076 0.37955707 0.27800047
		 0.625 0.27829924 0.37958139 0.47185016 0.61859161 0.47170079 0.37955707 0.52800047
		 0.625 0.52829921 0.625 0.72170073 0.37958139 0.72185016 0.61859161 0.72170079 0.61859161
		 0.77829921 0.125 0.22269024 0.15261899 0 0.33610651 0 0.37500003 0.02730977 0.375
		 0.21320283 0.34738103 0.25 0.16389351 0.25 0.61859161 0.028299242 0.61859161 0.27829924
		 0.61859161 0.52829921 0.37955707 0.77800047 0.84670079 0.028299242 0.84670073 0.22170076
		 0.125 0.036797173 0.375 0 0.125 0 0.375 0.25 0.375 0 0.125 0.25 0.375 0.25 0.125
		 0 0.125 0.25 0.61859161 0 0.65329921 0.22170076 0.625 0.47170076 0.37956923 0.37492532
		 0.25563726 0.25 0.25 0.25 0.25 0.25 0.25 0.25 0.25 0.25 0.25 0.25 0.25 0.25 0.25
		 0 0.25 0 0.25 0 0.25 0 0.25 0 0.25 0 0.24436274 0 0.37956923 0.87492532 0.61859161
		 0.875 0.625 0.875 0.75 0.028299242 0.625 0.375 0.75 0.22170076 0.61859161 0.375 0.37956923
		 0.12492531 0.375 0.1202563 0.375 0.125 0.375 0.125 0.375 0.125 0.375 0.125 0.375
		 0.125 0.375 0.125 0.25 0.125 0.125 0.125 0.125 0.125 0.125 0.125 0.125 0.125 0.125
		 0.125 0.125 0.125 0.125 0.12974371 0.37956923 0.62492532 0.61859161 0.625 0.625 0.625
		 0.84670079 0.125 0.75 0.125 0.65329921 0.125 0.61859161 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 47 ".pt";
	setAttr ".pt[4]" -type "float3" -0.76627111 0 0.021286607 ;
	setAttr ".pt[5]" -type "float3" -0.8790853 0 -0.06397903 ;
	setAttr ".pt[6]" -type "float3" -0.8790853 0 -0.06397903 ;
	setAttr ".pt[7]" -type "float3" -0.76627111 0 0.021286607 ;
	setAttr ".pt[8]" -type "float3" -0.53850567 0 0.10244334 ;
	setAttr ".pt[9]" -type "float3" -0.53850567 0 -0.06397903 ;
	setAttr ".pt[10]" -type "float3" -0.53850567 0 -0.06397903 ;
	setAttr ".pt[11]" -type "float3" -0.53850567 0 0.10244334 ;
	setAttr ".pt[12]" -type "float3" -0.30082655 0 0.12628567 ;
	setAttr ".pt[13]" -type "float3" -0.30082655 0 -0.06397903 ;
	setAttr ".pt[14]" -type "float3" -0.30082655 0 -0.06397903 ;
	setAttr ".pt[15]" -type "float3" -0.30082655 0 0.12628567 ;
	setAttr ".pt[16]" -type "float3" -0.063147239 0 0.099491239 ;
	setAttr ".pt[17]" -type "float3" -0.063147239 0 -0.06397903 ;
	setAttr ".pt[18]" -type "float3" -0.063147239 0 -0.06397903 ;
	setAttr ".pt[19]" -type "float3" -0.063147239 0 0.099491239 ;
	setAttr ".pt[40]" -type "float3" 0.023308067 -0.049462222 -0.058192156 ;
	setAttr ".pt[41]" -type "float3" 0.024361094 -0.059992433 -0.052134492 ;
	setAttr ".pt[43]" -type "float3" 0.024255473 -0.059765365 0.052590884 ;
	setAttr ".pt[44]" -type "float3" 0.023203487 -0.049898915 0.05807016 ;
	setAttr ".pt[46]" -type "float3" 0.023308067 0.049462222 0.058192156 ;
	setAttr ".pt[47]" -type "float3" 0.024361094 0.059992433 0.052134492 ;
	setAttr ".pt[49]" -type "float3" 0.024255473 0.059765365 -0.052590884 ;
	setAttr ".pt[50]" -type "float3" 0.023203487 0.049898915 -0.05807016 ;
	setAttr ".pt[53]" -type "float3" 0.024308288 0.074817836 -0.00022820101 ;
	setAttr ".pt[56]" -type "float3" -0.063147239 0 -0.32161224 ;
	setAttr ".pt[57]" -type "float3" -0.30082655 0 -0.38822114 ;
	setAttr ".pt[58]" -type "float3" -0.53850567 0 -0.3378042 ;
	setAttr ".pt[59]" -type "float3" -0.84284288 0 -0.034359336 ;
	setAttr ".pt[60]" -type "float3" -0.84284288 0 -0.034359336 ;
	setAttr ".pt[61]" -type "float3" -0.53850567 0 -0.3378042 ;
	setAttr ".pt[62]" -type "float3" -0.30082655 0 -0.38822114 ;
	setAttr ".pt[63]" -type "float3" -0.063147239 0 -0.32161224 ;
	setAttr ".pt[66]" -type "float3" 0.024308288 -0.074817836 0.00022820101 ;
	setAttr ".pt[73]" -type "float3" 0.023255784 -0.00021834878 0.074739225 ;
	setAttr ".pt[76]" -type "float3" -0.063147239 0 -0.07701385 ;
	setAttr ".pt[77]" -type "float3" -0.30082655 0 -0.07701385 ;
	setAttr ".pt[78]" -type "float3" -0.53850567 0 -0.07701385 ;
	setAttr ".pt[79]" -type "float3" -0.8790853 0 -0.06317842 ;
	setAttr ".pt[80]" -type "float3" -0.84863847 0 -0.034359336 ;
	setAttr ".pt[81]" -type "float3" -0.76627111 0 0.034321904 ;
	setAttr ".pt[82]" -type "float3" -0.53850567 0 0.11547816 ;
	setAttr ".pt[83]" -type "float3" -0.30082655 0 0.13932049 ;
	setAttr ".pt[84]" -type "float3" -0.063147239 0 0.11252654 ;
	setAttr ".pt[85]" -type "float3" 0 0 0.065025151 ;
	setAttr ".pt[87]" -type "float3" 0.023255784 0.00021834878 -0.074739225 ;
	setAttr -s 94 ".vt[0:93]"  -0.63243228 -0.055160612 -0.36615676 -0.63243228 -0.055160612 0.36615676
		 -0.63243228 0.055160612 0.36615676 -0.63243228 0.055160612 -0.36615676 -1.86089087 -0.035925936 -0.31812647
		 -2.0081984997 -0.035925936 0.36615676 -2.0081984997 0.035925936 0.36615676 -1.86089087 0.035925936 -0.31812647
		 -1.56348515 0.035925936 -0.96943414 -1.56348515 0.035925936 0.36615676 -1.56348515 -0.035925936 0.36615676
		 -1.56348515 -0.035925936 -0.96943414 -1.25313413 0.035925936 -1.16077638 -1.25313413 0.035925936 0.36615676
		 -1.25313413 -0.035925936 0.36615676 -1.25313413 -0.035925936 -1.16077638 -0.94278324 0.035925936 -0.94574457
		 -0.94278324 0.035925936 0.36615676 -0.94278324 -0.035925936 0.36615676 -0.94278324 -0.035925936 -0.94574457
		 -0.48167446 -0.5 0.38740057 -0.48177171 -0.38799807 0.5 0.5 -0.38680306 0.38680306
		 0.4743664 -0.38680306 0.5 0.4743664 -0.5 0.38680306 -0.48167446 0.38740057 0.5 -0.48177171 0.5 0.38799807
		 0.4743664 0.5 0.38680306 0.4743664 0.38680306 0.5 0.5 0.38680306 0.38680306 -0.48167446 0.5 -0.38740057
		 -0.48177171 0.38799807 -0.5 0.4743664 0.38680306 -0.5 0.4743664 0.5 -0.38680306 0.5 0.38680306 -0.38680306
		 -0.48167446 -0.38740057 -0.5 -0.48177171 -0.5 -0.38799807 0.4743664 -0.5 -0.38680306
		 0.4743664 -0.38680306 -0.5 0.5 -0.38680306 -0.38680306 -0.55905104 -0.29415482 -0.40194312
		 -0.56333101 -0.39483598 -0.28436005 -0.59314746 -0.29088095 -0.36615676 -0.56279123 -0.39573237 0.2818034
		 -0.558761 -0.29318568 0.40242478 -0.59356767 -0.28835917 0.36615676 -0.55905104 0.29415482 0.40194312
		 -0.56333101 0.39483598 0.28436005 -0.59314746 0.29088095 0.36615676 -0.56279123 0.39573237 -0.2818034
		 -0.558761 0.29318568 -0.40242478 -0.59356767 0.28835917 -0.36615676 -0.48172307 0.62474281 0.00029875338
		 -0.56306112 0.49390185 0.0012783259 -0.59335756 0.36187607 0 -0.63243228 0.068922386 0
		 -0.94278324 0.044888943 0 -1.25313413 0.044888943 0 -1.56348515 0.044888943 0 -1.96087384 0.044888943 0.12845117
		 -1.96087384 -0.044888943 0.12845117 -1.56348515 -0.044888943 0 -1.25313413 -0.044888943 0
		 -0.94278324 -0.044888943 0 -0.63243228 -0.068922386 0 -0.59335756 -0.36187607 0 -0.56306112 -0.49390185 -0.0012783259
		 -0.48172307 -0.62474281 -0.00029875338 0.4743664 -0.62474281 0 0.5 -0.48330486 0
		 0.5 0.48330486 0 0.4743664 0.62474281 0 -0.48172307 -0.00029875338 0.64285004 -0.55890602 0.00048457086 0.517088
		 -0.59335756 0.0012608916 0.4707678 -0.63243228 0 0.4707678 -0.94278324 0 0.4707678
		 -1.25313413 0 0.4707678 -1.56348515 0 0.4707678 -2.0081984997 0 0.35973457 -1.96844184 0 0.12845117
		 -1.86089087 0 -0.42273754 -1.56348515 0 -1.074045181 -1.25313413 0 -1.26538742 -0.94278324 0 -1.050355554
		 -0.63243228 0 -0.4707678 -0.59335756 -0.0012608916 -0.4707678 -0.55890602 -0.00048457086 -0.517088
		 -0.48172307 0.00029875338 -0.64285004 0.4743664 0 -0.64285004 0.5 0 -0.49731278 0.5 0 0
		 0.5 0 0.49731278 0.4743664 0 0.64285004;
	setAttr -s 188 ".ed";
	setAttr ".ed[0:165]"  0 64 0 1 75 1 2 55 0 3 85 1 0 19 0 1 18 0 4 60 0 2 17 0
		 5 79 0 3 16 0 6 59 0 7 81 0 8 7 0 9 6 0 8 58 1 10 5 0 9 78 1 11 4 0 10 61 1 11 82 1
		 12 8 0 13 9 0 12 57 1 14 10 0 13 77 1 15 11 0 14 62 1 15 83 1 16 12 0 17 13 0 16 56 1
		 18 14 0 17 76 1 19 15 0 18 63 1 19 84 1 44 43 1 43 20 0 41 36 0 36 67 1 21 20 1 20 24 0
		 24 23 0 23 21 0 44 21 0 21 72 1 22 24 0 24 68 0 37 39 0 39 69 0 23 22 0 22 92 0 29 28 0
		 28 93 0 47 46 1 46 25 0 26 25 1 25 28 0 28 27 0 27 26 0 47 26 0 26 52 1 27 29 0 29 70 0
		 34 33 0 33 71 0 50 49 1 49 30 0 31 30 1 30 33 0 33 32 0 32 31 0 50 31 0 31 88 1 32 34 0
		 34 90 0 39 38 0 38 89 0 41 40 1 40 35 0 36 35 1 35 38 0 38 37 0 37 36 0 40 42 0 42 86 1
		 51 50 0 50 87 1 42 41 0 41 66 1 43 45 0 45 65 1 45 44 0 44 73 1 46 48 0 48 74 1 48 47 0
		 47 53 1 49 51 0 51 54 1 45 1 0 0 42 0 48 2 0 51 3 0 52 30 1 53 49 1 52 53 1 54 48 1
		 53 54 1 55 3 0 54 55 1 56 17 1 55 56 1 57 13 1 56 57 1 58 9 1 57 58 1 59 7 0 58 59 1
		 60 5 0 59 80 1 61 11 1 60 61 1 62 15 1 61 62 1 63 19 1 62 63 1 64 1 0 63 64 1 65 42 1
		 64 65 1 66 43 1 65 66 1 67 20 1 66 67 1 68 37 0 67 68 1 69 22 0 68 69 1 70 34 0 69 91 1
		 71 27 0 70 71 1 71 52 1 72 25 1 73 46 1 72 73 1 74 45 1 73 74 1 75 2 1 74 75 1 76 18 1
		 75 76 1 77 14 1 76 77 1 78 10 1 77 78 1 79 6 0 78 79 1 80 60 1 79 80 1 81 4 0 80 81 1
		 82 8 1 81 82 1 83 12 1;
	setAttr ".ed[166:187]" 82 83 1 84 16 1 83 84 1 85 0 1 84 85 1 86 51 1 85 86 1
		 87 40 1 86 87 1 88 35 1 87 88 1 89 32 0 88 89 1 90 39 0 89 90 1 91 70 1 90 91 1 92 29 0
		 91 92 1 93 23 0 92 93 1 93 72 1;
	setAttr -s 96 -ch 376 ".fc[0:95]" -type "polyFaces" 
		f 4 119 8 160 159
		mu 0 4 68 1 89 90
		f 4 127 5 34 128
		mu 0 4 72 52 14 71
		f 4 1 152 151 -6
		mu 0 4 52 85 86 14
		f 4 2 112 111 -8
		mu 0 4 54 63 64 13
		f 4 169 4 35 170
		mu 0 4 95 50 15 94
		f 4 -116 118 -11 -14
		mu 0 4 5 66 67 2
		f 4 -156 158 -9 -16
		mu 0 4 6 88 89 1
		f 4 -19 15 -120 122
		mu 0 4 69 6 1 68
		f 4 -20 17 -162 164
		mu 0 4 92 7 0 91
		f 4 -114 116 115 -22
		mu 0 4 9 65 66 5
		f 4 -154 156 155 -24
		mu 0 4 10 87 88 6
		f 4 -27 23 18 124
		mu 0 4 70 10 6 69
		f 4 -28 25 19 166
		mu 0 4 93 11 7 92
		f 4 -112 114 113 -30
		mu 0 4 13 64 65 9
		f 4 -152 154 153 -32
		mu 0 4 14 86 87 10
		f 4 -35 31 26 126
		mu 0 4 71 14 10 70
		f 4 -36 33 27 168
		mu 0 4 94 15 11 93
		f 4 36 37 -41 -45
		mu 0 4 38 37 17 18
		f 4 134 133 -38 -132
		mu 0 4 74 75 16 37
		f 4 40 41 42 43
		mu 0 4 18 17 57 42
		f 4 44 45 146 -94
		mu 0 4 38 18 82 83
		f 4 46 47 138 137
		mu 0 4 19 20 76 77
		f 4 50 51 186 185
		mu 0 4 42 22 103 104
		f 4 54 55 -57 -61
		mu 0 4 40 39 23 25
		f 4 56 57 58 59
		mu 0 4 25 23 24 43
		f 4 60 61 106 -98
		mu 0 4 40 25 60 61
		f 4 62 63 142 141
		mu 0 4 43 26 79 81
		f 4 66 67 -69 -73
		mu 0 4 35 41 27 29
		f 4 68 69 70 71
		mu 0 4 29 27 28 44
		f 4 176 175 -80 -174
		mu 0 4 97 98 32 48
		f 4 180 179 76 77
		mu 0 4 99 100 31 33
		f 4 78 79 -81 -39
		mu 0 4 36 48 32 45
		f 4 80 81 82 83
		mu 0 4 45 32 33 34
		f 4 84 85 174 173
		mu 0 4 48 55 96 97
		f 4 132 131 90 91
		mu 0 4 73 74 37 49
		f 4 92 93 148 147
		mu 0 4 49 38 83 84
		f 4 96 97 108 107
		mu 0 4 51 40 61 62
		f 4 -44 -186 187 -46
		mu 0 4 18 42 104 82
		f 4 -60 -142 143 -62
		mu 0 4 25 43 81 60
		f 4 178 -78 -82 -176
		mu 0 4 98 99 33 32
		f 4 136 -48 -42 -134
		mu 0 4 75 76 20 16
		f 4 -138 140 184 -52
		mu 0 4 22 78 102 103
		f 4 -92 100 -128 130
		mu 0 4 73 49 52 72
		f 4 -148 150 -2 -101
		mu 0 4 49 84 85 52
		f 4 -108 110 -3 -103
		mu 0 4 51 62 63 54
		f 4 -86 -102 -170 172
		mu 0 4 96 55 50 95
		f 3 -51 -43 -47
		mu 0 3 22 42 57
		f 3 -59 -53 -63
		mu 0 3 43 24 58
		f 3 -71 -65 -75
		mu 0 3 44 28 59
		f 3 -83 -77 -49
		mu 0 3 34 33 31
		f 3 -79 -89 -85
		mu 0 3 48 36 55
		f 3 -37 -93 -91
		mu 0 3 37 38 49
		f 3 -55 -97 -95
		mu 0 3 39 40 51
		f 3 -67 -87 -99
		mu 0 3 41 35 53
		f 4 104 -68 -106 -107
		mu 0 4 60 27 41 61
		f 4 -109 105 98 99
		mu 0 4 62 61 41 53
		f 4 -111 -100 103 -110
		mu 0 4 63 62 53 56
		f 4 -113 109 9 30
		mu 0 4 64 63 56 12
		f 4 -115 -31 28 22
		mu 0 4 65 64 12 8
		f 4 -117 -23 20 14
		mu 0 4 66 65 8 4
		f 4 -119 -15 12 -118
		mu 0 4 67 66 4 3
		f 4 6 -160 162 161
		mu 0 4 0 68 90 91
		f 4 -122 -123 -7 -18
		mu 0 4 7 69 68 0
		f 4 -124 -125 121 -26
		mu 0 4 11 70 69 7
		f 4 -126 -127 123 -34
		mu 0 4 15 71 70 11
		f 4 0 -129 125 -5
		mu 0 4 50 72 71 15
		f 4 -130 -131 -1 101
		mu 0 4 55 73 72 50
		f 4 88 89 -133 129
		mu 0 4 55 36 74 73
		f 4 38 39 -135 -90
		mu 0 4 36 45 75 74
		f 4 -84 -136 -137 -40
		mu 0 4 45 34 76 75
		f 4 -139 135 48 49
		mu 0 4 77 76 34 21
		f 4 -141 -50 -180 182
		mu 0 4 102 78 46 101
		f 4 -143 139 64 65
		mu 0 4 81 79 59 28
		f 4 -144 -66 -70 -105
		mu 0 4 60 81 28 27
		f 4 144 -56 -146 -147
		mu 0 4 82 23 39 83
		f 4 -149 145 94 95
		mu 0 4 84 83 39 51
		f 4 -151 -96 102 -150
		mu 0 4 85 84 51 54
		f 4 -153 149 7 32
		mu 0 4 86 85 54 13
		f 4 -155 -33 29 24
		mu 0 4 87 86 13 9
		f 4 -157 -25 21 16
		mu 0 4 88 87 9 5
		f 4 -159 -17 13 -158
		mu 0 4 89 88 5 2
		f 4 -161 157 10 120
		mu 0 4 90 89 2 67
		f 4 -163 -121 117 11
		mu 0 4 91 90 67 3
		f 4 -164 -165 -12 -13
		mu 0 4 4 92 91 3
		f 4 -166 -167 163 -21
		mu 0 4 8 93 92 4
		f 4 -168 -169 165 -29
		mu 0 4 12 94 93 8
		f 4 3 -171 167 -10
		mu 0 4 56 95 94 12
		f 4 -172 -173 -4 -104
		mu 0 4 53 96 95 56
		f 4 -175 171 86 87
		mu 0 4 97 96 53 35
		f 4 72 73 -177 -88
		mu 0 4 35 29 98 97
		f 4 -72 -178 -179 -74
		mu 0 4 29 44 99 98
		f 4 74 75 -181 177
		mu 0 4 44 30 100 99
		f 4 -182 -183 -76 -140
		mu 0 4 80 102 101 47
		f 4 -185 181 -64 -184
		mu 0 4 103 102 80 58
		f 4 -187 183 52 53
		mu 0 4 104 103 58 24
		f 4 -188 -54 -58 -145
		mu 0 4 82 104 24 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "knife3" -p "knives";
	rename -uid "1EE607DA-490C-D331-7B33-C982B097B73D";
	setAttr ".t" -type "double3" 0 0 -0.7886820823271129 ;
	setAttr ".r" -type "double3" 0 3.6656557843442767 0 ;
	setAttr ".s" -type "double3" 0.45568381959528076 0.10319012310357445 0.10319012310357445 ;
createNode mesh -n "knifeShape3" -p "knife3";
	rename -uid "EADD215E-4FAA-A94F-3D21-A49A1CA00651";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.125 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape4" -p "knife3";
	rename -uid "B60DC9D1-4B38-4FB3-4926-8BABB351C9A8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.125 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 105 ".uvst[0].uvsp[0:104]" -type "float2" 0.125 0 0.375 0 0.375
		 0.25 0.125 0.25 0.125 0.25 0.375 0.25 0.375 0 0.125 0 0.125 0.25 0.375 0.25 0.375
		 0 0.125 0 0.125 0.25 0.375 0.25 0.375 0 0.125 0 0.37958139 0.97185016 0.37958139
		 0 0.37955707 0.028000474 0.625 0.97170079 0.61859161 0.97170079 0.625 0.77829921
		 0.65329921 0.028299242 0.37958139 0.22185014 0.61859161 0.22170076 0.37955707 0.27800047
		 0.625 0.27829924 0.37958139 0.47185016 0.61859161 0.47170079 0.37955707 0.52800047
		 0.625 0.52829921 0.625 0.72170073 0.37958139 0.72185016 0.61859161 0.72170079 0.61859161
		 0.77829921 0.125 0.22269024 0.15261899 0 0.33610651 0 0.37500003 0.02730977 0.375
		 0.21320283 0.34738103 0.25 0.16389351 0.25 0.61859161 0.028299242 0.61859161 0.27829924
		 0.61859161 0.52829921 0.37955707 0.77800047 0.84670079 0.028299242 0.84670073 0.22170076
		 0.125 0.036797173 0.375 0 0.125 0 0.375 0.25 0.375 0 0.125 0.25 0.375 0.25 0.125
		 0 0.125 0.25 0.61859161 0 0.65329921 0.22170076 0.625 0.47170076 0.37956923 0.37492532
		 0.25563726 0.25 0.25 0.25 0.25 0.25 0.25 0.25 0.25 0.25 0.25 0.25 0.25 0.25 0.25
		 0 0.25 0 0.25 0 0.25 0 0.25 0 0.25 0 0.24436274 0 0.37956923 0.87492532 0.61859161
		 0.875 0.625 0.875 0.75 0.028299242 0.625 0.375 0.75 0.22170076 0.61859161 0.375 0.37956923
		 0.12492531 0.375 0.1202563 0.375 0.125 0.375 0.125 0.375 0.125 0.375 0.125 0.375
		 0.125 0.375 0.125 0.25 0.125 0.125 0.125 0.125 0.125 0.125 0.125 0.125 0.125 0.125
		 0.125 0.125 0.125 0.125 0.12974371 0.37956923 0.62492532 0.61859161 0.625 0.625 0.625
		 0.84670079 0.125 0.75 0.125 0.65329921 0.125 0.61859161 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 47 ".pt";
	setAttr ".pt[4]" -type "float3" -1.0168504 0 -0.73602474 ;
	setAttr ".pt[5]" -type "float3" -0.86954266 0 -0.06397903 ;
	setAttr ".pt[6]" -type "float3" -0.86954266 0 -0.06397903 ;
	setAttr ".pt[7]" -type "float3" -1.0168502 0 -0.73602474 ;
	setAttr ".pt[8]" -type "float3" -0.53850567 0 -0.038929224 ;
	setAttr ".pt[9]" -type "float3" -0.53850567 0 -0.06397903 ;
	setAttr ".pt[10]" -type "float3" -0.53850567 0 -0.06397903 ;
	setAttr ".pt[11]" -type "float3" -0.53850567 0 -0.038929224 ;
	setAttr ".pt[12]" -type "float3" -0.30082655 0 0.12628567 ;
	setAttr ".pt[13]" -type "float3" -0.30082655 0 -0.06397903 ;
	setAttr ".pt[14]" -type "float3" -0.30082655 0 -0.06397903 ;
	setAttr ".pt[15]" -type "float3" -0.30082655 0 0.12628567 ;
	setAttr ".pt[16]" -type "float3" -0.063147239 0 0.099491239 ;
	setAttr ".pt[17]" -type "float3" -0.063147239 0 -0.06397903 ;
	setAttr ".pt[18]" -type "float3" -0.063147239 0 -0.06397903 ;
	setAttr ".pt[19]" -type "float3" -0.063147239 0 0.099491239 ;
	setAttr ".pt[40]" -type "float3" 0.023308067 -0.049462222 -0.058192156 ;
	setAttr ".pt[41]" -type "float3" 0.024361094 -0.059992433 -0.052134492 ;
	setAttr ".pt[43]" -type "float3" 0.024255473 -0.059765365 0.052590884 ;
	setAttr ".pt[44]" -type "float3" 0.023203487 -0.049898915 0.05807016 ;
	setAttr ".pt[46]" -type "float3" 0.023308067 0.049462222 0.058192156 ;
	setAttr ".pt[47]" -type "float3" 0.024361094 0.059992433 0.052134492 ;
	setAttr ".pt[49]" -type "float3" 0.024255473 0.059765365 -0.052590884 ;
	setAttr ".pt[50]" -type "float3" 0.023203487 0.049898915 -0.05807016 ;
	setAttr ".pt[53]" -type "float3" 0.024308288 0.074817836 -0.00022820101 ;
	setAttr ".pt[56]" -type "float3" -0.063147239 0 -0.32161224 ;
	setAttr ".pt[57]" -type "float3" -0.30082655 0 -0.38822114 ;
	setAttr ".pt[58]" -type "float3" -0.53850567 0 -0.3378042 ;
	setAttr ".pt[59]" -type "float3" -0.91842091 0 -0.46625549 ;
	setAttr ".pt[60]" -type "float3" -0.91842091 0 -0.46625549 ;
	setAttr ".pt[61]" -type "float3" -0.53850567 0 -0.3378042 ;
	setAttr ".pt[62]" -type "float3" -0.30082655 0 -0.38822114 ;
	setAttr ".pt[63]" -type "float3" -0.063147239 0 -0.32161224 ;
	setAttr ".pt[66]" -type "float3" 0.024308288 -0.074817836 0.00022820101 ;
	setAttr ".pt[73]" -type "float3" 0.023255784 -0.00021834878 0.074739225 ;
	setAttr ".pt[76]" -type "float3" -0.063147239 0 -0.07701385 ;
	setAttr ".pt[77]" -type "float3" -0.30082655 0 -0.07701385 ;
	setAttr ".pt[78]" -type "float3" -0.53850567 0 -0.07701385 ;
	setAttr ".pt[79]" -type "float3" -0.8790853 0 -0.06317842 ;
	setAttr ".pt[80]" -type "float3" -0.92421651 0 -0.46625549 ;
	setAttr ".pt[81]" -type "float3" -1.034749 0 -0.72298944 ;
	setAttr ".pt[82]" -type "float3" -0.53850567 0 -0.025894403 ;
	setAttr ".pt[83]" -type "float3" -0.30082655 0 0.13932049 ;
	setAttr ".pt[84]" -type "float3" -0.063147239 0 0.11252654 ;
	setAttr ".pt[85]" -type "float3" 0 0 0.065025151 ;
	setAttr ".pt[87]" -type "float3" 0.023255784 0.00021834878 -0.074739225 ;
	setAttr -s 94 ".vt[0:93]"  -0.63243228 -0.055160612 -0.36615676 -0.63243228 -0.055160612 0.36615676
		 -0.63243228 0.055160612 0.36615676 -0.63243228 0.055160612 -0.36615676 -1.86089087 -0.035925936 -0.31812647
		 -2.0081984997 -0.035925936 0.36615676 -2.0081984997 0.035925936 0.36615676 -1.86089087 0.035925936 -0.31812647
		 -1.56348515 0.035925936 -0.96943414 -1.56348515 0.035925936 0.36615676 -1.56348515 -0.035925936 0.36615676
		 -1.56348515 -0.035925936 -0.96943414 -1.25313413 0.035925936 -1.16077638 -1.25313413 0.035925936 0.36615676
		 -1.25313413 -0.035925936 0.36615676 -1.25313413 -0.035925936 -1.16077638 -0.94278324 0.035925936 -0.94574457
		 -0.94278324 0.035925936 0.36615676 -0.94278324 -0.035925936 0.36615676 -0.94278324 -0.035925936 -0.94574457
		 -0.48167446 -0.5 0.38740057 -0.48177171 -0.38799807 0.5 0.5 -0.38680306 0.38680306
		 0.4743664 -0.38680306 0.5 0.4743664 -0.5 0.38680306 -0.48167446 0.38740057 0.5 -0.48177171 0.5 0.38799807
		 0.4743664 0.5 0.38680306 0.4743664 0.38680306 0.5 0.5 0.38680306 0.38680306 -0.48167446 0.5 -0.38740057
		 -0.48177171 0.38799807 -0.5 0.4743664 0.38680306 -0.5 0.4743664 0.5 -0.38680306 0.5 0.38680306 -0.38680306
		 -0.48167446 -0.38740057 -0.5 -0.48177171 -0.5 -0.38799807 0.4743664 -0.5 -0.38680306
		 0.4743664 -0.38680306 -0.5 0.5 -0.38680306 -0.38680306 -0.55905104 -0.29415482 -0.40194312
		 -0.56333101 -0.39483598 -0.28436005 -0.59314746 -0.29088095 -0.36615676 -0.56279123 -0.39573237 0.2818034
		 -0.558761 -0.29318568 0.40242478 -0.59356767 -0.28835917 0.36615676 -0.55905104 0.29415482 0.40194312
		 -0.56333101 0.39483598 0.28436005 -0.59314746 0.29088095 0.36615676 -0.56279123 0.39573237 -0.2818034
		 -0.558761 0.29318568 -0.40242478 -0.59356767 0.28835917 -0.36615676 -0.48172307 0.62474281 0.00029875338
		 -0.56306112 0.49390185 0.0012783259 -0.59335756 0.36187607 0 -0.63243228 0.068922386 0
		 -0.94278324 0.044888943 0 -1.25313413 0.044888943 0 -1.56348515 0.044888943 0 -1.96087384 0.044888943 0.12845117
		 -1.96087384 -0.044888943 0.12845117 -1.56348515 -0.044888943 0 -1.25313413 -0.044888943 0
		 -0.94278324 -0.044888943 0 -0.63243228 -0.068922386 0 -0.59335756 -0.36187607 0 -0.56306112 -0.49390185 -0.0012783259
		 -0.48172307 -0.62474281 -0.00029875338 0.4743664 -0.62474281 0 0.5 -0.48330486 0
		 0.5 0.48330486 0 0.4743664 0.62474281 0 -0.48172307 -0.00029875338 0.64285004 -0.55890602 0.00048457086 0.517088
		 -0.59335756 0.0012608916 0.4707678 -0.63243228 0 0.4707678 -0.94278324 0 0.4707678
		 -1.25313413 0 0.4707678 -1.56348515 0 0.4707678 -2.0081984997 0 0.35973457 -1.96844184 0 0.12845117
		 -1.86089087 0 -0.42273754 -1.56348515 0 -1.074045181 -1.25313413 0 -1.26538742 -0.94278324 0 -1.050355554
		 -0.63243228 0 -0.4707678 -0.59335756 -0.0012608916 -0.4707678 -0.55890602 -0.00048457086 -0.517088
		 -0.48172307 0.00029875338 -0.64285004 0.4743664 0 -0.64285004 0.5 0 -0.49731278 0.5 0 0
		 0.5 0 0.49731278 0.4743664 0 0.64285004;
	setAttr -s 188 ".ed";
	setAttr ".ed[0:165]"  0 64 0 1 75 1 2 55 0 3 85 1 0 19 0 1 18 0 4 60 0 2 17 0
		 5 79 0 3 16 0 6 59 0 7 81 0 8 7 0 9 6 0 8 58 1 10 5 0 9 78 1 11 4 0 10 61 1 11 82 1
		 12 8 0 13 9 0 12 57 1 14 10 0 13 77 1 15 11 0 14 62 1 15 83 1 16 12 0 17 13 0 16 56 1
		 18 14 0 17 76 1 19 15 0 18 63 1 19 84 1 44 43 1 43 20 0 41 36 0 36 67 1 21 20 1 20 24 0
		 24 23 0 23 21 0 44 21 0 21 72 1 22 24 0 24 68 0 37 39 0 39 69 0 23 22 0 22 92 0 29 28 0
		 28 93 0 47 46 1 46 25 0 26 25 1 25 28 0 28 27 0 27 26 0 47 26 0 26 52 1 27 29 0 29 70 0
		 34 33 0 33 71 0 50 49 1 49 30 0 31 30 1 30 33 0 33 32 0 32 31 0 50 31 0 31 88 1 32 34 0
		 34 90 0 39 38 0 38 89 0 41 40 1 40 35 0 36 35 1 35 38 0 38 37 0 37 36 0 40 42 0 42 86 1
		 51 50 0 50 87 1 42 41 0 41 66 1 43 45 0 45 65 1 45 44 0 44 73 1 46 48 0 48 74 1 48 47 0
		 47 53 1 49 51 0 51 54 1 45 1 0 0 42 0 48 2 0 51 3 0 52 30 1 53 49 1 52 53 1 54 48 1
		 53 54 1 55 3 0 54 55 1 56 17 1 55 56 1 57 13 1 56 57 1 58 9 1 57 58 1 59 7 0 58 59 1
		 60 5 0 59 80 1 61 11 1 60 61 1 62 15 1 61 62 1 63 19 1 62 63 1 64 1 0 63 64 1 65 42 1
		 64 65 1 66 43 1 65 66 1 67 20 1 66 67 1 68 37 0 67 68 1 69 22 0 68 69 1 70 34 0 69 91 1
		 71 27 0 70 71 1 71 52 1 72 25 1 73 46 1 72 73 1 74 45 1 73 74 1 75 2 1 74 75 1 76 18 1
		 75 76 1 77 14 1 76 77 1 78 10 1 77 78 1 79 6 0 78 79 1 80 60 1 79 80 1 81 4 0 80 81 1
		 82 8 1 81 82 1 83 12 1;
	setAttr ".ed[166:187]" 82 83 1 84 16 1 83 84 1 85 0 1 84 85 1 86 51 1 85 86 1
		 87 40 1 86 87 1 88 35 1 87 88 1 89 32 0 88 89 1 90 39 0 89 90 1 91 70 1 90 91 1 92 29 0
		 91 92 1 93 23 0 92 93 1 93 72 1;
	setAttr -s 96 -ch 376 ".fc[0:95]" -type "polyFaces" 
		f 4 119 8 160 159
		mu 0 4 68 1 89 90
		f 4 127 5 34 128
		mu 0 4 72 52 14 71
		f 4 1 152 151 -6
		mu 0 4 52 85 86 14
		f 4 2 112 111 -8
		mu 0 4 54 63 64 13
		f 4 169 4 35 170
		mu 0 4 95 50 15 94
		f 4 -116 118 -11 -14
		mu 0 4 5 66 67 2
		f 4 -156 158 -9 -16
		mu 0 4 6 88 89 1
		f 4 -19 15 -120 122
		mu 0 4 69 6 1 68
		f 4 -20 17 -162 164
		mu 0 4 92 7 0 91
		f 4 -114 116 115 -22
		mu 0 4 9 65 66 5
		f 4 -154 156 155 -24
		mu 0 4 10 87 88 6
		f 4 -27 23 18 124
		mu 0 4 70 10 6 69
		f 4 -28 25 19 166
		mu 0 4 93 11 7 92
		f 4 -112 114 113 -30
		mu 0 4 13 64 65 9
		f 4 -152 154 153 -32
		mu 0 4 14 86 87 10
		f 4 -35 31 26 126
		mu 0 4 71 14 10 70
		f 4 -36 33 27 168
		mu 0 4 94 15 11 93
		f 4 36 37 -41 -45
		mu 0 4 38 37 17 18
		f 4 134 133 -38 -132
		mu 0 4 74 75 16 37
		f 4 40 41 42 43
		mu 0 4 18 17 57 42
		f 4 44 45 146 -94
		mu 0 4 38 18 82 83
		f 4 46 47 138 137
		mu 0 4 19 20 76 77
		f 4 50 51 186 185
		mu 0 4 42 22 103 104
		f 4 54 55 -57 -61
		mu 0 4 40 39 23 25
		f 4 56 57 58 59
		mu 0 4 25 23 24 43
		f 4 60 61 106 -98
		mu 0 4 40 25 60 61
		f 4 62 63 142 141
		mu 0 4 43 26 79 81
		f 4 66 67 -69 -73
		mu 0 4 35 41 27 29
		f 4 68 69 70 71
		mu 0 4 29 27 28 44
		f 4 176 175 -80 -174
		mu 0 4 97 98 32 48
		f 4 180 179 76 77
		mu 0 4 99 100 31 33
		f 4 78 79 -81 -39
		mu 0 4 36 48 32 45
		f 4 80 81 82 83
		mu 0 4 45 32 33 34
		f 4 84 85 174 173
		mu 0 4 48 55 96 97
		f 4 132 131 90 91
		mu 0 4 73 74 37 49
		f 4 92 93 148 147
		mu 0 4 49 38 83 84
		f 4 96 97 108 107
		mu 0 4 51 40 61 62
		f 4 -44 -186 187 -46
		mu 0 4 18 42 104 82
		f 4 -60 -142 143 -62
		mu 0 4 25 43 81 60
		f 4 178 -78 -82 -176
		mu 0 4 98 99 33 32
		f 4 136 -48 -42 -134
		mu 0 4 75 76 20 16
		f 4 -138 140 184 -52
		mu 0 4 22 78 102 103
		f 4 -92 100 -128 130
		mu 0 4 73 49 52 72
		f 4 -148 150 -2 -101
		mu 0 4 49 84 85 52
		f 4 -108 110 -3 -103
		mu 0 4 51 62 63 54
		f 4 -86 -102 -170 172
		mu 0 4 96 55 50 95
		f 3 -51 -43 -47
		mu 0 3 22 42 57
		f 3 -59 -53 -63
		mu 0 3 43 24 58
		f 3 -71 -65 -75
		mu 0 3 44 28 59
		f 3 -83 -77 -49
		mu 0 3 34 33 31
		f 3 -79 -89 -85
		mu 0 3 48 36 55
		f 3 -37 -93 -91
		mu 0 3 37 38 49
		f 3 -55 -97 -95
		mu 0 3 39 40 51
		f 3 -67 -87 -99
		mu 0 3 41 35 53
		f 4 104 -68 -106 -107
		mu 0 4 60 27 41 61
		f 4 -109 105 98 99
		mu 0 4 62 61 41 53
		f 4 -111 -100 103 -110
		mu 0 4 63 62 53 56
		f 4 -113 109 9 30
		mu 0 4 64 63 56 12
		f 4 -115 -31 28 22
		mu 0 4 65 64 12 8
		f 4 -117 -23 20 14
		mu 0 4 66 65 8 4
		f 4 -119 -15 12 -118
		mu 0 4 67 66 4 3
		f 4 6 -160 162 161
		mu 0 4 0 68 90 91
		f 4 -122 -123 -7 -18
		mu 0 4 7 69 68 0
		f 4 -124 -125 121 -26
		mu 0 4 11 70 69 7
		f 4 -126 -127 123 -34
		mu 0 4 15 71 70 11
		f 4 0 -129 125 -5
		mu 0 4 50 72 71 15
		f 4 -130 -131 -1 101
		mu 0 4 55 73 72 50
		f 4 88 89 -133 129
		mu 0 4 55 36 74 73
		f 4 38 39 -135 -90
		mu 0 4 36 45 75 74
		f 4 -84 -136 -137 -40
		mu 0 4 45 34 76 75
		f 4 -139 135 48 49
		mu 0 4 77 76 34 21
		f 4 -141 -50 -180 182
		mu 0 4 102 78 46 101
		f 4 -143 139 64 65
		mu 0 4 81 79 59 28
		f 4 -144 -66 -70 -105
		mu 0 4 60 81 28 27
		f 4 144 -56 -146 -147
		mu 0 4 82 23 39 83
		f 4 -149 145 94 95
		mu 0 4 84 83 39 51
		f 4 -151 -96 102 -150
		mu 0 4 85 84 51 54
		f 4 -153 149 7 32
		mu 0 4 86 85 54 13
		f 4 -155 -33 29 24
		mu 0 4 87 86 13 9
		f 4 -157 -25 21 16
		mu 0 4 88 87 9 5
		f 4 -159 -17 13 -158
		mu 0 4 89 88 5 2
		f 4 -161 157 10 120
		mu 0 4 90 89 2 67
		f 4 -163 -121 117 11
		mu 0 4 91 90 67 3
		f 4 -164 -165 -12 -13
		mu 0 4 4 92 91 3
		f 4 -166 -167 163 -21
		mu 0 4 8 93 92 4
		f 4 -168 -169 165 -29
		mu 0 4 12 94 93 8
		f 4 3 -171 167 -10
		mu 0 4 56 95 94 12
		f 4 -172 -173 -4 -104
		mu 0 4 53 96 95 56
		f 4 -175 171 86 87
		mu 0 4 97 96 53 35
		f 4 72 73 -177 -88
		mu 0 4 35 29 98 97
		f 4 -72 -178 -179 -74
		mu 0 4 29 44 99 98
		f 4 74 75 -181 177
		mu 0 4 44 30 100 99
		f 4 -182 -183 -76 -140
		mu 0 4 80 102 101 47
		f 4 -185 181 -64 -184
		mu 0 4 103 102 80 58
		f 4 -187 183 52 53
		mu 0 4 104 103 58 24
		f 4 -188 -54 -58 -145
		mu 0 4 82 104 24 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "knife4" -p "knives";
	rename -uid "508727CE-4A13-7F05-FC10-008F2070DFD6";
	setAttr ".t" -type "double3" 0 0 -1.1236300390447296 ;
	setAttr ".r" -type "double3" 0 -6.6858874480146682 0 ;
	setAttr ".s" -type "double3" 0.45568381959528076 0.10319012310357445 0.10319012310357445 ;
createNode mesh -n "knifeShape4" -p "knife4";
	rename -uid "2CDF1A36-48FD-1A0B-3F87-60BFF251F186";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 15 ".pt";
	setAttr ".pt[4]" -type "float3" 0.17527467 0 0 ;
	setAttr ".pt[5]" -type "float3" 0.17527467 0 0 ;
	setAttr ".pt[57]" -type "float3" 0.17527467 0 0 ;
	setAttr ".pt[58]" -type "float3" 0.17527467 0 0 ;
	setAttr ".pt[77]" -type "float3" 0.17527467 0 0 ;
	setAttr ".pt[78]" -type "float3" 0.17527467 0 0 ;
	setAttr ".pt[91]" -type "float3" 0.17527467 0 0 ;
	setAttr ".pt[92]" -type "float3" 0.17527467 0 0 ;
	setAttr ".pt[93]" -type "float3" 0.17527467 0 0 ;
	setAttr ".pt[94]" -type "float3" 0.17527467 0 0 ;
	setAttr ".pt[95]" -type "float3" 0.17527467 0 0 ;
	setAttr ".pt[96]" -type "float3" 0.17527467 0 0 ;
	setAttr ".pt[97]" -type "float3" 0.17527467 0 0 ;
	setAttr ".pt[98]" -type "float3" 0.17527467 0 0 ;
	setAttr ".pt[99]" -type "float3" 0.17527467 0 0 ;
createNode mesh -n "polySurfaceShape3" -p "knife4";
	rename -uid "75F1CD54-4C7E-B0CE-4714-57A31B471294";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.125 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 105 ".uvst[0].uvsp[0:104]" -type "float2" 0.125 0 0.375 0 0.375
		 0.25 0.125 0.25 0.125 0.25 0.375 0.25 0.375 0 0.125 0 0.125 0.25 0.375 0.25 0.375
		 0 0.125 0 0.125 0.25 0.375 0.25 0.375 0 0.125 0 0.37958139 0.97185016 0.37958139
		 0 0.37955707 0.028000474 0.625 0.97170079 0.61859161 0.97170079 0.625 0.77829921
		 0.65329921 0.028299242 0.37958139 0.22185014 0.61859161 0.22170076 0.37955707 0.27800047
		 0.625 0.27829924 0.37958139 0.47185016 0.61859161 0.47170079 0.37955707 0.52800047
		 0.625 0.52829921 0.625 0.72170073 0.37958139 0.72185016 0.61859161 0.72170079 0.61859161
		 0.77829921 0.125 0.22269024 0.15261899 0 0.33610651 0 0.37500003 0.02730977 0.375
		 0.21320283 0.34738103 0.25 0.16389351 0.25 0.61859161 0.028299242 0.61859161 0.27829924
		 0.61859161 0.52829921 0.37955707 0.77800047 0.84670079 0.028299242 0.84670073 0.22170076
		 0.125 0.036797173 0.375 0 0.125 0 0.375 0.25 0.375 0 0.125 0.25 0.375 0.25 0.125
		 0 0.125 0.25 0.61859161 0 0.65329921 0.22170076 0.625 0.47170076 0.37956923 0.37492532
		 0.25563726 0.25 0.25 0.25 0.25 0.25 0.25 0.25 0.25 0.25 0.25 0.25 0.25 0.25 0.25
		 0 0.25 0 0.25 0 0.25 0 0.25 0 0.25 0 0.24436274 0 0.37956923 0.87492532 0.61859161
		 0.875 0.625 0.875 0.75 0.028299242 0.625 0.375 0.75 0.22170076 0.61859161 0.375 0.37956923
		 0.12492531 0.375 0.1202563 0.375 0.125 0.375 0.125 0.375 0.125 0.375 0.125 0.375
		 0.125 0.375 0.125 0.25 0.125 0.125 0.125 0.125 0.125 0.125 0.125 0.125 0.125 0.125
		 0.125 0.125 0.125 0.125 0.12974371 0.37956923 0.62492532 0.61859161 0.625 0.625 0.625
		 0.84670079 0.125 0.75 0.125 0.65329921 0.125 0.61859161 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 47 ".pt";
	setAttr ".pt[4]" -type "float3" -1.0168504 0 -1.6578431 ;
	setAttr ".pt[5]" -type "float3" -0.86954266 0 -0.0063154064 ;
	setAttr ".pt[6]" -type "float3" -0.86954266 0 -0.0063154064 ;
	setAttr ".pt[7]" -type "float3" -1.0168502 0 -1.6578431 ;
	setAttr ".pt[8]" -type "float3" -0.53850567 0 -1.0853869 ;
	setAttr ".pt[9]" -type "float3" -0.53850567 0 -0.0063154064 ;
	setAttr ".pt[10]" -type "float3" -0.53850567 0 -0.0063154064 ;
	setAttr ".pt[11]" -type "float3" -0.53850567 0 -1.0853869 ;
	setAttr ".pt[12]" -type "float3" -0.30082655 0 -0.78133416 ;
	setAttr ".pt[13]" -type "float3" -0.30082655 0 -0.0063154064 ;
	setAttr ".pt[14]" -type "float3" -0.30082655 0 -0.0063154064 ;
	setAttr ".pt[15]" -type "float3" -0.30082655 0 -0.78133416 ;
	setAttr ".pt[16]" -type "float3" -0.063147239 0 -0.67219162 ;
	setAttr ".pt[17]" -type "float3" -0.063147239 0 -0.0063154064 ;
	setAttr ".pt[18]" -type "float3" -0.063147239 0 -0.0063154064 ;
	setAttr ".pt[19]" -type "float3" -0.063147239 0 -0.67219162 ;
	setAttr ".pt[40]" -type "float3" 0.023308067 -0.049462222 -0.058192156 ;
	setAttr ".pt[41]" -type "float3" 0.024361094 -0.059992433 -0.052134492 ;
	setAttr ".pt[43]" -type "float3" 0.024255473 -0.059765365 0.052590884 ;
	setAttr ".pt[44]" -type "float3" 0.023203487 -0.049898915 0.05807016 ;
	setAttr ".pt[46]" -type "float3" 0.023308067 0.049462222 0.058192156 ;
	setAttr ".pt[47]" -type "float3" 0.024361094 0.059992433 0.052134492 ;
	setAttr ".pt[49]" -type "float3" 0.024255473 0.059765365 -0.052590884 ;
	setAttr ".pt[50]" -type "float3" 0.023203487 0.049898915 -0.05807016 ;
	setAttr ".pt[53]" -type "float3" 0.024308288 0.074817836 -0.00022820101 ;
	setAttr ".pt[56]" -type "float3" -0.063147239 0 -0.71442294 ;
	setAttr ".pt[57]" -type "float3" -0.30082655 0 -0.82913363 ;
	setAttr ".pt[58]" -type "float3" -0.53850567 0 -0.74230802 ;
	setAttr ".pt[59]" -type "float3" -0.91842091 0 -0.87075931 ;
	setAttr ".pt[60]" -type "float3" -0.91842091 0 -0.87075931 ;
	setAttr ".pt[61]" -type "float3" -0.53850567 0 -0.74230802 ;
	setAttr ".pt[62]" -type "float3" -0.30082655 0 -0.82913363 ;
	setAttr ".pt[63]" -type "float3" -0.063147239 0 -0.71442294 ;
	setAttr ".pt[66]" -type "float3" 0.024308288 -0.074817836 0.00022820101 ;
	setAttr ".pt[73]" -type "float3" 0.023255784 -0.00021834878 0.074739225 ;
	setAttr ".pt[76]" -type "float3" -0.063147239 0 0.046782374 ;
	setAttr ".pt[77]" -type "float3" -0.30082655 0 0.0039592343 ;
	setAttr ".pt[78]" -type "float3" -0.53850567 0 -0.018390631 ;
	setAttr ".pt[79]" -type "float3" -0.8790853 0 0.00010633469 ;
	setAttr ".pt[80]" -type "float3" -0.92421651 0 -0.87075931 ;
	setAttr ".pt[81]" -type "float3" -1.034749 0 -1.7109377 ;
	setAttr ".pt[82]" -type "float3" -0.53850567 0 -1.1384842 ;
	setAttr ".pt[83]" -type "float3" -0.30082655 0 -0.83443147 ;
	setAttr ".pt[84]" -type "float3" -0.063147239 0 -0.72528839 ;
	setAttr ".pt[85]" -type "float3" 0 0 0.065025151 ;
	setAttr ".pt[87]" -type "float3" 0.023255784 0.00021834878 -0.074739225 ;
	setAttr -s 94 ".vt[0:93]"  -0.63243228 -0.055160612 -0.36615676 -0.63243228 -0.055160612 0.36615676
		 -0.63243228 0.055160612 0.36615676 -0.63243228 0.055160612 -0.36615676 -1.86089087 -0.035925936 -0.31812647
		 -2.0081984997 -0.035925936 0.36615676 -2.0081984997 0.035925936 0.36615676 -1.86089087 0.035925936 -0.31812647
		 -1.56348515 0.035925936 -0.96943414 -1.56348515 0.035925936 0.36615676 -1.56348515 -0.035925936 0.36615676
		 -1.56348515 -0.035925936 -0.96943414 -1.25313413 0.035925936 -1.16077638 -1.25313413 0.035925936 0.36615676
		 -1.25313413 -0.035925936 0.36615676 -1.25313413 -0.035925936 -1.16077638 -0.94278324 0.035925936 -0.94574457
		 -0.94278324 0.035925936 0.36615676 -0.94278324 -0.035925936 0.36615676 -0.94278324 -0.035925936 -0.94574457
		 -0.48167446 -0.5 0.38740057 -0.48177171 -0.38799807 0.5 0.5 -0.38680306 0.38680306
		 0.4743664 -0.38680306 0.5 0.4743664 -0.5 0.38680306 -0.48167446 0.38740057 0.5 -0.48177171 0.5 0.38799807
		 0.4743664 0.5 0.38680306 0.4743664 0.38680306 0.5 0.5 0.38680306 0.38680306 -0.48167446 0.5 -0.38740057
		 -0.48177171 0.38799807 -0.5 0.4743664 0.38680306 -0.5 0.4743664 0.5 -0.38680306 0.5 0.38680306 -0.38680306
		 -0.48167446 -0.38740057 -0.5 -0.48177171 -0.5 -0.38799807 0.4743664 -0.5 -0.38680306
		 0.4743664 -0.38680306 -0.5 0.5 -0.38680306 -0.38680306 -0.55905104 -0.29415482 -0.40194312
		 -0.56333101 -0.39483598 -0.28436005 -0.59314746 -0.29088095 -0.36615676 -0.56279123 -0.39573237 0.2818034
		 -0.558761 -0.29318568 0.40242478 -0.59356767 -0.28835917 0.36615676 -0.55905104 0.29415482 0.40194312
		 -0.56333101 0.39483598 0.28436005 -0.59314746 0.29088095 0.36615676 -0.56279123 0.39573237 -0.2818034
		 -0.558761 0.29318568 -0.40242478 -0.59356767 0.28835917 -0.36615676 -0.48172307 0.62474281 0.00029875338
		 -0.56306112 0.49390185 0.0012783259 -0.59335756 0.36187607 0 -0.63243228 0.068922386 0
		 -0.94278324 0.044888943 0 -1.25313413 0.044888943 0 -1.56348515 0.044888943 0 -1.96087384 0.044888943 0.12845117
		 -1.96087384 -0.044888943 0.12845117 -1.56348515 -0.044888943 0 -1.25313413 -0.044888943 0
		 -0.94278324 -0.044888943 0 -0.63243228 -0.068922386 0 -0.59335756 -0.36187607 0 -0.56306112 -0.49390185 -0.0012783259
		 -0.48172307 -0.62474281 -0.00029875338 0.4743664 -0.62474281 0 0.5 -0.48330486 0
		 0.5 0.48330486 0 0.4743664 0.62474281 0 -0.48172307 -0.00029875338 0.64285004 -0.55890602 0.00048457086 0.517088
		 -0.59335756 0.0012608916 0.4707678 -0.63243228 0 0.4707678 -0.94278324 0 0.4707678
		 -1.25313413 0 0.4707678 -1.56348515 0 0.4707678 -2.0081984997 0 0.35973457 -1.96844184 0 0.12845117
		 -1.86089087 0 -0.42273754 -1.56348515 0 -1.074045181 -1.25313413 0 -1.26538742 -0.94278324 0 -1.050355554
		 -0.63243228 0 -0.4707678 -0.59335756 -0.0012608916 -0.4707678 -0.55890602 -0.00048457086 -0.517088
		 -0.48172307 0.00029875338 -0.64285004 0.4743664 0 -0.64285004 0.5 0 -0.49731278 0.5 0 0
		 0.5 0 0.49731278 0.4743664 0 0.64285004;
	setAttr -s 188 ".ed";
	setAttr ".ed[0:165]"  0 64 0 1 75 1 2 55 0 3 85 1 0 19 0 1 18 0 4 60 0 2 17 0
		 5 79 0 3 16 0 6 59 0 7 81 0 8 7 0 9 6 0 8 58 1 10 5 0 9 78 1 11 4 0 10 61 1 11 82 1
		 12 8 0 13 9 0 12 57 1 14 10 0 13 77 1 15 11 0 14 62 1 15 83 1 16 12 0 17 13 0 16 56 1
		 18 14 0 17 76 1 19 15 0 18 63 1 19 84 1 44 43 1 43 20 0 41 36 0 36 67 1 21 20 1 20 24 0
		 24 23 0 23 21 0 44 21 0 21 72 1 22 24 0 24 68 0 37 39 0 39 69 0 23 22 0 22 92 0 29 28 0
		 28 93 0 47 46 1 46 25 0 26 25 1 25 28 0 28 27 0 27 26 0 47 26 0 26 52 1 27 29 0 29 70 0
		 34 33 0 33 71 0 50 49 1 49 30 0 31 30 1 30 33 0 33 32 0 32 31 0 50 31 0 31 88 1 32 34 0
		 34 90 0 39 38 0 38 89 0 41 40 1 40 35 0 36 35 1 35 38 0 38 37 0 37 36 0 40 42 0 42 86 1
		 51 50 0 50 87 1 42 41 0 41 66 1 43 45 0 45 65 1 45 44 0 44 73 1 46 48 0 48 74 1 48 47 0
		 47 53 1 49 51 0 51 54 1 45 1 0 0 42 0 48 2 0 51 3 0 52 30 1 53 49 1 52 53 1 54 48 1
		 53 54 1 55 3 0 54 55 1 56 17 1 55 56 1 57 13 1 56 57 1 58 9 1 57 58 1 59 7 0 58 59 1
		 60 5 0 59 80 1 61 11 1 60 61 1 62 15 1 61 62 1 63 19 1 62 63 1 64 1 0 63 64 1 65 42 1
		 64 65 1 66 43 1 65 66 1 67 20 1 66 67 1 68 37 0 67 68 1 69 22 0 68 69 1 70 34 0 69 91 1
		 71 27 0 70 71 1 71 52 1 72 25 1 73 46 1 72 73 1 74 45 1 73 74 1 75 2 1 74 75 1 76 18 1
		 75 76 1 77 14 1 76 77 1 78 10 1 77 78 1 79 6 0 78 79 1 80 60 1 79 80 1 81 4 0 80 81 1
		 82 8 1 81 82 1 83 12 1;
	setAttr ".ed[166:187]" 82 83 1 84 16 1 83 84 1 85 0 1 84 85 1 86 51 1 85 86 1
		 87 40 1 86 87 1 88 35 1 87 88 1 89 32 0 88 89 1 90 39 0 89 90 1 91 70 1 90 91 1 92 29 0
		 91 92 1 93 23 0 92 93 1 93 72 1;
	setAttr -s 96 -ch 376 ".fc[0:95]" -type "polyFaces" 
		f 4 119 8 160 159
		mu 0 4 68 1 89 90
		f 4 127 5 34 128
		mu 0 4 72 52 14 71
		f 4 1 152 151 -6
		mu 0 4 52 85 86 14
		f 4 2 112 111 -8
		mu 0 4 54 63 64 13
		f 4 169 4 35 170
		mu 0 4 95 50 15 94
		f 4 -116 118 -11 -14
		mu 0 4 5 66 67 2
		f 4 -156 158 -9 -16
		mu 0 4 6 88 89 1
		f 4 -19 15 -120 122
		mu 0 4 69 6 1 68
		f 4 -20 17 -162 164
		mu 0 4 92 7 0 91
		f 4 -114 116 115 -22
		mu 0 4 9 65 66 5
		f 4 -154 156 155 -24
		mu 0 4 10 87 88 6
		f 4 -27 23 18 124
		mu 0 4 70 10 6 69
		f 4 -28 25 19 166
		mu 0 4 93 11 7 92
		f 4 -112 114 113 -30
		mu 0 4 13 64 65 9
		f 4 -152 154 153 -32
		mu 0 4 14 86 87 10
		f 4 -35 31 26 126
		mu 0 4 71 14 10 70
		f 4 -36 33 27 168
		mu 0 4 94 15 11 93
		f 4 36 37 -41 -45
		mu 0 4 38 37 17 18
		f 4 134 133 -38 -132
		mu 0 4 74 75 16 37
		f 4 40 41 42 43
		mu 0 4 18 17 57 42
		f 4 44 45 146 -94
		mu 0 4 38 18 82 83
		f 4 46 47 138 137
		mu 0 4 19 20 76 77
		f 4 50 51 186 185
		mu 0 4 42 22 103 104
		f 4 54 55 -57 -61
		mu 0 4 40 39 23 25
		f 4 56 57 58 59
		mu 0 4 25 23 24 43
		f 4 60 61 106 -98
		mu 0 4 40 25 60 61
		f 4 62 63 142 141
		mu 0 4 43 26 79 81
		f 4 66 67 -69 -73
		mu 0 4 35 41 27 29
		f 4 68 69 70 71
		mu 0 4 29 27 28 44
		f 4 176 175 -80 -174
		mu 0 4 97 98 32 48
		f 4 180 179 76 77
		mu 0 4 99 100 31 33
		f 4 78 79 -81 -39
		mu 0 4 36 48 32 45
		f 4 80 81 82 83
		mu 0 4 45 32 33 34
		f 4 84 85 174 173
		mu 0 4 48 55 96 97
		f 4 132 131 90 91
		mu 0 4 73 74 37 49
		f 4 92 93 148 147
		mu 0 4 49 38 83 84
		f 4 96 97 108 107
		mu 0 4 51 40 61 62
		f 4 -44 -186 187 -46
		mu 0 4 18 42 104 82
		f 4 -60 -142 143 -62
		mu 0 4 25 43 81 60
		f 4 178 -78 -82 -176
		mu 0 4 98 99 33 32
		f 4 136 -48 -42 -134
		mu 0 4 75 76 20 16
		f 4 -138 140 184 -52
		mu 0 4 22 78 102 103
		f 4 -92 100 -128 130
		mu 0 4 73 49 52 72
		f 4 -148 150 -2 -101
		mu 0 4 49 84 85 52
		f 4 -108 110 -3 -103
		mu 0 4 51 62 63 54
		f 4 -86 -102 -170 172
		mu 0 4 96 55 50 95
		f 3 -51 -43 -47
		mu 0 3 22 42 57
		f 3 -59 -53 -63
		mu 0 3 43 24 58
		f 3 -71 -65 -75
		mu 0 3 44 28 59
		f 3 -83 -77 -49
		mu 0 3 34 33 31
		f 3 -79 -89 -85
		mu 0 3 48 36 55
		f 3 -37 -93 -91
		mu 0 3 37 38 49
		f 3 -55 -97 -95
		mu 0 3 39 40 51
		f 3 -67 -87 -99
		mu 0 3 41 35 53
		f 4 104 -68 -106 -107
		mu 0 4 60 27 41 61
		f 4 -109 105 98 99
		mu 0 4 62 61 41 53
		f 4 -111 -100 103 -110
		mu 0 4 63 62 53 56
		f 4 -113 109 9 30
		mu 0 4 64 63 56 12
		f 4 -115 -31 28 22
		mu 0 4 65 64 12 8
		f 4 -117 -23 20 14
		mu 0 4 66 65 8 4
		f 4 -119 -15 12 -118
		mu 0 4 67 66 4 3
		f 4 6 -160 162 161
		mu 0 4 0 68 90 91
		f 4 -122 -123 -7 -18
		mu 0 4 7 69 68 0
		f 4 -124 -125 121 -26
		mu 0 4 11 70 69 7
		f 4 -126 -127 123 -34
		mu 0 4 15 71 70 11
		f 4 0 -129 125 -5
		mu 0 4 50 72 71 15
		f 4 -130 -131 -1 101
		mu 0 4 55 73 72 50
		f 4 88 89 -133 129
		mu 0 4 55 36 74 73
		f 4 38 39 -135 -90
		mu 0 4 36 45 75 74
		f 4 -84 -136 -137 -40
		mu 0 4 45 34 76 75
		f 4 -139 135 48 49
		mu 0 4 77 76 34 21
		f 4 -141 -50 -180 182
		mu 0 4 102 78 46 101
		f 4 -143 139 64 65
		mu 0 4 81 79 59 28
		f 4 -144 -66 -70 -105
		mu 0 4 60 81 28 27
		f 4 144 -56 -146 -147
		mu 0 4 82 23 39 83
		f 4 -149 145 94 95
		mu 0 4 84 83 39 51
		f 4 -151 -96 102 -150
		mu 0 4 85 84 51 54
		f 4 -153 149 7 32
		mu 0 4 86 85 54 13
		f 4 -155 -33 29 24
		mu 0 4 87 86 13 9
		f 4 -157 -25 21 16
		mu 0 4 88 87 9 5
		f 4 -159 -17 13 -158
		mu 0 4 89 88 5 2
		f 4 -161 157 10 120
		mu 0 4 90 89 2 67
		f 4 -163 -121 117 11
		mu 0 4 91 90 67 3
		f 4 -164 -165 -12 -13
		mu 0 4 4 92 91 3
		f 4 -166 -167 163 -21
		mu 0 4 8 93 92 4
		f 4 -168 -169 165 -29
		mu 0 4 12 94 93 8
		f 4 3 -171 167 -10
		mu 0 4 56 95 94 12
		f 4 -172 -173 -4 -104
		mu 0 4 53 96 95 56
		f 4 -175 171 86 87
		mu 0 4 97 96 53 35
		f 4 72 73 -177 -88
		mu 0 4 35 29 98 97
		f 4 -72 -178 -179 -74
		mu 0 4 29 44 99 98
		f 4 74 75 -181 177
		mu 0 4 44 30 100 99
		f 4 -182 -183 -76 -140
		mu 0 4 80 102 101 47
		f 4 -185 181 -64 -184
		mu 0 4 103 102 80 58
		f 4 -187 183 52 53
		mu 0 4 104 103 58 24
		f 4 -188 -54 -58 -145
		mu 0 4 82 104 24 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "knifeRack" -p "knives";
	rename -uid "5E038E18-449C-1809-AB2C-D69F9AA05145";
	setAttr ".t" -type "double3" -0.62677734024289578 -0.003863920945288216 -0.56892772062296815 ;
	setAttr ".s" -type "double3" 0.14525067733543787 1 1.876553610870962 ;
createNode mesh -n "knifeRackShape" -p "knifeRack";
	rename -uid "A1F5E8CB-4CA5-4664-433E-38B71BABBC32";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "signM";
	rename -uid "CB0A13B2-441B-5E16-1DDD-1681FE36439B";
	setAttr ".t" -type "double3" 0 3.503828958317686 0 ;
	setAttr ".s" -type "double3" 0.05770184460933174 1 1.7499977627840411 ;
createNode mesh -n "signMShape" -p "signM";
	rename -uid "777CCA15-4EF1-8EBA-236F-C6A16530F3A7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "signL";
	rename -uid "DDE34899-4BAA-22EA-9352-5FA50CEF5B21";
	setAttr ".t" -type "double3" 0 3.5386182024050616 1.8283313180906047 ;
	setAttr ".s" -type "double3" 0.05770184460933174 1 1.7499977627840411 ;
createNode mesh -n "signLShape" -p "signL";
	rename -uid "43D9AE5A-4F08-18B3-0246-5B88634C9AC6";
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
createNode transform -n "signR";
	rename -uid "86587268-4928-7781-F45C-BA9B83B1E690";
	setAttr ".t" -type "double3" 0 3.5489825119361971 -1.8625953136902809 ;
	setAttr ".s" -type "double3" 0.05770184460933174 1 1.7499977627840411 ;
createNode mesh -n "signRShape" -p "signR";
	rename -uid "8478539C-424A-51A8-9C6E-BFAD58261DC0";
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "3D85EA0F-4066-B9CD-A073-4A8BBD864A17";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "04F41216-4A5F-3CBA-DD45-6F8BA8FBBF0D";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "DC8B64B0-48A1-E72D-A919-7E8867DCEF05";
createNode displayLayerManager -n "layerManager";
	rename -uid "D59C1E63-4197-382F-DC6F-579E5A1003CE";
	setAttr ".cdl" 1;
	setAttr ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "7E78AB3C-CA4E-829E-DA5B-E2AA1EA78364";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "7755605E-4E82-D9A4-96A2-9E98527F59EC";
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
	setAttr -s 4 ".tk[8:11]" -type "float3"  0 0.11297061 0 0 0.11297061
		 0 0 0.11297061 0 0 0.11297061 0;
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
	setAttr -s 24 ".tk[8:31]" -type "float3"  0 0 -0.16286179 0 0 -0.16286179
		 0 0 -0.16286179 0 0 -0.16286179 0 0 0.16286179 0 0 0.16286179 0 0 0.16286179 0 0
		 0.16286179 0.17478564 0 0 0.17478564 0 0.16286179 0.17478564 0 -0.16286179 0.17478564
		 0 0 0.17478564 0 0 0.17478564 0 -0.16286179 0.17478564 0 0.16286179 0.17478564 0
		 0 -0.17478564 0 0 -0.17478564 0 0.16286179 -0.17478564 0 -0.16286179 -0.17478564
		 0 0 -0.17478564 0 0 -0.17478564 0 -0.16286179 -0.17478564 0 0.16286179 -0.17478564
		 0 0;
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
	setAttr -s 4 ".tk[12:15]" -type "float3"  0.60623163 0 0 0.60623163
		 0 0 0.60623163 0 0 0.60623163 0 0;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "283E1EEC-C24E-0156-7071-8091FEE6F882";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[52]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.706356349457151 0 0 0 0 5.9000214655013741 0
		 0 0 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak4";
	rename -uid "382E67BA-A74D-1330-07BD-DB83424CA311";
	setAttr ".uopa" yes;
	setAttr ".tk[18]" -type "float3"  0 -0.0066169929 0.0019137338;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "B8840735-904D-1A80-02FC-4FB62188528A";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[53]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.706356349457151 0 0 0 0 5.9000214655013741 0
		 0 0 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak5";
	rename -uid "C438C682-EA47-EC08-50E5-C8B3411D71AD";
	setAttr ".uopa" yes;
	setAttr ".tk[29]" -type "float3"  1.1292286e-08 -0.0066169919 -0.0019137358;
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
	setAttr -s 16 ".tk[32:47]" -type "float3"  0 -2.91271281 0 0 -2.91271281
		 0 0 -2.91271281 0 0 -2.91271281 0 0 -2.91271281 0 0 -2.91271281 0 0 -2.91271281 0
		 0 -2.91271281 0 0 -2.91271281 0 0 -2.91271281 0 0 -2.91271281 0 0 -2.91271281 0 0
		 -2.91271281 0 0 -2.91271281 0 0 -2.91271281 0 0 -2.91271281 0;
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
	setAttr -s 8 ".tk";
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
	setAttr -s 4 ".tk[144:147]" -type "float3"  0 -0.21640557 0 0 -0.21640557
		 0 0 -0.21640557 0 0 -0.21640557 0;
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
	setAttr -s 32 ".tk[12:43]" -type "float3"  0.31593606 0 0 0.3111352 0
		 0 0.3111352 0 0 0.31593606 0 0 0.31593606 0 0 0.31593606 0 0 -0.31593606 0 0 -0.31113517
		 0 0 -0.31113517 0 0 -0.31593606 0 0 -0.31593603 0 0 -0.31593603 0 0 0 0 -0.23952755
		 0 0 -0.25090277 0 0 -0.25090277 -0.31593603 0 -0.25090277 0.31593606 0 -0.25090277
		 0 0 -0.25090277 0 0 -0.25090277 0 0 -0.23952755 0.3111352 0 -0.23952755 -0.31113517
		 0 -0.23952755 0 0 0.23952755 0 0 0.25090277 0 0 0.25090277 -0.31593603 0 0.25090277
		 0.31593606 0 0.25090277 0 0 0.25090277 0 0 0.25090277 0 0 0.23952755 0.3111352 0
		 0.23952755 -0.31113517 0 0.23952755;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "52471A09-5441-AD8D-E4F9-F893F03EAFD6";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 345\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 345\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 345\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1119\n            -height 734\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 734\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 734\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "26043329-1541-4BF1-19CF-FBB64DDC6B69";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "F2EB276A-460B-39F9-5A5D-659E42F33CED";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[2:3]" "e[5]" "e[7]" "e[11]" "e[13]";
	setAttr ".ix" -type "matrix" 0 0 0.84416530949403423 0 0 1 0 0 -1 0 0 0 -4.0360510851505031 0.50000001052067322 -2.5252248624054983 1;
	setAttr ".wt" 0.59730029106140137;
	setAttr ".dr" no;
	setAttr ".re" 13;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak11";
	rename -uid "0F845A7A-4752-0DD3-12C3-90BC73695622";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[5]" -type "float3" -0.0025441933 0 0.0023276429 ;
	setAttr ".tk[6]" -type "float3" 0.0025441931 0 0.0023276429 ;
	setAttr ".tk[8]" -type "float3" -0.0025441933 0 -0.0023276429 ;
	setAttr ".tk[10]" -type "float3" 0.0025441931 0 -0.0023276429 ;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "FE527942-41B5-0551-D3F4-EF920539B4BB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[0:1]" "e[8]" "e[10]" "e[14:15]" "e[26]" "e[31]" "e[38]" "e[43]";
	setAttr ".ix" -type "matrix" 0 0 0.84416530949403423 0 0 1 0 0 -1 0 0 0 -4.0360510851505031 0.50000001052067322 -2.5252248624054983 1;
	setAttr ".wt" 0.41827914118766785;
	setAttr ".re" 10;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "7D1FB970-401B-7746-D560-12B1389D2A1C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[21]" "e[29]" "e[32]" "e[35]" "e[37]" "e[39]" "e[52]" "e[62]" "e[72]" "e[82]";
	setAttr ".ix" -type "matrix" 0 0 0.84416530949403423 0 0 1 0 0 -1 0 0 0 -4.0360510851505031 0.50000001052067322 -2.5252248624054983 1;
	setAttr ".wt" 0.55000680685043335;
	setAttr ".dr" no;
	setAttr ".re" 62;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak12";
	rename -uid "DEA3161B-41F9-7B42-8B35-35BFA330214C";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk[12:43]" -type "float3"  0 0 0.22801138 0 0 0.230767
		 0 0 0.230767 0 0 0.23076741 0 0 0.230767 0 0 0.22801141 0 0 -0.23511791 0 0 -0.23787346
		 0 0 -0.23787338 0 0 -0.23787346 0 0 -0.23787388 0 0 -0.23511833 -0.23696592 0 0 -0.24252763
		 0 0 -0.24252744 0 0 -0.24252744 0 0.23076741 -0.24252744 0 -0.23787346 -0.24252744
		 0 0 -0.24252763 0 0 -0.23696592 0 0 -0.23696592 0 -0.23511833 -0.23696592 0 0.22801141
		 0.23268567 0 -8.8817842e-16 0.23824733 0 -8.8817842e-16 0.23824731 0 -8.8817842e-16
		 0.23824731 0 0.230767 0.23824731 0 -0.23787346 0.23824731 0 -8.8817842e-16 0.23824733
		 0 -8.8817842e-16 0.23268567 0 -8.8817842e-16 0.23268567 0 -0.23511797 0.23268567
		 0 0.22801141;
createNode polySplitRing -n "polySplitRing8";
	rename -uid "A3AC1148-4376-CC5C-A815-FFBA141E23ED";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[32]" "e[35]" "e[37]" "e[39]" "e[62]" "e[82]" "e[89]" "e[93]" "e[95]" "e[101]";
	setAttr ".ix" -type "matrix" 0 0 0.84416530949403423 0 0 1 0 0 -1 0 0 0 -4.0360510851505031 0.50000001052067322 -2.5252248624054983 1;
	setAttr ".wt" 0.94305181503295898;
	setAttr ".dr" no;
	setAttr ".re" 62;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "CA71FB29-43D8-210D-B073-DE8D4EF49D50";
	setAttr ".ics" -type "componentList" 2 "f[40]" "f[42]";
	setAttr ".ix" -type "matrix" 0 0 0.84416530949403423 0 0 1 0 0 -1 0 0 0 -4.0360510851505031 0.50000001052067322 -2.5252248624054983 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -4.0324974 1.7063564 -2.5018849 ;
	setAttr ".rs" 61353;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.4231725241306057 1.7063564167325262 -2.8469277575348046 ;
	setAttr ".cbx" -type "double3" -3.6418226863506069 1.7063564167325262 -2.1568419927754863 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak13";
	rename -uid "1A972DA1-4AA0-B91C-072E-DEA7AE49CB9A";
	setAttr ".uopa" yes;
	setAttr -s 22 ".tk";
	setAttr ".tk[44]" -type "float3" 0 0 0.015330255 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.015330255 ;
	setAttr ".tk[46]" -type "float3" 0 0 0.015330255 ;
	setAttr ".tk[47]" -type "float3" 0 0 0.015330255 ;
	setAttr ".tk[48]" -type "float3" 0 0 0.015330255 ;
	setAttr ".tk[49]" -type "float3" 0 0 0.015330255 ;
	setAttr ".tk[50]" -type "float3" 0 0 0.015330255 ;
	setAttr ".tk[51]" -type "float3" 0 0 0.015330255 ;
	setAttr ".tk[52]" -type "float3" 0 0 0.015330255 ;
	setAttr ".tk[53]" -type "float3" 0 0 0.015330255 ;
	setAttr ".tk[54]" -type "float3" 0 0 0.15111254 ;
	setAttr ".tk[55]" -type "float3" 0 0 0.15111254 ;
	setAttr ".tk[56]" -type "float3" 0 0 0.15111254 ;
	setAttr ".tk[57]" -type "float3" 0 0 0.15111254 ;
	setAttr ".tk[58]" -type "float3" 0 0 0.15111254 ;
	setAttr ".tk[59]" -type "float3" 0 0 0.15111254 ;
	setAttr ".tk[60]" -type "float3" 0 0 0.15111254 ;
	setAttr ".tk[61]" -type "float3" 0 0 0.15111254 ;
	setAttr ".tk[62]" -type "float3" 0 0 0.15111254 ;
	setAttr ".tk[63]" -type "float3" 0 0 0.15111254 ;
createNode polyBevel3 -n "polyBevel5";
	rename -uid "2D53BD9C-4CE2-3FEE-4D8D-BAA19E8608A9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[59]" "e[61:62]" "e[82]" "e[84:86]" "e[106]";
	setAttr ".ix" -type "matrix" 0 0 0.84416530949403423 0 0 1 0 0 -1 0 0 0 -4.0360510851505031 0.50000001052067322 -2.5252248624054983 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.2;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak14";
	rename -uid "8406D8D7-4C90-F9F4-CE7D-FA88BA521B47";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[64]" -type "float3" 0 -0.22133021 0 ;
	setAttr ".tk[65]" -type "float3" 0 -0.22133021 0 ;
	setAttr ".tk[66]" -type "float3" 0 -0.22133021 0 ;
	setAttr ".tk[67]" -type "float3" 0 -0.22133021 0 ;
	setAttr ".tk[68]" -type "float3" 0 -0.22133021 0 ;
	setAttr ".tk[69]" -type "float3" 0 -0.22133021 0 ;
	setAttr ".tk[70]" -type "float3" 0 -0.22133021 0 ;
	setAttr ".tk[71]" -type "float3" 0 -0.22133021 0 ;
createNode polySplitRing -n "polySplitRing9";
	rename -uid "15B8D2EA-4DD5-D07C-B4B0-889D647DF06F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 5.3305274172385477 -0.9399158050653651 0 0 0 0 -6.4884866164432129 0
		 0.016653637291158086 0.094447470399852379 0 0 -2.1569368865052683 4.5171816574030323 -0.018114730035569959 1;
	setAttr ".wt" 0.39023077487945557;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 12;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyDuplicateEdge -n "polyDuplicateEdge1";
	rename -uid "5E70C66E-43E3-57ED-58FB-AF95C5693F92";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[102]" "e[104]" "e[106:107]";
	setAttr ".of" 0.088311232626438141;
createNode polyDuplicateEdge -n "polyDuplicateEdge2";
	rename -uid "C98DE441-47AB-C835-E629-38B3615AB8C7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[94]" "e[96]" "e[98:99]";
	setAttr ".of" 0.15477865934371948;
createNode polyDuplicateEdge -n "polyDuplicateEdge3";
	rename -uid "36D2C6FA-46C7-D17D-A70F-1D86988D2828";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[86]" "e[88]" "e[90:91]";
	setAttr ".of" 0.15477865934371948;
createNode polyDuplicateEdge -n "polyDuplicateEdge4";
	rename -uid "F19DB275-4478-D483-AFA8-2BB217D042B7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[78]" "e[80]" "e[82:83]";
	setAttr ".of" 0.13779334723949432;
createNode polyDuplicateEdge -n "polyDuplicateEdge5";
	rename -uid "08172FEF-4DE8-1DA6-6A0E-9C9022E28722";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[70]" "e[72]" "e[74:75]";
	setAttr ".of" 0.11042811721563339;
createNode polyDuplicateEdge -n "polyDuplicateEdge6";
	rename -uid "2AECC014-43C6-3492-F139-D68041138655";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[62]" "e[64]" "e[66:67]";
	setAttr ".of" 0.1094844862818718;
createNode polyDuplicateEdge -n "polyDuplicateEdge7";
	rename -uid "2C61D13C-4EB5-EC06-7A87-6B9B533E6AE4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[54]" "e[56]" "e[58:59]";
	setAttr ".of" 0.081175632774829865;
createNode polyDuplicateEdge -n "polyDuplicateEdge8";
	rename -uid "95CF52BA-4161-224E-EE0F-53949ADFBDBE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[46]" "e[48]" "e[50:51]";
	setAttr ".of" 0.11797714233398438;
createNode polyDuplicateEdge -n "polyDuplicateEdge9";
	rename -uid "063B909E-42C3-8B1D-1CE3-D3A094B6A4F9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[38]" "e[40]" "e[42:43]";
	setAttr ".of" 0.1472296267747879;
createNode polyDuplicateEdge -n "polyDuplicateEdge10";
	rename -uid "55D1E9A7-48F5-6590-0E65-D489C1901584";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[30]" "e[32]" "e[34:35]";
	setAttr ".of" 0.1085408627986908;
createNode polyDuplicateEdge -n "polyDuplicateEdge11";
	rename -uid "1186C433-4398-D9E4-9E85-E6B01680C0BF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[22]" "e[24]" "e[26:27]";
	setAttr ".of" 0.098160944879055023;
createNode polyDuplicateEdge -n "polyDuplicateEdge12";
	rename -uid "728679BC-48A2-389F-1FD5-DD8A70F1E1E0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[14]" "e[16]" "e[18:19]";
	setAttr ".of" 0.09910457581281662;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "5CB6E529-40C9-D27D-D73E-EAA532E889CF";
	setAttr ".ics" -type "componentList" 24 "f[57]" "f[61]" "f[65]" "f[69]" "f[73]" "f[77]" "f[81]" "f[85]" "f[89]" "f[93]" "f[97]" "f[101]" "f[105]" "f[109]" "f[113]" "f[117]" "f[121]" "f[125]" "f[129]" "f[133]" "f[137]" "f[141]" "f[145]" "f[149]";
	setAttr ".ix" -type "matrix" 5.3305274172385477 -0.9399158050653651 0 0 0 0 -6.4884866164432129 0
		 0.016653637291158086 0.094447470399852379 0 0 -2.1569368865052683 4.5171816574030323 -0.018114730035569959 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.1486101 4.5644054 -0.015174316 ;
	setAttr ".rs" 64357;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.813873776478963 4.0944474900702756 -2.8127082628092843 ;
	setAttr ".cbx" -type "double3" 0.51665364075958475 5.0343632951356412 2.7823596310883087 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak15";
	rename -uid "F07EE147-401E-5455-250E-EE92B51BCC67";
	setAttr ".uopa" yes;
	setAttr -s 37 ".tk";
	setAttr ".tk[56]" -type "float3" 0 0.0017366008 0 ;
	setAttr ".tk[57]" -type "float3" 0 0.0017366008 0 ;
	setAttr ".tk[58]" -type "float3" 0 0.0017366008 0 ;
	setAttr ".tk[59]" -type "float3" 0 0.0017366008 0 ;
	setAttr ".tk[60]" -type "float3" 0 -0.0017366008 0 ;
	setAttr ".tk[61]" -type "float3" 0 -0.0017366008 0 ;
	setAttr ".tk[62]" -type "float3" 0 -0.0017366008 0 ;
	setAttr ".tk[63]" -type "float3" 0 -0.0017366008 0 ;
	setAttr ".tk[72]" -type "float3" 0 -0.00072297675 0 ;
	setAttr ".tk[73]" -type "float3" 0 -0.00072297675 0 ;
	setAttr ".tk[74]" -type "float3" 0 -0.00072297675 0 ;
	setAttr ".tk[75]" -type "float3" 0 -0.00072297675 0 ;
	setAttr ".tk[76]" -type "float3" 0 0.00072297675 0 ;
	setAttr ".tk[77]" -type "float3" 0 0.00072297675 0 ;
	setAttr ".tk[78]" -type "float3" 0 0.00072297675 0 ;
	setAttr ".tk[79]" -type "float3" 0 0.00072297675 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "81900CAF-4E82-55D8-7034-6D8CDE80D9A2";
	setAttr ".ics" -type "componentList" 24 "f[150]" "f[154]" "f[156]" "f[160]" "f[162]" "f[166]" "f[168]" "f[172]" "f[174]" "f[178]" "f[180]" "f[184]" "f[186]" "f[190]" "f[192]" "f[196]" "f[198]" "f[202]" "f[204]" "f[208]" "f[210]" "f[214]" "f[216]" "f[220]";
	setAttr ".ix" -type "matrix" 5.3305274172385477 -0.9399158050653651 0 0 0 0 -6.4884866164432129 0
		 0.016653637291158086 0.094447470399852379 0 0 -2.1569368865052683 4.5171816574030323 -0.018114730035569959 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.52604651 4.147717 -0.015174412 ;
	setAttr ".rs" 32984;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.51665364075958475 4.0944474900702756 -2.8127084561812543 ;
	setAttr ".cbx" -type "double3" 0.53543942043780302 4.2009869408266995 2.7823596310883087 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak16";
	rename -uid "F15DA984-426B-D5E4-71F0-D489063F1393";
	setAttr ".uopa" yes;
	setAttr -s 109 ".tk";
	setAttr ".tk[8]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[12]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[16]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[20]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[24]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[28]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[32]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[36]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[40]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[44]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[48]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[52]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[56]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[63]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[64]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[71]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[72]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[79]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[80]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[87]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[88]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[95]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[96]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[103]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[104]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[111]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[112]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[119]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[120]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[127]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[128]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[135]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[136]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[143]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[144]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[151]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".tk[152]" -type "float3" 2.3283064e-10 0 1.1280286 ;
	setAttr ".tk[153]" -type "float3" 1.6653345e-16 0 1.1280286 ;
	setAttr ".tk[154]" -type "float3" 2.3283064e-10 0 0.79744822 ;
	setAttr ".tk[155]" -type "float3" 1.110223e-16 0 0.79744822 ;
	setAttr ".tk[156]" -type "float3" 2.3283064e-10 0 0.79744822 ;
	setAttr ".tk[157]" -type "float3" 1.110223e-16 0 0.79744822 ;
	setAttr ".tk[158]" -type "float3" 2.3283064e-10 0 1.1280286 ;
	setAttr ".tk[159]" -type "float3" 1.6653345e-16 0 1.1280286 ;
	setAttr ".tk[160]" -type "float3" 2.3283064e-10 0 0.79744822 ;
	setAttr ".tk[161]" -type "float3" 1.110223e-16 0 0.79744822 ;
	setAttr ".tk[162]" -type "float3" 2.3283064e-10 0 0.79744822 ;
	setAttr ".tk[163]" -type "float3" 1.110223e-16 0 0.79744822 ;
	setAttr ".tk[164]" -type "float3" 2.3283064e-10 0 1.1280286 ;
	setAttr ".tk[165]" -type "float3" 1.6653345e-16 0 1.1280286 ;
	setAttr ".tk[166]" -type "float3" 2.3283064e-10 0 0.79744822 ;
	setAttr ".tk[167]" -type "float3" 1.110223e-16 0 0.79744822 ;
	setAttr ".tk[168]" -type "float3" 2.3283064e-10 0 0.79744822 ;
	setAttr ".tk[169]" -type "float3" 1.110223e-16 0 0.79744822 ;
	setAttr ".tk[170]" -type "float3" 2.3283064e-10 0 1.1280286 ;
	setAttr ".tk[171]" -type "float3" 1.6653345e-16 0 1.1280286 ;
	setAttr ".tk[172]" -type "float3" 2.3283064e-10 0 0.79744822 ;
	setAttr ".tk[173]" -type "float3" 1.110223e-16 0 0.79744822 ;
	setAttr ".tk[174]" -type "float3" 2.3283064e-10 0 0.79744822 ;
	setAttr ".tk[175]" -type "float3" 1.110223e-16 0 0.79744822 ;
	setAttr ".tk[176]" -type "float3" 2.3283064e-10 0 1.1280286 ;
	setAttr ".tk[177]" -type "float3" 1.6653345e-16 0 1.1280286 ;
	setAttr ".tk[178]" -type "float3" 2.3283064e-10 0 0.79744822 ;
	setAttr ".tk[179]" -type "float3" 1.110223e-16 0 0.79744822 ;
	setAttr ".tk[180]" -type "float3" 2.3283064e-10 0 0.79744822 ;
	setAttr ".tk[181]" -type "float3" 1.110223e-16 0 0.79744822 ;
	setAttr ".tk[182]" -type "float3" 2.3283064e-10 0 1.1280286 ;
	setAttr ".tk[183]" -type "float3" 1.6653345e-16 0 1.1280286 ;
	setAttr ".tk[184]" -type "float3" 2.3283064e-10 0 0.79744822 ;
	setAttr ".tk[185]" -type "float3" 1.110223e-16 0 0.79744822 ;
	setAttr ".tk[186]" -type "float3" 2.3283064e-10 0 0.79744822 ;
	setAttr ".tk[187]" -type "float3" 1.110223e-16 0 0.79744822 ;
	setAttr ".tk[188]" -type "float3" 2.3283064e-10 0 1.1280286 ;
	setAttr ".tk[189]" -type "float3" 1.6653345e-16 0 1.1280286 ;
	setAttr ".tk[190]" -type "float3" 2.3283064e-10 0 0.79744822 ;
	setAttr ".tk[191]" -type "float3" 1.110223e-16 0 0.79744822 ;
	setAttr ".tk[192]" -type "float3" 2.3283064e-10 0 0.79744822 ;
	setAttr ".tk[193]" -type "float3" 1.110223e-16 0 0.79744822 ;
	setAttr ".tk[194]" -type "float3" 2.3283064e-10 0 1.1280286 ;
	setAttr ".tk[195]" -type "float3" 1.6653345e-16 0 1.1280286 ;
	setAttr ".tk[196]" -type "float3" 2.3283064e-10 0 0.79744822 ;
	setAttr ".tk[197]" -type "float3" 1.110223e-16 0 0.79744822 ;
	setAttr ".tk[198]" -type "float3" 2.3283064e-10 0 0.79744822 ;
	setAttr ".tk[199]" -type "float3" 1.110223e-16 0 0.79744822 ;
	setAttr ".tk[200]" -type "float3" 2.3283064e-10 0 1.1280286 ;
	setAttr ".tk[201]" -type "float3" 1.6653345e-16 0 1.1280286 ;
	setAttr ".tk[202]" -type "float3" 2.3283064e-10 0 0.79744822 ;
	setAttr ".tk[203]" -type "float3" 1.110223e-16 0 0.79744822 ;
	setAttr ".tk[204]" -type "float3" 2.3283064e-10 0 0.79744822 ;
	setAttr ".tk[205]" -type "float3" 1.110223e-16 0 0.79744822 ;
	setAttr ".tk[206]" -type "float3" 2.3283064e-10 0 1.1280286 ;
	setAttr ".tk[207]" -type "float3" 1.6653345e-16 0 1.1280286 ;
	setAttr ".tk[208]" -type "float3" 2.3283064e-10 0 0.79744822 ;
	setAttr ".tk[209]" -type "float3" 1.110223e-16 0 0.79744822 ;
	setAttr ".tk[210]" -type "float3" 2.3283064e-10 0 0.79744822 ;
	setAttr ".tk[211]" -type "float3" 1.110223e-16 0 0.79744822 ;
	setAttr ".tk[212]" -type "float3" 2.3283064e-10 0 1.1280286 ;
	setAttr ".tk[213]" -type "float3" 1.6653345e-16 0 1.1280286 ;
	setAttr ".tk[214]" -type "float3" 2.3283064e-10 0 0.79744822 ;
	setAttr ".tk[215]" -type "float3" 1.110223e-16 0 0.79744822 ;
	setAttr ".tk[216]" -type "float3" 2.3283064e-10 0 0.79744822 ;
	setAttr ".tk[217]" -type "float3" 1.110223e-16 0 0.79744822 ;
	setAttr ".tk[218]" -type "float3" 2.3283064e-10 0 1.1280286 ;
	setAttr ".tk[219]" -type "float3" 1.6653345e-16 0 1.1280286 ;
	setAttr ".tk[220]" -type "float3" 2.3283064e-10 0 0.79744822 ;
	setAttr ".tk[221]" -type "float3" 1.110223e-16 0 0.79744822 ;
	setAttr ".tk[222]" -type "float3" 2.3283064e-10 0 0.79744822 ;
	setAttr ".tk[223]" -type "float3" 1.110223e-16 0 0.79744822 ;
createNode polyPlane -n "polyPlane1";
	rename -uid "BD4835DE-4E76-CCA8-AFC4-DEB1450C5D18";
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode displayLayer -n "hide";
	rename -uid "CF942EC6-4CBA-CA1A-2DDD-C49B94146C12";
	setAttr ".do" 1;
createNode polyCube -n "polyCube5";
	rename -uid "BF13E937-467C-7646-C17F-EC8E998F01E3";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "8B0D289E-4230-79C0-3933-D7951EB762ED";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.1864736677963501 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.1864736 0.5 0 ;
	setAttr ".rs" 36972;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.6864736677963501 0.5 -0.5 ;
	setAttr ".cbx" -type "double3" 2.6864736677963501 0.5 0.5 ;
	setAttr ".raf" no;
createNode polySmoothFace -n "polySmoothFace1";
	rename -uid "1E486333-4764-036B-A353-FE8D66AD09FE";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTweak -n "polyTweak17";
	rename -uid "0947AA47-43F7-0519-1F8A-05B39E8DE191";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.2233614 0 ;
	setAttr ".tk[1]" -type "float3" 0 0.2233614 0 ;
	setAttr ".tk[6]" -type "float3" 0 0.2233614 0 ;
	setAttr ".tk[7]" -type "float3" 0 0.2233614 0 ;
	setAttr ".tk[8]" -type "float3" 0.16901648 -0.37629205 -0.16901648 ;
	setAttr ".tk[9]" -type "float3" -0.16901648 -0.37629205 -0.16901648 ;
	setAttr ".tk[10]" -type "float3" -0.16901648 -0.37629205 0.16901648 ;
	setAttr ".tk[11]" -type "float3" 0.16901648 -0.37629205 0.16901648 ;
createNode polyBevel3 -n "polyBevel6";
	rename -uid "C35AD086-4D78-02B4-D5D1-1A997287D041";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[2:5]" "e[12:15]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.6720521448295349 2.2362720859136713 -0.057914882898330688 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak18";
	rename -uid "14EBECC9-4283-250C-75B8-509E397F5CAE";
	setAttr ".uopa" yes;
	setAttr -s 31 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -0.075506508 0 ;
	setAttr ".tk[1]" -type "float3" 0 -0.075506449 0 ;
	setAttr ".tk[6]" -type "float3" 0 -0.075506508 0 ;
	setAttr ".tk[7]" -type "float3" 0 -0.075506508 0 ;
	setAttr ".tk[8]" -type "float3" 0 -0.056290101 0 ;
	setAttr ".tk[9]" -type "float3" 0 -0.056290101 0 ;
	setAttr ".tk[10]" -type "float3" 0 -0.056290101 0 ;
	setAttr ".tk[11]" -type "float3" 0 -0.056290101 0 ;
	setAttr ".tk[13]" -type "float3" -0.0091224872 1.0458991e-10 -0.0091224872 ;
	setAttr ".tk[18]" -type "float3" -0.028921677 -0.017491907 -0.028921677 ;
	setAttr ".tk[19]" -type "float3" 0.028921677 -0.017491907 -0.028921677 ;
	setAttr ".tk[20]" -type "float3" -0.028921677 -0.017491907 0.028921677 ;
	setAttr ".tk[21]" -type "float3" 0.028921677 -0.017491907 0.028921677 ;
	setAttr ".tk[23]" -type "float3" 0.0091224872 1.0458991e-10 0.0091224872 ;
	setAttr ".tk[25]" -type "float3" -0.0091224872 1.0458991e-10 0.0091224872 ;
	setAttr ".tk[26]" -type "float3" 0 -0.056290101 0 ;
	setAttr ".tk[27]" -type "float3" 0 -0.056290101 0 ;
	setAttr ".tk[28]" -type "float3" 0 -0.056290101 0 ;
	setAttr ".tk[29]" -type "float3" 0 -0.056290101 0 ;
	setAttr ".tk[31]" -type "float3" 0.0091224872 1.0458991e-10 -0.0091224872 ;
	setAttr ".tk[32]" -type "float3" 0 1.0458991e-10 0.012163358 ;
	setAttr ".tk[33]" -type "float3" 0 -0.056290101 0 ;
	setAttr ".tk[34]" -type "float3" 0 -1.0458909e-10 -0.012163358 ;
	setAttr ".tk[35]" -type "float3" 0 0.097079873 0 ;
	setAttr ".tk[36]" -type "float3" 0.012163358 1.0458991e-10 0 ;
	setAttr ".tk[37]" -type "float3" -0.012163358 1.0458991e-10 0 ;
	setAttr ".tk[38]" -type "float3" 0 -0.017491907 -0.038562246 ;
	setAttr ".tk[39]" -type "float3" -0.038562246 -0.017491907 0 ;
	setAttr ".tk[40]" -type "float3" 0 -0.017491907 0.038562246 ;
	setAttr ".tk[41]" -type "float3" 0.038562246 -0.017491907 0 ;
createNode polySmoothFace -n "polySmoothFace2";
	rename -uid "30600157-496F-6246-BBE1-309DB199689E";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTweak -n "polyTweak19";
	rename -uid "4C83EA85-4744-3E9E-C11A-D3BD2F22BA78";
	setAttr ".uopa" yes;
	setAttr -s 35 ".tk";
	setAttr ".tk[4]" -type "float3" -0.050786141 -0.0002527638 0.050786145 ;
	setAttr ".tk[5]" -type "float3" 0.050786152 -0.0002527638 0.050786145 ;
	setAttr ".tk[6]" -type "float3" 0.050786152 -0.0002527638 -0.050786145 ;
	setAttr ".tk[7]" -type "float3" -0.050786141 -0.0002527638 -0.050786145 ;
	setAttr ".tk[9]" -type "float3" 0 0.07262934 0 ;
	setAttr ".tk[12]" -type "float3" 0.018667255 0.0060381731 0.018667255 ;
	setAttr ".tk[13]" -type "float3" -0.018667255 0.0060381731 0.018667255 ;
	setAttr ".tk[14]" -type "float3" 0.018667255 0.0060381731 -0.018667255 ;
	setAttr ".tk[15]" -type "float3" -0.018667255 0.0060381731 -0.018667255 ;
	setAttr ".tk[17]" -type "float3" 0 0.07262934 0 ;
	setAttr ".tk[18]" -type "float3" 0 0.07262934 0 ;
	setAttr ".tk[19]" -type "float3" 2.5848934e-09 -0.0090147331 0.064513355 ;
	setAttr ".tk[20]" -type "float3" 0.064513355 -0.0090147331 0 ;
	setAttr ".tk[21]" -type "float3" 2.5848934e-09 -0.0090147331 -0.064513355 ;
	setAttr ".tk[22]" -type "float3" -0.064513355 -0.0090147331 0 ;
	setAttr ".tk[23]" -type "float3" 0 0.07262934 0 ;
	setAttr ".tk[24]" -type "float3" 0 0.07262934 0 ;
	setAttr ".tk[25]" -type "float3" 0 -0.075400807 0 ;
	setAttr ".tk[26]" -type "float3" 0 0.07262934 0 ;
	setAttr ".tk[28]" -type "float3" 0 0.07262934 0 ;
	setAttr ".tk[29]" -type "float3" 0 0.07262934 0 ;
	setAttr ".tk[30]" -type "float3" 0 0.0060381731 0.024889672 ;
	setAttr ".tk[31]" -type "float3" 0.024889672 0.0060381731 0 ;
	setAttr ".tk[32]" -type "float3" 0 0.0060381731 -0.024889672 ;
	setAttr ".tk[33]" -type "float3" -0.024889672 0.0060381731 0 ;
	setAttr ".tk[36]" -type "float3" -0.005563749 0 0.005563749 ;
	setAttr ".tk[39]" -type "float3" 2.5833163e-10 0 0.0074183322 ;
	setAttr ".tk[42]" -type "float3" 0.005563749 0 0.005563749 ;
	setAttr ".tk[45]" -type "float3" -0.005563749 0 -0.0055637481 ;
	setAttr ".tk[48]" -type "float3" 2.5833163e-10 0 -0.0074183322 ;
	setAttr ".tk[51]" -type "float3" 0.005563749 0 -0.0055637481 ;
	setAttr ".tk[54]" -type "float3" -0.0074183322 0 2.5833163e-10 ;
	setAttr ".tk[57]" -type "float3" 0.0074183322 0 2.5833163e-10 ;
createNode polyCube -n "polyCube6";
	rename -uid "805EB95D-4784-AC5F-0D3E-8BB17740BEE0";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "0F514A47-45C0-87B1-F8FE-A5AB25147A68";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.45746201342814707 0 0 0 0 0.45746201342814707 0 0
		 0 0 0.45746201342814707 0 0 2.7633543464522772 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.9920855 0 ;
	setAttr ".rs" 45968;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.22873100671407354 2.9920853531663507 -0.22873100671407354 ;
	setAttr ".cbx" -type "double3" 0.22873100671407354 2.9920853531663507 0.22873100671407354 ;
	setAttr ".raf" no;
createNode polySmoothFace -n "polySmoothFace3";
	rename -uid "569935C0-4B55-A991-D195-CEB5C736632C";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTweak -n "polyTweak20";
	rename -uid "0392F35F-4A34-4262-A200-4187A16A2862";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[0]" -type "float3" 0.067683727 0 -0.067683727 ;
	setAttr ".tk[1]" -type "float3" -0.067683727 0 -0.067683727 ;
	setAttr ".tk[6]" -type "float3" 0.067683727 0 0.067683727 ;
	setAttr ".tk[7]" -type "float3" -0.067683727 0 0.067683727 ;
	setAttr ".tk[8]" -type "float3" 0.1793545 -0.26900744 -0.1793545 ;
	setAttr ".tk[9]" -type "float3" -0.1793545 -0.26900744 -0.1793545 ;
	setAttr ".tk[10]" -type "float3" -0.1793545 -0.26900744 0.1793545 ;
	setAttr ".tk[11]" -type "float3" 0.1793545 -0.26900744 0.1793545 ;
createNode polySmoothFace -n "polySmoothFace4";
	rename -uid "77126A8A-4A2C-59A3-28ED-9FBBCFBBAF35";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTweak -n "polyTweak21";
	rename -uid "90B92FB1-4CB7-1689-7AE9-5084BE341B68";
	setAttr ".uopa" yes;
	setAttr -s 41 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.50418603 0 ;
	setAttr ".tk[1]" -type "float3" 0 0.50418603 0 ;
	setAttr ".tk[2]" -type "float3" 0 -0.022701377 0 ;
	setAttr ".tk[3]" -type "float3" 0 -0.022701377 0 ;
	setAttr ".tk[4]" -type "float3" 0 -0.022701377 0 ;
	setAttr ".tk[5]" -type "float3" 0 -0.022701377 0 ;
	setAttr ".tk[6]" -type "float3" 0 0.50418615 0 ;
	setAttr ".tk[7]" -type "float3" 0 0.50418615 0 ;
	setAttr ".tk[8]" -type "float3" -0.042199969 0.0026526994 0.042199969 ;
	setAttr ".tk[9]" -type "float3" 0.042199969 0.0026526994 0.042199966 ;
	setAttr ".tk[10]" -type "float3" 0.042199969 0.0026527056 -0.042199969 ;
	setAttr ".tk[11]" -type "float3" -0.042199969 0.0026527056 -0.042199969 ;
	setAttr ".tk[12]" -type "float3" 0 0.6014086 0 ;
	setAttr ".tk[13]" -type "float3" 0.014607143 0.27461824 0.014607143 ;
	setAttr ".tk[14]" -type "float3" 0 0.6014086 0 ;
	setAttr ".tk[15]" -type "float3" 0 0.6014086 0 ;
	setAttr ".tk[16]" -type "float3" 0 -0.022701377 0 ;
	setAttr ".tk[17]" -type "float3" 0 -0.022701377 0 ;
	setAttr ".tk[18]" -type "float3" 0 -0.043034639 0 ;
	setAttr ".tk[19]" -type "float3" 0 -0.043034639 0 ;
	setAttr ".tk[20]" -type "float3" 0 -0.043034639 0 ;
	setAttr ".tk[21]" -type "float3" 0 -0.043034639 0 ;
	setAttr ".tk[22]" -type "float3" 0 0.6014086 0 ;
	setAttr ".tk[23]" -type "float3" -0.014607143 0.2746183 -0.014607143 ;
	setAttr ".tk[24]" -type "float3" 0 -0.022701377 0 ;
	setAttr ".tk[25]" -type "float3" 0.014607143 0.2746183 -0.014607143 ;
	setAttr ".tk[26]" -type "float3" 0 -0.0026527056 0.053331621 ;
	setAttr ".tk[27]" -type "float3" 0.053331621 -0.0026527056 0 ;
	setAttr ".tk[28]" -type "float3" 0 -0.0026527056 -0.053331621 ;
	setAttr ".tk[29]" -type "float3" -0.053331621 -0.0026527056 0 ;
	setAttr ".tk[30]" -type "float3" 0 -0.022701377 0 ;
	setAttr ".tk[31]" -type "float3" -0.014607143 0.27461824 0.014607143 ;
	setAttr ".tk[32]" -type "float3" 0 0.2746183 -0.01947619 ;
	setAttr ".tk[34]" -type "float3" 0 0.27461824 0.01947619 ;
	setAttr ".tk[35]" -type "float3" 0 0.72640806 0 ;
	setAttr ".tk[36]" -type "float3" -0.01947619 0.27461824 0 ;
	setAttr ".tk[37]" -type "float3" 0.01947619 0.27461824 0 ;
	setAttr ".tk[38]" -type "float3" 0 -0.043034639 0 ;
	setAttr ".tk[39]" -type "float3" 0 -0.043034639 0 ;
	setAttr ".tk[40]" -type "float3" 0 -0.043034639 0 ;
	setAttr ".tk[41]" -type "float3" 0 -0.043034639 0 ;
createNode polyCube -n "polyCube7";
	rename -uid "78466D97-4863-4A9E-C580-A893DA6B3B82";
	setAttr ".cuv" 4;
createNode polySmoothFace -n "polySmoothFace5";
	rename -uid "E55AE286-47EE-1D6F-1F4A-9FA3FCDBAB49";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyCube -n "polyCube8";
	rename -uid "82DC15F3-4121-DE63-0D79-CDBAB3294917";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "B1F654CC-41A8-9153-DF57-19AC1D2ED749";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 0.45568381959528076 0 0 0 0 0.10319012310357445 0 0
		 0 0 0.10319012310357445 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.22784191 0 0 ;
	setAttr ".rs" 48478;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.22784190979764038 -0.051595061551787225 -0.051595061551787225 ;
	setAttr ".cbx" -type "double3" -0.22784190979764038 0.051595061551787225 0.051595061551787225 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "88C0D332-4A70-7F4F-6673-BBA86C173743";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 0.45568381959528076 0 0 0 0 0.10319012310357445 0 0
		 0 0 0.10319012310357445 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.26457092 0 0 ;
	setAttr ".rs" 53087;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.264570932569407 -0.037783760817435993 -0.037783760817435993 ;
	setAttr ".cbx" -type "double3" -0.264570932569407 0.037783760817435993 0.037783760817435993 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak22";
	rename -uid "EFAD6062-4CBA-1614-87EF-5BBED8A874CB";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[8]" -type "float3" -0.080602013 0.13384326 0.13384326 ;
	setAttr ".tk[9]" -type "float3" -0.080602013 0.13384326 -0.13384326 ;
	setAttr ".tk[10]" -type "float3" -0.080602013 -0.13384326 -0.13384326 ;
	setAttr ".tk[11]" -type "float3" -0.080602013 -0.13384326 0.13384326 ;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "1568D184-4F1C-D862-2DE8-359ADAA0DBFD";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 0.45568381959528076 0 0 0 0 0.10319012310357445 0 0
		 0 0 0.10319012310357445 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.28818917 0 0 ;
	setAttr ".rs" 41997;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.28818915788389476 -0.0056920303291175716 -0.037783760817435993 ;
	setAttr ".cbx" -type "double3" -0.28818915788389476 0.0056920303291175716 0.037783760817435993 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak23";
	rename -uid "047BCA51-460D-9616-3300-03AF2D75E51D";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[12]" -type "float3" -0.051830269 0.31099615 0 ;
	setAttr ".tk[13]" -type "float3" -0.051830269 0.31099615 0 ;
	setAttr ".tk[14]" -type "float3" -0.051830269 -0.31099615 0 ;
	setAttr ".tk[15]" -type "float3" -0.051830269 -0.31099615 0 ;
createNode polySplitRing -n "polySplitRing10";
	rename -uid "F2371DA0-4205-A79F-78E3-68A663B91595";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[28:29]" "e[31]" "e[33]";
	setAttr ".ix" -type "matrix" 0.45568381959528076 0 0 0 0 0.10319012310357445 0 0
		 0 0 0.10319012310357445 0 0 0 0 1;
	setAttr ".wt" 0.22409144043922424;
	setAttr ".re" 33;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 3;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak24";
	rename -uid "891E2464-4460-B5A5-5C54-059F9C6E9F40";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[16]" -type "float3" -1.2414037 0 0 ;
	setAttr ".tk[17]" -type "float3" -1.2414037 0 0 ;
	setAttr ".tk[18]" -type "float3" -1.2414037 0 0 ;
	setAttr ".tk[19]" -type "float3" -1.2414037 0 0 ;
createNode polyBevel3 -n "polyBevel7";
	rename -uid "F4331A11-4C06-678A-B8C2-95A0BB4CEB18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:19]";
	setAttr ".ix" -type "matrix" 0.45568381959528076 0 0 0 0 0.10319012310357445 0 0
		 0 0 0.10319012310357445 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polySplitRing -n "polySplitRing11";
	rename -uid "55D28CD5-4451-670A-B535-BF9922DD73DC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 22 "e[0]" "e[2]" "e[6]" "e[10]" "e[14]" "e[18]" "e[22]" "e[26]" "e[30]" "e[34]" "e[41]" "e[43]" "e[53]" "e[55]" "e[69]" "e[71]" "e[73]" "e[75]" "e[105]" "e[107]" "e[113]" "e[115]";
	setAttr ".ix" -type "matrix" 0.45568381959528076 0 0 0 0 0.10319012310357445 0 0
		 0 0 0.10319012310357445 0 0 0 0 1;
	setAttr ".wt" 0.27782770991325378;
	setAttr ".re" 69;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing12";
	rename -uid "2005BF10-43BD-EF9D-C949-37844D403E8F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "e[1]" "e[3]" "e[8]" "e[11]" "e[16]" "e[19]" "e[24]" "e[27]" "e[32]" "e[35]" "e[49]" "e[51]" "e[57]" "e[59]" "e[85]" "e[87]" "e[89]" "e[91]" "e[101]" "e[103]" "e[109]" "e[111]" "e[138]" "e[160]";
	setAttr ".ix" -type "matrix" 0.45568381959528076 0 0 0 0 0.10319012310357445 0 0
		 0 0 0.10319012310357445 0 0 0 0 1;
	setAttr ".wt" 0.33023303747177124;
	setAttr ".re" 49;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak25";
	rename -uid "0D093367-4636-480F-73B5-F7A8B0B3A154";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[60]" -type "float3" 0 0.1247428 0 ;
	setAttr ".tk[61]" -type "float3" 0 0.1175236 0 ;
	setAttr ".tk[62]" -type "float3" 0 0.09861768 0 ;
	setAttr ".tk[63]" -type "float3" 0 0.072256014 0 ;
	setAttr ".tk[64]" -type "float3" 0 0.013761777 0 ;
	setAttr ".tk[65]" -type "float3" 0 0.013761777 0 ;
	setAttr ".tk[66]" -type "float3" 0 0.013761777 0 ;
	setAttr ".tk[67]" -type "float3" 0 0.013761777 0 ;
	setAttr ".tk[68]" -type "float3" 0 0.013761777 0 ;
	setAttr ".tk[69]" -type "float3" 0 -0.013761777 0 ;
	setAttr ".tk[70]" -type "float3" 0 -0.013761777 0 ;
	setAttr ".tk[71]" -type "float3" 0 -0.013761777 0 ;
	setAttr ".tk[72]" -type "float3" 0 -0.013761777 0 ;
	setAttr ".tk[73]" -type "float3" 0 -0.013761777 0 ;
	setAttr ".tk[74]" -type "float3" 0 -0.072256014 0 ;
	setAttr ".tk[75]" -type "float3" 0 -0.09861768 0 ;
	setAttr ".tk[76]" -type "float3" 0 -0.1175236 0 ;
	setAttr ".tk[77]" -type "float3" 0 -0.1247428 0 ;
	setAttr ".tk[78]" -type "float3" 0 -0.1247428 0 ;
	setAttr ".tk[79]" -type "float3" 0 -0.096501783 0 ;
	setAttr ".tk[80]" -type "float3" 0 0.096501783 0 ;
	setAttr ".tk[81]" -type "float3" 0 0.1247428 0 ;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "54EEE77C-4482-FC70-23DB-EAA6E4233B4D";
	setAttr ".ics" -type "componentList" 12 "e[36]" "e[41]" "e[51]" "e[60]" "e[71]" "e[76]" "e[87]" "e[92]" "e[121]" "e[151]" "e[165]" "e[197]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak26";
	rename -uid "AD85C7C9-4BBE-B829-0D94-428FAA63956E";
	setAttr ".uopa" yes;
	setAttr -s 53 ".tk";
	setAttr ".tk[4]" -type "float3" 0.012945235 0.019234676 0.048030287 ;
	setAttr ".tk[5]" -type "float3" -0.13436241 0.019234676 0 ;
	setAttr ".tk[6]" -type "float3" -0.13436241 -0.019234676 0 ;
	setAttr ".tk[7]" -type "float3" 0.012945235 -0.019234676 0.048030287 ;
	setAttr ".tk[8]" -type "float3" 0 -0.019234676 -0.60327739 ;
	setAttr ".tk[9]" -type "float3" 0 -0.019234676 0 ;
	setAttr ".tk[10]" -type "float3" 0 0.019234676 0 ;
	setAttr ".tk[11]" -type "float3" 0 0.019234676 -0.60327739 ;
	setAttr ".tk[12]" -type "float3" 0 -0.019234676 -0.79461956 ;
	setAttr ".tk[13]" -type "float3" 0 -0.019234676 0 ;
	setAttr ".tk[14]" -type "float3" 0 0.019234676 0 ;
	setAttr ".tk[15]" -type "float3" 0 0.019234676 -0.79461956 ;
	setAttr ".tk[16]" -type "float3" 0 -0.019234676 -0.57958782 ;
	setAttr ".tk[17]" -type "float3" 0 -0.019234676 0 ;
	setAttr ".tk[18]" -type "float3" 0 0.019234676 0 ;
	setAttr ".tk[19]" -type "float3" 0 0.019234676 -0.57958782 ;
	setAttr ".tk[65]" -type "float3" 0 -0.024033444 0 ;
	setAttr ".tk[66]" -type "float3" 0 -0.024033444 0 ;
	setAttr ".tk[67]" -type "float3" 0 -0.024033444 0 ;
	setAttr ".tk[68]" -type "float3" -0.087037802 -0.024033444 0.12845117 ;
	setAttr ".tk[69]" -type "float3" -0.087037802 0.024033444 0.12845117 ;
	setAttr ".tk[70]" -type "float3" 0 0.024033444 0 ;
	setAttr ".tk[71]" -type "float3" 0 0.024033444 0 ;
	setAttr ".tk[72]" -type "float3" 0 0.024033444 0 ;
	setAttr ".tk[82]" -type "float3" 0 0 0.14285007 ;
	setAttr ".tk[83]" -type "float3" 0 0 0.13458297 ;
	setAttr ".tk[84]" -type "float3" 0 0 0.11490402 ;
	setAttr ".tk[85]" -type "float3" 0 0 0.10461103 ;
	setAttr ".tk[86]" -type "float3" 0 0 0.10461103 ;
	setAttr ".tk[87]" -type "float3" 0 0 0.10461103 ;
	setAttr ".tk[88]" -type "float3" 0 0 0.10461103 ;
	setAttr ".tk[89]" -type "float3" 0 0 0.10461103 ;
	setAttr ".tk[90]" -type "float3" -0.13436241 0 -0.006422196 ;
	setAttr ".tk[91]" -type "float3" -0.094605818 0 0.12845117 ;
	setAttr ".tk[92]" -type "float3" 0.012945235 0 -0.056580767 ;
	setAttr ".tk[93]" -type "float3" 0 0 -0.70788842 ;
	setAttr ".tk[94]" -type "float3" 0 0 -0.89923066 ;
	setAttr ".tk[95]" -type "float3" 0 0 -0.6841988 ;
	setAttr ".tk[96]" -type "float3" 0 0 -0.10461103 ;
	setAttr ".tk[97]" -type "float3" 0 0 -0.10461103 ;
	setAttr ".tk[98]" -type "float3" 0 0 -0.11490402 ;
	setAttr ".tk[99]" -type "float3" 0 0 -0.13458297 ;
	setAttr ".tk[100]" -type "float3" 0 0 -0.14285007 ;
	setAttr ".tk[101]" -type "float3" 0 0 -0.14285007 ;
	setAttr ".tk[102]" -type "float3" 0 0 -0.11050971 ;
	setAttr ".tk[104]" -type "float3" 0 0 0.11050971 ;
	setAttr ".tk[105]" -type "float3" 0 0 0.14285007 ;
createNode polyBevel3 -n "polyBevel8";
	rename -uid "31BEE18A-4E6D-1B39-0D8D-4599B570E139";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[11]" "e[161]";
	setAttr ".ix" -type "matrix" 0.45568381959528076 0 0 0 0 0.10319012310357445 0 0
		 0 0 0.10319012310357445 0 0 0 -1.1236300390447296 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.2;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel9";
	rename -uid "808BEE1A-470C-9A39-D46A-C59A246E01E6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[11]" "e[161]";
	setAttr ".ix" -type "matrix" 0.45568381959528076 0 0 0 0 0.10319012310357445 0 0
		 0 0 0.10319012310357445 0 0 0 -0.7886820823271129 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.3;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyPlane -n "polyPlane2";
	rename -uid "1C81F419-4992-9903-5854-FD8AA60A7A28";
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode blinn -n "MAT_knives";
	rename -uid "0D6C9AFF-4418-BDB0-6F4B-5AB24C303AE3";
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".rfl" 1;
	setAttr ".ec" 0.23773846030235291;
	setAttr ".sro" 1;
createNode shadingEngine -n "blinn1SG";
	rename -uid "97D6CA93-4757-C6AE-7D6F-C094A8A94ED5";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "01AFB734-4F65-9ECC-99DB-8E894C4F2A7B";
createNode lambert -n "black";
	rename -uid "0C21FBF0-4CDA-ABAD-A802-9CBCB44829E6";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "01B1F244-4AE7-D88F-F57D-BFB609D9A646";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "4F4068B6-41E6-DEC5-A793-99826ECF5E1A";
createNode polySplitRing -n "polySplitRing13";
	rename -uid "540B0E6D-420C-CE3B-9B06-B08C768BB0AB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[96]" "e[101]" "e[121]" "e[123]";
	setAttr ".ix" -type "matrix" 5.3305274172385477 -0.9399158050653651 0 0 0 0 -6.4884866164432129 0
		 0.016653637291158086 0.094447470399852379 0 0 -2.1569368865052683 4.5171816574030323 -0.018114730035569959 1;
	setAttr ".wt" 0.59860843420028687;
	setAttr ".dr" no;
	setAttr ".re" 96;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak27";
	rename -uid "A16F88F4-49A9-A889-7708-E4A4EB7C9BD0";
	setAttr ".uopa" yes;
	setAttr -s 73 ".tk";
	setAttr ".tk[224]" -type "float3" 0.0088786473 0 -0.1927668 ;
	setAttr ".tk[225]" -type "float3" 0.0088786473 0 0 ;
	setAttr ".tk[226]" -type "float3" 0.0088786473 0 0 ;
	setAttr ".tk[227]" -type "float3" 0.0088786492 0 1.8626451e-09 ;
	setAttr ".tk[228]" -type "float3" 0.0088786473 0 0 ;
	setAttr ".tk[229]" -type "float3" 0.0088786473 0 0 ;
	setAttr ".tk[230]" -type "float3" 0.0088786473 4.6566129e-10 -0.1927668 ;
	setAttr ".tk[231]" -type "float3" 0.0088786473 -4.6566129e-10 0 ;
	setAttr ".tk[232]" -type "float3" 0.0088786473 -4.6566129e-10 0 ;
	setAttr ".tk[233]" -type "float3" 0.0088786492 4.6566129e-10 1.8626451e-09 ;
	setAttr ".tk[234]" -type "float3" 0.0088786473 0 0 ;
	setAttr ".tk[235]" -type "float3" 0.0088786473 0 0 ;
	setAttr ".tk[236]" -type "float3" 0.0088786473 -4.6566129e-10 -0.1927668 ;
	setAttr ".tk[237]" -type "float3" 0.0088786473 4.6566129e-10 0 ;
	setAttr ".tk[238]" -type "float3" 0.0088786473 4.6566129e-10 0 ;
	setAttr ".tk[239]" -type "float3" 0.0088786492 -4.6566129e-10 1.8626451e-09 ;
	setAttr ".tk[240]" -type "float3" 0.0088786473 0 0 ;
	setAttr ".tk[241]" -type "float3" 0.0088786473 0 0 ;
	setAttr ".tk[242]" -type "float3" 0.0088786473 0 -0.1927668 ;
	setAttr ".tk[243]" -type "float3" 0.0088786473 0 0 ;
	setAttr ".tk[244]" -type "float3" 0.0088786473 0 0 ;
	setAttr ".tk[245]" -type "float3" 0.0088786492 0 1.8626451e-09 ;
	setAttr ".tk[246]" -type "float3" 0.0088786473 0 0 ;
	setAttr ".tk[247]" -type "float3" 0.0088786473 0 0 ;
	setAttr ".tk[248]" -type "float3" 0.0088786473 0 -0.1927668 ;
	setAttr ".tk[249]" -type "float3" 0.0088786473 0 0 ;
	setAttr ".tk[250]" -type "float3" 0.0088786473 0 0 ;
	setAttr ".tk[251]" -type "float3" 0.0088786492 0 1.8626451e-09 ;
	setAttr ".tk[252]" -type "float3" 0.0088786473 0 0 ;
	setAttr ".tk[253]" -type "float3" 0.0088786473 0 0 ;
	setAttr ".tk[254]" -type "float3" 0.0088786473 5.8207661e-11 -0.1927668 ;
	setAttr ".tk[255]" -type "float3" 0.0088786473 5.8207661e-11 0 ;
	setAttr ".tk[256]" -type "float3" 0.0088786473 5.8207661e-11 0 ;
	setAttr ".tk[257]" -type "float3" 0.0088786492 5.8207661e-11 1.8626451e-09 ;
	setAttr ".tk[258]" -type "float3" 0.0088786473 0 0 ;
	setAttr ".tk[259]" -type "float3" 0.0088786473 0 0 ;
	setAttr ".tk[260]" -type "float3" 0.0088786473 -5.8207661e-11 -0.1927668 ;
	setAttr ".tk[261]" -type "float3" 0.0088786473 5.8207661e-11 0 ;
	setAttr ".tk[262]" -type "float3" 0.0088786473 5.8207661e-11 0 ;
	setAttr ".tk[263]" -type "float3" 0.0088786492 -5.8207661e-11 1.8626451e-09 ;
	setAttr ".tk[264]" -type "float3" 0.0088786473 0 0 ;
	setAttr ".tk[265]" -type "float3" 0.0088786473 0 0 ;
	setAttr ".tk[266]" -type "float3" 0.0088786473 2.3283064e-10 -0.1927668 ;
	setAttr ".tk[267]" -type "float3" 0.0088786473 -2.3283064e-10 0 ;
	setAttr ".tk[268]" -type "float3" 0.0088786473 -2.3283064e-10 0 ;
	setAttr ".tk[269]" -type "float3" 0.0088786492 2.3283064e-10 1.8626451e-09 ;
	setAttr ".tk[270]" -type "float3" 0.0088786473 0 0 ;
	setAttr ".tk[271]" -type "float3" 0.0088786473 0 0 ;
	setAttr ".tk[272]" -type "float3" 0.0088786473 0 -0.1927668 ;
	setAttr ".tk[273]" -type "float3" 0.0088786473 -4.6566129e-10 0 ;
	setAttr ".tk[274]" -type "float3" 0.0088786473 -4.6566129e-10 0 ;
	setAttr ".tk[275]" -type "float3" 0.0088786492 0 1.8626451e-09 ;
	setAttr ".tk[276]" -type "float3" 0.0088786473 2.3283064e-10 0 ;
	setAttr ".tk[277]" -type "float3" 0.0088786473 2.3283064e-10 0 ;
	setAttr ".tk[278]" -type "float3" 0.0088786473 -9.3132257e-10 -0.1927668 ;
	setAttr ".tk[279]" -type "float3" 0.0088786473 0 0 ;
	setAttr ".tk[280]" -type "float3" 0.0088786473 0 0 ;
	setAttr ".tk[281]" -type "float3" 0.0088786492 -9.3132257e-10 1.8626451e-09 ;
	setAttr ".tk[282]" -type "float3" 0.0088786473 0 0 ;
	setAttr ".tk[283]" -type "float3" 0.0088786473 0 0 ;
	setAttr ".tk[284]" -type "float3" 0.0088786473 4.6566129e-10 -0.1927668 ;
	setAttr ".tk[285]" -type "float3" 0.0088786473 -4.6566129e-10 0 ;
	setAttr ".tk[286]" -type "float3" 0.0088786473 -4.6566129e-10 0 ;
	setAttr ".tk[287]" -type "float3" 0.0088786492 4.6566129e-10 1.8626451e-09 ;
	setAttr ".tk[288]" -type "float3" 0.0088786473 4.6566129e-10 0 ;
	setAttr ".tk[289]" -type "float3" 0.0088786473 4.6566129e-10 0 ;
	setAttr ".tk[290]" -type "float3" 0.0088786473 0 -0.1927668 ;
	setAttr ".tk[291]" -type "float3" 0.0088786473 0 0 ;
	setAttr ".tk[292]" -type "float3" 0.0088786473 0 0 ;
	setAttr ".tk[293]" -type "float3" 0.0088786492 0 1.8626451e-09 ;
	setAttr ".tk[294]" -type "float3" 0.0088786473 0 0 ;
	setAttr ".tk[295]" -type "float3" 0.0088786473 0 0 ;
createNode polySplitRing -n "polySplitRing14";
	rename -uid "758B4F52-47F7-0295-BF7E-AB9A4D4902DB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[112]" "e[117]" "e[137]" "e[139]";
	setAttr ".ix" -type "matrix" 5.3305274172385477 -0.9399158050653651 0 0 0 0 -6.4884866164432129 0
		 0.016653637291158086 0.094447470399852379 0 0 -2.1569368865052683 4.5171816574030323 -0.018114730035569959 1;
	setAttr ".wt" 0.6276242733001709;
	setAttr ".dr" no;
	setAttr ".re" 112;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing15";
	rename -uid "9CFA2D99-426F-088E-5E3B-93B384747AE0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[128]" "e[133]" "e[153]" "e[155]";
	setAttr ".ix" -type "matrix" 5.3305274172385477 -0.9399158050653651 0 0 0 0 -6.4884866164432129 0
		 0.016653637291158086 0.094447470399852379 0 0 -2.1569368865052683 4.5171816574030323 -0.018114730035569959 1;
	setAttr ".wt" 0.3601662814617157;
	setAttr ".re" 128;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing16";
	rename -uid "2924E9DE-4921-DF08-07A7-2AB58F55AA7A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[144]" "e[149]" "e[169]" "e[171]";
	setAttr ".ix" -type "matrix" 5.3305274172385477 -0.9399158050653651 0 0 0 0 -6.4884866164432129 0
		 0.016653637291158086 0.094447470399852379 0 0 -2.1569368865052683 4.5171816574030323 -0.018114730035569959 1;
	setAttr ".wt" 0.3865811824798584;
	setAttr ".re" 144;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing17";
	rename -uid "690449EE-45C8-DA70-22A8-A093984429B8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[160]" "e[165]" "e[185]" "e[187]";
	setAttr ".ix" -type "matrix" 5.3305274172385477 -0.9399158050653651 0 0 0 0 -6.4884866164432129 0
		 0.016653637291158086 0.094447470399852379 0 0 -2.1569368865052683 4.5171816574030323 -0.018114730035569959 1;
	setAttr ".wt" 0.56137913465499878;
	setAttr ".dr" no;
	setAttr ".re" 160;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing18";
	rename -uid "25774434-4E9B-AB5F-11F9-3A95B158F667";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[176]" "e[181]" "e[201]" "e[203]";
	setAttr ".ix" -type "matrix" 5.3305274172385477 -0.9399158050653651 0 0 0 0 -6.4884866164432129 0
		 0.016653637291158086 0.094447470399852379 0 0 -2.1569368865052683 4.5171816574030323 -0.018114730035569959 1;
	setAttr ".wt" 0.4815843403339386;
	setAttr ".re" 176;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing19";
	rename -uid "6A8BC641-477E-A7FF-D42B-C59C60A796BA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[192]" "e[197]" "e[217]" "e[219]";
	setAttr ".ix" -type "matrix" 5.3305274172385477 -0.9399158050653651 0 0 0 0 -6.4884866164432129 0
		 0.016653637291158086 0.094447470399852379 0 0 -2.1569368865052683 4.5171816574030323 -0.018114730035569959 1;
	setAttr ".wt" 0.39433449506759644;
	setAttr ".re" 192;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing20";
	rename -uid "A5AFC2D7-4C68-9A23-F5D9-70A14757CCE4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[208]" "e[213]" "e[233]" "e[235]";
	setAttr ".ix" -type "matrix" 5.3305274172385477 -0.9399158050653651 0 0 0 0 -6.4884866164432129 0
		 0.016653637291158086 0.094447470399852379 0 0 -2.1569368865052683 4.5171816574030323 -0.018114730035569959 1;
	setAttr ".wt" 0.50523549318313599;
	setAttr ".dr" no;
	setAttr ".re" 208;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing21";
	rename -uid "789631F1-4121-9352-F8C9-DDA24768A66E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[224]" "e[229]" "e[249]" "e[251]";
	setAttr ".ix" -type "matrix" 5.3305274172385477 -0.9399158050653651 0 0 0 0 -6.4884866164432129 0
		 0.016653637291158086 0.094447470399852379 0 0 -2.1569368865052683 4.5171816574030323 -0.018114730035569959 1;
	setAttr ".wt" 0.42760825157165527;
	setAttr ".re" 224;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing22";
	rename -uid "CA495F32-4676-6412-A465-C496BB8123FB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[240]" "e[245]" "e[265]" "e[267]";
	setAttr ".ix" -type "matrix" 5.3305274172385477 -0.9399158050653651 0 0 0 0 -6.4884866164432129 0
		 0.016653637291158086 0.094447470399852379 0 0 -2.1569368865052683 4.5171816574030323 -0.018114730035569959 1;
	setAttr ".wt" 0.49876219034194946;
	setAttr ".re" 240;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing23";
	rename -uid "C49FF9EA-416B-FAC5-5906-1C911EB21033";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[256]" "e[261]" "e[281]" "e[283]";
	setAttr ".ix" -type "matrix" 5.3305274172385477 -0.9399158050653651 0 0 0 0 -6.4884866164432129 0
		 0.016653637291158086 0.094447470399852379 0 0 -2.1569368865052683 4.5171816574030323 -0.018114730035569959 1;
	setAttr ".wt" 0.28414201736450195;
	setAttr ".re" 256;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyCube -n "polyCube9";
	rename -uid "83B3D762-4F09-7FB7-5F7F-218570257071";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing24";
	rename -uid "F77857A9-4CDE-3EE2-827F-DA893B1B6C40";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.085909670645392039 0 0 0 0 1 0 5.5305039144974302 3.012581945028777 0 1;
	setAttr ".wt" 0.36901462078094482;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing25";
	rename -uid "25B53B4C-463F-5772-CF11-0A979A954160";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[6:7]" "e[10:11]" "e[14]" "e[18]" "e[22]" "e[26]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.085909670645392039 0 0 0 0 1 0 5.5305039144974302 3.012581945028777 0 1;
	setAttr ".wt" 0.30767825245857239;
	setAttr ".re" 6;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	rename -uid "063E22D7-40E4-0C3C-0D2A-298B70C67489";
	setAttr ".ics" -type "componentList" 1 "f[28]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.085909670645392039 0 0 0 0 1 0 5.5305039144974302 3.012581945028777 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.5305037 3.0555367 2.9802322e-08 ;
	setAttr ".rs" 40354;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 5.1627714790325712 3.0555367803514728 -0.36447656154632568 ;
	setAttr ".cbx" -type "double3" 5.8982362903576444 3.0555367803514728 0.36447662115097046 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak28";
	rename -uid "BE170E3D-4BCA-E6A8-E899-BE8AFE579687";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[8:31]" -type "float3"  0.20106575 0 0 0.20106575
		 0 0 0.20106575 0 0 0.20106575 0 0 -0.20106575 0 0 -0.20106575 0 0 -0.20106575 0 0
		 -0.20106575 0 0 0 0 -0.19780993 0 0 -0.19780993 -0.20106575 0 -0.19780993 0.20106575
		 0 -0.19780993 0 0 -0.19780993 0 0 -0.19780993 0.20106575 0 -0.19780993 -0.20106575
		 0 -0.19780993 0 0 0.19780993 0 0 0.19780993 -0.20106575 0 0.19780993 0.20106575 0
		 0.19780993 0 0 0.19780993 0 0 0.19780993 0.20106575 0 0.19780993 -0.20106575 0 0.19780993;
createNode polyBevel3 -n "polyBevel10";
	rename -uid "0371102E-44E5-6727-C7EE-D080C4295BD5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[0:13]" "e[15]" "e[17]" "e[20:21]" "e[23]" "e[25]" "e[28:29]" "e[35]" "e[37]" "e[42]" "e[44:45]" "e[51]" "e[53]" "e[55]" "e[57:58]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.085909670645392039 0 0 0 0 1 0 5.5305039144974302 3.012581945028777 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.6;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak29";
	rename -uid "37436DA3-498D-26AD-3351-0E94309B83AA";
	setAttr ".uopa" yes;
	setAttr -s 25 ".tk";
	setAttr ".tk[8]" -type "float3" -0.029236184 0 -0.049676646 ;
	setAttr ".tk[9]" -type "float3" -0.029236184 0 0.049676646 ;
	setAttr ".tk[10]" -type "float3" -0.029236184 0 0.049676646 ;
	setAttr ".tk[11]" -type "float3" -0.029236184 0 -0.049676646 ;
	setAttr ".tk[12]" -type "float3" 0.029236184 0 -0.049676646 ;
	setAttr ".tk[13]" -type "float3" 0.029236184 0 0.049676646 ;
	setAttr ".tk[14]" -type "float3" 0.029236184 0 0.049676646 ;
	setAttr ".tk[15]" -type "float3" 0.029236184 0 -0.049676646 ;
	setAttr ".tk[16]" -type "float3" 0.039751969 0 0.036211949 ;
	setAttr ".tk[17]" -type "float3" 0.039751969 0 0.036211949 ;
	setAttr ".tk[20]" -type "float3" -0.039751969 0 0.036211949 ;
	setAttr ".tk[21]" -type "float3" -0.039751969 0 0.036211949 ;
	setAttr ".tk[24]" -type "float3" 0.039751969 0 -0.036211953 ;
	setAttr ".tk[25]" -type "float3" 0.039751969 0 -0.036211953 ;
	setAttr ".tk[28]" -type "float3" -0.039751969 0 -0.036211953 ;
	setAttr ".tk[29]" -type "float3" -0.039751969 0 -0.036211953 ;
	setAttr ".tk[32]" -type "float3" -0.023500292 -0.44768411 -0.023292216 ;
	setAttr ".tk[33]" -type "float3" 0.023500292 -0.44768411 -0.023292216 ;
	setAttr ".tk[34]" -type "float3" -0.023500292 -0.44768411 0.023292216 ;
	setAttr ".tk[35]" -type "float3" 0.023500292 -0.44768411 0.023292216 ;
createNode polyCube -n "polyCube10";
	rename -uid "1E37152C-408C-915A-CBAE-CCB7E05B91FC";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	rename -uid "56322637-4074-7B25-2EA3-E98AE306D1A0";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.20828000794549947 0 0 0 0 0.20828000794549947 0 0
		 0 0 0.20828000794549947 0 0 2.6581372844562177 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.7622774 0 ;
	setAttr ".rs" 50398;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.10414000397274974 2.7622772884289675 -0.10414000397274974 ;
	setAttr ".cbx" -type "double3" 0.10414000397274974 2.7622772884289675 0.10414000397274974 ;
	setAttr ".raf" no;
createNode polySmoothFace -n "polySmoothFace6";
	rename -uid "671CA262-4850-3796-C6C3-4884A3DC73CD";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTweak -n "polyTweak30";
	rename -uid "2FDB4FDA-4F58-ECF9-B770-D59C75530FB0";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.50106615 0 ;
	setAttr ".tk[1]" -type "float3" 0 0.50106615 0 ;
	setAttr ".tk[6]" -type "float3" 0 0.50106615 0 ;
	setAttr ".tk[7]" -type "float3" 0 0.50106615 0 ;
	setAttr ".tk[8]" -type "float3" 0.075243711 -0.33574432 -0.075243711 ;
	setAttr ".tk[9]" -type "float3" -0.075243711 -0.33574432 -0.075243711 ;
	setAttr ".tk[10]" -type "float3" -0.075243711 -0.33574432 0.075243711 ;
	setAttr ".tk[11]" -type "float3" 0.075243711 -0.33574432 0.075243711 ;
createNode polySplitRing -n "polySplitRing26";
	rename -uid "F841325C-4CF4-B89A-CD7D-859B202F7EE1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[59]" "e[61]" "e[63]" "e[66]" "e[91]" "e[93]" "e[95]" "e[98]" "e[116]" "e[118]" "e[120]" "e[123]" "e[178]" "e[180]" "e[182]" "e[185]" "e[193]" "e[196]" "e[199]" "e[201]" "e[205:206]" "e[212]" "e[214]";
	setAttr ".ix" -type "matrix" 0.68624840494819184 0 0 0 0 0.34312420247409592 0 0
		 0 0 0.68624840494819184 0 1.7056989034978887 1.1709843672423581 1.984553914652732 1;
	setAttr ".wt" 0.91262936592102051;
	setAttr ".dr" no;
	setAttr ".re" 214;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak31";
	rename -uid "F71DCC0F-45CA-DF71-3B13-8DABC59FE6EB";
	setAttr ".uopa" yes;
	setAttr -s 44 ".tk";
	setAttr ".tk[4]" -type "float3" -0.060706083 0.086496986 -0.058586173 ;
	setAttr ".tk[5]" -type "float3" -0.060706083 0.086496986 0.058586173 ;
	setAttr ".tk[10]" -type "float3" 0.060706083 0.086496986 -0.058586173 ;
	setAttr ".tk[11]" -type "float3" 0.060706083 0.086496986 0.058586173 ;
	setAttr ".tk[28]" -type "float3" 0 0.013585761 0 ;
	setAttr ".tk[35]" -type "float3" 0 0.013585761 0 ;
	setAttr ".tk[36]" -type "float3" 0 0.045754418 0 ;
	setAttr ".tk[37]" -type "float3" 0 0.045754232 0 ;
	setAttr ".tk[38]" -type "float3" 0 0.013585761 0 ;
	setAttr ".tk[42]" -type "float3" 0 0.013585761 0 ;
	setAttr ".tk[43]" -type "float3" 0 0.045754418 0 ;
	setAttr ".tk[44]" -type "float3" 0 0.013585761 0 ;
	setAttr ".tk[50]" -type "float3" 0 0.045754232 0 ;
	setAttr ".tk[51]" -type "float3" 0 0.013585761 0 ;
	setAttr ".tk[62]" -type "float3" 0 0.013585761 0 ;
	setAttr ".tk[69]" -type "float3" 0 0.013585761 0 ;
	setAttr ".tk[70]" -type "float3" 0 0.045754418 0 ;
	setAttr ".tk[73]" -type "float3" 0 0.013585761 0 ;
	setAttr ".tk[74]" -type "float3" 0 0.045754232 0 ;
	setAttr ".tk[75]" -type "float3" 0 0.045754232 0 ;
	setAttr ".tk[76]" -type "float3" 0 0.013585761 0 ;
	setAttr ".tk[84]" -type "float3" 0 0.013585761 0 ;
	setAttr ".tk[85]" -type "float3" 0 0.045754418 0 ;
	setAttr ".tk[86]" -type "float3" 0 0.013585761 0 ;
	setAttr ".tk[98]" -type "float3" 0 0.013585761 0 ;
	setAttr ".tk[99]" -type "float3" 0 0.045754232 0 ;
	setAttr ".tk[102]" -type "float3" 0 0.013585761 0 ;
	setAttr ".tk[103]" -type "float3" 0 0.045754232 0 ;
	setAttr ".tk[106]" -type "float3" 0 0.013585761 0 ;
	setAttr ".tk[107]" -type "float3" 0 0.045754232 0 ;
	setAttr ".tk[108]" -type "float3" 0 0.045754232 0 ;
	setAttr ".tk[109]" -type "float3" 0 0.013585761 0 ;
	setAttr ".tk[128]" -type "float3" 0 0.013585761 0 ;
	setAttr ".tk[132]" -type "float3" 0 0.013585761 0 ;
	setAttr ".tk[134]" -type "float3" 0 0.013585761 0 ;
	setAttr ".tk[138]" -type "float3" 0 0.013585761 0 ;
	setAttr ".tk[148]" -type "float3" 0 -0.30331185 0 ;
	setAttr ".tk[149]" -type "float3" 0 -0.30331185 0 ;
	setAttr ".tk[150]" -type "float3" 0 -0.30331185 0 ;
	setAttr ".tk[151]" -type "float3" 0 -0.30331185 0 ;
	setAttr ".tk[152]" -type "float3" 0 -0.30331185 0 ;
	setAttr ".tk[153]" -type "float3" 0 -0.30331185 0 ;
	setAttr ".tk[154]" -type "float3" 0 -0.30331185 0 ;
	setAttr ".tk[155]" -type "float3" 0 -0.30331185 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	rename -uid "DF7BA5BF-447D-1B0A-4884-B8BDCC98243F";
	setAttr ".ics" -type "componentList" 1 "f[147:170]";
	setAttr ".ix" -type "matrix" 0.68624840494819184 0 0 0 0 0.34312420247409592 0 0
		 0 0 0.68624840494819184 0 1.7056989034978887 1.1709843672423581 1.984553914652732 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.7056988 1.0108473 1.9845539 ;
	setAttr ".rs" 48484;
	setAttr ".c[0]"  0 1 1;
	setAttr ".tk" 0.019999999552965164;
	setAttr ".cbn" -type "double3" 1.3625747010237927 0.99942226600531014 1.6414297121786361 ;
	setAttr ".cbx" -type "double3" 2.0488231059719846 1.0222723011856891 2.3276781171268279 ;
createNode polyCube -n "polyCube11";
	rename -uid "00B81BED-43BA-F48E-CD59-82A1221E1B43";
	setAttr ".cuv" 4;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "29381E21-4131-8521-4F2B-1EAF426FDECD";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -645.23806959863782 -146.42856561002293 ;
	setAttr ".tgi[0].vh" -type "double2" 642.85711731229605 241.66665706369645 ;
	setAttr -s 4 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -252.85714721679688;
	setAttr ".tgi[0].ni[0].y" 182.85714721679688;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 54.285713195800781;
	setAttr ".tgi[0].ni[1].y" 182.85714721679688;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -245.71427917480469;
	setAttr ".tgi[0].ni[2].y" 184.28572082519531;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 61.428569793701172;
	setAttr ".tgi[0].ni[3].y" 184.28572082519531;
	setAttr ".tgi[0].ni[3].nvs" 1923;
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
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 23 ".dsm";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyMergeVert2.out" "tableShape.i";
connectAttr "polyExtrudeFace17.out" "chairShape.i";
connectAttr "polyCube3.out" "wallLShape.i";
connectAttr "polyBevel5.out" "building_stationShape.i";
connectAttr "polyBevel10.out" "plateSquareShape.i";
connectAttr "polySmoothFace6.out" "sauceDishShape.i";
connectAttr "polyExtrudeFace6.out" "building_station1Shape.i";
connectAttr "hide.di" "roof.do";
connectAttr "polySplitRing23.out" "roofShape.i";
connectAttr "polyPlane1.out" "floorShape.i";
connectAttr "polySmoothFace2.out" "bigBowlShape.i";
connectAttr "polySmoothFace4.out" "plateShape.i";
connectAttr "polySmoothFace5.out" "heatComponentShape.i";
connectAttr "polyDelEdge1.out" "knifeShape1.i";
connectAttr "polyBevel9.out" "knifeShape3.i";
connectAttr "polyBevel8.out" "knifeShape4.i";
connectAttr "polyPlane2.out" "knifeRackShape.i";
connectAttr "polyCube11.out" "signMShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
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
connectAttr "polyTweak11.out" "polySplitRing5.ip";
connectAttr "building_stationShape.wm" "polySplitRing5.mp";
connectAttr "polyBevel4.out" "polyTweak11.ip";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "building_stationShape.wm" "polySplitRing6.mp";
connectAttr "polyTweak12.out" "polySplitRing7.ip";
connectAttr "building_stationShape.wm" "polySplitRing7.mp";
connectAttr "polySplitRing6.out" "polyTweak12.ip";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "building_stationShape.wm" "polySplitRing8.mp";
connectAttr "polyTweak13.out" "polyExtrudeFace7.ip";
connectAttr "building_stationShape.wm" "polyExtrudeFace7.mp";
connectAttr "polySplitRing8.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polyBevel5.ip";
connectAttr "building_stationShape.wm" "polyBevel5.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak14.ip";
connectAttr "polySurfaceShape2.o" "polySplitRing9.ip";
connectAttr "roofShape.wm" "polySplitRing9.mp";
connectAttr "polySplitRing9.out" "polyDuplicateEdge1.ip";
connectAttr "polyDuplicateEdge1.out" "polyDuplicateEdge2.ip";
connectAttr "polyDuplicateEdge2.out" "polyDuplicateEdge3.ip";
connectAttr "polyDuplicateEdge3.out" "polyDuplicateEdge4.ip";
connectAttr "polyDuplicateEdge4.out" "polyDuplicateEdge5.ip";
connectAttr "polyDuplicateEdge5.out" "polyDuplicateEdge6.ip";
connectAttr "polyDuplicateEdge6.out" "polyDuplicateEdge7.ip";
connectAttr "polyDuplicateEdge7.out" "polyDuplicateEdge8.ip";
connectAttr "polyDuplicateEdge8.out" "polyDuplicateEdge9.ip";
connectAttr "polyDuplicateEdge9.out" "polyDuplicateEdge10.ip";
connectAttr "polyDuplicateEdge10.out" "polyDuplicateEdge11.ip";
connectAttr "polyDuplicateEdge11.out" "polyDuplicateEdge12.ip";
connectAttr "polyTweak15.out" "polyExtrudeFace8.ip";
connectAttr "roofShape.wm" "polyExtrudeFace8.mp";
connectAttr "polyDuplicateEdge12.out" "polyTweak15.ip";
connectAttr "polyTweak16.out" "polyExtrudeFace9.ip";
connectAttr "roofShape.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak16.ip";
connectAttr "layerManager.dli[1]" "hide.id";
connectAttr "polyCube5.out" "polyExtrudeFace10.ip";
connectAttr "bigBowlShape.wm" "polyExtrudeFace10.mp";
connectAttr "polyTweak17.out" "polySmoothFace1.ip";
connectAttr "polyExtrudeFace10.out" "polyTweak17.ip";
connectAttr "polyTweak18.out" "polyBevel6.ip";
connectAttr "bigBowlShape.wm" "polyBevel6.mp";
connectAttr "polySmoothFace1.out" "polyTweak18.ip";
connectAttr "polyTweak19.out" "polySmoothFace2.ip";
connectAttr "polyBevel6.out" "polyTweak19.ip";
connectAttr "polyCube6.out" "polyExtrudeFace11.ip";
connectAttr "plateShape.wm" "polyExtrudeFace11.mp";
connectAttr "polyTweak20.out" "polySmoothFace3.ip";
connectAttr "polyExtrudeFace11.out" "polyTweak20.ip";
connectAttr "polyTweak21.out" "polySmoothFace4.ip";
connectAttr "polySmoothFace3.out" "polyTweak21.ip";
connectAttr "polyCube7.out" "polySmoothFace5.ip";
connectAttr "polyCube8.out" "polyExtrudeFace12.ip";
connectAttr "knifeShape1.wm" "polyExtrudeFace12.mp";
connectAttr "polyTweak22.out" "polyExtrudeFace13.ip";
connectAttr "knifeShape1.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak22.ip";
connectAttr "polyTweak23.out" "polyExtrudeFace14.ip";
connectAttr "knifeShape1.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace13.out" "polyTweak23.ip";
connectAttr "polyTweak24.out" "polySplitRing10.ip";
connectAttr "knifeShape1.wm" "polySplitRing10.mp";
connectAttr "polyExtrudeFace14.out" "polyTweak24.ip";
connectAttr "polySplitRing10.out" "polyBevel7.ip";
connectAttr "knifeShape1.wm" "polyBevel7.mp";
connectAttr "polyBevel7.out" "polySplitRing11.ip";
connectAttr "knifeShape1.wm" "polySplitRing11.mp";
connectAttr "polyTweak25.out" "polySplitRing12.ip";
connectAttr "knifeShape1.wm" "polySplitRing12.mp";
connectAttr "polySplitRing11.out" "polyTweak25.ip";
connectAttr "polyTweak26.out" "polyDelEdge1.ip";
connectAttr "polySplitRing12.out" "polyTweak26.ip";
connectAttr "polySurfaceShape3.o" "polyBevel8.ip";
connectAttr "knifeShape4.wm" "polyBevel8.mp";
connectAttr "polySurfaceShape4.o" "polyBevel9.ip";
connectAttr "knifeShape3.wm" "polyBevel9.mp";
connectAttr "MAT_knives.oc" "blinn1SG.ss";
connectAttr "knifeShape4.iog" "blinn1SG.dsm" -na;
connectAttr "knifeShape3.iog" "blinn1SG.dsm" -na;
connectAttr "knifeShape2.iog" "blinn1SG.dsm" -na;
connectAttr "knifeShape1.iog" "blinn1SG.dsm" -na;
connectAttr "blinn1SG.msg" "materialInfo1.sg";
connectAttr "MAT_knives.msg" "materialInfo1.m";
connectAttr "black.oc" "lambert2SG.ss";
connectAttr "knifeRackShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo2.sg";
connectAttr "black.msg" "materialInfo2.m";
connectAttr "polyTweak27.out" "polySplitRing13.ip";
connectAttr "roofShape.wm" "polySplitRing13.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak27.ip";
connectAttr "polySplitRing13.out" "polySplitRing14.ip";
connectAttr "roofShape.wm" "polySplitRing14.mp";
connectAttr "polySplitRing14.out" "polySplitRing15.ip";
connectAttr "roofShape.wm" "polySplitRing15.mp";
connectAttr "polySplitRing15.out" "polySplitRing16.ip";
connectAttr "roofShape.wm" "polySplitRing16.mp";
connectAttr "polySplitRing16.out" "polySplitRing17.ip";
connectAttr "roofShape.wm" "polySplitRing17.mp";
connectAttr "polySplitRing17.out" "polySplitRing18.ip";
connectAttr "roofShape.wm" "polySplitRing18.mp";
connectAttr "polySplitRing18.out" "polySplitRing19.ip";
connectAttr "roofShape.wm" "polySplitRing19.mp";
connectAttr "polySplitRing19.out" "polySplitRing20.ip";
connectAttr "roofShape.wm" "polySplitRing20.mp";
connectAttr "polySplitRing20.out" "polySplitRing21.ip";
connectAttr "roofShape.wm" "polySplitRing21.mp";
connectAttr "polySplitRing21.out" "polySplitRing22.ip";
connectAttr "roofShape.wm" "polySplitRing22.mp";
connectAttr "polySplitRing22.out" "polySplitRing23.ip";
connectAttr "roofShape.wm" "polySplitRing23.mp";
connectAttr "polyCube9.out" "polySplitRing24.ip";
connectAttr "plateSquareShape.wm" "polySplitRing24.mp";
connectAttr "polySplitRing24.out" "polySplitRing25.ip";
connectAttr "plateSquareShape.wm" "polySplitRing25.mp";
connectAttr "polyTweak28.out" "polyExtrudeFace15.ip";
connectAttr "plateSquareShape.wm" "polyExtrudeFace15.mp";
connectAttr "polySplitRing25.out" "polyTweak28.ip";
connectAttr "polyTweak29.out" "polyBevel10.ip";
connectAttr "plateSquareShape.wm" "polyBevel10.mp";
connectAttr "polyExtrudeFace15.out" "polyTweak29.ip";
connectAttr "polyCube10.out" "polyExtrudeFace16.ip";
connectAttr "sauceDishShape.wm" "polyExtrudeFace16.mp";
connectAttr "polyTweak30.out" "polySmoothFace6.ip";
connectAttr "polyExtrudeFace16.out" "polyTweak30.ip";
connectAttr "polyTweak31.out" "polySplitRing26.ip";
connectAttr "chairShape.wm" "polySplitRing26.mp";
connectAttr "polyBevel3.out" "polyTweak31.ip";
connectAttr "polySplitRing26.out" "polyExtrudeFace17.ip";
connectAttr "chairShape.wm" "polyExtrudeFace17.mp";
connectAttr "MAT_knives.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "blinn1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "black.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "MAT_knives.msg" ":defaultShaderList1.s" -na;
connectAttr "black.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "tableShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "chairShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "wallLShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "wallRShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "wallBShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "building_stationShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "building_station1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "building_station2Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "roofShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "floorShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "bigBowlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "plateShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "stoveShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "heatComponentShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "heatComponentShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "heatComponentShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "heatComponentShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "plateSquareShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "sauceDishShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "signMShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "signLShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "signRShape.iog" ":initialShadingGroup.dsm" -na;
// End of booth01.ma
