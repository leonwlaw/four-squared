//Maya ASCII 2014 scene
//Name: Strawberry.ma
//Last modified: Sat, Mar 08, 2014 06:20:05 PM
//Codeset: 1252
requires maya "2014";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201307170459-880822";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".t" -type "double3" 4.3185996551383177 0.95823049167163532 1.6033089794029423 ;
	setAttr ".r" -type "double3" -9.3383527348892734 70.199999999995015 0 ;
	setAttr ".rp" -type "double3" -6.9388939039072284e-018 5.5511151231257827e-017 -5.5511151231257827e-017 ;
	setAttr ".rpt" -type "double3" -5.0305770448908874e-017 -7.0676578710452131e-017 
		3.5093985381460523e-018 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v";
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 5.0634478910456728;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.23932852820686387 -0.1788800887441846 -0.18907999461337038 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".t" -type "double3" -4.6173785420156044e-009 100.10001671892205 -4.6173563722495814e-009 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 0.13252555850056794;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".t" -type "double3" -0.011794176588038578 0.25613972946605823 100.10009197566562 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 0.2170341698498984;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".t" -type "double3" 100.1 0.29341578641126487 -0.020286108807156179 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 1.7603123565435463;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	setAttr ".s" -type "double3" 0.44442021751285987 0.44442021751285987 0.44442021751285987 ;
createNode transform -n "transform4" -p "pCube1";
createNode mesh -n "pCubeShape1" -p "transform4";
	setAttr -s 4 ".wm";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog";
	setAttr -s 2 ".iog[0].og";
	setAttr -s 2 ".iog[1].og";
	setAttr -s 2 ".iog[2].og";
	setAttr -s 2 ".iog[3].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 4 ".ciog";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[18]" -type "float3" -1.3877788e-017 -0.016072249 0 ;
	setAttr ".pt[62]" -type "float3" 0.052278664 0.014202032 0.048732087 ;
	setAttr ".pt[77]" -type "float3" -1.3877788e-017 -0.016072249 0 ;
	setAttr ".pt[78]" -type "float3" -7.8066825e-018 -0.016072249 0 ;
	setAttr ".pt[79]" -type "float3" -7.8066825e-018 -0.016072249 0 ;
createNode transform -n "pCube3";
	setAttr ".s" -type "double3" -0.44442021751285987 0.44442021751285987 0.44442021751285987 ;
createNode transform -n "transform3" -p "pCube3";
createNode transform -n "pCube4";
	setAttr ".r" -type "double3" 0 -179.99999999999994 0 ;
	setAttr ".s" -type "double3" -0.44442021751285987 0.44442021751285987 0.44442021751285987 ;
createNode transform -n "transform1" -p "pCube4";
createNode transform -n "pCube5";
	setAttr ".r" -type "double3" 0 -179.99999999999994 0 ;
	setAttr ".s" -type "double3" 0.44442021751285987 0.44442021751285987 0.44442021751285987 ;
createNode transform -n "transform2" -p "pCube5";
createNode transform -n "polySurface1";
createNode mesh -n "polySurfaceShape1" -p "polySurface1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube6";
	setAttr ".t" -type "double3" -0.07376717818957379 0.19720557599107172 0 ;
	setAttr ".s" -type "double3" 0.12330623311423089 0.12330623311423089 0.12330623311423089 ;
	setAttr ".rp" -type "double3" 0.07376717818957379 0 0 ;
	setAttr ".sp" -type "double3" 0.81417315940546953 0 0 ;
	setAttr ".spt" -type "double3" -0.74040598121589574 0 0 ;
createNode mesh -n "pCubeShape2" -p "pCube6";
	setAttr -k off ".v";
	setAttr -s 4 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  3.663736e-015 0 0.14767113 
		0 0.048287354 0 3.663736e-015 0 0.14767113 0 0.048287354 0 3.663736e-015 0 -0.14767113 
		0 0.048287354 0 3.663736e-015 0 -0.14767113 0 0.048287354 0 0 0 0 0 0 0 0 0 0 0 0 
		0 -0.18015176 0.048287354 -0.049223706 -0.14175195 0.048287354 0 -0.14175195 0.048287354 
		0 -0.18015176 0.048287354 -0.049223706 0.11916979 0.087140098 0 0.11916979 0.087140098 
		0 -0.18015176 0.048287354 0.049223706 -0.14175195 0.048287354 0 -0.14175195 0.048287354 
		0 -0.18015176 0.048287354 0.049223706 0.11916979 0.087140098 0 0.11916979 0.087140098 
		0;
createNode transform -n "pCube7";
	setAttr ".t" -type "double3" -0.07376717818957379 0.19720557599107172 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 0.12330623311423089 0.12330623311423089 0.12330623311423089 ;
	setAttr ".rp" -type "double3" 0.07376717818957379 0 0 ;
	setAttr ".sp" -type "double3" 0.81417315940546953 0 0 ;
	setAttr ".spt" -type "double3" -0.74040598121589574 0 0 ;
createNode transform -n "pCube8";
	setAttr ".t" -type "double3" 0.073767178189573929 0.19720557599107172 2.7755575615628914e-017 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 0.12330623311423095 0.12330623311423089 0.12330623311423095 ;
	setAttr ".rp" -type "double3" 0.07376717818957404 0 0 ;
	setAttr ".rpt" -type "double3" -0.14753435637914808 0 -4.1793081740276138e-017 ;
	setAttr ".sp" -type "double3" 0.81417315940546953 0 0 ;
	setAttr ".spt" -type "double3" -0.74040598121589551 0 0 ;
createNode transform -n "pCube9";
	setAttr ".t" -type "double3" -4.163336342344337e-017 0.19720557599107172 -0.073767178189573956 ;
	setAttr ".r" -type "double3" 0 -89.999999999999957 0 ;
	setAttr ".s" -type "double3" 0.12330623311423095 0.12330623311423086 0.12330623311423095 ;
	setAttr ".rp" -type "double3" 0.073767178189573956 0 0 ;
	setAttr ".rpt" -type "double3" -0.073767178189573901 0 0.073767178189573956 ;
	setAttr ".sp" -type "double3" 0.81417315940546953 0 0 ;
	setAttr ".spt" -type "double3" -0.74040598121589563 0 0 ;
createNode transform -n "pCube10";
	setAttr ".t" -type "double3" -4.163336342344337e-017 0.20969941386459517 -0.073767178189573956 ;
	setAttr ".r" -type "double3" 0 -44.999999999999936 0 ;
	setAttr ".s" -type "double3" 0.10270101042823811 0.10270101042823805 0.10270101042823811 ;
	setAttr ".rp" -type "double3" 0.073767178189573956 0 0 ;
	setAttr ".rpt" -type "double3" -0.073767178189573901 0 0.073767178189573956 ;
	setAttr ".sp" -type "double3" 0.81417315940546953 0 0 ;
	setAttr ".spt" -type "double3" -0.74040598121589563 0 0 ;
createNode mesh -n "pCubeShape10" -p "pCube10";
	setAttr -k off ".v";
	setAttr -s 4 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.125 0 0.375 0 0.375 0.25 0.125 0.25 0.20833334 0.25
		 0.375 0.41666666 0.20833334 0.25 0.20833334 0 0.20833334 0 0.375 0.83333337 0.625
		 0.83333337 0.79166669 0 0.625 0.41666666 0.79166669 0.25 0.29166669 0.25 0.375 0.33333331
		 0.29166669 0.25 0.29166669 0 0.29166669 0 0.375 0.91666669 0.625 0.91666669 0.70833337
		 0 0.625 0.33333331 0.70833337 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  3.663736e-015 0 0.14767113 
		0 0.048287354 0 3.663736e-015 0 0.14767113 0 0.048287354 0 3.663736e-015 0 -0.14767113 
		0 0.048287354 0 3.663736e-015 0 -0.14767113 0 0.048287354 0 0 0 0 0 0 0 0 0 0 0 0 
		0 -0.18015176 0.048287354 -0.049223706 -0.14175195 0.048287354 0 -0.14175195 0.048287354 
		0 -0.18015176 0.048287354 -0.049223706 0.11916979 0.087140098 0 0.11916979 0.087140098 
		0 -0.18015176 0.048287354 0.049223706 -0.14175195 0.048287354 0 -0.14175195 0.048287354 
		0 -0.18015176 0.048287354 0.049223706 0.11916979 0.087140098 0 0.11916979 0.087140098 
		0;
	setAttr -s 24 ".vt[0:23]"  -0.50000006 -0.084466152 0.59718245 0.50000006 -0.022648457 0.33661738
		 -0.50000006 -0.039169215 0.59718245 0.50000006 0.022648457 0.33661738 -0.50000006 -0.039169215 -0.59718245
		 0.50000006 0.022648457 -0.33661738 -0.50000006 -0.084466152 -0.59718245 0.50000006 -0.022648457 -0.33661738
		 -1.086513281 -0.2331613 -0.25161859 -1.086513281 -0.2331613 0.25161859 -1.086513281 -0.21022025 0.25161859
		 -1.086513281 -0.21022025 -0.25161859 -0.50000006 -0.039169215 -0.19906078 -1.086513281 -0.21022025 -0.083872847
		 -1.086513281 -0.2331613 -0.083872847 -0.50000006 -0.084466152 -0.19906078 0.50000006 -0.022648457 -0.11220577
		 0.50000006 0.022648457 -0.11220577 -0.50000006 -0.039169215 0.19906083 -1.086513281 -0.21022025 0.08387287
		 -1.086513281 -0.2331613 0.08387287 -0.50000006 -0.084466152 0.19906083 0.50000006 -0.022648457 0.1122058
		 0.50000006 0.022648457 0.1122058;
	setAttr -s 44 ".ed[0:43]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 1 1 3 0 2 18 1
		 3 23 0 4 6 1 5 7 0 6 15 1 7 16 0 6 8 0 0 9 0 8 14 0 2 10 0 9 10 0 4 11 0 10 19 0
		 11 8 0 12 4 1 13 11 0 12 13 1 14 20 0 13 14 1 15 21 1 14 15 1 16 22 0 15 16 1 17 5 0
		 16 17 1 17 12 1 18 12 1 19 13 0 18 19 1 20 9 0 19 20 1 21 0 1 20 21 1 22 1 0 21 22 1
		 23 17 0 22 23 1 23 18 1;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 43 -7
		mu 0 4 2 3 36 29
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 40 39 -1 -38
		mu 0 4 33 34 9 8
		f 4 -40 42 -8 -6
		mu 0 4 1 35 37 3
		f 4 35 16 18 36
		mu 0 4 31 15 16 30
		f 4 37 13 -36 38
		mu 0 4 32 0 15 31
		f 4 4 15 -17 -14
		mu 0 4 0 2 16 15
		f 4 6 34 -19 -16
		mu 0 4 2 28 30 16
		f 4 8 12 -20 -18
		mu 0 4 13 12 14 17
		f 4 20 17 -22 -23
		mu 0 4 18 13 17 20
		f 4 14 -25 21 19
		mu 0 4 14 21 20 17
		f 4 10 -27 -15 -13
		mu 0 4 12 22 21 14
		f 4 3 11 -29 -11
		mu 0 4 6 7 24 23
		f 4 -31 -12 -10 -30
		mu 0 4 27 25 10 11
		f 4 -32 29 -3 -21
		mu 0 4 19 26 5 4
		f 4 32 22 -34 -35
		mu 0 4 28 18 20 30
		f 4 23 -37 33 24
		mu 0 4 21 31 30 20
		f 4 25 -39 -24 26
		mu 0 4 22 32 31 21
		f 4 28 27 -41 -26
		mu 0 4 23 24 34 33
		f 4 -43 -28 30 -42
		mu 0 4 37 35 25 27
		f 4 -44 41 31 -33
		mu 0 4 29 36 26 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube11";
	setAttr ".t" -type "double3" -4.163336342344337e-017 0.20969941386459517 -0.073767178189573956 ;
	setAttr ".r" -type "double3" 0 45.000000000000071 0 ;
	setAttr ".s" -type "double3" 0.10270101042823811 0.10270101042823805 0.10270101042823811 ;
	setAttr ".rp" -type "double3" 0.073767178189573956 0 0 ;
	setAttr ".rpt" -type "double3" -0.073767178189573901 0 0.073767178189573956 ;
	setAttr ".sp" -type "double3" 0.81417315940546953 0 0 ;
	setAttr ".spt" -type "double3" -0.74040598121589563 0 0 ;
createNode transform -n "pCube12";
	setAttr ".t" -type "double3" 0.033918813768371567 0.20969941386459517 0.033918813768371456 ;
	setAttr ".r" -type "double3" 0 135.00000000000009 0 ;
	setAttr ".s" -type "double3" 0.10270101042823811 0.10270101042823805 0.10270101042823811 ;
	setAttr ".rp" -type "double3" 0.047968446450838101 0 0 ;
	setAttr ".rpt" -type "double3" -0.081887260219209529 0 -0.033918813768371359 ;
	setAttr ".sp" -type "double3" 0.81417315940546953 0 0 ;
	setAttr ".spt" -type "double3" -0.76620471295463144 0 0 ;
createNode transform -n "pCube13";
	setAttr ".t" -type "double3" 0.033918813768371595 0.20969941386459517 -0.033918813768371463 ;
	setAttr ".r" -type "double3" 0 225.00000000000009 0 ;
	setAttr ".s" -type "double3" 0.10270101042823811 0.10270101042823805 0.10270101042823811 ;
	setAttr ".rp" -type "double3" 0.047968446450838052 0 0 ;
	setAttr ".rpt" -type "double3" -0.081887260219209362 0 0.0339188137683714 ;
	setAttr ".sp" -type "double3" 0.81417315940546953 0 0 ;
	setAttr ".spt" -type "double3" -0.76620471295463144 0 0 ;
createNode transform -n "pCylinder1";
	setAttr ".t" -type "double3" 0 0.20138608041616718 0 ;
	setAttr ".s" -type "double3" 0.035142508812013681 0.035142508812013681 0.035142508812013681 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 181 ".pt";
	setAttr ".pt[61:226]" -type "float3"  -0.13351001 -0.54332834 -1.2625139 
		-0.11357044 -0.55649912 -1.2206039 -2.9607508e-008 -0.52872795 -1.3089727 -0.082513735 
		-0.56695175 -1.1873424 -0.043380052 -0.57366264 -1.1659877 -2.9607508e-008 -0.57597536 
		-1.1586293 0.043379989 -0.57366258 -1.1659881 0.082513697 -0.56695151 -1.1873434 
		0.11357035 -0.55649871 -1.2206047 0.13350998 -0.54332787 -1.2625151 0.14038058 -0.52872801 
		-1.3089724 0.13350998 -0.51412827 -1.3554296 0.11357035 -0.50095731 -1.397342 0.082513683 
		-0.49050388 -1.4306042 0.043379974 -0.48379284 -1.4519593 -2.5423837e-008 -0.48148081 
		-1.4593163 -0.043380011 -0.48379326 -1.4519579 -0.082513697 -0.49050412 -1.4306026 
		-0.11357034 -0.50095606 -1.397344 -0.13350998 -0.51412785 -1.3554317 -0.14038058 
		-0.52872837 -1.3089716 -0.052550938 0.1834909 -0.80928338 -0.038180493 0.21116513 
		-0.83387566 -0.020072669 0.22893348 -0.84966534 -1.176404e-008 0.23505643 -0.85510576 
		0.020072652 0.22893459 -0.84966582 0.038180489 0.2111662 -0.83387595 0.052550934 
		0.18348926 -0.80928189 0.061777331 0.14861667 -0.77829266 0.064956494 0.10996076 
		-0.74394178 0.061777331 0.071304835 -0.70959133 0.052550934 0.036432181 -0.67860246 
		0.038180493 0.0087566227 -0.6540091 0.020072656 -0.0090120211 -0.63821918 -1.3699896e-008 
		-0.015135136 -0.63277882 -0.020072695 -0.0090124495 -0.63821912 -0.038180519 0.0087562352 
		-0.65400839 -0.052550964 0.036431234 -0.67860186 -0.061777353 0.071303926 -0.70959079 
		-0.064956494 0.10995983 -0.74394155 -0.061777331 0.14861736 -0.77829379 0 0.00045552466 
		0.10451953 0 0.0013713397 0.10451211 0 0.001959336 0.1045074 0 0.0021619499 0.10450582 
		0 0.0019593486 0.1045074 0 0.0013713536 0.10451214 0 0.00045550102 0.10451956 0 -0.00069851172 
		0.10452886 0 -0.001977728 0.10453911 0 -0.0032569501 0.10454939 0 -0.0044109561 0.10455878 
		0 -0.0053267893 0.10456608 0 -0.0059147901 0.10457085 0 -0.0061174077 0.1045724 0 
		-0.0059147989 0.10457085 0 -0.0053267954 0.10456611 0 -0.0044109654 0.10455875 0 
		-0.0032569657 0.10454939 0 -0.0019777422 0.10453911 0 -0.00069850078 0.10452886 -0.038848676 
		0.046661258 -0.333763 -0.036947303 0.073365927 -0.35127234 -0.031429257 0.097456813 
		-0.36706746 -0.022834685 0.11657441 -0.37960213 -0.012004908 0.12884903 -0.38765025 
		-7.0357467e-009 0.13307858 -0.39042324 0.012004895 0.12884963 -0.38765043 0.022834681 
		0.11657476 -0.37960273 0.031429254 0.09745574 -0.3670671 0.036947303 0.07336545 -0.35127211 
		0.038848676 0.046661615 -0.33376354 0.036947303 0.0199579 -0.31625471 0.031429254 
		-0.0041325092 -0.30045962 0.022834685 -0.023250818 -0.2879248 0.012004898 -0.03552556 
		-0.27987662 -8.1935285e-009 -0.039755225 -0.2771036 -0.012004916 -0.035525799 -0.27987641 
		-0.022834707 -0.023251176 -0.28792465 -0.03142928 -0.0041328669 -0.30045936 -0.036947325 
		0.019957304 -0.3162545 0 0.013330277 -0.066468991 0 0.031358782 -0.06853909 0 0.047622561 
		-0.070406504 0 0.06052909 -0.071888514 0 0.06881579 -0.072839893 0 0.071671151 -0.073167898 
		0 0.068816043 -0.072839968 0 0.060529351 -0.071888514 0 0.04762207 -0.070406385 0 
		0.03135854 -0.068539061 0 0.013330545 -0.066468976 0 -0.0046974514 -0.064398915 0 
		-0.020961005 -0.062531546 0 -0.033867925 -0.061049521 0 -0.04215464 -0.060098037 
		0 -0.045010105 -0.059770137 0 -0.042154774 -0.060098037 0 -0.033868074 -0.061049521 
		0 -0.020961244 -0.062531471 0 -0.004697727 -0.064398915 -0.096300043 -0.20695353 
		-1.2493715 -0.081917651 -0.18937801 -1.2813051 -0.059516691 -0.17543119 -1.3066469 
		-0.031289764 -0.16647638 -1.3229176 -1.8338076e-008 -0.1633907 -1.3285232 0.031289734 
		-0.16647574 -1.3229189 0.059516668 -0.17543074 -1.3066461 0.081917666 -0.18937927 
		-1.2813039 0.096300043 -0.20695393 -1.2493708 0.10125574 -0.2264352 -1.2139739 0.096300043 
		-0.24591653 -1.1785775 0.081917666 -0.26349154 -1.1466444 0.059516691 -0.27743924 
		-1.1213013 0.031289745 -0.28639418 -1.1050308 -2.1355735e-008 -0.28948003 -1.0994242 
		-0.031289797 -0.28639436 -1.1050297 -0.059516691 -0.27743965 -1.1213012 -0.081917726 
		-0.2634922 -1.1466422 -0.096300021 -0.24591719 -1.1785752 -0.10125574 -0.2264358 
		-1.2139726 -0.085508578 0.021704357 -1.0361906 -0.072737947 0.040556867 -1.0652301 
		-0.052847207 0.055517461 -1.0882742 -0.027783412 0.065123007 -1.1030713 -1.6283098e-008 
		0.06843292 -1.10817 0.027783398 0.065123662 -1.1030716 0.052847199 0.055517945 -1.088277 
		0.072737962 0.040555838 -1.0652285 0.085508578 0.021704007 -1.0361909 0.08990898 
		0.00080684666 -1.0040014 0.085508578 -0.020090364 -0.97181225 0.072737962 -0.038942471 
		-0.94277298 0.052847207 -0.053903956 -0.91972721 0.027783398 -0.063509412 -0.90493166 
		-1.8962599e-008 -0.066819578 -0.89983279 -0.027783446 -0.063509598 -0.90493113 -0.052847236 
		-0.053904228 -0.91972679 -0.072737977 -0.038943034 -0.94277245 -0.0855086 -0.020090982 
		-0.97181201 -0.08990898 0.00080615375 -1.0040004 0 5.1780255e-005 0.15574156 0 -0.0036393867 
		0.15565585 0 -0.0069692275 0.15557854 0 -0.0096117677 0.15551721 0 -0.011308394 0.15547784 
		0 -0.01189301 0.15546425 0 -0.011308419 0.15547787 0 -0.0096117901 0.15551718 0 -0.00696918 
		0.15557854 0 -0.0036393665 0.15565585 0 5.1748764e-005 0.15574156 0 0.0037428548 
		0.15582724 0 0.0070726778 0.15590455 0 0.0097152507 0.15596585 0 0.011411888 0.15600522 
		0 0.011996506 0.15601884 0 0.011411888 0.15600522 0 0.0097152553 0.15596585 0 0.0070727021 
		0.15590452 0 0.0037428862 0.15582724 0 0.015198153 0.094095871 0 0.0055777351 0.093511924 
		0 -0.0031009398 0.092985138 0 -0.0099883284 0.092567071 0 -0.014410323 0.092298672;
	setAttr ".pt[227:241]" 0 -0.015934044 0.092206165 0 -0.01441036 0.092298672 
		0 -0.0099883638 0.092567071 0 -0.0031008867 0.092985138 0 0.0055777803 0.093511924 
		0 0.015198103 0.09409593 0 0.024818456 0.094679788 0 0.03349711 0.095206574 0 0.04038455 
		0.095624641 0 0.04480654 0.09589307 0 0.046330258 0.095985547 0 0.044806562 0.09589313 
		0 0.040384553 0.095624641 0 0.033497136 0.095206574 0 0.024818482 0.094679788;
parent -s -nc -r -add "|pCube1|transform4|pCubeShape1" "transform1" ;
parent -s -nc -r -add "|pCube1|transform4|pCubeShape1" "transform2" ;
parent -s -nc -r -add "|pCube1|transform4|pCubeShape1" "transform3" ;
parent -s -nc -r -add "|pCube6|pCubeShape2" "pCube7" ;
parent -s -nc -r -add "|pCube6|pCubeShape2" "pCube8" ;
parent -s -nc -r -add "|pCube6|pCubeShape2" "pCube9" ;
parent -s -nc -r -add "|pCube10|pCubeShape10" "pCube11" ;
parent -s -nc -r -add "|pCube10|pCubeShape10" "pCube12" ;
parent -s -nc -r -add "|pCube10|pCubeShape10" "pCube13" ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 1;
	setAttr -s 4 ".dli[1:3]"  1 2 3;
	setAttr -s 4 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode hyperGraphInfo -n "nodeEditorPanel1Info";
createNode hyperView -n "hyperView1";
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 94 ".hyp";
	setAttr ".hyp[0].nvs" 1920;
	setAttr ".hyp[1].nvs" 1920;
	setAttr ".hyp[2].nvs" 1920;
	setAttr ".hyp[3].nvs" 1920;
	setAttr ".hyp[4].nvs" 1920;
	setAttr ".hyp[5].nvs" 1920;
	setAttr ".hyp[6].nvs" 1920;
	setAttr ".hyp[7].nvs" 1920;
	setAttr ".hyp[8].nvs" 1920;
	setAttr ".hyp[9].nvs" 1920;
	setAttr ".hyp[10].nvs" 1920;
	setAttr ".hyp[11].nvs" 1920;
	setAttr ".hyp[12].nvs" 1920;
	setAttr ".hyp[13].nvs" 1920;
	setAttr ".hyp[14].nvs" 1920;
	setAttr ".hyp[15].nvs" 1920;
	setAttr ".hyp[16].nvs" 1920;
	setAttr ".hyp[17].nvs" 1920;
	setAttr ".hyp[18].nvs" 1920;
	setAttr ".hyp[19].nvs" 1920;
	setAttr ".hyp[20].nvs" 1920;
	setAttr ".hyp[21].nvs" 1920;
	setAttr ".hyp[22].nvs" 1920;
	setAttr ".hyp[23].nvs" 1920;
	setAttr ".hyp[24].nvs" 1920;
	setAttr ".hyp[25].nvs" 1920;
	setAttr ".hyp[26].nvs" 1920;
	setAttr ".hyp[27].nvs" 1920;
	setAttr ".hyp[28].nvs" 1920;
	setAttr ".hyp[29].nvs" 1920;
	setAttr ".hyp[30].nvs" 1920;
	setAttr ".hyp[31].nvs" 1920;
	setAttr ".hyp[32].nvs" 1920;
	setAttr ".hyp[33].nvs" 1920;
	setAttr ".hyp[34].nvs" 1920;
	setAttr ".hyp[35].nvs" 1920;
	setAttr ".hyp[36].nvs" 1920;
	setAttr ".hyp[37].nvs" 1920;
	setAttr ".hyp[38].nvs" 1920;
	setAttr ".hyp[39].nvs" 1920;
	setAttr ".hyp[40].nvs" 1920;
	setAttr ".hyp[41].nvs" 1920;
	setAttr ".hyp[42].nvs" 1920;
	setAttr ".hyp[43].nvs" 1920;
	setAttr ".hyp[44].nvs" 1920;
	setAttr ".hyp[45].nvs" 1920;
	setAttr ".hyp[46].nvs" 1920;
	setAttr ".hyp[47].nvs" 1920;
	setAttr ".hyp[48].nvs" 1920;
	setAttr ".hyp[49].nvs" 1920;
	setAttr ".hyp[50].nvs" 1920;
	setAttr ".hyp[51].nvs" 1920;
	setAttr ".hyp[52].nvs" 1920;
	setAttr ".hyp[53].nvs" 1920;
	setAttr ".hyp[54].nvs" 1920;
	setAttr ".hyp[55].nvs" 1920;
	setAttr ".hyp[56].nvs" 1920;
	setAttr ".hyp[57].nvs" 1920;
	setAttr ".hyp[58].nvs" 1920;
	setAttr ".hyp[59].nvs" 1920;
	setAttr ".hyp[60].nvs" 1920;
	setAttr ".hyp[61].nvs" 1920;
	setAttr ".hyp[62].nvs" 1920;
	setAttr ".hyp[63].nvs" 1920;
	setAttr ".hyp[64].nvs" 1920;
	setAttr ".hyp[65].nvs" 1920;
	setAttr ".hyp[66].nvs" 1920;
	setAttr ".hyp[67].nvs" 1920;
	setAttr ".hyp[68].nvs" 1920;
	setAttr ".hyp[69].nvs" 1920;
	setAttr ".hyp[70].nvs" 1920;
	setAttr ".hyp[71].nvs" 1920;
	setAttr ".hyp[72].nvs" 1920;
	setAttr ".hyp[73].nvs" 1920;
	setAttr ".hyp[74].nvs" 1920;
	setAttr ".hyp[75].nvs" 1920;
	setAttr ".hyp[76].nvs" 1920;
	setAttr ".hyp[77].nvs" 1920;
	setAttr ".hyp[78].nvs" 1920;
	setAttr ".hyp[79].nvs" 1920;
	setAttr ".hyp[80].nvs" 1920;
	setAttr ".hyp[81].nvs" 1920;
	setAttr ".hyp[82].nvs" 1920;
	setAttr ".hyp[83].nvs" 1920;
	setAttr ".hyp[84].nvs" 1920;
	setAttr ".hyp[85].nvs" 1920;
	setAttr ".hyp[86].nvs" 1920;
	setAttr ".hyp[87].nvs" 1920;
	setAttr ".hyp[88].nvs" 1920;
	setAttr ".hyp[89].nvs" 1920;
	setAttr ".hyp[90].nvs" 1920;
	setAttr ".hyp[91].nvs" 1920;
	setAttr ".hyp[92].nvs" 1920;
	setAttr ".hyp[93].nvs" 1920;
	setAttr ".anf" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n"
		+ "                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n"
		+ "            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition edge -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode lambert -n "Strawberry_Reference";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "C:/Users/Leonard/Dropbox/Poly/Game Dev 1/FourSquared/Assets/textures/strawberry-reference.jpg";
createNode place2dTexture -n "place2dTexture1";
createNode displayLayer -n "Reference";
	setAttr ".do" 1;
createNode polyCube -n "polyCube1";
	setAttr ".cuv" 4;
createNode lambert -n "Strawberry_Material";
	setAttr ".c" -type "float3" 1 0.292 0.292 ;
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr -s 9 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 9 ".gn";
createNode materialInfo -n "materialInfo2";
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 0.44442021751285987 0 0 0 0 0.44442021751285987 0 0
		 0 0 0.44442021751285987 0 0 0 0 1;
	setAttr ".wt" 0.57914930582046509;
	setAttr ".dr" no;
	setAttr ".re" 4;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -0.19722253 0 ;
	setAttr ".tk[1]" -type "float3" 0 -0.19722253 0 ;
	setAttr ".tk[6]" -type "float3" 0 -0.19722253 0 ;
	setAttr ".tk[7]" -type "float3" 0 -0.19722253 0 ;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[4:5]" "e[13]" "e[15]";
	setAttr ".ix" -type "matrix" 0.44442021751285987 0 0 0 0 0.44442021751285987 0 0
		 0 0 0.44442021751285987 0 0 0 0 1;
	setAttr ".wt" 0.08007436990737915;
	setAttr ".dr" no;
	setAttr ".re" 4;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[0]" -type "float3" 0.38333303 0 0 ;
	setAttr ".tk[1]" -type "float3" -0.38333303 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.38333303 0 0 ;
	setAttr ".tk[7]" -type "float3" -0.38333303 0 0 ;
	setAttr ".tk[8]" -type "float3" 0 0.17102888 0 ;
	setAttr ".tk[9]" -type "float3" 0 0.17102888 0 ;
	setAttr ".tk[10]" -type "float3" 0 0.17102888 0 ;
	setAttr ".tk[11]" -type "float3" 0 0.17102888 0 ;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[13]" "e[15]" "e[20]" "e[25]";
	setAttr ".ix" -type "matrix" 0.44442021751285987 0 0 0 0 0.44442021751285987 0 0
		 0 0 0.44442021751285987 0 0 0 0 1;
	setAttr ".wt" 0.76041185855865479;
	setAttr ".dr" no;
	setAttr ".re" 20;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[0]" -type "float3" 0.03996364 0 0 ;
	setAttr ".tk[1]" -type "float3" -0.03996364 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.03996364 0 0 ;
	setAttr ".tk[7]" -type "float3" -0.03996364 0 0 ;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[8:9]" "e[12]" "e[17]";
	setAttr ".ix" -type "matrix" 0.44442021751285987 0 0 0 0 0.44442021751285987 0 0
		 0 0 0.44442021751285987 0 0 0 0 1;
	setAttr ".wt" 0.73572176694869995;
	setAttr ".dr" no;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[2]" -type "float3" 5.5879354e-009 -0.12362031 0 ;
	setAttr ".tk[3]" -type "float3" -5.5879354e-009 -0.12362031 0 ;
	setAttr ".tk[4]" -type "float3" 5.5879354e-009 -0.12362031 0 ;
	setAttr ".tk[5]" -type "float3" -5.5879354e-009 -0.12362031 0 ;
	setAttr ".tk[16]" -type "float3" -0.039498687 0 0 ;
	setAttr ".tk[17]" -type "float3" -0.039498687 0 0 ;
	setAttr ".tk[18]" -type "float3" 0.039498672 0 0 ;
	setAttr ".tk[19]" -type "float3" 0.039498672 0 0 ;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[12]" "e[17]" "e[37]" "e[39]";
	setAttr ".ix" -type "matrix" 0.44442021751285987 0 0 0 0 0.44442021751285987 0 0
		 0 0 0.44442021751285987 0 0 0 0 1;
	setAttr ".wt" 0.73938894271850586;
	setAttr ".dr" no;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[2]" -type "float3" 0.10266771 0 0 ;
	setAttr ".tk[3]" -type "float3" -0.10266771 0 0 ;
	setAttr ".tk[4]" -type "float3" 0.10266771 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.10266771 0 0 ;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[8:9]" "e[36]" "e[41]";
	setAttr ".ix" -type "matrix" 0.44442021751285987 0 0 0 0 0.44442021751285987 0 0
		 0 0 0.44442021751285987 0 0 0 0 1;
	setAttr ".wt" 0.49553981423377991;
	setAttr ".dr" no;
	setAttr ".re" 36;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[2]" -type "float3" 0.018654741 0.031091247 0 ;
	setAttr ".tk[3]" -type "float3" -0.018654741 0.031091247 0 ;
	setAttr ".tk[4]" -type "float3" 0.018654741 0.031091247 0 ;
	setAttr ".tk[5]" -type "float3" -0.018654741 0.031091247 0 ;
	setAttr ".tk[20]" -type "float3" 0.021142052 0 0 ;
	setAttr ".tk[21]" -type "float3" 0.021142052 0 0 ;
	setAttr ".tk[22]" -type "float3" -0.021142052 0 0 ;
	setAttr ".tk[23]" -type "float3" -0.021142052 0 0 ;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[20]" "e[25]" "e[29]" "e[31]";
	setAttr ".ix" -type "matrix" 0.44442021751285987 0 0 0 0 0.44442021751285987 0 0
		 0 0 0.44442021751285987 0 0 0 0 1;
	setAttr ".wt" 0.70653438568115234;
	setAttr ".dr" no;
	setAttr ".re" 20;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[2:5]" -type "float3"  0.048502371 0 0 -0.048502371
		 0 0 0.048502371 0 0 -0.048502371 0 0;
createNode displayLayer -n "Strawberry";
	setAttr ".do" 2;
createNode polySplitRing -n "polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[0:3]" "e[16]" "e[19]" "e[24]" "e[27]" "e[32]" "e[35]" "e[40]" "e[43]" "e[48]" "e[51]" "e[56]" "e[59]" "e[64]" "e[67]";
	setAttr ".ix" -type "matrix" 0.44442021751285987 0 0 0 0 0.44442021751285987 0 0
		 0 0 0.44442021751285987 0 0 0 0 1;
	setAttr ".wt" 0.60434544086456299;
	setAttr ".dr" no;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 30 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 -0.42329666 ;
	setAttr ".tk[1]" -type "float3" 0 0 -0.42329666 ;
	setAttr ".tk[2]" -type "float3" 0 0 -0.16982485 ;
	setAttr ".tk[3]" -type "float3" 0 0 -0.16982485 ;
	setAttr ".tk[4]" -type "float3" 0 0 0.16982485 ;
	setAttr ".tk[5]" -type "float3" 0 0 0.16982485 ;
	setAttr ".tk[6]" -type "float3" 0 0 0.42329666 ;
	setAttr ".tk[7]" -type "float3" 0 0 0.42329666 ;
	setAttr ".tk[12]" -type "float3" 0 0 -0.35263789 ;
	setAttr ".tk[13]" -type "float3" 0 0 0.35263789 ;
	setAttr ".tk[14]" -type "float3" 0 0 0.35263789 ;
	setAttr ".tk[15]" -type "float3" 0 0 -0.35263789 ;
	setAttr ".tk[16]" -type "float3" 0 0 -0.044989169 ;
	setAttr ".tk[17]" -type "float3" 0 0 0.044989169 ;
	setAttr ".tk[18]" -type "float3" 0 0 0.044989169 ;
	setAttr ".tk[19]" -type "float3" 0 0 -0.044989169 ;
	setAttr ".tk[20]" -type "float3" 0 0 -0.021142066 ;
	setAttr ".tk[21]" -type "float3" 0 0 0.021142066 ;
	setAttr ".tk[22]" -type "float3" 0 0 0.021142066 ;
	setAttr ".tk[23]" -type "float3" 0 0 -0.021142066 ;
	setAttr ".tk[28]" -type "float3" 0 0 -0.070785403 ;
	setAttr ".tk[29]" -type "float3" 0 0 0.070785403 ;
	setAttr ".tk[30]" -type "float3" 0 0 0.070785403 ;
	setAttr ".tk[31]" -type "float3" 0 0 -0.070785403 ;
	setAttr ".tk[32]" -type "float3" -0.015886396 5.5511151e-017 -0.11938707 ;
	setAttr ".tk[33]" -type "float3" -0.015886456 5.5511151e-017 0.1193871 ;
	setAttr ".tk[34]" -type "float3" 0.015886456 5.5511151e-017 0.1193871 ;
	setAttr ".tk[35]" -type "float3" 0.015886396 5.5511151e-017 -0.11938707 ;
createNode polySplitRing -n "polySplitRing9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[6:7]" "e[10:11]" "e[14]" "e[18]" "e[22]" "e[26]" "e[30]" "e[34]" "e[38]" "e[42]" "e[46]" "e[50]" "e[54]" "e[58]" "e[62]" "e[66]" "e[86]" "e[103]" "e[122]" "e[139]";
	setAttr ".ix" -type "matrix" 0.44442021751285987 0 0 0 0 0.44442021751285987 0 0
		 0 0 0.44442021751285987 0 0 0 0 1;
	setAttr ".wt" 0.33889904618263245;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[20]" "e[25]" "e[61]" "e[63]" "e[82]" "e[90]" "e[118]" "e[126]" "e[160]" "e[172]" "e[204]" "e[216]";
	setAttr ".ix" -type "matrix" 0.44442021751285987 0 0 0 0 0.44442021751285987 0 0
		 0 0 0.44442021751285987 0 0 0 0 1;
	setAttr ".wt" 0.99157208204269409;
	setAttr ".dr" no;
	setAttr ".re" 63;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "e[19]" "e[27]" "e[35]" "e[43]" "e[51]" "e[59]" "e[67:69]" "e[71]" "e[73]" "e[75]" "e[77]" "e[79]" "e[81]" "e[83]" "e[85]" "e[101]" "e[142]" "e[168]" "e[186]" "e[212]" "e[230]" "e[246]" "e[254]" "e[270]";
	setAttr ".ix" -type "matrix" 0.44442021751285987 0 0 0 0 0.44442021751285987 0 0
		 0 0 0.44442021751285987 0 0 0 0 1;
	setAttr ".wt" 0.34355753660202026;
	setAttr ".re" 68;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 52 ".tk";
	setAttr ".tk[0]" -type "float3" 0.024584496 -5.9604645e-008 -0.027178919 ;
	setAttr ".tk[1]" -type "float3" -0.024584496 -5.9604645e-008 -0.027178919 ;
	setAttr ".tk[2]" -type "float3" 0.1058258 -1.4901161e-008 -0.11699369 ;
	setAttr ".tk[3]" -type "float3" -0.1058258 -1.4901161e-008 -0.11699369 ;
	setAttr ".tk[4]" -type "float3" 0.1058258 -1.4901161e-008 0.11699369 ;
	setAttr ".tk[5]" -type "float3" -0.1058258 -1.4901161e-008 0.11699369 ;
	setAttr ".tk[6]" -type "float3" 0.024584496 -5.9604645e-008 0.027178919 ;
	setAttr ".tk[7]" -type "float3" -0.024584496 -5.9604645e-008 0.027178919 ;
	setAttr ".tk[8]" -type "float3" 0.16025703 3.3527613e-008 -0.17716908 ;
	setAttr ".tk[9]" -type "float3" 0.16025703 3.3527613e-008 0.17716908 ;
	setAttr ".tk[10]" -type "float3" -0.16025703 3.3527613e-008 0.17716908 ;
	setAttr ".tk[11]" -type "float3" -0.16025703 3.3527613e-008 -0.17716908 ;
	setAttr ".tk[12]" -type "float3" 0.047231622 2.2351742e-008 -0.052216008 ;
	setAttr ".tk[13]" -type "float3" 0.047231622 2.2351742e-008 0.052216008 ;
	setAttr ".tk[14]" -type "float3" -0.047231622 2.2351742e-008 0.052216008 ;
	setAttr ".tk[15]" -type "float3" -0.047231622 2.2351742e-008 -0.052216008 ;
	setAttr ".tk[16]" -type "float3" 0.14583735 -9.3132257e-010 -0.16122769 ;
	setAttr ".tk[17]" -type "float3" 0.14583735 -9.3132257e-010 0.16122769 ;
	setAttr ".tk[18]" -type "float3" -0.14583735 -9.3132257e-010 0.16122769 ;
	setAttr ".tk[19]" -type "float3" -0.14583735 -9.3132257e-010 -0.16122769 ;
	setAttr ".tk[20]" -type "float3" 0.15348068 0 -0.16967759 ;
	setAttr ".tk[21]" -type "float3" 0.15348068 0 0.16967759 ;
	setAttr ".tk[22]" -type "float3" -0.15348068 0 0.16967759 ;
	setAttr ".tk[23]" -type "float3" -0.15348068 0 -0.16967759 ;
	setAttr ".tk[24]" -type "float3" 0.16025703 -6.7055225e-008 -0.17716908 ;
	setAttr ".tk[25]" -type "float3" 0.16025703 -6.7055225e-008 0.17716908 ;
	setAttr ".tk[26]" -type "float3" -0.16025703 -6.7055225e-008 0.17716908 ;
	setAttr ".tk[27]" -type "float3" -0.16025703 -6.7055225e-008 -0.17716908 ;
	setAttr ".tk[28]" -type "float3" 0.13756928 0 -0.15208706 ;
	setAttr ".tk[29]" -type "float3" 0.13756925 7.4505806e-009 0.15208706 ;
	setAttr ".tk[30]" -type "float3" -0.13756925 7.4505806e-009 0.15208706 ;
	setAttr ".tk[31]" -type "float3" -0.13756928 0 -0.15208706 ;
	setAttr ".tk[32]" -type "float3" 0.12199179 -9.3132257e-009 -0.13486567 ;
	setAttr ".tk[33]" -type "float3" 0.1219918 -9.3132257e-009 0.13486567 ;
	setAttr ".tk[34]" -type "float3" -0.1219918 -9.3132257e-009 0.13486567 ;
	setAttr ".tk[35]" -type "float3" -0.12199179 -9.3132257e-009 -0.13486567 ;
	setAttr ".tk[73]" -type "float3" -0.035275258 0.039403632 0.038997881 ;
	setAttr ".tk[74]" -type "float3" 0.035275258 0.039403632 0.038997881 ;
	setAttr ".tk[84]" -type "float3" 0 -0.01479646 0 ;
	setAttr ".tk[85]" -type "float3" 0 -0.01479646 0 ;
	setAttr ".tk[95]" -type "float3" -0.035275258 0.039403632 -0.038997911 ;
	setAttr ".tk[96]" -type "float3" 0.035275258 0.039403632 -0.038997911 ;
	setAttr ".tk[106]" -type "float3" 0 -0.01479646 0 ;
	setAttr ".tk[107]" -type "float3" 0 -0.01479646 0 ;
	setAttr ".tk[116]" -type "float3" -0.072151698 2.2351742e-008 0.079765923 ;
	setAttr ".tk[119]" -type "float3" 0.072151698 2.2351742e-008 0.079765923 ;
	setAttr ".tk[122]" -type "float3" 0.072151691 2.2351742e-008 -0.079765923 ;
	setAttr ".tk[125]" -type "float3" -0.072151691 2.2351742e-008 -0.079765923 ;
	setAttr ".tk[128]" -type "float3" -0.097071745 1.1175871e-008 0.10731578 ;
	setAttr ".tk[131]" -type "float3" 0.097071745 1.1175871e-008 0.10731578 ;
	setAttr ".tk[134]" -type "float3" 0.097071722 1.1175871e-008 -0.1073158 ;
	setAttr ".tk[137]" -type "float3" -0.097071722 1.1175871e-008 -0.1073158 ;
createNode polySplitRing -n "polySplitRing12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[0:3]" "e[16]" "e[24]" "e[32]" "e[40]" "e[48]" "e[56]" "e[64]" "e[123]" "e[125]" "e[127]" "e[129]" "e[131]" "e[133]" "e[135]" "e[146]" "e[164]" "e[190]" "e[208]" "e[234]" "e[242]" "e[258]" "e[266]";
	setAttr ".ix" -type "matrix" 0.44442021751285987 0 0 0 0 0.44442021751285987 0 0
		 0 0 0.44442021751285987 0 0 0 0 1;
	setAttr ".wt" 0.51423215866088867;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
createNode polySplitRing -n "polySplitRing13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 28 "e[10:11]" "e[18]" "e[26]" "e[34]" "e[42]" "e[50]" "e[58]" "e[66]" "e[86]" "e[122]" "e[140:141]" "e[143]" "e[145]" "e[147]" "e[149]" "e[151]" "e[153]" "e[155]" "e[157]" "e[159]" "e[236]" "e[251]" "e[260]" "e[275]" "e[298]" "e[327]" "e[350]" "e[379]";
	setAttr ".ix" -type "matrix" 0.44442021751285987 0 0 0 0 0.44442021751285987 0 0
		 0 0 0.44442021751285987 0 0 0 0 1;
	setAttr ".wt" 0.45239487290382385;
	setAttr ".re" 145;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
createNode polySplitRing -n "polySplitRing14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 29 "e[6:7]" "e[14]" "e[22]" "e[30]" "e[38]" "e[46]" "e[54]" "e[62]" "e[103]" "e[139]" "e[205]" "e[207]" "e[209]" "e[211]" "e[213]" "e[215]" "e[217]" "e[219]" "e[221]" "e[223]" "e[225]" "e[240]" "e[248]" "e[264]" "e[272]" "e[302]" "e[324]" "e[354]" "e[376]";
	setAttr ".ix" -type "matrix" 0.44442021751285987 0 0 0 0 0.44442021751285987 0 0
		 0 0 0.44442021751285987 0 0 0 0 1;
	setAttr ".wt" 0.47880256175994873;
	setAttr ".re" 6;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
createNode polySplitRing -n "polySplitRing15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 29 "e[161]" "e[163]" "e[165]" "e[167]" "e[169]" "e[171]" "e[173]" "e[175]" "e[177]" "e[179]" "e[181]" "e[184:185]" "e[187]" "e[189]" "e[191]" "e[193]" "e[195]" "e[197]" "e[199]" "e[201]" "e[203]" "e[238]" "e[250]" "e[262]" "e[274]" "e[300]" "e[326]" "e[352]" "e[378]";
	setAttr ".ix" -type "matrix" 0.44442021751285987 0 0 0 0 0.44442021751285987 0 0
		 0 0 0.44442021751285987 0 0 0 0 1;
	setAttr ".wt" 0.49781784415245056;
	setAttr ".re" 179;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
createNode polySplitRing -n "polySplitRing16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 31 "e[87]" "e[89]" "e[91]" "e[93]" "e[95]" "e[97]" "e[99]" "e[104:105]" "e[107]" "e[109]" "e[111]" "e[113]" "e[115]" "e[117]" "e[119]" "e[121]" "e[137]" "e[144]" "e[166]" "e[188]" "e[210]" "e[232]" "e[244]" "e[256]" "e[268]" "e[406]" "e[436]" "e[466]" "e[496]" "e[522]" "e[552]";
	setAttr ".ix" -type "matrix" 0.44442021751285987 0 0 0 0 0.44442021751285987 0 0
		 0 0 0.44442021751285987 0 0 0 0 1;
	setAttr ".wt" 0.14865154027938843;
	setAttr ".re" 268;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 53 "e[0:1]" "e[4:7]" "e[12]" "e[14]" "e[17]" "e[19:20]" "e[22]" "e[25]" "e[27:28]" "e[30]" "e[33]" "e[35:36]" "e[38]" "e[41]" "e[43:44]" "e[46]" "e[49]" "e[51:52]" "e[54]" "e[57]" "e[59:60]" "e[62]" "e[65]" "e[67]" "e[85]" "e[87:103]" "e[121]" "e[123:139]" "e[184:204]" "e[206:207]" "e[209]" "e[213:227]" "e[237]" "e[239:248]" "e[250]" "e[261]" "e[263:272]" "e[274]" "e[301:324]" "e[326]" "e[353:376]" "e[378]" "e[440:501]" "e[503]" "e[505]" "e[507]" "e[513]" "e[529]" "e[531]" "e[557]" "e[560:578]" "e[580]" "e[615:623]";
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 10 "e[114:116]" "e[164]" "e[191]" "e[264]" "e[266]" "e[268]" "e[270]" "e[272]" "e[274]" "e[339:340]";
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 36 "e[3]" "e[5]" "e[7]" "e[9]" "e[11]" "e[13]" "e[15]" "e[17]" "e[19]" "e[21]" "e[23]" "e[25]" "e[27]" "e[29]" "e[31]" "e[33:50]" "e[70:72]" "e[74]" "e[97:116]" "e[118]" "e[124:128]" "e[130]" "e[136:163]" "e[217:244]" "e[246]" "e[250:261]" "e[287]" "e[289:295]" "e[300]" "e[302]" "e[304]" "e[306]" "e[308]" "e[310]" "e[312]" "e[318]";
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 7 "e[18]" "e[58]" "e[123]" "e[129]" "e[171]" "e[173]" "e[175]";
createNode polySoftEdge -n "polySoftEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.44442021751285987 0 0 0 0 0.44442021751285987 0 0
		 0 0 0.44442021751285987 0 0 0 0 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.44442021751285987 -0 -4.4915022615870727e-016 0 -0 0.44442021751285987 0 0
		 -4.4915022615870727e-016 -0 -0.44442021751285987 0 0 0 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 182 ".tk";
	setAttr ".tk[0]" -type "float3" -0.026490796 0 -0.048557438 ;
	setAttr ".tk[1]" -type "float3" -0.0061541032 0 -0.011280435 ;
	setAttr ".tk[2]" -type "float3" -0.040116284 0 -0.07353285 ;
	setAttr ".tk[3]" -type "float3" -0.011823236 0 -0.021671915 ;
	setAttr ".tk[4]" -type "float3" -0.036506675 0 -0.066916503 ;
	setAttr ".tk[5]" -type "float3" -0.038419999 0 -0.070423625 ;
	setAttr ".tk[6]" -type "float3" -0.040116284 0 -0.07353285 ;
	setAttr ".tk[7]" -type "float3" -0.03443699 0 -0.063122794 ;
	setAttr ".tk[8]" -type "float3" -0.030537551 0 -0.055975117 ;
	setAttr ".tk[18]" -type "float3" -0.008830267 0 -0.016185815 ;
	setAttr ".tk[30]" -type "float3" -0.018061342 0 -0.033106308 ;
	setAttr ".tk[33]" -type "float3" -0.024299445 0 -0.044540711 ;
	setAttr ".tk[35]" -type "float3" -0.014942358 0 -0.04492582 ;
	setAttr ".tk[36]" -type "float3" -0.019424474 0 -0.058401782 ;
	setAttr ".tk[37]" -type "float3" -0.021671128 0 -0.065156579 ;
	setAttr ".tk[38]" -type "float3" -0.022627927 0 -0.068033315 ;
	setAttr ".tk[39]" -type "float3" -0.022627927 0 -0.068033315 ;
	setAttr ".tk[40]" -type "float3" -0.020591903 0 -0.061911788 ;
	setAttr ".tk[41]" -type "float3" -0.017224966 0 -0.051788729 ;
	setAttr ".tk[42]" -type "float3" -0.013706312 0 -0.0412095 ;
	setAttr ".tk[43]" -type "float3" -0.010187655 0 -0.030630283 ;
	setAttr ".tk[44]" -type "float3" -0.0066689984 0 -0.020051062 ;
	setAttr ".tk[45]" -type "float3" -0.0034712751 0 -0.010436766 ;
	setAttr ".tk[46]" -type "float3" -0.0045697852 0 -0.0042279903 ;
	setAttr ".tk[47]" -type "float3" -0.018094771 0 -0.01497527 ;
	setAttr ".tk[48]" -type "float3" -0.024777846 0 -0.026726125 ;
	setAttr ".tk[49]" -type "float3" -0.032210216 0 -0.034742899 ;
	setAttr ".tk[50]" -type "float3" -0.035935681 0 -0.038761288 ;
	setAttr ".tk[51]" -type "float3" -0.037522275 0 -0.040472649 ;
	setAttr ".tk[52]" -type "float3" -0.037522275 0 -0.040472649 ;
	setAttr ".tk[53]" -type "float3" -0.034146085 0 -0.036830977 ;
	setAttr ".tk[54]" -type "float3" -0.028562928 0 -0.030808816 ;
	setAttr ".tk[55]" -type "float3" -0.022728197 0 -0.024515303 ;
	setAttr ".tk[56]" -type "float3" -0.016893459 0 -0.018221786 ;
	setAttr ".tk[57]" -type "float3" -0.011058724 0 -0.011928269 ;
	setAttr ".tk[58]" -type "float3" -0.0057561672 0 -0.0062087732 ;
	setAttr ".tk[59]" -type "float3" -0.005312277 0 -0.010099738 ;
	setAttr ".tk[60]" -type "float3" -0.0022848931 0 -0.0084559824 ;
	setAttr ".tk[61]" -type "float3" -0.0082592834 0 -0.033174966 ;
	setAttr ".tk[62]" -type "float3" -0.021825776 0 -0.041254379 ;
	setAttr ".tk[72]" -type "float3" -1.8626451e-009 0 0 ;
	setAttr ".tk[75]" -type "float3" 1.8626451e-009 0 0 ;
	setAttr ".tk[76]" -type "float3" 0 0 1.8626451e-009 ;
	setAttr ".tk[77]" -type "float3" -7.4505806e-009 0 0 ;
	setAttr ".tk[78]" -type "float3" 0 0 -5.5879354e-009 ;
	setAttr ".tk[79]" -type "float3" 0 0 -5.5879354e-009 ;
	setAttr ".tk[80]" -type "float3" 0 0 1.8626451e-009 ;
	setAttr ".tk[81]" -type "float3" 0 0 -9.3132257e-010 ;
	setAttr ".tk[82]" -type "float3" 9.3132257e-010 0 0 ;
	setAttr ".tk[83]" -type "float3" 0 0 7.4505806e-009 ;
	setAttr ".tk[86]" -type "float3" 0 0 7.4505806e-009 ;
	setAttr ".tk[87]" -type "float3" -9.3132257e-010 0 0 ;
	setAttr ".tk[88]" -type "float3" 0 0 -9.3132257e-010 ;
	setAttr ".tk[89]" -type "float3" 0 0 1.8626451e-009 ;
	setAttr ".tk[90]" -type "float3" 0 0 -5.5879354e-009 ;
	setAttr ".tk[91]" -type "float3" 0 0 -5.5879354e-009 ;
	setAttr ".tk[92]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".tk[93]" -type "float3" 0 0 1.8626451e-009 ;
	setAttr ".tk[94]" -type "float3" -1.8626451e-009 0 -4.6566129e-010 ;
	setAttr ".tk[97]" -type "float3" 1.8626451e-009 0 -4.6566129e-010 ;
	setAttr ".tk[98]" -type "float3" 0 0 -3.7252903e-009 ;
	setAttr ".tk[99]" -type "float3" -7.4505806e-009 0 0 ;
	setAttr ".tk[100]" -type "float3" 0 0 7.4505806e-009 ;
	setAttr ".tk[101]" -type "float3" 0 0 7.4505806e-009 ;
	setAttr ".tk[102]" -type "float3" 0 0 -1.8626451e-009 ;
	setAttr ".tk[103]" -type "float3" 3.7252903e-009 0 -9.3132257e-010 ;
	setAttr ".tk[104]" -type "float3" 9.3132257e-010 0 3.7252903e-009 ;
	setAttr ".tk[105]" -type "float3" 0 0 -1.8626451e-009 ;
	setAttr ".tk[108]" -type "float3" 0 0 -1.8626451e-009 ;
	setAttr ".tk[109]" -type "float3" -9.3132257e-010 0 3.7252903e-009 ;
	setAttr ".tk[110]" -type "float3" -3.7252903e-009 0 -9.3132257e-010 ;
	setAttr ".tk[111]" -type "float3" 0 0 -1.8626451e-009 ;
	setAttr ".tk[112]" -type "float3" 0 0 7.4505806e-009 ;
	setAttr ".tk[113]" -type "float3" 0 0 7.4505806e-009 ;
	setAttr ".tk[114]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".tk[115]" -type "float3" 0 0 -3.7252903e-009 ;
	setAttr ".tk[120]" -type "float3" 1.8626451e-009 0 0 ;
	setAttr ".tk[121]" -type "float3" 1.8626451e-009 0 -1.8626451e-009 ;
	setAttr ".tk[126]" -type "float3" -1.8626451e-009 0 -1.8626451e-009 ;
	setAttr ".tk[127]" -type "float3" -1.8626451e-009 0 0 ;
	setAttr ".tk[132]" -type "float3" 1.8626451e-009 0 1.1641532e-010 ;
	setAttr ".tk[133]" -type "float3" -5.5879354e-009 0 -2.3283064e-010 ;
	setAttr ".tk[138]" -type "float3" 5.5879354e-009 0 -2.3283064e-010 ;
	setAttr ".tk[139]" -type "float3" -1.8626451e-009 0 1.1641532e-010 ;
	setAttr ".tk[140]" -type "float3" 1.8626451e-009 0 -1.8626451e-009 ;
	setAttr ".tk[141]" -type "float3" -3.7252903e-009 0 0 ;
	setAttr ".tk[142]" -type "float3" 5.5879354e-009 0 -3.7252903e-009 ;
	setAttr ".tk[143]" -type "float3" -1.8626451e-009 0 -3.7252903e-009 ;
	setAttr ".tk[144]" -type "float3" -1.8626451e-009 0 -3.7252903e-009 ;
	setAttr ".tk[145]" -type "float3" 3.7252903e-009 0 -3.7252903e-009 ;
	setAttr ".tk[147]" -type "float3" -3.7252903e-009 0 0 ;
	setAttr ".tk[148]" -type "float3" -9.3132257e-010 0 1.8626451e-009 ;
	setAttr ".tk[149]" -type "float3" -1.8626451e-009 0 9.3132257e-010 ;
	setAttr ".tk[151]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".tk[152]" -type "float3" -4.6566129e-010 0 -2.3283064e-010 ;
	setAttr ".tk[154]" -type "float3" -1.8626451e-009 0 -9.3132257e-010 ;
	setAttr ".tk[155]" -type "float3" -9.3132257e-010 0 -1.8626451e-009 ;
	setAttr ".tk[156]" -type "float3" 0 0 3.7252903e-009 ;
	setAttr ".tk[157]" -type "float3" 1.8626451e-009 0 0 ;
	setAttr ".tk[158]" -type "float3" 3.7252903e-009 0 3.7252903e-009 ;
	setAttr ".tk[159]" -type "float3" -1.8626451e-009 0 3.7252903e-009 ;
	setAttr ".tk[160]" -type "float3" -1.8626451e-009 0 3.7252903e-009 ;
	setAttr ".tk[161]" -type "float3" 5.5879354e-009 0 3.7252903e-009 ;
	setAttr ".tk[162]" -type "float3" -3.7252903e-009 0 0 ;
	setAttr ".tk[163]" -type "float3" 1.8626451e-009 0 1.8626451e-009 ;
	setAttr ".tk[166]" -type "float3" 0 0 -1.8626451e-009 ;
	setAttr ".tk[167]" -type "float3" 3.7252903e-009 0 0 ;
	setAttr ".tk[168]" -type "float3" -3.7252903e-009 0 -3.7252903e-009 ;
	setAttr ".tk[169]" -type "float3" 0 0 -3.7252903e-009 ;
	setAttr ".tk[170]" -type "float3" 0 0 -3.7252903e-009 ;
	setAttr ".tk[171]" -type "float3" 3.7252903e-009 0 -3.7252903e-009 ;
	setAttr ".tk[172]" -type "float3" 3.7252903e-009 0 0 ;
	setAttr ".tk[173]" -type "float3" -1.8626451e-009 0 0 ;
	setAttr ".tk[174]" -type "float3" 9.3132257e-010 0 1.8626451e-009 ;
	setAttr ".tk[175]" -type "float3" 1.8626451e-009 0 9.3132257e-010 ;
	setAttr ".tk[177]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".tk[178]" -type "float3" 4.6566129e-010 0 -2.3283064e-010 ;
	setAttr ".tk[180]" -type "float3" 1.8626451e-009 0 -9.3132257e-010 ;
	setAttr ".tk[181]" -type "float3" 9.3132257e-010 0 -1.8626451e-009 ;
	setAttr ".tk[182]" -type "float3" 3.7252903e-009 0 3.7252903e-009 ;
	setAttr ".tk[183]" -type "float3" 1.8626451e-009 0 0 ;
	setAttr ".tk[184]" -type "float3" 3.7252903e-009 0 3.7252903e-009 ;
	setAttr ".tk[185]" -type "float3" 0 0 3.7252903e-009 ;
	setAttr ".tk[186]" -type "float3" 0 0 3.7252903e-009 ;
	setAttr ".tk[187]" -type "float3" -3.7252903e-009 0 3.7252903e-009 ;
	setAttr ".tk[188]" -type "float3" 1.8626451e-009 0 0 ;
	setAttr ".tk[189]" -type "float3" 0 0 1.8626451e-009 ;
	setAttr ".tk[190]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".tk[191]" -type "float3" 0 0 2.3283064e-010 ;
	setAttr ".tk[193]" -type "float3" 3.7252903e-009 0 -1.8626451e-009 ;
	setAttr ".tk[194]" -type "float3" 0 0 1.8626451e-009 ;
	setAttr ".tk[195]" -type "float3" -3.7252903e-009 0 1.8626451e-009 ;
	setAttr ".tk[196]" -type "float3" -3.7252903e-009 0 1.8626451e-009 ;
	setAttr ".tk[198]" -type "float3" 0 0 -1.8626451e-009 ;
	setAttr ".tk[199]" -type "float3" -1.8626451e-009 0 0 ;
	setAttr ".tk[200]" -type "float3" 1.8626451e-009 0 0 ;
	setAttr ".tk[202]" -type "float3" 4.6566129e-010 0 2.3283064e-010 ;
	setAttr ".tk[207]" -type "float3" -4.6566129e-010 0 2.3283064e-010 ;
	setAttr ".tk[209]" -type "float3" -1.8626451e-009 0 0 ;
	setAttr ".tk[210]" -type "float3" 1.8626451e-009 0 0 ;
	setAttr ".tk[211]" -type "float3" 0 0 -1.8626451e-009 ;
	setAttr ".tk[213]" -type "float3" 3.7252903e-009 0 1.8626451e-009 ;
	setAttr ".tk[214]" -type "float3" 3.7252903e-009 0 1.8626451e-009 ;
	setAttr ".tk[215]" -type "float3" 0 0 1.8626451e-009 ;
	setAttr ".tk[216]" -type "float3" -3.7252903e-009 0 -1.8626451e-009 ;
	setAttr ".tk[222]" -type "float3" 0 0 -1.8626451e-009 ;
	setAttr ".tk[223]" -type "float3" 3.7252903e-009 0 -1.8626451e-009 ;
	setAttr ".tk[225]" -type "float3" -3.7252903e-009 0 1.8626451e-009 ;
	setAttr ".tk[226]" -type "float3" -3.7252903e-009 0 1.8626451e-009 ;
	setAttr ".tk[227]" -type "float3" 0 0 1.8626451e-009 ;
	setAttr ".tk[229]" -type "float3" -5.5879354e-009 0 -9.3132257e-010 ;
	setAttr ".tk[230]" -type "float3" 1.8626451e-009 0 0 ;
	setAttr ".tk[231]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".tk[232]" -type "float3" 4.6566129e-010 0 -2.3283064e-010 ;
	setAttr ".tk[234]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".tk[235]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".tk[237]" -type "float3" -4.6566129e-010 0 -2.3283064e-010 ;
	setAttr ".tk[238]" -type "float3" 0 0 -4.6566129e-010 ;
	setAttr ".tk[239]" -type "float3" -1.8626451e-009 0 0 ;
	setAttr ".tk[240]" -type "float3" 5.5879354e-009 0 -9.3132257e-010 ;
	setAttr ".tk[242]" -type "float3" 0 0 1.8626451e-009 ;
	setAttr ".tk[243]" -type "float3" 3.7252903e-009 0 1.8626451e-009 ;
	setAttr ".tk[244]" -type "float3" 3.7252903e-009 0 1.8626451e-009 ;
	setAttr ".tk[246]" -type "float3" -3.7252903e-009 0 -1.8626451e-009 ;
	setAttr ".tk[247]" -type "float3" 0 0 -1.8626451e-009 ;
createNode polySoftEdge -n "polySoftEdge3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.44442021751285987 -0 -4.4915022615870727e-016 0 -0 0.44442021751285987 0 0
		 -4.4915022615870727e-016 -0 -0.44442021751285987 0 0 0 0 1;
createNode polyUnite -n "polyUnite1";
	setAttr -s 4 ".ip";
	setAttr -s 4 ".im";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:78]";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:78]";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:78]";
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:78]";
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:315]";
createNode polyCube -n "polyCube2";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 0.090603795196884926 0 0 0 0 0.090603795196884926 0 0
		 0 0 0.090603795196884926 0 0 0.19720557599107172 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.045301899 0.19720557 0 ;
	setAttr ".rs" 55664;
	setAttr ".lt" -type "double3" -3.0814879110195774e-033 0 0.053140326787503196 ;
	setAttr ".ls" -type "double3" 0.50323720802247029 1 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.045301897598442463 0.18999278696405111 -0.045301897598442463 ;
	setAttr ".cbx" -type "double3" -0.045301897598442463 0.20441836501809232 0.045301897598442463 ;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0 0.42039198 0 0 0.42039198
		 0 0 -0.42039198 0 0 -0.42039198 0 0 -0.42039198 0 0 -0.42039198 0 0 0.42039198 0
		 0 0.42039198 0;
createNode polySplitRing -n "polySplitRing17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[6:7]" "e[10:11]" "e[14]" "e[18]";
	setAttr ".ix" -type "matrix" 0.090603795196884926 0 0 0 0 0.090603795196884926 0 0
		 0 0 0.090603795196884926 0 -0.064347795480229175 0.19720557599107172 0 1;
	setAttr ".wt" 0.55542892217636108;
	setAttr ".dr" no;
	setAttr ".re" 6;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[0:11]" -type "float3"  -1.110223e-016 -0.0048581869
		 0.097182408 1.110223e-016 0.056959506 -0.16338268 -1.110223e-016 -0.11877718 0.097182408
		 1.110223e-016 -0.056959506 -0.16338268 -1.110223e-016 -0.11877718 -0.097182408 1.110223e-016
		 -0.056959506 0.16338268 -1.110223e-016 -0.0048581869 -0.097182408 1.110223e-016 0.056959506
		 0.16338268 -2.220446e-016 -0.15355334 0 -2.220446e-016 -0.15355334 0 -2.220446e-016
		 -0.28982821 0 -2.220446e-016 -0.28982821 0;
createNode lambert -n "Leaf_Material";
	setAttr ".c" -type "float3" 0.24193192 0.5 0.23899999 ;
createNode shadingEngine -n "lambert4SG";
	setAttr ".ihi" 0;
	setAttr -s 9 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode polyCylinder -n "polyCylinder1";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 0.025822252376801691 0 0 0 0 0.025822252376801691 0 0
		 0 0 0.025822252376801691 0 0 0.21529263566168166 0 1;
	setAttr ".ws" yes;
	setAttr ".s" -type "double3" 0.64999999622388882 0.64999999622388882 0.64999999622388882 ;
	setAttr ".pvt" -type "float3" -3.0782523e-009 0.21863404 -4.6173785e-009 ;
	setAttr ".rs" 38579;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.02582225853330641 0.21863403550340571 -0.025822264689811133 ;
	setAttr ".cbx" -type "double3" 0.025822252376801691 0.21863403550340571 0.025822255455054052 ;
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 42 ".tk[0:41]" -type "float3"  -1.2323476e-014 0.87059999
		 6.1617378e-015 -1.2323476e-014 0.87059999 1.2323476e-014 -1.2323476e-014 0.87059999
		 1.2323476e-014 -6.1617378e-015 0.87059999 1.2323476e-014 0 0.87059999 2.4646951e-014
		 6.1617378e-015 0.87059999 1.2323476e-014 1.2323476e-014 0.87059999 1.2323476e-014
		 1.2323476e-014 0.87059999 1.2323476e-014 1.2323476e-014 0.87059999 6.1617378e-015
		 2.4646951e-014 0.87059999 0 1.2323476e-014 0.87059999 -6.1617378e-015 1.2323476e-014
		 0.87059999 -1.2323476e-014 1.2323476e-014 0.87059999 -1.2323476e-014 6.1617378e-015
		 0.87059999 -1.2323476e-014 3.6726819e-022 0.87059999 -2.4646951e-014 -6.1617378e-015
		 0.87059999 -1.2323476e-014 -1.2323476e-014 0.87059999 -1.2323476e-014 -1.2323476e-014
		 0.87059999 -1.2323476e-014 -1.2323476e-014 0.87059999 -6.1617378e-015 -1.2323476e-014
		 0.87059999 0 -1.2323476e-014 -0.87059999 6.1617378e-015 -1.2323476e-014 -0.87059999
		 1.2323476e-014 -1.2323476e-014 -0.87059999 1.2323476e-014 -6.1617378e-015 -0.87059999
		 1.2323476e-014 0 -0.87059999 2.4646951e-014 6.1617378e-015 -0.87059999 1.2323476e-014
		 1.2323476e-014 -0.87059999 1.2323476e-014 1.2323476e-014 -0.87059999 1.2323476e-014
		 1.2323476e-014 -0.87059999 6.1617378e-015 2.4646951e-014 -0.87059999 0 1.2323476e-014
		 -0.87059999 -6.1617378e-015 1.2323476e-014 -0.87059999 -1.2323476e-014 1.2323476e-014
		 -0.87059999 -1.2323476e-014 6.1617378e-015 -0.87059999 -1.2323476e-014 3.6726819e-022
		 -0.87059999 -2.4646951e-014 -6.1617378e-015 -0.87059999 -1.2323476e-014 -1.2323476e-014
		 -0.87059999 -1.2323476e-014 -1.2323476e-014 -0.87059999 -1.2323476e-014 -1.2323476e-014
		 -0.87059999 -6.1617378e-015 -1.2323476e-014 -0.87059999 0 0 0.87059999 0 0 -0.87059999
		 0;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 0.025822252376801691 0 0 0 0 0.025822252376801691 0 0
		 0 0 0.025822252376801691 0 0 0.21529263566168166 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.8478154e-009 0.21863404 -5.3869416e-009 ;
	setAttr ".rs" 32920;
	setAttr ".lt" -type "double3" 0 7.1277417192949223e-018 0.061046789398520554 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.016784468046649167 0.21863404165991041 -0.01678447420315389 ;
	setAttr ".cbx" -type "double3" 0.016784460351018268 0.21863404165991041 0.016784463429270625 ;
createNode polySplitRing -n "polySplitRing18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[120:121]" "e[125]" "e[128]" "e[131]" "e[134]" "e[137]" "e[140]" "e[143]" "e[146]" "e[149]" "e[152]" "e[155]" "e[158]" "e[161]" "e[164]" "e[167]" "e[170]" "e[173]" "e[176]";
	setAttr ".ix" -type "matrix" 0.025822252376801691 0 0 0 0 0.025822252376801691 0 0
		 0 0 0.025822252376801691 0 0 0.20138608041616718 0 1;
	setAttr ".wt" 0.1504189521074295;
	setAttr ".re" 170;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 51 ".tk";
	setAttr ".tk[22]" -type "float3" 1.1175871e-008 -1.4901161e-008 -2.6077032e-008 ;
	setAttr ".tk[23]" -type "float3" -3.7252903e-009 -1.4901161e-008 -3.7252903e-008 ;
	setAttr ".tk[24]" -type "float3" -2.6645353e-015 -1.4901161e-008 -1.1175871e-008 ;
	setAttr ".tk[25]" -type "float3" 9.3132257e-010 -1.4901161e-008 -3.3527613e-008 ;
	setAttr ".tk[26]" -type "float3" 1.8626451e-009 -1.4901161e-008 -7.4505806e-009 ;
	setAttr ".tk[32]" -type "float3" -1.3038516e-008 -1.4901161e-008 2.6077032e-008 ;
	setAttr ".tk[33]" -type "float3" -8.3819032e-009 -1.4901161e-008 3.3527613e-008 ;
	setAttr ".tk[34]" -type "float3" 7.1054274e-015 -1.4901161e-008 2.2351742e-008 ;
	setAttr ".tk[35]" -type "float3" -1.8626451e-009 -1.4901161e-008 3.3527613e-008 ;
	setAttr ".tk[36]" -type "float3" -1.3038516e-008 -1.4901161e-008 7.4505806e-009 ;
	setAttr ".tk[41]" -type "float3" -0.37339044 0.051747106 0.12132174 ;
	setAttr ".tk[42]" -type "float3" -0.31762481 0.051747106 0.23076776 ;
	setAttr ".tk[43]" -type "float3" -0.230768 0.051747106 0.31762466 ;
	setAttr ".tk[44]" -type "float3" -0.12132191 0.051747106 0.3733902 ;
	setAttr ".tk[45]" -type "float3" -8.2803943e-008 0.051747106 0.39260584 ;
	setAttr ".tk[46]" -type "float3" 0.12132175 0.051747106 0.37339014 ;
	setAttr ".tk[47]" -type "float3" 0.23076776 0.051747106 0.31762463 ;
	setAttr ".tk[48]" -type "float3" 0.31762457 0.051747106 0.2307677 ;
	setAttr ".tk[49]" -type "float3" 0.37339014 0.051747106 0.12132169 ;
	setAttr ".tk[50]" -type "float3" 0.39260566 0.051747106 -1.0620506e-007 ;
	setAttr ".tk[51]" -type "float3" 0.37339014 0.051747106 -0.1213219 ;
	setAttr ".tk[52]" -type "float3" 0.31762451 0.051747106 -0.23076791 ;
	setAttr ".tk[53]" -type "float3" 0.23076767 0.051747106 -0.31762475 ;
	setAttr ".tk[54]" -type "float3" 0.12132176 0.051747106 -0.37339026 ;
	setAttr ".tk[55]" -type "float3" -7.1103386e-008 0.051747106 -0.39260569 ;
	setAttr ".tk[56]" -type "float3" -0.12132189 0.051747106 -0.37339026 ;
	setAttr ".tk[57]" -type "float3" -0.23076785 0.051747106 -0.31762472 ;
	setAttr ".tk[58]" -type "float3" -0.31762466 0.051747106 -0.23076788 ;
	setAttr ".tk[59]" -type "float3" -0.37339014 0.051747106 -0.12132186 ;
	setAttr ".tk[60]" -type "float3" -0.39260566 0.051747106 -1.0620506e-007 ;
	setAttr ".tk[61]" -type "float3" -0.37339044 2.3454731 0.12132174 ;
	setAttr ".tk[62]" -type "float3" -0.31762481 2.3454731 0.23076776 ;
	setAttr ".tk[63]" -type "float3" -8.2803943e-008 2.3454731 -6.6749556e-007 ;
	setAttr ".tk[64]" -type "float3" -0.230768 2.3454731 0.31762466 ;
	setAttr ".tk[65]" -type "float3" -0.12132191 2.3454731 0.3733902 ;
	setAttr ".tk[66]" -type "float3" -8.2803943e-008 2.3454731 0.39260584 ;
	setAttr ".tk[67]" -type "float3" 0.12132175 2.3454731 0.3733882 ;
	setAttr ".tk[68]" -type "float3" 0.23076776 2.3454731 0.31762272 ;
	setAttr ".tk[69]" -type "float3" 0.31762457 2.3454731 0.23076394 ;
	setAttr ".tk[70]" -type "float3" 0.37339014 2.3454731 0.12131789 ;
	setAttr ".tk[71]" -type "float3" 0.39260566 2.3454731 -1.0620506e-007 ;
	setAttr ".tk[72]" -type "float3" 0.37339014 2.3454731 -0.12131809 ;
	setAttr ".tk[73]" -type "float3" 0.31762451 2.3454731 -0.23076406 ;
	setAttr ".tk[74]" -type "float3" 0.23076767 2.3454731 -0.31762856 ;
	setAttr ".tk[75]" -type "float3" 0.12132176 2.3454731 -0.37339407 ;
	setAttr ".tk[76]" -type "float3" -7.1103386e-008 2.3454731 -0.39260566 ;
	setAttr ".tk[77]" -type "float3" -0.12132189 2.3454731 -0.37339002 ;
	setAttr ".tk[78]" -type "float3" -0.23076785 2.3454731 -0.31762472 ;
	setAttr ".tk[79]" -type "float3" -0.31762466 2.3454731 -0.2307716 ;
	setAttr ".tk[80]" -type "float3" -0.37339014 2.3454731 -0.12132186 ;
	setAttr ".tk[81]" -type "float3" -0.39260566 2.3454731 3.7128411e-006 ;
createNode polySplitRing -n "polySplitRing19";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[220:221]" "e[223]" "e[225]" "e[227]" "e[229]" "e[231]" "e[233]" "e[235]" "e[237]" "e[239]" "e[241]" "e[243]" "e[245]" "e[247]" "e[249]" "e[251]" "e[253]" "e[255]" "e[257]";
	setAttr ".ix" -type "matrix" 0.025822252376801691 0 0 0 0 0.025822252376801691 0 0
		 0 0 0.025822252376801691 0 0 0.20138608041616718 0 1;
	setAttr ".wt" 0.50805473327636719;
	setAttr ".dr" no;
	setAttr ".re" 255;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polySplitRing -n "polySplitRing20";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[180:181]" "e[183]" "e[185]" "e[187]" "e[189]" "e[191]" "e[193]" "e[195]" "e[197]" "e[199]" "e[201]" "e[203]" "e[205]" "e[207]" "e[209]" "e[211]" "e[213]" "e[215]" "e[217]";
	setAttr ".ix" -type "matrix" 0.025822252376801691 0 0 0 0 0.025822252376801691 0 0
		 0 0 0.025822252376801691 0 0 0.20138608041616718 0 1;
	setAttr ".wt" 0.41404080390930176;
	setAttr ".re" 217;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode polySplitRing -n "polySplitRing21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[120:121]" "e[125]" "e[128]" "e[131]" "e[134]" "e[137]" "e[140]" "e[143]" "e[146]" "e[149]" "e[152]" "e[155]" "e[158]" "e[161]" "e[164]" "e[167]" "e[170]" "e[173]" "e[176]";
	setAttr ".ix" -type "matrix" 0.025822252376801691 0 0 0 0 0.025822252376801691 0 0
		 0 0 0.025822252376801691 0 0 0.20138608041616718 0 1;
	setAttr ".wt" 0.63890206813812256;
	setAttr ".dr" no;
	setAttr ".re" 176;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
createNode displayLayer -n "Leaf";
	setAttr ".do" 3;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :defaultTextureList1;
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "groupId1.id" "|pCube1|transform4|pCubeShape1.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "|pCube1|transform4|pCubeShape1.iog.og[0].gco";
connectAttr "groupId3.id" "|pCube3|transform3|pCubeShape1.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "|pCube3|transform3|pCubeShape1.iog.og[0].gco";
connectAttr "groupId7.id" "|pCube4|transform1|pCubeShape1.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "|pCube4|transform1|pCubeShape1.iog.og[0].gco";
connectAttr "groupId5.id" "|pCube5|transform2|pCubeShape1.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "|pCube5|transform2|pCubeShape1.iog.og[0].gco";
connectAttr "groupParts4.og" "|pCube1|transform4|pCubeShape1.i";
connectAttr "groupId2.id" "|pCube1|transform4|pCubeShape1.ciog.cog[0].cgid";
connectAttr "groupId4.id" "|pCube3|transform3|pCubeShape1.ciog.cog[0].cgid";
connectAttr "groupId8.id" "|pCube4|transform1|pCubeShape1.ciog.cog[0].cgid";
connectAttr "groupId6.id" "|pCube5|transform2|pCubeShape1.ciog.cog[0].cgid";
connectAttr "Strawberry.di" "polySurface1.do";
connectAttr "groupParts5.og" "polySurfaceShape1.i";
connectAttr "groupId9.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "Leaf.di" "pCube6.do";
connectAttr "polySplitRing17.out" "|pCube6|pCubeShape2.i";
connectAttr "Leaf.di" "pCube7.do";
connectAttr "Leaf.di" "pCube8.do";
connectAttr "Leaf.di" "pCube9.do";
connectAttr "Leaf.di" "pCube10.do";
connectAttr "Leaf.di" "pCube11.do";
connectAttr "Leaf.di" "pCube12.do";
connectAttr "Leaf.di" "pCube13.do";
connectAttr "Leaf.di" "pCylinder1.do";
connectAttr "polySplitRing21.out" "pCylinderShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "hyperView1.msg" "nodeEditorPanel1Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "layerManager.msg" "hyperLayout1.hyp[0].dn";
connectAttr "defaultLayer.msg" "hyperLayout1.hyp[1].dn";
connectAttr "defaultRenderLayer.msg" "hyperLayout1.hyp[2].dn";
connectAttr "uiConfigurationScriptNode.msg" "hyperLayout1.hyp[3].dn";
connectAttr "sceneConfigurationScriptNode.msg" "hyperLayout1.hyp[4].dn";
connectAttr "Strawberry_Reference.msg" "hyperLayout1.hyp[5].dn";
connectAttr "lambert2SG.msg" "hyperLayout1.hyp[6].dn";
connectAttr "file1.msg" "hyperLayout1.hyp[7].dn";
connectAttr "place2dTexture1.msg" "hyperLayout1.hyp[8].dn";
connectAttr "Reference.msg" "hyperLayout1.hyp[9].dn";
connectAttr "polyCube1.msg" "hyperLayout1.hyp[10].dn";
connectAttr "pCube1.msg" "hyperLayout1.hyp[11].dn";
connectAttr "|pCube1|transform4|pCubeShape1.msg" "hyperLayout1.hyp[12].dn";
connectAttr "Strawberry_Material.msg" "hyperLayout1.hyp[13].dn";
connectAttr "lambert3SG.msg" "hyperLayout1.hyp[14].dn";
connectAttr "polySplitRing1.msg" "hyperLayout1.hyp[15].dn";
connectAttr "polyTweak1.msg" "hyperLayout1.hyp[16].dn";
connectAttr "polySplitRing2.msg" "hyperLayout1.hyp[17].dn";
connectAttr "polyTweak2.msg" "hyperLayout1.hyp[18].dn";
connectAttr "polySplitRing3.msg" "hyperLayout1.hyp[19].dn";
connectAttr "polyTweak3.msg" "hyperLayout1.hyp[20].dn";
connectAttr "polySplitRing4.msg" "hyperLayout1.hyp[21].dn";
connectAttr "polyTweak4.msg" "hyperLayout1.hyp[22].dn";
connectAttr "polySplitRing5.msg" "hyperLayout1.hyp[23].dn";
connectAttr "polyTweak5.msg" "hyperLayout1.hyp[24].dn";
connectAttr "polySplitRing6.msg" "hyperLayout1.hyp[25].dn";
connectAttr "polyTweak6.msg" "hyperLayout1.hyp[26].dn";
connectAttr "polySplitRing7.msg" "hyperLayout1.hyp[27].dn";
connectAttr "polyTweak7.msg" "hyperLayout1.hyp[28].dn";
connectAttr "Strawberry.msg" "hyperLayout1.hyp[29].dn";
connectAttr "polySplitRing8.msg" "hyperLayout1.hyp[30].dn";
connectAttr "polyTweak8.msg" "hyperLayout1.hyp[31].dn";
connectAttr "polySplitRing9.msg" "hyperLayout1.hyp[32].dn";
connectAttr "polySplitRing10.msg" "hyperLayout1.hyp[33].dn";
connectAttr "polySplitRing11.msg" "hyperLayout1.hyp[34].dn";
connectAttr "polyTweak9.msg" "hyperLayout1.hyp[35].dn";
connectAttr "polySplitRing12.msg" "hyperLayout1.hyp[36].dn";
connectAttr "polySplitRing13.msg" "hyperLayout1.hyp[37].dn";
connectAttr "polySplitRing14.msg" "hyperLayout1.hyp[38].dn";
connectAttr "polySplitRing15.msg" "hyperLayout1.hyp[39].dn";
connectAttr "polySplitRing16.msg" "hyperLayout1.hyp[40].dn";
connectAttr "deleteComponent1.msg" "hyperLayout1.hyp[41].dn";
connectAttr "deleteComponent2.msg" "hyperLayout1.hyp[42].dn";
connectAttr "deleteComponent3.msg" "hyperLayout1.hyp[43].dn";
connectAttr "deleteComponent4.msg" "hyperLayout1.hyp[44].dn";
connectAttr "polySoftEdge1.msg" "hyperLayout1.hyp[45].dn";
connectAttr "pCube3.msg" "hyperLayout1.hyp[46].dn";
connectAttr "pCube4.msg" "hyperLayout1.hyp[47].dn";
connectAttr "pCube5.msg" "hyperLayout1.hyp[48].dn";
connectAttr "polySoftEdge2.msg" "hyperLayout1.hyp[49].dn";
connectAttr "polyTweak10.msg" "hyperLayout1.hyp[50].dn";
connectAttr "polySoftEdge3.msg" "hyperLayout1.hyp[51].dn";
connectAttr "polyUnite1.msg" "hyperLayout1.hyp[52].dn";
connectAttr "polySurface1.msg" "hyperLayout1.hyp[53].dn";
connectAttr "polySurfaceShape1.msg" "hyperLayout1.hyp[54].dn";
connectAttr "transform1.msg" "hyperLayout1.hyp[55].dn";
connectAttr "transform2.msg" "hyperLayout1.hyp[56].dn";
connectAttr "transform3.msg" "hyperLayout1.hyp[57].dn";
connectAttr "transform4.msg" "hyperLayout1.hyp[58].dn";
connectAttr "polyCube2.msg" "hyperLayout1.hyp[59].dn";
connectAttr "pCube6.msg" "hyperLayout1.hyp[60].dn";
connectAttr "|pCube6|pCubeShape2.msg" "hyperLayout1.hyp[61].dn";
connectAttr "polyExtrudeFace1.msg" "hyperLayout1.hyp[62].dn";
connectAttr "polyTweak11.msg" "hyperLayout1.hyp[63].dn";
connectAttr "polySplitRing17.msg" "hyperLayout1.hyp[64].dn";
connectAttr "polyTweak12.msg" "hyperLayout1.hyp[65].dn";
connectAttr "Leaf_Material.msg" "hyperLayout1.hyp[66].dn";
connectAttr "lambert4SG.msg" "hyperLayout1.hyp[67].dn";
connectAttr "pCube7.msg" "hyperLayout1.hyp[68].dn";
connectAttr "pCube8.msg" "hyperLayout1.hyp[69].dn";
connectAttr "pCube9.msg" "hyperLayout1.hyp[70].dn";
connectAttr "pCube10.msg" "hyperLayout1.hyp[71].dn";
connectAttr "|pCube10|pCubeShape10.msg" "hyperLayout1.hyp[72].dn";
connectAttr "pCube11.msg" "hyperLayout1.hyp[73].dn";
connectAttr "pCube12.msg" "hyperLayout1.hyp[74].dn";
connectAttr "pCube13.msg" "hyperLayout1.hyp[75].dn";
connectAttr "polyCylinder1.msg" "hyperLayout1.hyp[76].dn";
connectAttr "pCylinder1.msg" "hyperLayout1.hyp[77].dn";
connectAttr "pCylinderShape1.msg" "hyperLayout1.hyp[78].dn";
connectAttr "polyExtrudeFace2.msg" "hyperLayout1.hyp[79].dn";
connectAttr "polyTweak13.msg" "hyperLayout1.hyp[80].dn";
connectAttr "polyExtrudeFace3.msg" "hyperLayout1.hyp[81].dn";
connectAttr "polySplitRing18.msg" "hyperLayout1.hyp[82].dn";
connectAttr "polyTweak14.msg" "hyperLayout1.hyp[83].dn";
connectAttr "polySplitRing19.msg" "hyperLayout1.hyp[84].dn";
connectAttr "polySplitRing20.msg" "hyperLayout1.hyp[85].dn";
connectAttr "polySplitRing21.msg" "hyperLayout1.hyp[86].dn";
connectAttr "Leaf.msg" "hyperLayout1.hyp[87].dn";
connectAttr "file1.oc" "Strawberry_Reference.c";
connectAttr "Strawberry_Reference.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "Strawberry_Reference.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "layerManager.dli[1]" "Reference.id";
connectAttr "Strawberry_Material.oc" "lambert3SG.ss";
connectAttr "|pCube1|transform4|pCubeShape1.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "|pCube1|transform4|pCubeShape1.ciog.cog[0]" "lambert3SG.dsm" -na;
connectAttr "|pCube3|transform3|pCubeShape1.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "|pCube3|transform3|pCubeShape1.ciog.cog[0]" "lambert3SG.dsm" -na;
connectAttr "|pCube5|transform2|pCubeShape1.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "|pCube5|transform2|pCubeShape1.ciog.cog[0]" "lambert3SG.dsm" -na;
connectAttr "|pCube4|transform1|pCubeShape1.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "|pCube4|transform1|pCubeShape1.ciog.cog[0]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape1.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "groupId1.msg" "lambert3SG.gn" -na;
connectAttr "groupId2.msg" "lambert3SG.gn" -na;
connectAttr "groupId3.msg" "lambert3SG.gn" -na;
connectAttr "groupId4.msg" "lambert3SG.gn" -na;
connectAttr "groupId5.msg" "lambert3SG.gn" -na;
connectAttr "groupId6.msg" "lambert3SG.gn" -na;
connectAttr "groupId7.msg" "lambert3SG.gn" -na;
connectAttr "groupId8.msg" "lambert3SG.gn" -na;
connectAttr "groupId9.msg" "lambert3SG.gn" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "Strawberry_Material.msg" "materialInfo2.m";
connectAttr "polyTweak1.out" "polySplitRing1.ip";
connectAttr "|pCube1|transform4|pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polySplitRing2.ip";
connectAttr "|pCube1|transform4|pCubeShape1.wm" "polySplitRing2.mp";
connectAttr "polySplitRing1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polySplitRing3.ip";
connectAttr "|pCube1|transform4|pCubeShape1.wm" "polySplitRing3.mp";
connectAttr "polySplitRing2.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polySplitRing4.ip";
connectAttr "|pCube1|transform4|pCubeShape1.wm" "polySplitRing4.mp";
connectAttr "polySplitRing3.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polySplitRing5.ip";
connectAttr "|pCube1|transform4|pCubeShape1.wm" "polySplitRing5.mp";
connectAttr "polySplitRing4.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polySplitRing6.ip";
connectAttr "|pCube1|transform4|pCubeShape1.wm" "polySplitRing6.mp";
connectAttr "polySplitRing5.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polySplitRing7.ip";
connectAttr "|pCube1|transform4|pCubeShape1.wm" "polySplitRing7.mp";
connectAttr "polySplitRing6.out" "polyTweak7.ip";
connectAttr "layerManager.dli[2]" "Strawberry.id";
connectAttr "polyTweak8.out" "polySplitRing8.ip";
connectAttr "|pCube1|transform4|pCubeShape1.wm" "polySplitRing8.mp";
connectAttr "polySplitRing7.out" "polyTweak8.ip";
connectAttr "polySplitRing8.out" "polySplitRing9.ip";
connectAttr "|pCube1|transform4|pCubeShape1.wm" "polySplitRing9.mp";
connectAttr "polySplitRing9.out" "polySplitRing10.ip";
connectAttr "|pCube1|transform4|pCubeShape1.wm" "polySplitRing10.mp";
connectAttr "polyTweak9.out" "polySplitRing11.ip";
connectAttr "|pCube1|transform4|pCubeShape1.wm" "polySplitRing11.mp";
connectAttr "polySplitRing10.out" "polyTweak9.ip";
connectAttr "polySplitRing11.out" "polySplitRing12.ip";
connectAttr "|pCube1|transform4|pCubeShape1.wm" "polySplitRing12.mp";
connectAttr "polySplitRing12.out" "polySplitRing13.ip";
connectAttr "|pCube1|transform4|pCubeShape1.wm" "polySplitRing13.mp";
connectAttr "polySplitRing13.out" "polySplitRing14.ip";
connectAttr "|pCube1|transform4|pCubeShape1.wm" "polySplitRing14.mp";
connectAttr "polySplitRing14.out" "polySplitRing15.ip";
connectAttr "|pCube1|transform4|pCubeShape1.wm" "polySplitRing15.mp";
connectAttr "polySplitRing15.out" "polySplitRing16.ip";
connectAttr "|pCube1|transform4|pCubeShape1.wm" "polySplitRing16.mp";
connectAttr "polySplitRing16.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "polySoftEdge1.ip";
connectAttr "|pCube1|transform4|pCubeShape1.wm" "polySoftEdge1.mp";
connectAttr "polyTweak10.out" "polySoftEdge2.ip";
connectAttr "|pCube4|transform1|pCubeShape1.wm" "polySoftEdge2.mp";
connectAttr "polySoftEdge1.out" "polyTweak10.ip";
connectAttr "polySoftEdge2.out" "polySoftEdge3.ip";
connectAttr "|pCube4|transform1|pCubeShape1.wm" "polySoftEdge3.mp";
connectAttr "|pCube1|transform4|pCubeShape1.o" "polyUnite1.ip[0]";
connectAttr "|pCube1|transform4|pCubeShape1.o" "polyUnite1.ip[1]";
connectAttr "|pCube1|transform4|pCubeShape1.o" "polyUnite1.ip[2]";
connectAttr "|pCube1|transform4|pCubeShape1.o" "polyUnite1.ip[3]";
connectAttr "|pCube1|transform4|pCubeShape1.wm" "polyUnite1.im[0]";
connectAttr "|pCube3|transform3|pCubeShape1.wm" "polyUnite1.im[1]";
connectAttr "|pCube5|transform2|pCubeShape1.wm" "polyUnite1.im[2]";
connectAttr "|pCube4|transform1|pCubeShape1.wm" "polyUnite1.im[3]";
connectAttr "polySoftEdge3.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "groupParts2.og" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "groupParts3.og" "groupParts4.ig";
connectAttr "groupId7.id" "groupParts4.gi";
connectAttr "polyUnite1.out" "groupParts5.ig";
connectAttr "groupId9.id" "groupParts5.gi";
connectAttr "polyTweak11.out" "polyExtrudeFace1.ip";
connectAttr "|pCube6|pCubeShape2.wm" "polyExtrudeFace1.mp";
connectAttr "polyCube2.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polySplitRing17.ip";
connectAttr "|pCube6|pCubeShape2.wm" "polySplitRing17.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak12.ip";
connectAttr "Leaf_Material.oc" "lambert4SG.ss";
connectAttr "|pCube6|pCubeShape2.iog" "lambert4SG.dsm" -na;
connectAttr "|pCube7|pCubeShape2.iog" "lambert4SG.dsm" -na;
connectAttr "|pCube8|pCubeShape2.iog" "lambert4SG.dsm" -na;
connectAttr "|pCube9|pCubeShape2.iog" "lambert4SG.dsm" -na;
connectAttr "|pCube10|pCubeShape10.iog" "lambert4SG.dsm" -na;
connectAttr "|pCube11|pCubeShape10.iog" "lambert4SG.dsm" -na;
connectAttr "|pCube12|pCubeShape10.iog" "lambert4SG.dsm" -na;
connectAttr "|pCube13|pCubeShape10.iog" "lambert4SG.dsm" -na;
connectAttr "pCylinderShape1.iog" "lambert4SG.dsm" -na;
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "Leaf_Material.msg" "materialInfo3.m";
connectAttr "polyTweak13.out" "polyExtrudeFace2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyCylinder1.out" "polyTweak13.ip";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyTweak14.out" "polySplitRing18.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing18.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak14.ip";
connectAttr "polySplitRing18.out" "polySplitRing19.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing19.mp";
connectAttr "polySplitRing19.out" "polySplitRing20.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing20.mp";
connectAttr "polySplitRing20.out" "polySplitRing21.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing21.mp";
connectAttr "layerManager.dli[3]" "Leaf.id";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "Strawberry_Reference.msg" ":defaultShaderList1.s" -na;
connectAttr "Strawberry_Material.msg" ":defaultShaderList1.s" -na;
connectAttr "Leaf_Material.msg" ":defaultShaderList1.s" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Strawberry.ma
