//Maya ASCII 2023 scene
//Name: rubikCube.ma
//Last modified: Sun, Oct 15, 2023 02:35:32 PM
//Codeset: 1252
requires maya "2023";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.1.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19045)";
fileInfo "UUID" "43C252A4-46D1-AF1B-B761-52A860E3D616";
createNode transform -s -n "persp";
	rename -uid "A4ED7F1D-4ED4-9F5B-FD88-F1B47FF33999";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.833167471872823 6.9580851279242859 10.648851097068786 ;
	setAttr ".r" -type "double3" -21.938352729602478 40.999999999999915 -1.0535690697488859e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "98E7D066-423E-313E-86AD-F88F33B6EB60";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 15.429855087973081;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "53AD4AFE-4DF8-9136-D62E-65A204063BA2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "1578510A-4BBD-714C-819E-04A16D47FF35";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "DDCC5720-4FF3-F7F9-3406-C68979DE7478";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "6082AE87-44E0-A66D-CDCD-31AFDAE6DECA";
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
	rename -uid "FA442E55-4ECB-916D-C9C2-98BFC82F4660";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "A322209B-44AC-B692-4341-A085D4D71204";
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
createNode transform -n "RubikCubeGrp";
	rename -uid "6A413C1D-474D-768C-F472-1B8D259A81B0";
	setAttr ".rp" -type "double3" 0 1.6 0 ;
	setAttr ".sp" -type "double3" 0 1.6 0 ;
createNode transform -n "core" -p "RubikCubeGrp";
	rename -uid "C2A6BEF9-45F7-51A6-E206-2084DC7DF93C";
	setAttr ".t" -type "double3" 0 1.6 0 ;
createNode mesh -n "corner_blue_orange_yellowShape" -p "core";
	rename -uid "476CA31D-413F-F478-A2E3-ED9B2608A5EF";
	setAttr -k off ".v";
	setAttr -s 27 ".iog";
	setAttr -s 4 ".iog[1].og";
	setAttr -s 4 ".iog[2].og";
	setAttr -s 4 ".iog[3].og";
	setAttr -s 4 ".iog[4].og";
	setAttr -s 4 ".iog[5].og";
	setAttr -s 4 ".iog[6].og";
	setAttr -s 6 ".iog[7].og";
	setAttr -s 6 ".iog[8].og";
	setAttr -s 6 ".iog[9].og";
	setAttr -s 6 ".iog[10].og";
	setAttr -s 6 ".iog[11].og";
	setAttr -s 6 ".iog[12].og";
	setAttr -s 6 ".iog[13].og";
	setAttr -s 6 ".iog[14].og";
	setAttr -s 6 ".iog[15].og";
	setAttr -s 6 ".iog[16].og";
	setAttr -s 6 ".iog[17].og";
	setAttr -s 6 ".iog[18].og";
	setAttr -s 8 ".iog[19].og";
	setAttr -s 8 ".iog[20].og";
	setAttr -s 8 ".iog[21].og";
	setAttr -s 8 ".iog[22].og";
	setAttr -s 8 ".iog[23].og";
	setAttr -s 8 ".iog[24].og";
	setAttr -s 8 ".iog[25].og";
	setAttr -s 8 ".iog[26].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 26 ".ciog";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "center_blue" -p "RubikCubeGrp";
	rename -uid "CE57DF55-4D74-0B32-6C7D-F7A83704F396";
	setAttr ".t" -type "double3" 0 1.6 -1.1 ;
	setAttr ".rp" -type "double3" 0 0 1.1 ;
	setAttr ".sp" -type "double3" 0 0 1.1 ;
createNode transform -n "center_green" -p "RubikCubeGrp";
	rename -uid "0B973DD0-48FD-9FD7-FA1E-AA965F17912B";
	setAttr ".t" -type "double3" 0 1.6 1.1 ;
	setAttr ".rp" -type "double3" 0 0 -1.1 ;
	setAttr ".sp" -type "double3" 0 0 -1.1 ;
createNode transform -n "center_orange" -p "RubikCubeGrp";
	rename -uid "70E494E5-4EFF-6CD5-A371-9CBFBD893350";
	setAttr ".t" -type "double3" -1.1 1.6 0 ;
	setAttr ".rp" -type "double3" 1.1 0 0 ;
	setAttr ".sp" -type "double3" 1.1 0 0 ;
createNode transform -n "center_red" -p "RubikCubeGrp";
	rename -uid "BDCE836F-4602-CE9F-19B8-2F9430D257BD";
	setAttr ".t" -type "double3" 1.1 1.6 0 ;
	setAttr ".rp" -type "double3" -1.1 0 0 ;
	setAttr ".sp" -type "double3" -1.1 0 0 ;
createNode transform -n "center_white" -p "RubikCubeGrp";
	rename -uid "4009E98C-4C56-BF3A-1398-1983E7CF1447";
	setAttr ".t" -type "double3" 0 2.7 0 ;
	setAttr ".rp" -type "double3" 0 -1.1 0 ;
	setAttr ".sp" -type "double3" 0 -1.1 0 ;
createNode transform -n "center_yellow" -p "RubikCubeGrp";
	rename -uid "B3CAEB76-4BD0-500E-84F8-C28BCCEC2A78";
	setAttr ".t" -type "double3" 0 0.5 0 ;
	setAttr ".rp" -type "double3" 0 1.1 0 ;
	setAttr ".sp" -type "double3" 0 1.1 0 ;
createNode transform -n "side_blue_orange" -p "RubikCubeGrp";
	rename -uid "B41861ED-480E-433D-0412-8CA5BAA1A67D";
	setAttr ".t" -type "double3" -1.1 1.6 -1.1 ;
	setAttr ".rp" -type "double3" 1.1 0 1.1 ;
	setAttr ".sp" -type "double3" 1.1 0 1.1 ;
createNode transform -n "side_blue_red" -p "RubikCubeGrp";
	rename -uid "EBA1D5F9-4E34-FF13-A15F-38A6E1EC64C1";
	setAttr ".t" -type "double3" 1.1 1.6 -1.1 ;
	setAttr ".rp" -type "double3" -1.1 0 1.1 ;
	setAttr ".sp" -type "double3" -1.1 0 1.1 ;
createNode transform -n "side_blue_white" -p "RubikCubeGrp";
	rename -uid "B33DD5AC-4FE9-5F9B-3291-1F9BCCF8D970";
	setAttr ".t" -type "double3" 0 2.7 -1.1 ;
	setAttr ".rp" -type "double3" 0 -1.1 1.1 ;
	setAttr ".sp" -type "double3" 0 -1.1 1.1 ;
createNode transform -n "side_blue_yellow" -p "RubikCubeGrp";
	rename -uid "225BEB65-407F-52F6-DFED-34AC935363AA";
	setAttr ".t" -type "double3" 0 0.5 -1.1 ;
	setAttr ".rp" -type "double3" 0 1.1 1.1 ;
	setAttr ".sp" -type "double3" 0 1.1 1.1 ;
createNode transform -n "side_green_orange" -p "RubikCubeGrp";
	rename -uid "D0ABB7DF-423C-74ED-2F7B-14BF3F31026B";
	setAttr ".t" -type "double3" -1.1 1.6 1.1 ;
	setAttr ".rp" -type "double3" 1.1 0 -1.1 ;
	setAttr ".sp" -type "double3" 1.1 0 -1.1 ;
createNode transform -n "side_green_red" -p "RubikCubeGrp";
	rename -uid "1006A784-4FFD-494B-BC57-4F916A137C20";
	setAttr ".t" -type "double3" 1.1 1.6 1.1 ;
	setAttr ".rp" -type "double3" -1.1 0 -1.1 ;
	setAttr ".sp" -type "double3" -1.1 0 -1.1 ;
createNode transform -n "side_green_white" -p "RubikCubeGrp";
	rename -uid "616ED5A1-45B5-715B-D8CA-7685F8381A9F";
	setAttr ".t" -type "double3" 0 2.7 1.1 ;
	setAttr ".rp" -type "double3" 0 -1.1 -1.1 ;
	setAttr ".sp" -type "double3" 0 -1.1 -1.1 ;
createNode transform -n "side_green_yellow" -p "RubikCubeGrp";
	rename -uid "71260E46-4F58-5CE5-EBC8-888AB3395D6D";
	setAttr ".t" -type "double3" 0 0.5 1.1 ;
	setAttr ".rp" -type "double3" 0 1.1 -1.1 ;
	setAttr ".sp" -type "double3" 0 1.1 -1.1 ;
createNode transform -n "side_orange_white" -p "RubikCubeGrp";
	rename -uid "25F73CCC-4991-80EA-4036-F6AAFF7E790F";
	setAttr ".t" -type "double3" -1.1 2.7 0 ;
	setAttr ".rp" -type "double3" 1.1 -1.1 0 ;
	setAttr ".sp" -type "double3" 1.1 -1.1 0 ;
createNode transform -n "side_orange_yellow" -p "RubikCubeGrp";
	rename -uid "8EC2A532-4A80-E4E4-5600-EC88D90B946D";
	setAttr ".t" -type "double3" -1.1 0.5 0 ;
	setAttr ".rp" -type "double3" 1.1 1.1 0 ;
	setAttr ".sp" -type "double3" 1.1 1.1 0 ;
createNode transform -n "side_red_white" -p "RubikCubeGrp";
	rename -uid "041DB70F-4EA9-EBD1-C329-DD833EA8750D";
	setAttr ".t" -type "double3" 1.1 2.7 0 ;
	setAttr ".rp" -type "double3" -1.1 -1.1 0 ;
	setAttr ".sp" -type "double3" -1.1 -1.1 0 ;
createNode transform -n "side_red_yellow" -p "RubikCubeGrp";
	rename -uid "36CCAAFA-4B26-5C3B-7255-66AC3D265C65";
	setAttr ".t" -type "double3" 1.1 0.5 0 ;
	setAttr ".rp" -type "double3" -1.1 1.1 0 ;
	setAttr ".sp" -type "double3" -1.1 1.1 0 ;
createNode transform -n "corner_blue_orange_white" -p "RubikCubeGrp";
	rename -uid "5088D318-4967-E568-26F4-B9815EA6935E";
	setAttr ".t" -type "double3" -1.1 2.7 -1.1 ;
	setAttr ".rp" -type "double3" 1.1 -1.1 1.1 ;
	setAttr ".sp" -type "double3" 1.1 -1.1 1.1 ;
createNode transform -n "corner_blue_orange_yellow" -p "RubikCubeGrp";
	rename -uid "FC8C01FC-4271-2C81-293D-A9AD8FD285F0";
	setAttr ".t" -type "double3" -1.1 0.5 -1.1 ;
	setAttr ".rp" -type "double3" 1.1 1.1 1.1 ;
	setAttr ".sp" -type "double3" 1.1 1.1 1.1 ;
createNode transform -n "corner_blue_red_white" -p "RubikCubeGrp";
	rename -uid "5DD11208-4376-99F5-B365-15B82313A6FE";
	setAttr ".t" -type "double3" 1.1 2.7 -1.1 ;
	setAttr ".rp" -type "double3" -1.1 -1.1 1.1 ;
	setAttr ".sp" -type "double3" -1.1 -1.1 1.1 ;
createNode transform -n "corner_blue_red_yellow" -p "RubikCubeGrp";
	rename -uid "D8FACCE7-4486-98EC-1B8A-5F9C59D74173";
	setAttr ".t" -type "double3" 1.1 0.5 -1.1 ;
	setAttr ".rp" -type "double3" -1.1 1.1 1.1 ;
	setAttr ".sp" -type "double3" -1.1 1.1 1.1 ;
createNode transform -n "corner_green_orange_white" -p "RubikCubeGrp";
	rename -uid "0126D840-4BE0-6BE2-4A0B-79A0BDDE0F26";
	setAttr ".t" -type "double3" -1.1 2.7 1.1 ;
	setAttr ".rp" -type "double3" 1.1 -1.1 -1.1 ;
	setAttr ".sp" -type "double3" 1.1 -1.1 -1.1 ;
createNode transform -n "corner_green_orange_yellow" -p "RubikCubeGrp";
	rename -uid "C67CC211-4D4C-0D99-9AA9-D69E0B8E78B9";
	setAttr ".t" -type "double3" -1.1 0.5 1.1 ;
	setAttr ".rp" -type "double3" 1.1 1.1 -1.1 ;
	setAttr ".sp" -type "double3" 1.1 1.1 -1.1 ;
createNode transform -n "corner_green_red_white" -p "RubikCubeGrp";
	rename -uid "D7A0E9BA-4E46-3A0F-E533-0791D8208C7B";
	setAttr ".t" -type "double3" 1.1 2.7 1.1 ;
	setAttr ".rp" -type "double3" -1.1 -1.1 -1.1 ;
	setAttr ".sp" -type "double3" -1.1 -1.1 -1.1 ;
createNode transform -n "corner_green_red_yellow" -p "RubikCubeGrp";
	rename -uid "54845905-4F44-B153-DF01-1F9F3F9E3558";
	setAttr ".t" -type "double3" 1.1 0.5 1.1 ;
	setAttr ".rp" -type "double3" -1.1 1.1 -1.1 ;
	setAttr ".sp" -type "double3" -1.1 1.1 -1.1 ;
parent -s -nc -r -add "|RubikCubeGrp|core|corner_blue_orange_yellowShape" "corner_blue_orange_yellow" ;
parent -s -nc -r -add "|RubikCubeGrp|core|corner_blue_orange_yellowShape" "side_orange_yellow" ;
parent -s -nc -r -add "|RubikCubeGrp|core|corner_blue_orange_yellowShape" "corner_green_orange_yellow" ;
parent -s -nc -r -add "|RubikCubeGrp|core|corner_blue_orange_yellowShape" "side_blue_orange" ;
parent -s -nc -r -add "|RubikCubeGrp|core|corner_blue_orange_yellowShape" "center_orange" ;
parent -s -nc -r -add "|RubikCubeGrp|core|corner_blue_orange_yellowShape" "side_green_orange" ;
parent -s -nc -r -add "|RubikCubeGrp|core|corner_blue_orange_yellowShape" "corner_blue_orange_white" ;
parent -s -nc -r -add "|RubikCubeGrp|core|corner_blue_orange_yellowShape" "side_orange_white" ;
parent -s -nc -r -add "|RubikCubeGrp|core|corner_blue_orange_yellowShape" "corner_green_orange_white" ;
parent -s -nc -r -add "|RubikCubeGrp|core|corner_blue_orange_yellowShape" "side_blue_yellow" ;
parent -s -nc -r -add "|RubikCubeGrp|core|corner_blue_orange_yellowShape" "center_yellow" ;
parent -s -nc -r -add "|RubikCubeGrp|core|corner_blue_orange_yellowShape" "side_green_yellow" ;
parent -s -nc -r -add "|RubikCubeGrp|core|corner_blue_orange_yellowShape" "center_blue" ;
parent -s -nc -r -add "|RubikCubeGrp|core|corner_blue_orange_yellowShape" "center_green" ;
parent -s -nc -r -add "|RubikCubeGrp|core|corner_blue_orange_yellowShape" "side_blue_white" ;
parent -s -nc -r -add "|RubikCubeGrp|core|corner_blue_orange_yellowShape" "center_white" ;
parent -s -nc -r -add "|RubikCubeGrp|core|corner_blue_orange_yellowShape" "side_green_white" ;
parent -s -nc -r -add "|RubikCubeGrp|core|corner_blue_orange_yellowShape" "corner_blue_red_yellow" ;
parent -s -nc -r -add "|RubikCubeGrp|core|corner_blue_orange_yellowShape" "side_red_yellow" ;
parent -s -nc -r -add "|RubikCubeGrp|core|corner_blue_orange_yellowShape" "corner_green_red_yellow" ;
parent -s -nc -r -add "|RubikCubeGrp|core|corner_blue_orange_yellowShape" "side_blue_red" ;
parent -s -nc -r -add "|RubikCubeGrp|core|corner_blue_orange_yellowShape" "center_red" ;
parent -s -nc -r -add "|RubikCubeGrp|core|corner_blue_orange_yellowShape" "side_green_red" ;
parent -s -nc -r -add "|RubikCubeGrp|core|corner_blue_orange_yellowShape" "corner_blue_red_white" ;
parent -s -nc -r -add "|RubikCubeGrp|core|corner_blue_orange_yellowShape" "side_red_white" ;
parent -s -nc -r -add "|RubikCubeGrp|core|corner_blue_orange_yellowShape" "corner_green_red_white" ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "4D0A8893-45B3-FFB6-864B-A9A0E3F718CC";
	setAttr -s 9 ".lnk";
	setAttr -s 9 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "4E42A4DC-433D-3043-BF66-83A688E50729";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "C0731C5A-4F94-8C76-4AA2-F08CE2D3C4AC";
createNode displayLayerManager -n "layerManager";
	rename -uid "50C3A2B4-4281-F61D-95BB-199EA21D687A";
createNode displayLayer -n "defaultLayer";
	rename -uid "F0FEC487-41BC-FCC4-929F-7BA8C44ACFF8";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "D0A8AA09-4159-6448-12C4-EB82AA75048C";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "412ED414-41E9-7DBB-89F3-88907DF49517";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "53670275-4006-5958-9863-F7AD01483808";
	setAttr ".version" -type "string" "5.2.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "F292747A-438C-F3FD-199C-909E7735E50F";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "27B60E59-4166-2C7D-BA5A-11967F611C13";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "1C6FFA20-442C-48FE-33A7-4F8AA71B91BE";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode polyCube -n "polyCube1";
	rename -uid "4982DD28-4F90-F9B2-8BB2-339D2538A6FC";
createNode polyBevel3 -n "polyBevel1";
	rename -uid "5E86D45D-4D83-16B9-96A1-CB8FB2F3CD4C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.2;
	setAttr ".sg" 10;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode blinn -n "rubikBlack";
	rename -uid "53E33302-45D1-009C-E5EB-4DB3A365731F";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode blinn -n "rubikBlue";
	rename -uid "5C3548E1-470E-6B68-AC3D-60B332E92CC7";
	setAttr ".c" -type "float3" 0 0 1 ;
createNode blinn -n "rubikGreen";
	rename -uid "E0E4490A-47C9-79A6-980C-01AF07A2192D";
	setAttr ".c" -type "float3" 0 1 0 ;
createNode blinn -n "rubikOrange";
	rename -uid "418B694D-4C04-576B-B015-8F98B2FF46FB";
	setAttr ".c" -type "float3" 1 0.2683 0.0392 ;
createNode blinn -n "rubikRed";
	rename -uid "26FA321D-4EEE-FF03-1DAD-AA9154F18273";
	setAttr ".c" -type "float3" 1 0 0 ;
createNode blinn -n "rubikYellow";
	rename -uid "B5EBB9BB-4CFD-3F1D-2E5D-75A392C8A15A";
	setAttr ".c" -type "float3" 1 1 0 ;
createNode blinn -n "rubikWhite";
	rename -uid "55180F3F-4C63-55BB-BB4E-72BF36E0FEE9";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "rubikBlackSG";
	rename -uid "04EB2CFF-4B8B-2E1B-0490-5F950AC3B5C7";
	setAttr ".ihi" 0;
	setAttr -s 53 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 52 ".gn";
createNode materialInfo -n "materialInfo1";
	rename -uid "978C292B-4050-CDCB-5FA4-AA8AA34BE60C";
createNode shadingEngine -n "rubikBlueSG";
	rename -uid "525AD0C8-44ED-E993-3123-FBA1A5D4BB3F";
	setAttr ".ihi" 0;
	setAttr -s 9 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 9 ".gn";
createNode materialInfo -n "materialInfo2";
	rename -uid "FF8ECC25-4D9F-2335-4848-769C202FE6B2";
createNode groupId -n "groupId1";
	rename -uid "A5724521-44AA-23D5-C16B-2D98972E6BEC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "5AD49747-4A20-8D77-5AFE-EEB0A5FBC878";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:121]" "f[123:725]";
	setAttr ".irc" -type "componentList" 1 "f[122]";
createNode groupId -n "groupId2";
	rename -uid "1899406B-45EC-51D5-8315-55B3199243EE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "E897DB64-47BB-F931-D72D-409E91D71A79";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "D9E02C81-40EC-4394-3384-CAB20CF8D3FF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[0:120]" "f[123:124]" "f[126:725]";
	setAttr ".irc" -type "componentList" 2 "f[121:122]" "f[125]";
createNode groupId -n "groupId4";
	rename -uid "E4E92E05-48EC-436A-F53B-1EB75B228D40";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "102C98F2-41DA-F7A4-262E-3092F5B255D0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "8A417C48-4C1F-8D4B-883C-F2B3DCCB0629";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[0:121]" "f[124]" "f[126:725]";
	setAttr ".irc" -type "componentList" 2 "f[122:123]" "f[125]";
createNode groupId -n "groupId6";
	rename -uid "8F186DAC-4D5D-ADAF-60C0-BF969AAD812C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "33C5E717-4D11-77BC-9E39-D0874FF4C6E0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "1BC769B1-43BF-BC05-A1A7-C1B4A056E5B0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[0:120]" "f[123]" "f[125:725]";
	setAttr ".irc" -type "componentList" 2 "f[121:122]" "f[124]";
createNode groupId -n "groupId8";
	rename -uid "60B17DEA-4D68-C96F-ED8B-F995143B1DEB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	rename -uid "3789FEBD-4A0F-2679-529B-01B75E852709";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "844F9B26-42A8-957D-C456-07927F89E737";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:121]" "f[125:725]";
	setAttr ".irc" -type "componentList" 1 "f[122:124]";
createNode groupId -n "groupId10";
	rename -uid "800E9974-456D-D48D-3085-968BE8B0C7C8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	rename -uid "2029DAA3-4879-EB6A-C669-839F3E2078A0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "1018FAD3-4732-29D7-0DBD-E6A856A484D4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[0:121]" "f[123:124]" "f[126:725]";
	setAttr ".irc" -type "componentList" 2 "f[122]" "f[125]";
createNode groupId -n "groupId12";
	rename -uid "B31A30B0-4CFD-8F31-A5F5-5398D8F0CFCC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	rename -uid "7B59E92C-4E6C-056B-22EA-0EB6E32E7937";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "2F732850-410D-AB1D-13D7-F88F8713EF9E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[0:121]" "f[123]" "f[125:725]";
	setAttr ".irc" -type "componentList" 2 "f[122]" "f[124]";
createNode groupId -n "groupId14";
	rename -uid "B0143FA9-420D-D96C-6F54-2DBE7C594D44";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	rename -uid "AD9D11E7-4500-6EA9-04CB-8EB84DCBD37B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "B5E85D04-4BAD-38B1-2D37-DF8255B0EC70";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:120]" "f[123:725]";
	setAttr ".irc" -type "componentList" 1 "f[121:122]";
createNode groupId -n "groupId16";
	rename -uid "77E133C8-46A0-9D7F-337A-57AA293AD390";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	rename -uid "D23C5453-4721-A6A6-0707-689683720B27";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "7E90DDFA-4EA4-A8FF-E03C-DF8A6B135235";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:121]" "f[124:725]";
	setAttr ".irc" -type "componentList" 1 "f[122:123]";
createNode groupId -n "groupId18";
	rename -uid "B4B992E0-4ACC-ACB2-796A-B1BDBAA1DA5B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	rename -uid "6F960D0C-4212-92A8-AC87-54AE90697E74";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "39F81DBC-4476-951A-783D-D7AA6E091722";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[122]";
createNode groupId -n "groupId20";
	rename -uid "4E33A249-4FB9-0BE4-47AD-3F8DE07A6490";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "26654BD1-4A2D-CCAF-0BB3-B9A2696232A3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[122]";
createNode groupId -n "groupId21";
	rename -uid "E2DAD5B2-4239-49DB-4E7C-4FA2ED8559A2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "9718D598-4427-05EC-A4D2-5197DB536697";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[122]";
createNode groupId -n "groupId22";
	rename -uid "45A4B4F9-4E5E-700C-F2B4-75A594901A13";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	rename -uid "63274015-4D79-12CA-029A-BCBD0C0366A6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[122]";
createNode groupId -n "groupId23";
	rename -uid "9D6D3D79-49FA-7A66-DEA7-0EA19FDA0945";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "6A918B49-41AB-AC8A-6501-5B96204A0177";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[122]";
createNode groupId -n "groupId24";
	rename -uid "B1105550-47AD-8C2F-B22B-B8A4ED520C27";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	rename -uid "A05B6C7D-4668-4DF6-4DAC-06BAA7AF6BF7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[122]";
createNode groupId -n "groupId25";
	rename -uid "928EF037-4861-AFBA-27D4-6B830D8F8717";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	rename -uid "CFFDFBEF-4169-4EBA-A7B0-6A81F9064E10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[122]";
createNode groupId -n "groupId26";
	rename -uid "07E6F940-474F-5FB9-7AFA-209DC0C0CB6B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	rename -uid "82A460BC-4BA6-9702-4D57-BFAFB6359D07";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[122]";
createNode groupId -n "groupId27";
	rename -uid "3D8D82B3-4AEE-04E3-4EA0-3FABF2AD314E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	rename -uid "2538D1CA-427F-D392-B76F-C4BF7B067041";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[122]";
createNode shadingEngine -n "rubikGreenSG";
	rename -uid "3E216217-42F5-AD4A-0BE3-05A4B53AA925";
	setAttr ".ihi" 0;
	setAttr -s 9 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 9 ".gn";
createNode materialInfo -n "materialInfo3";
	rename -uid "9D6D036A-48B5-E122-C67C-F590427C3B76";
createNode groupId -n "groupId28";
	rename -uid "7E60BEE4-49A5-C182-DE1B-069E8493262D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts19";
	rename -uid "2142652C-4000-CD2D-7FEB-81B434A5A882";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:119]" "f[121:725]";
	setAttr ".irc" -type "componentList" 1 "f[120]";
createNode groupId -n "groupId29";
	rename -uid "9906BB04-4086-A00F-A40D-0C88EFCC031B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId30";
	rename -uid "CA124C9D-402C-1D06-0666-FAB37883C890";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	rename -uid "8DA0C0FE-4D32-675C-08CE-E183136C1ED8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[0:119]" "f[122:124]" "f[126:725]";
	setAttr ".irc" -type "componentList" 2 "f[120:121]" "f[125]";
createNode groupId -n "groupId31";
	rename -uid "DFD63440-4E15-B650-F9AD-118323AAAB3E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId32";
	rename -uid "BBBD7847-4F12-43C3-5B6F-31B308304282";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts21";
	rename -uid "0618F390-48E2-4418-5F80-269F3F76F33A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "f[0:119]" "f[121:122]" "f[124]" "f[126:725]";
	setAttr ".irc" -type "componentList" 3 "f[120]" "f[123]" "f[125]";
createNode groupId -n "groupId33";
	rename -uid "9D006222-483A-0087-1485-56AD68228AE4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId34";
	rename -uid "769EE0DD-4951-2B76-5B5B-A195428D3CBD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	rename -uid "4DCDC1B0-4D21-73AF-CCAF-B680C4B4D16A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[0:119]" "f[122:123]" "f[125:725]";
	setAttr ".irc" -type "componentList" 2 "f[120:121]" "f[124]";
createNode groupId -n "groupId35";
	rename -uid "2DB16489-4EF2-251B-6D7F-B296D63F2B16";
	setAttr ".ihi" 0;
createNode groupId -n "groupId36";
	rename -uid "AC3780C8-4060-657D-2D83-CF82CDAEA420";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts23";
	rename -uid "C6E04ACE-4676-EA3D-F376-3AB24AA599BB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[0:119]" "f[121:122]" "f[125:725]";
	setAttr ".irc" -type "componentList" 2 "f[120]" "f[123:124]";
createNode groupId -n "groupId37";
	rename -uid "8EBAF730-43AD-0DCB-A162-A59E89649592";
	setAttr ".ihi" 0;
createNode groupId -n "groupId38";
	rename -uid "51319B9F-4955-DB50-091E-2EB977C662E4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	rename -uid "0EA323D1-4A71-B5BB-7C66-399FEF5CE29B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[0:119]" "f[121:124]" "f[126:725]";
	setAttr ".irc" -type "componentList" 2 "f[120]" "f[125]";
createNode groupId -n "groupId39";
	rename -uid "1684DD57-42E0-AD70-DEA7-CA88A23DB4C5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId40";
	rename -uid "8203BD27-4AD0-43FE-4252-9BA2095853ED";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts25";
	rename -uid "6EF05EE8-4268-531E-B901-C89E014445E5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[0:119]" "f[121:123]" "f[125:725]";
	setAttr ".irc" -type "componentList" 2 "f[120]" "f[124]";
createNode groupId -n "groupId41";
	rename -uid "2725E1E5-432A-F0EA-EF79-31B5AA57334F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId42";
	rename -uid "08090523-4640-CEF5-DA04-66A86E255D00";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	rename -uid "3BE71064-4571-1C98-686E-868CDC6DCC93";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:119]" "f[122:725]";
	setAttr ".irc" -type "componentList" 1 "f[120:121]";
createNode groupId -n "groupId43";
	rename -uid "2BBE962E-4CA1-D6BD-A192-989A0BA6968E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId44";
	rename -uid "860161B7-4ACD-6392-9353-F0950EF664DE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts27";
	rename -uid "C4A4E714-4C26-7FD2-C01B-CEA85100376D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[0:119]" "f[121:122]" "f[124:725]";
	setAttr ".irc" -type "componentList" 2 "f[120]" "f[123]";
createNode groupId -n "groupId45";
	rename -uid "982609C1-47AE-FE0B-DA5D-5FB8E5B8E770";
	setAttr ".ihi" 0;
createNode groupId -n "groupId46";
	rename -uid "8DF5384E-4CDC-4859-ABB4-22985D6D87F0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	rename -uid "BCAEEF58-431D-0163-8B80-F09C74E50857";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[120]";
createNode groupId -n "groupId47";
	rename -uid "0394829D-466C-2899-528A-C1AC04C56ED4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts29";
	rename -uid "DFECA874-4444-ABD8-B552-4987A6D49B45";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[120]";
createNode groupId -n "groupId48";
	rename -uid "F16DADBA-4829-FDD1-5650-5AAA2FCCE90E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	rename -uid "C285C749-4E7E-9DDF-904D-2CBA09711A74";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[120]";
createNode groupId -n "groupId49";
	rename -uid "8D746483-416D-2589-551A-8C875C4502E2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts31";
	rename -uid "7D82299E-4BF4-2815-6C60-D0A03AEFFA50";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[120]";
createNode groupId -n "groupId50";
	rename -uid "165829B4-4171-7EAD-7637-15A91FE06013";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	rename -uid "A4765012-4D29-0002-DACC-F7BFB314A967";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[120]";
createNode groupId -n "groupId51";
	rename -uid "44C77B52-4E9F-D442-6C97-67B9F25AB9A3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts33";
	rename -uid "B2512F07-4284-4CB9-0B59-C880F3EC4368";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[120]";
createNode groupId -n "groupId52";
	rename -uid "7CCEEDC6-436A-8946-A26D-E490563A6539";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts34";
	rename -uid "032AC954-4F68-E884-25BD-069B9E18B9A5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[120]";
createNode groupId -n "groupId53";
	rename -uid "769136F7-47F0-4EA1-5740-D9AD1B9EE3D0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts35";
	rename -uid "068E5E78-436D-DE65-AAF3-138CB892B857";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[120]";
createNode groupId -n "groupId54";
	rename -uid "27FEB484-48A7-F230-CAE0-5E8708973A4E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts36";
	rename -uid "2D29055D-4964-B02A-21F1-2C85194CADEF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[120]";
createNode shadingEngine -n "rubikOrangeSG";
	rename -uid "863D9010-4B09-971C-211E-52A7E5CE9E31";
	setAttr ".ihi" 0;
	setAttr -s 9 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 9 ".gn";
createNode materialInfo -n "materialInfo4";
	rename -uid "8D91253B-4D91-65E6-C533-0899EA28BE52";
createNode groupId -n "groupId55";
	rename -uid "63B6829C-42B3-1552-FEF1-3ABBCC8919BC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts37";
	rename -uid "27141D41-49AF-387F-0699-C4B75CC4C12A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:124]" "f[126:725]";
	setAttr ".irc" -type "componentList" 1 "f[125]";
createNode groupId -n "groupId56";
	rename -uid "FB0824AD-4C7B-8A02-07A6-CBAB2D6AE059";
	setAttr ".ihi" 0;
createNode groupId -n "groupId57";
	rename -uid "E3525DF4-420B-B9C6-F2C5-51A7E7C49A78";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	rename -uid "42EF5991-43D5-E90D-5393-8DA184E17878";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[0:120]" "f[122:124]" "f[126:725]";
	setAttr ".irc" -type "componentList" 2 "f[121]" "f[125]";
createNode groupId -n "groupId58";
	rename -uid "0923EDE1-4C24-B8EF-C95E-7A9FB83A3C16";
	setAttr ".ihi" 0;
createNode groupId -n "groupId59";
	rename -uid "66C564C8-47B3-4B17-60A8-96B0622B4601";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts39";
	rename -uid "8ECC5E06-41A1-0211-3C21-52A6C8749BF5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[0:122]" "f[124]" "f[126:725]";
	setAttr ".irc" -type "componentList" 2 "f[123]" "f[125]";
createNode groupId -n "groupId60";
	rename -uid "97CF9FFD-4190-2BAF-EF1E-00ABDB8A734E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId61";
	rename -uid "53DC8C9A-4854-9F25-D2C8-7B988A24C1A1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts40";
	rename -uid "E1A978ED-4ABB-6AEE-25C7-CB8BB2327E85";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[125]";
createNode groupId -n "groupId62";
	rename -uid "8C544BCE-4AF8-1963-1E15-95A37696DC0A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts41";
	rename -uid "A248CC0E-4F02-5613-8739-26BF3C494AC3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[125]";
createNode groupId -n "groupId63";
	rename -uid "CBDD7648-4CA2-10A8-3CED-D983D9A3F6C1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts42";
	rename -uid "3C250303-4C48-56CF-3C99-C39E97C89B26";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[125]";
createNode groupId -n "groupId64";
	rename -uid "C3FBC945-4285-B647-BAA5-9D90B6FC4910";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts43";
	rename -uid "CAD5FDAC-4E49-4793-8F95-9D9F8258E129";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[125]";
createNode groupId -n "groupId65";
	rename -uid "1C45308C-4FB8-F96F-E2F1-A0BB9BCCC159";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts44";
	rename -uid "97ADEE60-4310-208B-EC5A-638FE3204FD7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[125]";
createNode groupId -n "groupId66";
	rename -uid "4441491A-4C00-9902-7729-D6819F0326A1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts45";
	rename -uid "829A27D2-4D1C-C456-44CE-6491D433FA1C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[125]";
createNode groupId -n "groupId67";
	rename -uid "D560C935-4E58-FA55-BB82-38A0214B2D83";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts46";
	rename -uid "387EC71E-49D4-FE2E-105B-EC9689BB246A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[125]";
createNode groupId -n "groupId68";
	rename -uid "B129C15E-4BB1-ED86-1AAD-2CB6F43E9C39";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts47";
	rename -uid "3570BFC3-42D1-AC83-F392-D5A098B8D871";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[125]";
createNode groupId -n "groupId69";
	rename -uid "EC01B9E0-498E-1441-2081-40B38DE177C9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts48";
	rename -uid "B845AB1D-43FE-835E-5C73-6DADDDDEB7BD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[125]";
createNode shadingEngine -n "rubikRedSG";
	rename -uid "4C238F60-42E7-5E8D-926B-52AA6577776C";
	setAttr ".ihi" 0;
	setAttr -s 9 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 9 ".gn";
createNode materialInfo -n "materialInfo5";
	rename -uid "5856756D-4C95-A790-FC6D-82A9BEEE2C70";
createNode groupId -n "groupId70";
	rename -uid "75B3402F-4D5A-808E-8724-219C7E3F7CE7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts49";
	rename -uid "9C6517C7-45A1-27E3-EAEF-9BAF5AF73B57";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:123]" "f[125:725]";
	setAttr ".irc" -type "componentList" 1 "f[124]";
createNode groupId -n "groupId71";
	rename -uid "0EEF2BBF-42A6-3DAF-B04B-AC9BEF2409C0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId72";
	rename -uid "9818F45B-4EE8-3D72-71AE-C2813AF77C9C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts50";
	rename -uid "67944D1D-465D-0331-97AA-C3BEA41DA0EA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[0:120]" "f[122:123]" "f[125:725]";
	setAttr ".irc" -type "componentList" 2 "f[121]" "f[124]";
createNode groupId -n "groupId73";
	rename -uid "028D1C74-4EF7-7E7B-D2D7-2A88383F6C7D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId74";
	rename -uid "CD1D129D-4DF1-8A3C-575E-14B4F55D7A74";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts51";
	rename -uid "86A816FE-49FA-444E-675D-E8B4AE84928F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:122]" "f[125:725]";
	setAttr ".irc" -type "componentList" 1 "f[123:124]";
createNode groupId -n "groupId75";
	rename -uid "3926BD58-4E41-C1D3-BEF0-239A6A49A1CD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId76";
	rename -uid "CB526BDE-4DF0-B64C-6D54-56BFA5A87344";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts52";
	rename -uid "6E76B509-42BE-C5CC-90E7-FCA488C2EB3F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[124]";
createNode groupId -n "groupId77";
	rename -uid "C23BEA10-48D1-ADFD-659B-BDB56965A344";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts53";
	rename -uid "D66256F2-49C1-F06A-18FE-71A1B7D6A157";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[124]";
createNode groupId -n "groupId78";
	rename -uid "078607B7-4B30-8B27-0D58-0797554E043B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts54";
	rename -uid "E666B206-4EAE-D916-3633-58B2B274952E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[124]";
createNode groupId -n "groupId79";
	rename -uid "0FD0168E-4030-58A9-811A-E983AF1D7A2D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts55";
	rename -uid "DE4C91C7-4516-469F-CDD6-D29EDC22C59E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[124]";
createNode groupId -n "groupId80";
	rename -uid "8F17ED49-4E23-AC43-29BB-4285AD182E52";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts56";
	rename -uid "CF7E7307-4F0E-778D-44BD-89B973691277";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[124]";
createNode groupId -n "groupId81";
	rename -uid "A21EE40B-4CD3-18A7-5ED7-9CB4A19AB0D1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts57";
	rename -uid "FF555D8F-4A63-5FAE-63F2-F8836AEA3AC2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[124]";
createNode groupId -n "groupId82";
	rename -uid "93BE346D-4C53-EE40-7D26-B399006286DE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts58";
	rename -uid "4C167F8B-4A0D-37A2-DBFE-FD894EDF0656";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[124]";
createNode groupId -n "groupId83";
	rename -uid "0E800C5E-4382-24B9-B7A9-F09C282D88D6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts59";
	rename -uid "82D681F3-4743-FE90-BE48-00B70DBCB34A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[124]";
createNode groupId -n "groupId84";
	rename -uid "1C94C05E-4518-4D3F-A474-79B50D994FBE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts60";
	rename -uid "3B15A4A8-4928-D1E2-3B12-99A1F32BA06F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[124]";
createNode shadingEngine -n "rubikYellowSG";
	rename -uid "25CE13CA-456F-93D0-F3A5-FDB9DC1C8E66";
	setAttr ".ihi" 0;
	setAttr -s 9 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 9 ".gn";
createNode materialInfo -n "materialInfo6";
	rename -uid "6A47883B-4A56-C70C-0577-2981CF844501";
createNode groupId -n "groupId85";
	rename -uid "12AD6E77-4D54-EF7F-0626-2C9E35E808ED";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts61";
	rename -uid "6555A0E6-4828-E2EC-9A3B-5C83D5FD6F1F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:122]" "f[124:725]";
	setAttr ".irc" -type "componentList" 1 "f[123]";
createNode groupId -n "groupId86";
	rename -uid "8F633614-4A23-0571-8063-F3932B9A4614";
	setAttr ".ihi" 0;
createNode groupId -n "groupId87";
	rename -uid "FED52C8A-45C4-5DC4-2D8F-949A1F6C2C41";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts62";
	rename -uid "981E9AC7-48E5-D442-5D9F-DF993EF77B58";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[123]";
createNode groupId -n "groupId88";
	rename -uid "24D72944-4EB7-15C5-94CE-BB8E4BC5DE3A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts63";
	rename -uid "DF0C0824-4AD3-7296-12B1-99A34C5DE9A6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[123]";
createNode groupId -n "groupId89";
	rename -uid "A32F3F84-4DFC-F3C8-C75F-57818363E04B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts64";
	rename -uid "7A55B9A5-48C4-BBF7-C5CC-3EADC86BEF2D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[123]";
createNode groupId -n "groupId90";
	rename -uid "9B9C85C2-403E-9FD1-C0FE-C1A9B5FB2136";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts65";
	rename -uid "E80E3CEC-43AC-A9A6-146C-419BA93D0CC3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[123]";
createNode groupId -n "groupId91";
	rename -uid "B955F216-46AE-E0F8-1614-AFBB6CD34AB8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts66";
	rename -uid "41082FF1-46BE-FE2C-C4CA-4F9133057041";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[123]";
createNode groupId -n "groupId92";
	rename -uid "85A9D130-4F37-CD43-8AF6-299836778EA2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts67";
	rename -uid "0CEB0B75-4A6B-47F7-BF7A-60B9D066B2C1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[123]";
createNode groupId -n "groupId93";
	rename -uid "EC70401E-466D-8A78-DB6A-BD80A5ABD6CA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts68";
	rename -uid "D7398380-4434-525C-F4A4-2B84B826E76B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[123]";
createNode groupId -n "groupId94";
	rename -uid "E72E7555-4D24-8801-0064-FCB6D2C918DB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts69";
	rename -uid "218F7A90-4A9D-B414-9D90-DDBFF57CC242";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[123]";
createNode groupId -n "groupId95";
	rename -uid "BD7F2CC1-44C8-E02B-B9D4-058D82580DE8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts70";
	rename -uid "9AC3DFE7-4FFC-8374-A7E2-6EA95FBBE583";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[123]";
createNode shadingEngine -n "rubikWhiteSG";
	rename -uid "1A5037C7-44EC-B057-9E1B-EEB6ED52C881";
	setAttr ".ihi" 0;
	setAttr -s 9 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 9 ".gn";
createNode materialInfo -n "materialInfo7";
	rename -uid "24D47A84-475F-B99F-5E63-909E1D119FE9";
createNode groupId -n "groupId96";
	rename -uid "D4ACF8A5-4921-0A62-A0EE-068D46863EBC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts71";
	rename -uid "AF2D6F7C-4AF0-5277-2976-3B8B6ADCDCAE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:120]" "f[122:725]";
	setAttr ".irc" -type "componentList" 1 "f[121]";
createNode groupId -n "groupId97";
	rename -uid "86F6F44E-4A3C-55ED-544E-20BD773A97FC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId98";
	rename -uid "6DA3DCF2-4846-7B37-4F6B-B4A3CCC4BE2A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts72";
	rename -uid "5957D3AA-4102-6F60-4E48-559C752763ED";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[121]";
createNode groupId -n "groupId99";
	rename -uid "BED2A3DB-4052-BB2C-2F0A-9488A7E63E65";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts73";
	rename -uid "3E565A11-4845-FEFF-A74E-F093BD533807";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[121]";
createNode groupId -n "groupId100";
	rename -uid "C296A8C6-4964-711F-617E-87A1CC4776B5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts74";
	rename -uid "A883603E-4B97-236D-C76C-A093FF8B3642";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[121]";
createNode groupId -n "groupId101";
	rename -uid "68ED1599-4CEF-4650-1ADF-699D8C5A03A1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts75";
	rename -uid "CC171D5C-49CE-74F5-7B8C-DFAB1D8CF8EF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[121]";
createNode groupId -n "groupId102";
	rename -uid "EBC84699-4854-78F3-BB0A-B1BA4A343C78";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts76";
	rename -uid "AF6282FC-4723-EB0C-B857-0FB6FC8F97CB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[121]";
createNode groupId -n "groupId103";
	rename -uid "7D4BBEAD-40FB-21CB-500A-39AFC28268A4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts77";
	rename -uid "DE5B17A3-48EC-3B57-D16B-EFBE720D75F3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[121]";
createNode groupId -n "groupId104";
	rename -uid "8F45BC45-446B-3971-BEB5-D4A7311226EF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts78";
	rename -uid "AA5972C4-420F-7EFD-AF1A-ECAB0ADC8691";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[121]";
createNode groupId -n "groupId105";
	rename -uid "0EE0DFF4-4DB2-4B92-891E-A1AEB0F534D9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts79";
	rename -uid "F74664CC-4F34-DC9A-1C1E-A887570F127E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[121]";
createNode groupId -n "groupId106";
	rename -uid "7FE81414-4811-5C5B-595D-CEAF03FA52BE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts80";
	rename -uid "A1A79DB1-4B5D-8F5A-5022-7E88412558AC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[121]";
createNode animCurveTA -n "core_rotateX";
	rename -uid "95903AF6-42A0-796F-A81F-859FB866ED70";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "core_rotateY";
	rename -uid "0EC36392-4B63-6116-CD44-DE849B4CD5BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "core_rotateZ";
	rename -uid "1B9B35CC-42AE-3BB7-C7D0-08BE541F46BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "corner_blue_orange_white_rotateX";
	rename -uid "E4DE73D6-44DB-3028-B9CA-15A199D504D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "corner_blue_orange_white_rotateY";
	rename -uid "1D3215E3-4485-F525-9A6B-57941C303A5F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "corner_blue_orange_white_rotateZ";
	rename -uid "9780ADDC-4ABE-564D-BC75-8BA1D5124E1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "corner_blue_orange_yellow_rotateX";
	rename -uid "F8D30C00-4C45-BCEC-CFE8-3BB72E4F44DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "corner_blue_orange_yellow_rotateY";
	rename -uid "DC2EC761-426B-E020-E531-C6B4AE66976F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "corner_blue_orange_yellow_rotateZ";
	rename -uid "CA848FD5-4564-D826-8CF3-32B26BCC20B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "corner_blue_red_white_rotateX";
	rename -uid "6879CA69-4967-715D-B25C-2299F43BCA3E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "corner_blue_red_white_rotateY";
	rename -uid "AEA4C195-4818-1BE7-C13C-8D85C590279A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "corner_blue_red_white_rotateZ";
	rename -uid "B0368269-415D-2933-D2D4-E9BE480B7241";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "corner_blue_red_yellow_rotateX";
	rename -uid "A3D80A94-4D0E-3CB4-7CE3-87BCF2B0E613";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "corner_blue_red_yellow_rotateY";
	rename -uid "9E6C4F83-4B04-791C-5D82-CBB0830D3A7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "corner_blue_red_yellow_rotateZ";
	rename -uid "D93AE8BC-4386-2F76-8821-E0BFC2D05EDE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "corner_green_orange_white_rotateX";
	rename -uid "FB59B7E7-42D6-6EFE-8FFD-4E83DE5D5922";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "corner_green_orange_white_rotateY";
	rename -uid "99040CA7-44E7-EE7B-A8C5-E18704B44802";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "corner_green_orange_white_rotateZ";
	rename -uid "AEFFF5D7-42BD-F64D-4421-34AC12152E40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "corner_green_orange_yellow_rotateX";
	rename -uid "F3A442BB-4174-AF25-6BA1-80AEEAB8EE57";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "corner_green_orange_yellow_rotateY";
	rename -uid "7DB5B4C7-47DC-D737-D916-03BC41B24581";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "corner_green_orange_yellow_rotateZ";
	rename -uid "D5535055-4D16-E1D7-1DB7-4394EABE7E78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "corner_green_red_white_rotateX";
	rename -uid "BC8A24CC-4FC3-D136-D4F0-68AB6FD49DA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "corner_green_red_white_rotateY";
	rename -uid "71D1F7E1-4D94-F71E-AFB8-08AE3F7FA832";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "corner_green_red_white_rotateZ";
	rename -uid "3936E2F9-455B-2CE7-EAA9-D197816B9BE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "corner_green_red_yellow_rotateX";
	rename -uid "D75DD63E-42A6-4DB7-AC27-E799837B7BFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "corner_green_red_yellow_rotateY";
	rename -uid "91859EE6-4057-D5BE-A569-DDB5A78E9F0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "corner_green_red_yellow_rotateZ";
	rename -uid "4089DFE2-48DB-0677-18EF-128FA077E419";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_blue_orange_rotateX";
	rename -uid "95644180-416C-8CEF-0DFF-67B00E74D23D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_blue_orange_rotateY";
	rename -uid "4B663390-4A09-3E4D-A5DA-C9AE5B67F4AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_blue_orange_rotateZ";
	rename -uid "1AAF1EF7-455B-D703-6E8E-F59D9D57EBBE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_blue_red_rotateX";
	rename -uid "48CBF381-4E80-3C47-61D6-8FA48AF43AB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_blue_red_rotateY";
	rename -uid "44D115EB-4825-CA9A-B82C-63AC805AD02D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_blue_red_rotateZ";
	rename -uid "6C44CD58-4B5F-F7D9-C23E-CF94A4D7E0DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_blue_white_rotateX";
	rename -uid "D86816EC-4873-AD44-40D5-AD83D365C7C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_blue_white_rotateY";
	rename -uid "C2E5B7CF-4A29-0AA6-F5DD-B0867A71F3B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_blue_white_rotateZ";
	rename -uid "A89EF72E-4A4A-FF49-9FDB-D9876EA731BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_blue_yellow_rotateX";
	rename -uid "734B8F7A-4EF3-B2FB-9536-458C99CE71AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_blue_yellow_rotateY";
	rename -uid "8B1D5BEC-43BF-4DBC-515B-D4BCE7D61DDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_blue_yellow_rotateZ";
	rename -uid "8CF68469-48BF-63F1-9248-DD80668A66FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_green_orange_rotateX";
	rename -uid "6216C114-46C9-EEA5-EA7C-45B300CBC0CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_green_orange_rotateY";
	rename -uid "50600083-4A4F-B3D0-D14E-30946731D9E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_green_orange_rotateZ";
	rename -uid "DE886D6A-4D15-F493-C796-519B2D66154E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_green_red_rotateX";
	rename -uid "0E135C24-4DAD-DDC9-185C-8FB726306880";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_green_red_rotateY";
	rename -uid "64D3F84B-46D5-614A-15AA-759689A0C579";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_green_red_rotateZ";
	rename -uid "74D0F252-4E8E-DFB5-D6A4-3894E5F21A00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_green_white_rotateX";
	rename -uid "6583F295-4B7A-BE23-479F-F788484368A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_green_white_rotateY";
	rename -uid "4EADA43C-4560-23DE-5407-8C91AEC9531D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_green_white_rotateZ";
	rename -uid "934F8858-45ED-01AD-1C41-B592E0090781";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_green_yellow_rotateX";
	rename -uid "37C81A3C-4562-345D-AFC2-20B67ACA3327";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_green_yellow_rotateY";
	rename -uid "5DFFD92A-47D6-2F3F-2AFF-1E910749F3B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_green_yellow_rotateZ";
	rename -uid "F666459A-46EC-3B09-8B75-0389B4A4488E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_orange_white_rotateX";
	rename -uid "23243E15-4D50-FBDA-196B-D89F3ECB04FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_orange_white_rotateY";
	rename -uid "7ADB8F53-471F-F4CC-BD6D-AC9B1A4556DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_orange_white_rotateZ";
	rename -uid "F04C5161-4106-9202-09F6-76BE71E18B77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_orange_yellow_rotateX";
	rename -uid "0D3CE2BB-4114-6214-AFA1-798B9AF0B077";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_orange_yellow_rotateY";
	rename -uid "2ECEA362-414A-0F85-AC86-6E9272579ECE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_orange_yellow_rotateZ";
	rename -uid "A86AD1FB-497F-B17C-0C1F-83AE93274608";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_red_white_rotateX";
	rename -uid "89274F6D-4623-2E1C-6FB3-E4853FDC6D11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_red_white_rotateY";
	rename -uid "B2750457-4661-44E4-0091-63BBDA66DD29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_red_white_rotateZ";
	rename -uid "619D916A-4B60-B056-DA97-EE886F936B1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_red_yellow_rotateX";
	rename -uid "C6AAFEF5-4B5C-7DED-DBDD-67A1A88C176D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_red_yellow_rotateY";
	rename -uid "7F88E6D1-45F0-4712-034B-BF9B1A451C55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "side_red_yellow_rotateZ";
	rename -uid "D75E9AA4-41F6-A51D-715B-F188C4B5234A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "center_blue_rotateX";
	rename -uid "F2DA73EB-4D0E-97F1-7FFD-379111EF8EB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "center_blue_rotateY";
	rename -uid "987A2A2E-48F3-F51C-C4E4-5FAF740073F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "center_blue_rotateZ";
	rename -uid "840C8F73-44D2-655C-937B-7291701FA733";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "center_green_rotateX";
	rename -uid "3755A132-4632-D604-415E-82AF70F8BE04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "center_green_rotateY";
	rename -uid "6ED64DC1-406C-FC20-BF10-AC872DBDC847";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "center_green_rotateZ";
	rename -uid "6B31A473-4DAC-BDCE-54CB-139C61AB6B69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "center_orange_rotateX";
	rename -uid "EF7D7336-4F39-A9D7-C1B2-A2B54CEBE895";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "center_orange_rotateY";
	rename -uid "A9B979AA-406F-82FC-6BD3-D4919319756D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "center_orange_rotateZ";
	rename -uid "60426B94-4C6D-0553-F804-D5AB94577B94";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "center_red_rotateX";
	rename -uid "B7BFDD1A-41DC-8F77-ABE5-68A93BF13940";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "center_red_rotateY";
	rename -uid "B66AC163-41BD-54AF-6599-4BAB27025506";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "center_red_rotateZ";
	rename -uid "BB3D248F-4A41-64F2-98A3-62B5EDFE0646";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "center_white_rotateX";
	rename -uid "295C0620-44FF-B60D-B0AC-FABC245AD596";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "center_white_rotateY";
	rename -uid "0949E2FB-44D0-3E40-E917-5582C4EC130A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "center_white_rotateZ";
	rename -uid "133AC57A-45AF-0372-5194-2BA77FBED4B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "center_yellow_rotateX";
	rename -uid "E6FAAF3F-41A7-65B9-E161-09AE30CBD171";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "center_yellow_rotateY";
	rename -uid "7894654E-4428-C113-5B14-98AFA99DBA51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode animCurveTA -n "center_yellow_rotateZ";
	rename -uid "09E803C2-4D04-98C3-E74B-8A902D2577E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 11 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "2ECF73A4-49A9-CB4C-B7B0-439A8AEF9633";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1100\n            -height 727\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n"
		+ "            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n"
		+ "            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n"
		+ "                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1100\\n    -height 727\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1100\\n    -height 727\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "E73678F6-44C3-0AB3-1631-28A7DEE8A6E4";
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
	setAttr -s 9 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 12 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
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
connectAttr "core_rotateX.o" "core.rx";
connectAttr "core_rotateY.o" "core.ry";
connectAttr "core_rotateZ.o" "core.rz";
connectAttr "groupId1.id" "|RubikCubeGrp|center_blue|corner_blue_orange_yellowShape.iog.og[0].gid"
		;
connectAttr "rubikBlackSG.mwc" "|RubikCubeGrp|center_blue|corner_blue_orange_yellowShape.iog.og[0].gco"
		;
connectAttr "groupId19.id" "|RubikCubeGrp|center_blue|corner_blue_orange_yellowShape.iog.og[1].gid"
		;
connectAttr "rubikBlueSG.mwc" "|RubikCubeGrp|center_blue|corner_blue_orange_yellowShape.iog.og[1].gco"
		;
connectAttr "groupId28.id" "|RubikCubeGrp|center_green|corner_blue_orange_yellowShape.iog.og[0].gid"
		;
connectAttr "rubikBlackSG.mwc" "|RubikCubeGrp|center_green|corner_blue_orange_yellowShape.iog.og[0].gco"
		;
connectAttr "groupId46.id" "|RubikCubeGrp|center_green|corner_blue_orange_yellowShape.iog.og[1].gid"
		;
connectAttr "rubikGreenSG.mwc" "|RubikCubeGrp|center_green|corner_blue_orange_yellowShape.iog.og[1].gco"
		;
connectAttr "groupId55.id" "|RubikCubeGrp|center_orange|corner_blue_orange_yellowShape.iog.og[0].gid"
		;
connectAttr "rubikBlackSG.mwc" "|RubikCubeGrp|center_orange|corner_blue_orange_yellowShape.iog.og[0].gco"
		;
connectAttr "groupId61.id" "|RubikCubeGrp|center_orange|corner_blue_orange_yellowShape.iog.og[1].gid"
		;
connectAttr "rubikOrangeSG.mwc" "|RubikCubeGrp|center_orange|corner_blue_orange_yellowShape.iog.og[1].gco"
		;
connectAttr "groupId70.id" "|RubikCubeGrp|center_red|corner_blue_orange_yellowShape.iog.og[0].gid"
		;
connectAttr "rubikBlackSG.mwc" "|RubikCubeGrp|center_red|corner_blue_orange_yellowShape.iog.og[0].gco"
		;
connectAttr "groupId76.id" "|RubikCubeGrp|center_red|corner_blue_orange_yellowShape.iog.og[1].gid"
		;
connectAttr "rubikRedSG.mwc" "|RubikCubeGrp|center_red|corner_blue_orange_yellowShape.iog.og[1].gco"
		;
connectAttr "groupId96.id" "|RubikCubeGrp|center_white|corner_blue_orange_yellowShape.iog.og[0].gid"
		;
connectAttr "rubikBlackSG.mwc" "|RubikCubeGrp|center_white|corner_blue_orange_yellowShape.iog.og[0].gco"
		;
connectAttr "groupId98.id" "|RubikCubeGrp|center_white|corner_blue_orange_yellowShape.iog.og[1].gid"
		;
connectAttr "rubikWhiteSG.mwc" "|RubikCubeGrp|center_white|corner_blue_orange_yellowShape.iog.og[1].gco"
		;
connectAttr "groupId85.id" "|RubikCubeGrp|center_yellow|corner_blue_orange_yellowShape.iog.og[0].gid"
		;
connectAttr "rubikBlackSG.mwc" "|RubikCubeGrp|center_yellow|corner_blue_orange_yellowShape.iog.og[0].gco"
		;
connectAttr "groupId87.id" "|RubikCubeGrp|center_yellow|corner_blue_orange_yellowShape.iog.og[1].gid"
		;
connectAttr "rubikYellowSG.mwc" "|RubikCubeGrp|center_yellow|corner_blue_orange_yellowShape.iog.og[1].gco"
		;
connectAttr "groupId11.id" "|RubikCubeGrp|side_blue_orange|corner_blue_orange_yellowShape.iog.og[0].gid"
		;
connectAttr "rubikBlackSG.mwc" "|RubikCubeGrp|side_blue_orange|corner_blue_orange_yellowShape.iog.og[0].gco"
		;
connectAttr "groupId24.id" "|RubikCubeGrp|side_blue_orange|corner_blue_orange_yellowShape.iog.og[1].gid"
		;
connectAttr "rubikBlueSG.mwc" "|RubikCubeGrp|side_blue_orange|corner_blue_orange_yellowShape.iog.og[1].gco"
		;
connectAttr "groupId66.id" "|RubikCubeGrp|side_blue_orange|corner_blue_orange_yellowShape.iog.og[2].gid"
		;
connectAttr "rubikOrangeSG.mwc" "|RubikCubeGrp|side_blue_orange|corner_blue_orange_yellowShape.iog.og[2].gco"
		;
connectAttr "groupId13.id" "|RubikCubeGrp|side_blue_red|corner_blue_orange_yellowShape.iog.og[0].gid"
		;
connectAttr "rubikBlackSG.mwc" "|RubikCubeGrp|side_blue_red|corner_blue_orange_yellowShape.iog.og[0].gco"
		;
connectAttr "groupId25.id" "|RubikCubeGrp|side_blue_red|corner_blue_orange_yellowShape.iog.og[1].gid"
		;
connectAttr "rubikBlueSG.mwc" "|RubikCubeGrp|side_blue_red|corner_blue_orange_yellowShape.iog.og[1].gco"
		;
connectAttr "groupId81.id" "|RubikCubeGrp|side_blue_red|corner_blue_orange_yellowShape.iog.og[2].gid"
		;
connectAttr "rubikRedSG.mwc" "|RubikCubeGrp|side_blue_red|corner_blue_orange_yellowShape.iog.og[2].gco"
		;
connectAttr "groupId15.id" "|RubikCubeGrp|side_blue_white|corner_blue_orange_yellowShape.iog.og[0].gid"
		;
connectAttr "rubikBlackSG.mwc" "|RubikCubeGrp|side_blue_white|corner_blue_orange_yellowShape.iog.og[0].gco"
		;
connectAttr "groupId26.id" "|RubikCubeGrp|side_blue_white|corner_blue_orange_yellowShape.iog.og[1].gid"
		;
connectAttr "rubikBlueSG.mwc" "|RubikCubeGrp|side_blue_white|corner_blue_orange_yellowShape.iog.og[1].gco"
		;
connectAttr "groupId103.id" "|RubikCubeGrp|side_blue_white|corner_blue_orange_yellowShape.iog.og[2].gid"
		;
connectAttr "rubikWhiteSG.mwc" "|RubikCubeGrp|side_blue_white|corner_blue_orange_yellowShape.iog.og[2].gco"
		;
connectAttr "groupId17.id" "|RubikCubeGrp|side_blue_yellow|corner_blue_orange_yellowShape.iog.og[0].gid"
		;
connectAttr "rubikBlackSG.mwc" "|RubikCubeGrp|side_blue_yellow|corner_blue_orange_yellowShape.iog.og[0].gco"
		;
connectAttr "groupId27.id" "|RubikCubeGrp|side_blue_yellow|corner_blue_orange_yellowShape.iog.og[1].gid"
		;
connectAttr "rubikBlueSG.mwc" "|RubikCubeGrp|side_blue_yellow|corner_blue_orange_yellowShape.iog.og[1].gco"
		;
connectAttr "groupId92.id" "|RubikCubeGrp|side_blue_yellow|corner_blue_orange_yellowShape.iog.og[2].gid"
		;
connectAttr "rubikYellowSG.mwc" "|RubikCubeGrp|side_blue_yellow|corner_blue_orange_yellowShape.iog.og[2].gco"
		;
connectAttr "groupId38.id" "|RubikCubeGrp|side_green_orange|corner_blue_orange_yellowShape.iog.og[0].gid"
		;
connectAttr "rubikBlackSG.mwc" "|RubikCubeGrp|side_green_orange|corner_blue_orange_yellowShape.iog.og[0].gco"
		;
connectAttr "groupId51.id" "|RubikCubeGrp|side_green_orange|corner_blue_orange_yellowShape.iog.og[1].gid"
		;
connectAttr "rubikGreenSG.mwc" "|RubikCubeGrp|side_green_orange|corner_blue_orange_yellowShape.iog.og[1].gco"
		;
connectAttr "groupId67.id" "|RubikCubeGrp|side_green_orange|corner_blue_orange_yellowShape.iog.og[2].gid"
		;
connectAttr "rubikOrangeSG.mwc" "|RubikCubeGrp|side_green_orange|corner_blue_orange_yellowShape.iog.og[2].gco"
		;
connectAttr "groupId40.id" "|RubikCubeGrp|side_green_red|corner_blue_orange_yellowShape.iog.og[0].gid"
		;
connectAttr "rubikBlackSG.mwc" "|RubikCubeGrp|side_green_red|corner_blue_orange_yellowShape.iog.og[0].gco"
		;
connectAttr "groupId52.id" "|RubikCubeGrp|side_green_red|corner_blue_orange_yellowShape.iog.og[1].gid"
		;
connectAttr "rubikGreenSG.mwc" "|RubikCubeGrp|side_green_red|corner_blue_orange_yellowShape.iog.og[1].gco"
		;
connectAttr "groupId82.id" "|RubikCubeGrp|side_green_red|corner_blue_orange_yellowShape.iog.og[2].gid"
		;
connectAttr "rubikRedSG.mwc" "|RubikCubeGrp|side_green_red|corner_blue_orange_yellowShape.iog.og[2].gco"
		;
connectAttr "groupId42.id" "|RubikCubeGrp|side_green_white|corner_blue_orange_yellowShape.iog.og[0].gid"
		;
connectAttr "rubikBlackSG.mwc" "|RubikCubeGrp|side_green_white|corner_blue_orange_yellowShape.iog.og[0].gco"
		;
connectAttr "groupId53.id" "|RubikCubeGrp|side_green_white|corner_blue_orange_yellowShape.iog.og[1].gid"
		;
connectAttr "rubikGreenSG.mwc" "|RubikCubeGrp|side_green_white|corner_blue_orange_yellowShape.iog.og[1].gco"
		;
connectAttr "groupId104.id" "|RubikCubeGrp|side_green_white|corner_blue_orange_yellowShape.iog.og[2].gid"
		;
connectAttr "rubikWhiteSG.mwc" "|RubikCubeGrp|side_green_white|corner_blue_orange_yellowShape.iog.og[2].gco"
		;
connectAttr "groupId44.id" "|RubikCubeGrp|side_green_yellow|corner_blue_orange_yellowShape.iog.og[0].gid"
		;
connectAttr "rubikBlackSG.mwc" "|RubikCubeGrp|side_green_yellow|corner_blue_orange_yellowShape.iog.og[0].gco"
		;
connectAttr "groupId54.id" "|RubikCubeGrp|side_green_yellow|corner_blue_orange_yellowShape.iog.og[1].gid"
		;
connectAttr "rubikGreenSG.mwc" "|RubikCubeGrp|side_green_yellow|corner_blue_orange_yellowShape.iog.og[1].gco"
		;
connectAttr "groupId93.id" "|RubikCubeGrp|side_green_yellow|corner_blue_orange_yellowShape.iog.og[2].gid"
		;
connectAttr "rubikYellowSG.mwc" "|RubikCubeGrp|side_green_yellow|corner_blue_orange_yellowShape.iog.og[2].gco"
		;
connectAttr "groupId57.id" "|RubikCubeGrp|side_orange_white|corner_blue_orange_yellowShape.iog.og[0].gid"
		;
connectAttr "rubikBlackSG.mwc" "|RubikCubeGrp|side_orange_white|corner_blue_orange_yellowShape.iog.og[0].gco"
		;
connectAttr "groupId68.id" "|RubikCubeGrp|side_orange_white|corner_blue_orange_yellowShape.iog.og[1].gid"
		;
connectAttr "rubikOrangeSG.mwc" "|RubikCubeGrp|side_orange_white|corner_blue_orange_yellowShape.iog.og[1].gco"
		;
connectAttr "groupId105.id" "|RubikCubeGrp|side_orange_white|corner_blue_orange_yellowShape.iog.og[2].gid"
		;
connectAttr "rubikWhiteSG.mwc" "|RubikCubeGrp|side_orange_white|corner_blue_orange_yellowShape.iog.og[2].gco"
		;
connectAttr "groupId59.id" "|RubikCubeGrp|side_orange_yellow|corner_blue_orange_yellowShape.iog.og[0].gid"
		;
connectAttr "rubikBlackSG.mwc" "|RubikCubeGrp|side_orange_yellow|corner_blue_orange_yellowShape.iog.og[0].gco"
		;
connectAttr "groupId69.id" "|RubikCubeGrp|side_orange_yellow|corner_blue_orange_yellowShape.iog.og[1].gid"
		;
connectAttr "rubikOrangeSG.mwc" "|RubikCubeGrp|side_orange_yellow|corner_blue_orange_yellowShape.iog.og[1].gco"
		;
connectAttr "groupId94.id" "|RubikCubeGrp|side_orange_yellow|corner_blue_orange_yellowShape.iog.og[2].gid"
		;
connectAttr "rubikYellowSG.mwc" "|RubikCubeGrp|side_orange_yellow|corner_blue_orange_yellowShape.iog.og[2].gco"
		;
connectAttr "groupId72.id" "|RubikCubeGrp|side_red_white|corner_blue_orange_yellowShape.iog.og[0].gid"
		;
connectAttr "rubikBlackSG.mwc" "|RubikCubeGrp|side_red_white|corner_blue_orange_yellowShape.iog.og[0].gco"
		;
connectAttr "groupId83.id" "|RubikCubeGrp|side_red_white|corner_blue_orange_yellowShape.iog.og[1].gid"
		;
connectAttr "rubikRedSG.mwc" "|RubikCubeGrp|side_red_white|corner_blue_orange_yellowShape.iog.og[1].gco"
		;
connectAttr "groupId106.id" "|RubikCubeGrp|side_red_white|corner_blue_orange_yellowShape.iog.og[2].gid"
		;
connectAttr "rubikWhiteSG.mwc" "|RubikCubeGrp|side_red_white|corner_blue_orange_yellowShape.iog.og[2].gco"
		;
connectAttr "groupId74.id" "|RubikCubeGrp|side_red_yellow|corner_blue_orange_yellowShape.iog.og[0].gid"
		;
connectAttr "rubikBlackSG.mwc" "|RubikCubeGrp|side_red_yellow|corner_blue_orange_yellowShape.iog.og[0].gco"
		;
connectAttr "groupId84.id" "|RubikCubeGrp|side_red_yellow|corner_blue_orange_yellowShape.iog.og[1].gid"
		;
connectAttr "rubikRedSG.mwc" "|RubikCubeGrp|side_red_yellow|corner_blue_orange_yellowShape.iog.og[1].gco"
		;
connectAttr "groupId95.id" "|RubikCubeGrp|side_red_yellow|corner_blue_orange_yellowShape.iog.og[2].gid"
		;
connectAttr "rubikYellowSG.mwc" "|RubikCubeGrp|side_red_yellow|corner_blue_orange_yellowShape.iog.og[2].gco"
		;
connectAttr "groupId3.id" "|RubikCubeGrp|corner_blue_orange_white|corner_blue_orange_yellowShape.iog.og[0].gid"
		;
connectAttr "rubikBlackSG.mwc" "|RubikCubeGrp|corner_blue_orange_white|corner_blue_orange_yellowShape.iog.og[0].gco"
		;
connectAttr "groupId20.id" "|RubikCubeGrp|corner_blue_orange_white|corner_blue_orange_yellowShape.iog.og[1].gid"
		;
connectAttr "rubikBlueSG.mwc" "|RubikCubeGrp|corner_blue_orange_white|corner_blue_orange_yellowShape.iog.og[1].gco"
		;
connectAttr "groupId62.id" "|RubikCubeGrp|corner_blue_orange_white|corner_blue_orange_yellowShape.iog.og[2].gid"
		;
connectAttr "rubikOrangeSG.mwc" "|RubikCubeGrp|corner_blue_orange_white|corner_blue_orange_yellowShape.iog.og[2].gco"
		;
connectAttr "groupId99.id" "|RubikCubeGrp|corner_blue_orange_white|corner_blue_orange_yellowShape.iog.og[3].gid"
		;
connectAttr "rubikWhiteSG.mwc" "|RubikCubeGrp|corner_blue_orange_white|corner_blue_orange_yellowShape.iog.og[3].gco"
		;
connectAttr "groupId5.id" "|RubikCubeGrp|corner_blue_orange_yellow|corner_blue_orange_yellowShape.iog.og[0].gid"
		;
connectAttr "rubikBlackSG.mwc" "|RubikCubeGrp|corner_blue_orange_yellow|corner_blue_orange_yellowShape.iog.og[0].gco"
		;
connectAttr "groupId21.id" "|RubikCubeGrp|corner_blue_orange_yellow|corner_blue_orange_yellowShape.iog.og[1].gid"
		;
connectAttr "rubikBlueSG.mwc" "|RubikCubeGrp|corner_blue_orange_yellow|corner_blue_orange_yellowShape.iog.og[1].gco"
		;
connectAttr "groupId63.id" "|RubikCubeGrp|corner_blue_orange_yellow|corner_blue_orange_yellowShape.iog.og[2].gid"
		;
connectAttr "rubikOrangeSG.mwc" "|RubikCubeGrp|corner_blue_orange_yellow|corner_blue_orange_yellowShape.iog.og[2].gco"
		;
connectAttr "groupId88.id" "|RubikCubeGrp|corner_blue_orange_yellow|corner_blue_orange_yellowShape.iog.og[3].gid"
		;
connectAttr "rubikYellowSG.mwc" "|RubikCubeGrp|corner_blue_orange_yellow|corner_blue_orange_yellowShape.iog.og[3].gco"
		;
connectAttr "groupId7.id" "|RubikCubeGrp|corner_blue_red_white|corner_blue_orange_yellowShape.iog.og[0].gid"
		;
connectAttr "rubikBlackSG.mwc" "|RubikCubeGrp|corner_blue_red_white|corner_blue_orange_yellowShape.iog.og[0].gco"
		;
connectAttr "groupId22.id" "|RubikCubeGrp|corner_blue_red_white|corner_blue_orange_yellowShape.iog.og[1].gid"
		;
connectAttr "rubikBlueSG.mwc" "|RubikCubeGrp|corner_blue_red_white|corner_blue_orange_yellowShape.iog.og[1].gco"
		;
connectAttr "groupId77.id" "|RubikCubeGrp|corner_blue_red_white|corner_blue_orange_yellowShape.iog.og[2].gid"
		;
connectAttr "rubikRedSG.mwc" "|RubikCubeGrp|corner_blue_red_white|corner_blue_orange_yellowShape.iog.og[2].gco"
		;
connectAttr "groupId100.id" "|RubikCubeGrp|corner_blue_red_white|corner_blue_orange_yellowShape.iog.og[3].gid"
		;
connectAttr "rubikWhiteSG.mwc" "|RubikCubeGrp|corner_blue_red_white|corner_blue_orange_yellowShape.iog.og[3].gco"
		;
connectAttr "groupId9.id" "|RubikCubeGrp|corner_blue_red_yellow|corner_blue_orange_yellowShape.iog.og[0].gid"
		;
connectAttr "rubikBlackSG.mwc" "|RubikCubeGrp|corner_blue_red_yellow|corner_blue_orange_yellowShape.iog.og[0].gco"
		;
connectAttr "groupId23.id" "|RubikCubeGrp|corner_blue_red_yellow|corner_blue_orange_yellowShape.iog.og[1].gid"
		;
connectAttr "rubikBlueSG.mwc" "|RubikCubeGrp|corner_blue_red_yellow|corner_blue_orange_yellowShape.iog.og[1].gco"
		;
connectAttr "groupId78.id" "|RubikCubeGrp|corner_blue_red_yellow|corner_blue_orange_yellowShape.iog.og[2].gid"
		;
connectAttr "rubikRedSG.mwc" "|RubikCubeGrp|corner_blue_red_yellow|corner_blue_orange_yellowShape.iog.og[2].gco"
		;
connectAttr "groupId89.id" "|RubikCubeGrp|corner_blue_red_yellow|corner_blue_orange_yellowShape.iog.og[3].gid"
		;
connectAttr "rubikYellowSG.mwc" "|RubikCubeGrp|corner_blue_red_yellow|corner_blue_orange_yellowShape.iog.og[3].gco"
		;
connectAttr "groupId30.id" "|RubikCubeGrp|corner_green_orange_white|corner_blue_orange_yellowShape.iog.og[0].gid"
		;
connectAttr "rubikBlackSG.mwc" "|RubikCubeGrp|corner_green_orange_white|corner_blue_orange_yellowShape.iog.og[0].gco"
		;
connectAttr "groupId47.id" "|RubikCubeGrp|corner_green_orange_white|corner_blue_orange_yellowShape.iog.og[1].gid"
		;
connectAttr "rubikGreenSG.mwc" "|RubikCubeGrp|corner_green_orange_white|corner_blue_orange_yellowShape.iog.og[1].gco"
		;
connectAttr "groupId64.id" "|RubikCubeGrp|corner_green_orange_white|corner_blue_orange_yellowShape.iog.og[2].gid"
		;
connectAttr "rubikOrangeSG.mwc" "|RubikCubeGrp|corner_green_orange_white|corner_blue_orange_yellowShape.iog.og[2].gco"
		;
connectAttr "groupId101.id" "|RubikCubeGrp|corner_green_orange_white|corner_blue_orange_yellowShape.iog.og[3].gid"
		;
connectAttr "rubikWhiteSG.mwc" "|RubikCubeGrp|corner_green_orange_white|corner_blue_orange_yellowShape.iog.og[3].gco"
		;
connectAttr "groupId32.id" "|RubikCubeGrp|corner_green_orange_yellow|corner_blue_orange_yellowShape.iog.og[0].gid"
		;
connectAttr "rubikBlackSG.mwc" "|RubikCubeGrp|corner_green_orange_yellow|corner_blue_orange_yellowShape.iog.og[0].gco"
		;
connectAttr "groupId48.id" "|RubikCubeGrp|corner_green_orange_yellow|corner_blue_orange_yellowShape.iog.og[1].gid"
		;
connectAttr "rubikGreenSG.mwc" "|RubikCubeGrp|corner_green_orange_yellow|corner_blue_orange_yellowShape.iog.og[1].gco"
		;
connectAttr "groupId65.id" "|RubikCubeGrp|corner_green_orange_yellow|corner_blue_orange_yellowShape.iog.og[2].gid"
		;
connectAttr "rubikOrangeSG.mwc" "|RubikCubeGrp|corner_green_orange_yellow|corner_blue_orange_yellowShape.iog.og[2].gco"
		;
connectAttr "groupId90.id" "|RubikCubeGrp|corner_green_orange_yellow|corner_blue_orange_yellowShape.iog.og[3].gid"
		;
connectAttr "rubikYellowSG.mwc" "|RubikCubeGrp|corner_green_orange_yellow|corner_blue_orange_yellowShape.iog.og[3].gco"
		;
connectAttr "groupId34.id" "|RubikCubeGrp|corner_green_red_white|corner_blue_orange_yellowShape.iog.og[0].gid"
		;
connectAttr "rubikBlackSG.mwc" "|RubikCubeGrp|corner_green_red_white|corner_blue_orange_yellowShape.iog.og[0].gco"
		;
connectAttr "groupId49.id" "|RubikCubeGrp|corner_green_red_white|corner_blue_orange_yellowShape.iog.og[1].gid"
		;
connectAttr "rubikGreenSG.mwc" "|RubikCubeGrp|corner_green_red_white|corner_blue_orange_yellowShape.iog.og[1].gco"
		;
connectAttr "groupId79.id" "|RubikCubeGrp|corner_green_red_white|corner_blue_orange_yellowShape.iog.og[2].gid"
		;
connectAttr "rubikRedSG.mwc" "|RubikCubeGrp|corner_green_red_white|corner_blue_orange_yellowShape.iog.og[2].gco"
		;
connectAttr "groupId102.id" "|RubikCubeGrp|corner_green_red_white|corner_blue_orange_yellowShape.iog.og[3].gid"
		;
connectAttr "rubikWhiteSG.mwc" "|RubikCubeGrp|corner_green_red_white|corner_blue_orange_yellowShape.iog.og[3].gco"
		;
connectAttr "groupId36.id" "|RubikCubeGrp|corner_green_red_yellow|corner_blue_orange_yellowShape.iog.og[0].gid"
		;
connectAttr "rubikBlackSG.mwc" "|RubikCubeGrp|corner_green_red_yellow|corner_blue_orange_yellowShape.iog.og[0].gco"
		;
connectAttr "groupId50.id" "|RubikCubeGrp|corner_green_red_yellow|corner_blue_orange_yellowShape.iog.og[1].gid"
		;
connectAttr "rubikGreenSG.mwc" "|RubikCubeGrp|corner_green_red_yellow|corner_blue_orange_yellowShape.iog.og[1].gco"
		;
connectAttr "groupId80.id" "|RubikCubeGrp|corner_green_red_yellow|corner_blue_orange_yellowShape.iog.og[2].gid"
		;
connectAttr "rubikRedSG.mwc" "|RubikCubeGrp|corner_green_red_yellow|corner_blue_orange_yellowShape.iog.og[2].gco"
		;
connectAttr "groupId91.id" "|RubikCubeGrp|corner_green_red_yellow|corner_blue_orange_yellowShape.iog.og[3].gid"
		;
connectAttr "rubikYellowSG.mwc" "|RubikCubeGrp|corner_green_red_yellow|corner_blue_orange_yellowShape.iog.og[3].gco"
		;
connectAttr "groupParts80.og" "|RubikCubeGrp|core|corner_blue_orange_yellowShape.i"
		;
connectAttr "groupId2.id" "|RubikCubeGrp|center_blue|corner_blue_orange_yellowShape.ciog.cog[0].cgid"
		;
connectAttr "groupId29.id" "|RubikCubeGrp|center_green|corner_blue_orange_yellowShape.ciog.cog[0].cgid"
		;
connectAttr "groupId56.id" "|RubikCubeGrp|center_orange|corner_blue_orange_yellowShape.ciog.cog[0].cgid"
		;
connectAttr "groupId71.id" "|RubikCubeGrp|center_red|corner_blue_orange_yellowShape.ciog.cog[0].cgid"
		;
connectAttr "groupId97.id" "|RubikCubeGrp|center_white|corner_blue_orange_yellowShape.ciog.cog[0].cgid"
		;
connectAttr "groupId86.id" "|RubikCubeGrp|center_yellow|corner_blue_orange_yellowShape.ciog.cog[0].cgid"
		;
connectAttr "groupId12.id" "|RubikCubeGrp|side_blue_orange|corner_blue_orange_yellowShape.ciog.cog[0].cgid"
		;
connectAttr "groupId14.id" "|RubikCubeGrp|side_blue_red|corner_blue_orange_yellowShape.ciog.cog[0].cgid"
		;
connectAttr "groupId16.id" "|RubikCubeGrp|side_blue_white|corner_blue_orange_yellowShape.ciog.cog[0].cgid"
		;
connectAttr "groupId18.id" "|RubikCubeGrp|side_blue_yellow|corner_blue_orange_yellowShape.ciog.cog[0].cgid"
		;
connectAttr "groupId39.id" "|RubikCubeGrp|side_green_orange|corner_blue_orange_yellowShape.ciog.cog[0].cgid"
		;
connectAttr "groupId41.id" "|RubikCubeGrp|side_green_red|corner_blue_orange_yellowShape.ciog.cog[0].cgid"
		;
connectAttr "groupId43.id" "|RubikCubeGrp|side_green_white|corner_blue_orange_yellowShape.ciog.cog[0].cgid"
		;
connectAttr "groupId45.id" "|RubikCubeGrp|side_green_yellow|corner_blue_orange_yellowShape.ciog.cog[0].cgid"
		;
connectAttr "groupId58.id" "|RubikCubeGrp|side_orange_white|corner_blue_orange_yellowShape.ciog.cog[0].cgid"
		;
connectAttr "groupId60.id" "|RubikCubeGrp|side_orange_yellow|corner_blue_orange_yellowShape.ciog.cog[0].cgid"
		;
connectAttr "groupId73.id" "|RubikCubeGrp|side_red_white|corner_blue_orange_yellowShape.ciog.cog[0].cgid"
		;
connectAttr "groupId75.id" "|RubikCubeGrp|side_red_yellow|corner_blue_orange_yellowShape.ciog.cog[0].cgid"
		;
connectAttr "groupId4.id" "|RubikCubeGrp|corner_blue_orange_white|corner_blue_orange_yellowShape.ciog.cog[0].cgid"
		;
connectAttr "groupId6.id" "|RubikCubeGrp|corner_blue_orange_yellow|corner_blue_orange_yellowShape.ciog.cog[0].cgid"
		;
connectAttr "groupId8.id" "|RubikCubeGrp|corner_blue_red_white|corner_blue_orange_yellowShape.ciog.cog[0].cgid"
		;
connectAttr "groupId10.id" "|RubikCubeGrp|corner_blue_red_yellow|corner_blue_orange_yellowShape.ciog.cog[0].cgid"
		;
connectAttr "groupId31.id" "|RubikCubeGrp|corner_green_orange_white|corner_blue_orange_yellowShape.ciog.cog[0].cgid"
		;
connectAttr "groupId33.id" "|RubikCubeGrp|corner_green_orange_yellow|corner_blue_orange_yellowShape.ciog.cog[0].cgid"
		;
connectAttr "groupId35.id" "|RubikCubeGrp|corner_green_red_white|corner_blue_orange_yellowShape.ciog.cog[0].cgid"
		;
connectAttr "groupId37.id" "|RubikCubeGrp|corner_green_red_yellow|corner_blue_orange_yellowShape.ciog.cog[0].cgid"
		;
connectAttr "center_blue_rotateX.o" "center_blue.rx";
connectAttr "center_blue_rotateY.o" "center_blue.ry";
connectAttr "center_blue_rotateZ.o" "center_blue.rz";
connectAttr "center_green_rotateX.o" "center_green.rx";
connectAttr "center_green_rotateY.o" "center_green.ry";
connectAttr "center_green_rotateZ.o" "center_green.rz";
connectAttr "center_orange_rotateX.o" "center_orange.rx";
connectAttr "center_orange_rotateY.o" "center_orange.ry";
connectAttr "center_orange_rotateZ.o" "center_orange.rz";
connectAttr "center_red_rotateX.o" "center_red.rx";
connectAttr "center_red_rotateY.o" "center_red.ry";
connectAttr "center_red_rotateZ.o" "center_red.rz";
connectAttr "center_white_rotateX.o" "center_white.rx";
connectAttr "center_white_rotateY.o" "center_white.ry";
connectAttr "center_white_rotateZ.o" "center_white.rz";
connectAttr "center_yellow_rotateX.o" "center_yellow.rx";
connectAttr "center_yellow_rotateY.o" "center_yellow.ry";
connectAttr "center_yellow_rotateZ.o" "center_yellow.rz";
connectAttr "side_blue_orange_rotateX.o" "side_blue_orange.rx";
connectAttr "side_blue_orange_rotateY.o" "side_blue_orange.ry";
connectAttr "side_blue_orange_rotateZ.o" "side_blue_orange.rz";
connectAttr "side_blue_red_rotateX.o" "side_blue_red.rx";
connectAttr "side_blue_red_rotateY.o" "side_blue_red.ry";
connectAttr "side_blue_red_rotateZ.o" "side_blue_red.rz";
connectAttr "side_blue_white_rotateX.o" "side_blue_white.rx";
connectAttr "side_blue_white_rotateY.o" "side_blue_white.ry";
connectAttr "side_blue_white_rotateZ.o" "side_blue_white.rz";
connectAttr "side_blue_yellow_rotateX.o" "side_blue_yellow.rx";
connectAttr "side_blue_yellow_rotateY.o" "side_blue_yellow.ry";
connectAttr "side_blue_yellow_rotateZ.o" "side_blue_yellow.rz";
connectAttr "side_green_orange_rotateX.o" "side_green_orange.rx";
connectAttr "side_green_orange_rotateY.o" "side_green_orange.ry";
connectAttr "side_green_orange_rotateZ.o" "side_green_orange.rz";
connectAttr "side_green_red_rotateX.o" "side_green_red.rx";
connectAttr "side_green_red_rotateY.o" "side_green_red.ry";
connectAttr "side_green_red_rotateZ.o" "side_green_red.rz";
connectAttr "side_green_white_rotateX.o" "side_green_white.rx";
connectAttr "side_green_white_rotateY.o" "side_green_white.ry";
connectAttr "side_green_white_rotateZ.o" "side_green_white.rz";
connectAttr "side_green_yellow_rotateX.o" "side_green_yellow.rx";
connectAttr "side_green_yellow_rotateY.o" "side_green_yellow.ry";
connectAttr "side_green_yellow_rotateZ.o" "side_green_yellow.rz";
connectAttr "side_orange_white_rotateX.o" "side_orange_white.rx";
connectAttr "side_orange_white_rotateY.o" "side_orange_white.ry";
connectAttr "side_orange_white_rotateZ.o" "side_orange_white.rz";
connectAttr "side_orange_yellow_rotateX.o" "side_orange_yellow.rx";
connectAttr "side_orange_yellow_rotateY.o" "side_orange_yellow.ry";
connectAttr "side_orange_yellow_rotateZ.o" "side_orange_yellow.rz";
connectAttr "side_red_white_rotateX.o" "side_red_white.rx";
connectAttr "side_red_white_rotateY.o" "side_red_white.ry";
connectAttr "side_red_white_rotateZ.o" "side_red_white.rz";
connectAttr "side_red_yellow_rotateX.o" "side_red_yellow.rx";
connectAttr "side_red_yellow_rotateY.o" "side_red_yellow.ry";
connectAttr "side_red_yellow_rotateZ.o" "side_red_yellow.rz";
connectAttr "corner_blue_orange_white_rotateX.o" "corner_blue_orange_white.rx";
connectAttr "corner_blue_orange_white_rotateY.o" "corner_blue_orange_white.ry";
connectAttr "corner_blue_orange_white_rotateZ.o" "corner_blue_orange_white.rz";
connectAttr "corner_blue_orange_yellow_rotateX.o" "corner_blue_orange_yellow.rx"
		;
connectAttr "corner_blue_orange_yellow_rotateY.o" "corner_blue_orange_yellow.ry"
		;
connectAttr "corner_blue_orange_yellow_rotateZ.o" "corner_blue_orange_yellow.rz"
		;
connectAttr "corner_blue_red_white_rotateX.o" "corner_blue_red_white.rx";
connectAttr "corner_blue_red_white_rotateY.o" "corner_blue_red_white.ry";
connectAttr "corner_blue_red_white_rotateZ.o" "corner_blue_red_white.rz";
connectAttr "corner_blue_red_yellow_rotateX.o" "corner_blue_red_yellow.rx";
connectAttr "corner_blue_red_yellow_rotateY.o" "corner_blue_red_yellow.ry";
connectAttr "corner_blue_red_yellow_rotateZ.o" "corner_blue_red_yellow.rz";
connectAttr "corner_green_orange_white_rotateX.o" "corner_green_orange_white.rx"
		;
connectAttr "corner_green_orange_white_rotateY.o" "corner_green_orange_white.ry"
		;
connectAttr "corner_green_orange_white_rotateZ.o" "corner_green_orange_white.rz"
		;
connectAttr "corner_green_orange_yellow_rotateX.o" "corner_green_orange_yellow.rx"
		;
connectAttr "corner_green_orange_yellow_rotateY.o" "corner_green_orange_yellow.ry"
		;
connectAttr "corner_green_orange_yellow_rotateZ.o" "corner_green_orange_yellow.rz"
		;
connectAttr "corner_green_red_white_rotateX.o" "corner_green_red_white.rx";
connectAttr "corner_green_red_white_rotateY.o" "corner_green_red_white.ry";
connectAttr "corner_green_red_white_rotateZ.o" "corner_green_red_white.rz";
connectAttr "corner_green_red_yellow_rotateX.o" "corner_green_red_yellow.rx";
connectAttr "corner_green_red_yellow_rotateY.o" "corner_green_red_yellow.ry";
connectAttr "corner_green_red_yellow_rotateZ.o" "corner_green_red_yellow.rz";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rubikBlackSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rubikBlueSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rubikGreenSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rubikOrangeSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rubikRedSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rubikYellowSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rubikWhiteSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rubikBlackSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rubikBlueSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rubikGreenSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rubikOrangeSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rubikRedSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rubikYellowSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rubikWhiteSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "polyCube1.out" "polyBevel1.ip";
connectAttr "|RubikCubeGrp|corner_blue_orange_yellow|corner_blue_orange_yellowShape.wm" "polyBevel1.mp"
		;
connectAttr "rubikBlack.oc" "rubikBlackSG.ss";
connectAttr "|RubikCubeGrp|core|corner_blue_orange_yellowShape.iog" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|center_blue|corner_blue_orange_yellowShape.iog.og[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|center_blue|corner_blue_orange_yellowShape.ciog.cog[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_blue_orange_white|corner_blue_orange_yellowShape.iog.og[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_blue_orange_white|corner_blue_orange_yellowShape.ciog.cog[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_blue_orange_yellow|corner_blue_orange_yellowShape.iog.og[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_blue_orange_yellow|corner_blue_orange_yellowShape.ciog.cog[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_blue_red_white|corner_blue_orange_yellowShape.iog.og[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_blue_red_white|corner_blue_orange_yellowShape.ciog.cog[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_blue_red_yellow|corner_blue_orange_yellowShape.iog.og[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_blue_red_yellow|corner_blue_orange_yellowShape.ciog.cog[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_blue_orange|corner_blue_orange_yellowShape.iog.og[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_blue_orange|corner_blue_orange_yellowShape.ciog.cog[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_blue_red|corner_blue_orange_yellowShape.iog.og[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_blue_red|corner_blue_orange_yellowShape.ciog.cog[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_blue_white|corner_blue_orange_yellowShape.iog.og[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_blue_white|corner_blue_orange_yellowShape.ciog.cog[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_blue_yellow|corner_blue_orange_yellowShape.iog.og[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_blue_yellow|corner_blue_orange_yellowShape.ciog.cog[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|center_green|corner_blue_orange_yellowShape.iog.og[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|center_green|corner_blue_orange_yellowShape.ciog.cog[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_green_orange_white|corner_blue_orange_yellowShape.iog.og[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_green_orange_white|corner_blue_orange_yellowShape.ciog.cog[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_green_orange_yellow|corner_blue_orange_yellowShape.iog.og[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_green_orange_yellow|corner_blue_orange_yellowShape.ciog.cog[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_green_red_white|corner_blue_orange_yellowShape.iog.og[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_green_red_white|corner_blue_orange_yellowShape.ciog.cog[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_green_red_yellow|corner_blue_orange_yellowShape.iog.og[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_green_red_yellow|corner_blue_orange_yellowShape.ciog.cog[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_green_orange|corner_blue_orange_yellowShape.iog.og[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_green_orange|corner_blue_orange_yellowShape.ciog.cog[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_green_red|corner_blue_orange_yellowShape.iog.og[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_green_red|corner_blue_orange_yellowShape.ciog.cog[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_green_white|corner_blue_orange_yellowShape.iog.og[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_green_white|corner_blue_orange_yellowShape.ciog.cog[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_green_yellow|corner_blue_orange_yellowShape.iog.og[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_green_yellow|corner_blue_orange_yellowShape.ciog.cog[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|center_orange|corner_blue_orange_yellowShape.iog.og[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|center_orange|corner_blue_orange_yellowShape.ciog.cog[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_orange_white|corner_blue_orange_yellowShape.iog.og[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_orange_white|corner_blue_orange_yellowShape.ciog.cog[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_orange_yellow|corner_blue_orange_yellowShape.iog.og[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_orange_yellow|corner_blue_orange_yellowShape.ciog.cog[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|center_red|corner_blue_orange_yellowShape.iog.og[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|center_red|corner_blue_orange_yellowShape.ciog.cog[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_red_white|corner_blue_orange_yellowShape.iog.og[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_red_white|corner_blue_orange_yellowShape.ciog.cog[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_red_yellow|corner_blue_orange_yellowShape.iog.og[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_red_yellow|corner_blue_orange_yellowShape.ciog.cog[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|center_yellow|corner_blue_orange_yellowShape.iog.og[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|center_yellow|corner_blue_orange_yellowShape.ciog.cog[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|center_white|corner_blue_orange_yellowShape.iog.og[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|center_white|corner_blue_orange_yellowShape.ciog.cog[0]" "rubikBlackSG.dsm"
		 -na;
connectAttr "groupId1.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId2.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId3.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId4.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId5.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId6.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId7.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId8.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId9.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId10.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId11.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId12.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId13.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId14.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId15.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId16.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId17.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId18.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId28.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId29.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId30.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId31.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId32.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId33.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId34.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId35.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId36.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId37.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId38.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId39.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId40.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId41.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId42.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId43.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId44.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId45.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId55.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId56.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId57.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId58.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId59.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId60.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId70.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId71.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId72.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId73.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId74.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId75.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId85.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId86.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId96.msg" "rubikBlackSG.gn" -na;
connectAttr "groupId97.msg" "rubikBlackSG.gn" -na;
connectAttr "rubikBlackSG.msg" "materialInfo1.sg";
connectAttr "rubikBlack.msg" "materialInfo1.m";
connectAttr "rubikBlue.oc" "rubikBlueSG.ss";
connectAttr "groupId19.msg" "rubikBlueSG.gn" -na;
connectAttr "groupId20.msg" "rubikBlueSG.gn" -na;
connectAttr "groupId21.msg" "rubikBlueSG.gn" -na;
connectAttr "groupId22.msg" "rubikBlueSG.gn" -na;
connectAttr "groupId23.msg" "rubikBlueSG.gn" -na;
connectAttr "groupId24.msg" "rubikBlueSG.gn" -na;
connectAttr "groupId25.msg" "rubikBlueSG.gn" -na;
connectAttr "groupId26.msg" "rubikBlueSG.gn" -na;
connectAttr "groupId27.msg" "rubikBlueSG.gn" -na;
connectAttr "|RubikCubeGrp|center_blue|corner_blue_orange_yellowShape.iog.og[1]" "rubikBlueSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_blue_orange_white|corner_blue_orange_yellowShape.iog.og[1]" "rubikBlueSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_blue_orange_yellow|corner_blue_orange_yellowShape.iog.og[1]" "rubikBlueSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_blue_red_white|corner_blue_orange_yellowShape.iog.og[1]" "rubikBlueSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_blue_red_yellow|corner_blue_orange_yellowShape.iog.og[1]" "rubikBlueSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_blue_orange|corner_blue_orange_yellowShape.iog.og[1]" "rubikBlueSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_blue_red|corner_blue_orange_yellowShape.iog.og[1]" "rubikBlueSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_blue_white|corner_blue_orange_yellowShape.iog.og[1]" "rubikBlueSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_blue_yellow|corner_blue_orange_yellowShape.iog.og[1]" "rubikBlueSG.dsm"
		 -na;
connectAttr "rubikBlueSG.msg" "materialInfo2.sg";
connectAttr "rubikBlue.msg" "materialInfo2.m";
connectAttr "polyBevel1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "groupParts2.og" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "groupParts3.og" "groupParts4.ig";
connectAttr "groupId7.id" "groupParts4.gi";
connectAttr "groupParts4.og" "groupParts5.ig";
connectAttr "groupId9.id" "groupParts5.gi";
connectAttr "groupParts5.og" "groupParts6.ig";
connectAttr "groupId11.id" "groupParts6.gi";
connectAttr "groupParts6.og" "groupParts7.ig";
connectAttr "groupId13.id" "groupParts7.gi";
connectAttr "groupParts7.og" "groupParts8.ig";
connectAttr "groupId15.id" "groupParts8.gi";
connectAttr "groupParts8.og" "groupParts9.ig";
connectAttr "groupId17.id" "groupParts9.gi";
connectAttr "groupParts9.og" "groupParts10.ig";
connectAttr "groupId19.id" "groupParts10.gi";
connectAttr "groupParts10.og" "groupParts11.ig";
connectAttr "groupId20.id" "groupParts11.gi";
connectAttr "groupParts11.og" "groupParts12.ig";
connectAttr "groupId21.id" "groupParts12.gi";
connectAttr "groupParts12.og" "groupParts13.ig";
connectAttr "groupId22.id" "groupParts13.gi";
connectAttr "groupParts13.og" "groupParts14.ig";
connectAttr "groupId23.id" "groupParts14.gi";
connectAttr "groupParts14.og" "groupParts15.ig";
connectAttr "groupId24.id" "groupParts15.gi";
connectAttr "groupParts15.og" "groupParts16.ig";
connectAttr "groupId25.id" "groupParts16.gi";
connectAttr "groupParts16.og" "groupParts17.ig";
connectAttr "groupId26.id" "groupParts17.gi";
connectAttr "groupParts17.og" "groupParts18.ig";
connectAttr "groupId27.id" "groupParts18.gi";
connectAttr "rubikGreen.oc" "rubikGreenSG.ss";
connectAttr "groupId46.msg" "rubikGreenSG.gn" -na;
connectAttr "groupId47.msg" "rubikGreenSG.gn" -na;
connectAttr "groupId48.msg" "rubikGreenSG.gn" -na;
connectAttr "groupId49.msg" "rubikGreenSG.gn" -na;
connectAttr "groupId50.msg" "rubikGreenSG.gn" -na;
connectAttr "groupId51.msg" "rubikGreenSG.gn" -na;
connectAttr "groupId52.msg" "rubikGreenSG.gn" -na;
connectAttr "groupId53.msg" "rubikGreenSG.gn" -na;
connectAttr "groupId54.msg" "rubikGreenSG.gn" -na;
connectAttr "|RubikCubeGrp|center_green|corner_blue_orange_yellowShape.iog.og[1]" "rubikGreenSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_green_orange_white|corner_blue_orange_yellowShape.iog.og[1]" "rubikGreenSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_green_orange_yellow|corner_blue_orange_yellowShape.iog.og[1]" "rubikGreenSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_green_red_white|corner_blue_orange_yellowShape.iog.og[1]" "rubikGreenSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_green_red_yellow|corner_blue_orange_yellowShape.iog.og[1]" "rubikGreenSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_green_orange|corner_blue_orange_yellowShape.iog.og[1]" "rubikGreenSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_green_red|corner_blue_orange_yellowShape.iog.og[1]" "rubikGreenSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_green_white|corner_blue_orange_yellowShape.iog.og[1]" "rubikGreenSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_green_yellow|corner_blue_orange_yellowShape.iog.og[1]" "rubikGreenSG.dsm"
		 -na;
connectAttr "rubikGreenSG.msg" "materialInfo3.sg";
connectAttr "rubikGreen.msg" "materialInfo3.m";
connectAttr "groupParts18.og" "groupParts19.ig";
connectAttr "groupId28.id" "groupParts19.gi";
connectAttr "groupParts19.og" "groupParts20.ig";
connectAttr "groupId30.id" "groupParts20.gi";
connectAttr "groupParts20.og" "groupParts21.ig";
connectAttr "groupId32.id" "groupParts21.gi";
connectAttr "groupParts21.og" "groupParts22.ig";
connectAttr "groupId34.id" "groupParts22.gi";
connectAttr "groupParts22.og" "groupParts23.ig";
connectAttr "groupId36.id" "groupParts23.gi";
connectAttr "groupParts23.og" "groupParts24.ig";
connectAttr "groupId38.id" "groupParts24.gi";
connectAttr "groupParts24.og" "groupParts25.ig";
connectAttr "groupId40.id" "groupParts25.gi";
connectAttr "groupParts25.og" "groupParts26.ig";
connectAttr "groupId42.id" "groupParts26.gi";
connectAttr "groupParts26.og" "groupParts27.ig";
connectAttr "groupId44.id" "groupParts27.gi";
connectAttr "groupParts27.og" "groupParts28.ig";
connectAttr "groupId46.id" "groupParts28.gi";
connectAttr "groupParts28.og" "groupParts29.ig";
connectAttr "groupId47.id" "groupParts29.gi";
connectAttr "groupParts29.og" "groupParts30.ig";
connectAttr "groupId48.id" "groupParts30.gi";
connectAttr "groupParts30.og" "groupParts31.ig";
connectAttr "groupId49.id" "groupParts31.gi";
connectAttr "groupParts31.og" "groupParts32.ig";
connectAttr "groupId50.id" "groupParts32.gi";
connectAttr "groupParts32.og" "groupParts33.ig";
connectAttr "groupId51.id" "groupParts33.gi";
connectAttr "groupParts33.og" "groupParts34.ig";
connectAttr "groupId52.id" "groupParts34.gi";
connectAttr "groupParts34.og" "groupParts35.ig";
connectAttr "groupId53.id" "groupParts35.gi";
connectAttr "groupParts35.og" "groupParts36.ig";
connectAttr "groupId54.id" "groupParts36.gi";
connectAttr "rubikOrange.oc" "rubikOrangeSG.ss";
connectAttr "groupId61.msg" "rubikOrangeSG.gn" -na;
connectAttr "groupId62.msg" "rubikOrangeSG.gn" -na;
connectAttr "groupId63.msg" "rubikOrangeSG.gn" -na;
connectAttr "groupId64.msg" "rubikOrangeSG.gn" -na;
connectAttr "groupId65.msg" "rubikOrangeSG.gn" -na;
connectAttr "groupId66.msg" "rubikOrangeSG.gn" -na;
connectAttr "groupId67.msg" "rubikOrangeSG.gn" -na;
connectAttr "groupId68.msg" "rubikOrangeSG.gn" -na;
connectAttr "groupId69.msg" "rubikOrangeSG.gn" -na;
connectAttr "|RubikCubeGrp|center_orange|corner_blue_orange_yellowShape.iog.og[1]" "rubikOrangeSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_blue_orange_white|corner_blue_orange_yellowShape.iog.og[2]" "rubikOrangeSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_blue_orange_yellow|corner_blue_orange_yellowShape.iog.og[2]" "rubikOrangeSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_green_orange_white|corner_blue_orange_yellowShape.iog.og[2]" "rubikOrangeSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_green_orange_yellow|corner_blue_orange_yellowShape.iog.og[2]" "rubikOrangeSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_blue_orange|corner_blue_orange_yellowShape.iog.og[2]" "rubikOrangeSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_green_orange|corner_blue_orange_yellowShape.iog.og[2]" "rubikOrangeSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_orange_white|corner_blue_orange_yellowShape.iog.og[1]" "rubikOrangeSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_orange_yellow|corner_blue_orange_yellowShape.iog.og[1]" "rubikOrangeSG.dsm"
		 -na;
connectAttr "rubikOrangeSG.msg" "materialInfo4.sg";
connectAttr "rubikOrange.msg" "materialInfo4.m";
connectAttr "groupParts36.og" "groupParts37.ig";
connectAttr "groupId55.id" "groupParts37.gi";
connectAttr "groupParts37.og" "groupParts38.ig";
connectAttr "groupId57.id" "groupParts38.gi";
connectAttr "groupParts38.og" "groupParts39.ig";
connectAttr "groupId59.id" "groupParts39.gi";
connectAttr "groupParts39.og" "groupParts40.ig";
connectAttr "groupId61.id" "groupParts40.gi";
connectAttr "groupParts40.og" "groupParts41.ig";
connectAttr "groupId62.id" "groupParts41.gi";
connectAttr "groupParts41.og" "groupParts42.ig";
connectAttr "groupId63.id" "groupParts42.gi";
connectAttr "groupParts42.og" "groupParts43.ig";
connectAttr "groupId64.id" "groupParts43.gi";
connectAttr "groupParts43.og" "groupParts44.ig";
connectAttr "groupId65.id" "groupParts44.gi";
connectAttr "groupParts44.og" "groupParts45.ig";
connectAttr "groupId66.id" "groupParts45.gi";
connectAttr "groupParts45.og" "groupParts46.ig";
connectAttr "groupId67.id" "groupParts46.gi";
connectAttr "groupParts46.og" "groupParts47.ig";
connectAttr "groupId68.id" "groupParts47.gi";
connectAttr "groupParts47.og" "groupParts48.ig";
connectAttr "groupId69.id" "groupParts48.gi";
connectAttr "rubikRed.oc" "rubikRedSG.ss";
connectAttr "groupId76.msg" "rubikRedSG.gn" -na;
connectAttr "groupId77.msg" "rubikRedSG.gn" -na;
connectAttr "groupId78.msg" "rubikRedSG.gn" -na;
connectAttr "groupId79.msg" "rubikRedSG.gn" -na;
connectAttr "groupId80.msg" "rubikRedSG.gn" -na;
connectAttr "groupId81.msg" "rubikRedSG.gn" -na;
connectAttr "groupId82.msg" "rubikRedSG.gn" -na;
connectAttr "groupId83.msg" "rubikRedSG.gn" -na;
connectAttr "groupId84.msg" "rubikRedSG.gn" -na;
connectAttr "|RubikCubeGrp|center_red|corner_blue_orange_yellowShape.iog.og[1]" "rubikRedSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_blue_red_white|corner_blue_orange_yellowShape.iog.og[2]" "rubikRedSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_blue_red_yellow|corner_blue_orange_yellowShape.iog.og[2]" "rubikRedSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_green_red_white|corner_blue_orange_yellowShape.iog.og[2]" "rubikRedSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_green_red_yellow|corner_blue_orange_yellowShape.iog.og[2]" "rubikRedSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_blue_red|corner_blue_orange_yellowShape.iog.og[2]" "rubikRedSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_green_red|corner_blue_orange_yellowShape.iog.og[2]" "rubikRedSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_red_white|corner_blue_orange_yellowShape.iog.og[1]" "rubikRedSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_red_yellow|corner_blue_orange_yellowShape.iog.og[1]" "rubikRedSG.dsm"
		 -na;
connectAttr "rubikRedSG.msg" "materialInfo5.sg";
connectAttr "rubikRed.msg" "materialInfo5.m";
connectAttr "groupParts48.og" "groupParts49.ig";
connectAttr "groupId70.id" "groupParts49.gi";
connectAttr "groupParts49.og" "groupParts50.ig";
connectAttr "groupId72.id" "groupParts50.gi";
connectAttr "groupParts50.og" "groupParts51.ig";
connectAttr "groupId74.id" "groupParts51.gi";
connectAttr "groupParts51.og" "groupParts52.ig";
connectAttr "groupId76.id" "groupParts52.gi";
connectAttr "groupParts52.og" "groupParts53.ig";
connectAttr "groupId77.id" "groupParts53.gi";
connectAttr "groupParts53.og" "groupParts54.ig";
connectAttr "groupId78.id" "groupParts54.gi";
connectAttr "groupParts54.og" "groupParts55.ig";
connectAttr "groupId79.id" "groupParts55.gi";
connectAttr "groupParts55.og" "groupParts56.ig";
connectAttr "groupId80.id" "groupParts56.gi";
connectAttr "groupParts56.og" "groupParts57.ig";
connectAttr "groupId81.id" "groupParts57.gi";
connectAttr "groupParts57.og" "groupParts58.ig";
connectAttr "groupId82.id" "groupParts58.gi";
connectAttr "groupParts58.og" "groupParts59.ig";
connectAttr "groupId83.id" "groupParts59.gi";
connectAttr "groupParts59.og" "groupParts60.ig";
connectAttr "groupId84.id" "groupParts60.gi";
connectAttr "rubikYellow.oc" "rubikYellowSG.ss";
connectAttr "groupId87.msg" "rubikYellowSG.gn" -na;
connectAttr "groupId88.msg" "rubikYellowSG.gn" -na;
connectAttr "groupId89.msg" "rubikYellowSG.gn" -na;
connectAttr "groupId90.msg" "rubikYellowSG.gn" -na;
connectAttr "groupId91.msg" "rubikYellowSG.gn" -na;
connectAttr "groupId92.msg" "rubikYellowSG.gn" -na;
connectAttr "groupId93.msg" "rubikYellowSG.gn" -na;
connectAttr "groupId94.msg" "rubikYellowSG.gn" -na;
connectAttr "groupId95.msg" "rubikYellowSG.gn" -na;
connectAttr "|RubikCubeGrp|center_yellow|corner_blue_orange_yellowShape.iog.og[1]" "rubikYellowSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_blue_orange_yellow|corner_blue_orange_yellowShape.iog.og[3]" "rubikYellowSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_blue_red_yellow|corner_blue_orange_yellowShape.iog.og[3]" "rubikYellowSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_green_orange_yellow|corner_blue_orange_yellowShape.iog.og[3]" "rubikYellowSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_green_red_yellow|corner_blue_orange_yellowShape.iog.og[3]" "rubikYellowSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_blue_yellow|corner_blue_orange_yellowShape.iog.og[2]" "rubikYellowSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_green_yellow|corner_blue_orange_yellowShape.iog.og[2]" "rubikYellowSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_orange_yellow|corner_blue_orange_yellowShape.iog.og[2]" "rubikYellowSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_red_yellow|corner_blue_orange_yellowShape.iog.og[2]" "rubikYellowSG.dsm"
		 -na;
connectAttr "rubikYellowSG.msg" "materialInfo6.sg";
connectAttr "rubikYellow.msg" "materialInfo6.m";
connectAttr "groupParts60.og" "groupParts61.ig";
connectAttr "groupId85.id" "groupParts61.gi";
connectAttr "groupParts61.og" "groupParts62.ig";
connectAttr "groupId87.id" "groupParts62.gi";
connectAttr "groupParts62.og" "groupParts63.ig";
connectAttr "groupId88.id" "groupParts63.gi";
connectAttr "groupParts63.og" "groupParts64.ig";
connectAttr "groupId89.id" "groupParts64.gi";
connectAttr "groupParts64.og" "groupParts65.ig";
connectAttr "groupId90.id" "groupParts65.gi";
connectAttr "groupParts65.og" "groupParts66.ig";
connectAttr "groupId91.id" "groupParts66.gi";
connectAttr "groupParts66.og" "groupParts67.ig";
connectAttr "groupId92.id" "groupParts67.gi";
connectAttr "groupParts67.og" "groupParts68.ig";
connectAttr "groupId93.id" "groupParts68.gi";
connectAttr "groupParts68.og" "groupParts69.ig";
connectAttr "groupId94.id" "groupParts69.gi";
connectAttr "groupParts69.og" "groupParts70.ig";
connectAttr "groupId95.id" "groupParts70.gi";
connectAttr "rubikWhite.oc" "rubikWhiteSG.ss";
connectAttr "groupId98.msg" "rubikWhiteSG.gn" -na;
connectAttr "groupId99.msg" "rubikWhiteSG.gn" -na;
connectAttr "groupId100.msg" "rubikWhiteSG.gn" -na;
connectAttr "groupId101.msg" "rubikWhiteSG.gn" -na;
connectAttr "groupId102.msg" "rubikWhiteSG.gn" -na;
connectAttr "groupId103.msg" "rubikWhiteSG.gn" -na;
connectAttr "groupId104.msg" "rubikWhiteSG.gn" -na;
connectAttr "groupId105.msg" "rubikWhiteSG.gn" -na;
connectAttr "groupId106.msg" "rubikWhiteSG.gn" -na;
connectAttr "|RubikCubeGrp|center_white|corner_blue_orange_yellowShape.iog.og[1]" "rubikWhiteSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_blue_orange_white|corner_blue_orange_yellowShape.iog.og[3]" "rubikWhiteSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_blue_red_white|corner_blue_orange_yellowShape.iog.og[3]" "rubikWhiteSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_green_orange_white|corner_blue_orange_yellowShape.iog.og[3]" "rubikWhiteSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|corner_green_red_white|corner_blue_orange_yellowShape.iog.og[3]" "rubikWhiteSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_blue_white|corner_blue_orange_yellowShape.iog.og[2]" "rubikWhiteSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_green_white|corner_blue_orange_yellowShape.iog.og[2]" "rubikWhiteSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_orange_white|corner_blue_orange_yellowShape.iog.og[2]" "rubikWhiteSG.dsm"
		 -na;
connectAttr "|RubikCubeGrp|side_red_white|corner_blue_orange_yellowShape.iog.og[2]" "rubikWhiteSG.dsm"
		 -na;
connectAttr "rubikWhiteSG.msg" "materialInfo7.sg";
connectAttr "rubikWhite.msg" "materialInfo7.m";
connectAttr "groupParts70.og" "groupParts71.ig";
connectAttr "groupId96.id" "groupParts71.gi";
connectAttr "groupParts71.og" "groupParts72.ig";
connectAttr "groupId98.id" "groupParts72.gi";
connectAttr "groupParts72.og" "groupParts73.ig";
connectAttr "groupId99.id" "groupParts73.gi";
connectAttr "groupParts73.og" "groupParts74.ig";
connectAttr "groupId100.id" "groupParts74.gi";
connectAttr "groupParts74.og" "groupParts75.ig";
connectAttr "groupId101.id" "groupParts75.gi";
connectAttr "groupParts75.og" "groupParts76.ig";
connectAttr "groupId102.id" "groupParts76.gi";
connectAttr "groupParts76.og" "groupParts77.ig";
connectAttr "groupId103.id" "groupParts77.gi";
connectAttr "groupParts77.og" "groupParts78.ig";
connectAttr "groupId104.id" "groupParts78.gi";
connectAttr "groupParts78.og" "groupParts79.ig";
connectAttr "groupId105.id" "groupParts79.gi";
connectAttr "groupParts79.og" "groupParts80.ig";
connectAttr "groupId106.id" "groupParts80.gi";
connectAttr "rubikBlackSG.pa" ":renderPartition.st" -na;
connectAttr "rubikBlueSG.pa" ":renderPartition.st" -na;
connectAttr "rubikGreenSG.pa" ":renderPartition.st" -na;
connectAttr "rubikOrangeSG.pa" ":renderPartition.st" -na;
connectAttr "rubikRedSG.pa" ":renderPartition.st" -na;
connectAttr "rubikYellowSG.pa" ":renderPartition.st" -na;
connectAttr "rubikWhiteSG.pa" ":renderPartition.st" -na;
connectAttr "rubikBlack.msg" ":defaultShaderList1.s" -na;
connectAttr "rubikBlue.msg" ":defaultShaderList1.s" -na;
connectAttr "rubikGreen.msg" ":defaultShaderList1.s" -na;
connectAttr "rubikOrange.msg" ":defaultShaderList1.s" -na;
connectAttr "rubikRed.msg" ":defaultShaderList1.s" -na;
connectAttr "rubikYellow.msg" ":defaultShaderList1.s" -na;
connectAttr "rubikWhite.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of rubikCube.ma
