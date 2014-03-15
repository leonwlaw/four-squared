//Maya ASCII 2014 scene
//Name: BoxingGlove.ma
//Last modified: Sat, Mar 15, 2014 03:10:21 PM
//Codeset: 1252
requires maya "2014";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOutputPass" -nodeType "mentalrayRenderPass"
		 -nodeType "mentalrayUserBuffer" -nodeType "mentalraySubdivApprox" -nodeType "mentalrayCurveApprox"
		 -nodeType "mentalraySurfaceApprox" -nodeType "mentalrayDisplaceApprox" -nodeType "mentalrayOptions"
		 -nodeType "mentalrayGlobals" -nodeType "mentalrayItemsList" -nodeType "mentalrayShader"
		 -nodeType "mentalrayUserData" -nodeType "mentalrayText" -nodeType "mentalrayTessellation"
		 -nodeType "mentalrayPhenomenon" -nodeType "mentalrayLightProfile" -nodeType "mentalrayVertexColors"
		 -nodeType "mentalrayIblShape" -nodeType "mapVizShape" -nodeType "mentalrayCCMeshProxy"
		 -nodeType "cylindricalLightLocator" -nodeType "discLightLocator" -nodeType "rectangularLightLocator"
		 -nodeType "sphericalLightLocator" -nodeType "abcimport" -nodeType "mia_physicalsun"
		 -nodeType "mia_physicalsky" -nodeType "mia_material" -nodeType "mia_material_x" -nodeType "mia_roundcorners"
		 -nodeType "mia_exposure_simple" -nodeType "mia_portal_light" -nodeType "mia_light_surface"
		 -nodeType "mia_exposure_photographic" -nodeType "mia_exposure_photographic_rev" -nodeType "mia_lens_bokeh"
		 -nodeType "mia_envblur" -nodeType "mia_ciesky" -nodeType "mia_photometric_light"
		 -nodeType "mib_texture_vector" -nodeType "mib_texture_remap" -nodeType "mib_texture_rotate"
		 -nodeType "mib_bump_basis" -nodeType "mib_bump_map" -nodeType "mib_passthrough_bump_map"
		 -nodeType "mib_bump_map2" -nodeType "mib_lookup_spherical" -nodeType "mib_lookup_cube1"
		 -nodeType "mib_lookup_cube6" -nodeType "mib_lookup_background" -nodeType "mib_lookup_cylindrical"
		 -nodeType "mib_texture_lookup" -nodeType "mib_texture_lookup2" -nodeType "mib_texture_filter_lookup"
		 -nodeType "mib_texture_checkerboard" -nodeType "mib_texture_polkadot" -nodeType "mib_texture_polkasphere"
		 -nodeType "mib_texture_turbulence" -nodeType "mib_texture_wave" -nodeType "mib_reflect"
		 -nodeType "mib_refract" -nodeType "mib_transparency" -nodeType "mib_continue" -nodeType "mib_opacity"
		 -nodeType "mib_twosided" -nodeType "mib_refraction_index" -nodeType "mib_dielectric"
		 -nodeType "mib_ray_marcher" -nodeType "mib_illum_lambert" -nodeType "mib_illum_phong"
		 -nodeType "mib_illum_ward" -nodeType "mib_illum_ward_deriv" -nodeType "mib_illum_blinn"
		 -nodeType "mib_illum_cooktorr" -nodeType "mib_illum_hair" -nodeType "mib_volume"
		 -nodeType "mib_color_alpha" -nodeType "mib_color_average" -nodeType "mib_color_intensity"
		 -nodeType "mib_color_interpolate" -nodeType "mib_color_mix" -nodeType "mib_color_spread"
		 -nodeType "mib_geo_cube" -nodeType "mib_geo_torus" -nodeType "mib_geo_sphere" -nodeType "mib_geo_cone"
		 -nodeType "mib_geo_cylinder" -nodeType "mib_geo_square" -nodeType "mib_geo_instance"
		 -nodeType "mib_geo_instance_mlist" -nodeType "mib_geo_add_uv_texsurf" -nodeType "mib_photon_basic"
		 -nodeType "mib_light_infinite" -nodeType "mib_light_point" -nodeType "mib_light_spot"
		 -nodeType "mib_light_photometric" -nodeType "mib_cie_d" -nodeType "mib_blackbody"
		 -nodeType "mib_shadow_transparency" -nodeType "mib_lens_stencil" -nodeType "mib_lens_clamp"
		 -nodeType "mib_lightmap_write" -nodeType "mib_lightmap_sample" -nodeType "mib_amb_occlusion"
		 -nodeType "mib_fast_occlusion" -nodeType "mib_map_get_scalar" -nodeType "mib_map_get_integer"
		 -nodeType "mib_map_get_vector" -nodeType "mib_map_get_color" -nodeType "mib_map_get_transform"
		 -nodeType "mib_map_get_scalar_array" -nodeType "mib_map_get_integer_array" -nodeType "mib_fg_occlusion"
		 -nodeType "mib_bent_normal_env" -nodeType "mib_glossy_reflection" -nodeType "mib_glossy_refraction"
		 -nodeType "builtin_bsdf_architectural" -nodeType "builtin_bsdf_architectural_comp"
		 -nodeType "builtin_bsdf_carpaint" -nodeType "builtin_bsdf_ashikhmin" -nodeType "builtin_bsdf_lambert"
		 -nodeType "builtin_bsdf_mirror" -nodeType "builtin_bsdf_phong" -nodeType "contour_store_function"
		 -nodeType "contour_store_function_simple" -nodeType "contour_contrast_function_levels"
		 -nodeType "contour_contrast_function_simple" -nodeType "contour_shader_simple" -nodeType "contour_shader_silhouette"
		 -nodeType "contour_shader_maxcolor" -nodeType "contour_shader_curvature" -nodeType "contour_shader_factorcolor"
		 -nodeType "contour_shader_depthfade" -nodeType "contour_shader_framefade" -nodeType "contour_shader_layerthinner"
		 -nodeType "contour_shader_widthfromcolor" -nodeType "contour_shader_widthfromlightdir"
		 -nodeType "contour_shader_widthfromlight" -nodeType "contour_shader_combi" -nodeType "contour_only"
		 -nodeType "contour_composite" -nodeType "contour_ps" -nodeType "mi_metallic_paint"
		 -nodeType "mi_metallic_paint_x" -nodeType "mi_bump_flakes" -nodeType "mi_car_paint_phen"
		 -nodeType "mi_metallic_paint_output_mixer" -nodeType "mi_car_paint_phen_x" -nodeType "physical_lens_dof"
		 -nodeType "physical_light" -nodeType "dgs_material" -nodeType "dgs_material_photon"
		 -nodeType "dielectric_material" -nodeType "dielectric_material_photon" -nodeType "oversampling_lens"
		 -nodeType "path_material" -nodeType "parti_volume" -nodeType "parti_volume_photon"
		 -nodeType "transmat" -nodeType "transmat_photon" -nodeType "mip_rayswitch" -nodeType "mip_rayswitch_advanced"
		 -nodeType "mip_rayswitch_environment" -nodeType "mip_card_opacity" -nodeType "mip_motionblur"
		 -nodeType "mip_motion_vector" -nodeType "mip_matteshadow" -nodeType "mip_cameramap"
		 -nodeType "mip_mirrorball" -nodeType "mip_grayball" -nodeType "mip_gamma_gain" -nodeType "mip_render_subset"
		 -nodeType "mip_matteshadow_mtl" -nodeType "mip_binaryproxy" -nodeType "mip_rayswitch_stage"
		 -nodeType "mip_fgshooter" -nodeType "mib_ptex_lookup" -nodeType "misss_physical"
		 -nodeType "misss_physical_phen" -nodeType "misss_fast_shader" -nodeType "misss_fast_shader_x"
		 -nodeType "misss_fast_shader2" -nodeType "misss_fast_shader2_x" -nodeType "misss_skin_specular"
		 -nodeType "misss_lightmap_write" -nodeType "misss_lambert_gamma" -nodeType "misss_call_shader"
		 -nodeType "misss_set_normal" -nodeType "misss_fast_lmap_maya" -nodeType "misss_fast_simple_maya"
		 -nodeType "misss_fast_skin_maya" -nodeType "misss_fast_skin_phen" -nodeType "misss_fast_skin_phen_d"
		 -nodeType "misss_mia_skin2_phen" -nodeType "misss_mia_skin2_phen_d" -nodeType "misss_lightmap_phen"
		 -nodeType "misss_mia_skin2_surface_phen" -nodeType "surfaceSampler" -nodeType "mib_data_bool"
		 -nodeType "mib_data_int" -nodeType "mib_data_scalar" -nodeType "mib_data_vector"
		 -nodeType "mib_data_color" -nodeType "mib_data_string" -nodeType "mib_data_texture"
		 -nodeType "mib_data_shader" -nodeType "mib_data_bool_array" -nodeType "mib_data_int_array"
		 -nodeType "mib_data_scalar_array" -nodeType "mib_data_vector_array" -nodeType "mib_data_color_array"
		 -nodeType "mib_data_string_array" -nodeType "mib_data_texture_array" -nodeType "mib_data_shader_array"
		 -nodeType "mib_data_get_bool" -nodeType "mib_data_get_int" -nodeType "mib_data_get_scalar"
		 -nodeType "mib_data_get_vector" -nodeType "mib_data_get_color" -nodeType "mib_data_get_string"
		 -nodeType "mib_data_get_texture" -nodeType "mib_data_get_shader" -nodeType "mib_data_get_shader_bool"
		 -nodeType "mib_data_get_shader_int" -nodeType "mib_data_get_shader_scalar" -nodeType "mib_data_get_shader_vector"
		 -nodeType "mib_data_get_shader_color" -nodeType "user_ibl_env" -nodeType "user_ibl_rect"
		 -nodeType "mia_material_x_passes" -nodeType "mi_metallic_paint_x_passes" -nodeType "mi_car_paint_phen_x_passes"
		 -nodeType "misss_fast_shader_x_passes" -dataType "byteArray" "Mayatomr" "2014.0 - 3.11.1.9 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201307170459-880822";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.6853920054660398 16.796376037508654 -6.8988169528338457 ;
	setAttr ".r" -type "double3" -66.33835250592513 -155.00000000005585 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 17.615286987817427;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 2.2117320548094499 1.1371266944546485 -0.1670447351759099 ;
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
createNode transform -n "Glove";
createNode mesh -n "GloveShape" -p "Glove";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000011920928955 0.51058734953403473 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 195 ".pt";
	setAttr ".pt[0:165]" -type "float3"  1.2720771 0.47228983 -0.24329555 -1.7210023 
		0.4966172 -0.014396667 1.2133498 -1.1018389 -0.33799362 -1.5165825 -1.1018389 -0.33799362 
		0.5597887 -0.7673111 3.5463686 -0.86607784 -0.7673111 3.5463686 0.47563183 0.27790046 
		3.3504128 -0.78192079 0.27790046 3.3504128 0.99657035 0.9002133 -1.5236301 -1.1994922 
		0.9002133 -1.5236301 -1.366922 -0.55335337 -1.6006603 1.0636888 -0.55335337 -1.6006603 
		1.1626296 -1.1538841 1.3209968 1.3452129 0.55054474 0.99530154 -1.605433 0.3938894 
		0.90021485 -1.4709775 -1.1538841 1.3209968 -0.17971909 -0.70178276 -1.6516609 -0.18189633 
		-1.3563911 -0.33799362 -0.18719435 -1.4562268 1.2821615 -0.17608273 -0.77268147 3.5274878 
		-0.17008519 0.27790046 3.5436745 -0.18546349 0.64266294 1.2376502 -0.18319899 0.54112464 
		-0.24329555 -0.14478493 0.92349362 -1.8317165 1.2898326 0.12202773 -1.5602875 1.4809062 
		-0.33786187 -0.27715719 1.4809062 -0.33786187 1.2725646 0.72256327 -0.33001783 3.5434394 
		-0.1824621 -0.33002838 3.6659718 -1.0288522 -0.33001783 3.5434394 -1.88868 -0.24544023 
		1.2646047 -1.5360234 0.099266008 -1.4590645 -0.15001875 0.12050337 -2.1403947 0.32654715 
		-1.3563911 -0.33799362 0.41021621 -1.4562268 1.2821615 0.47411108 -0.77268147 3.5274878 
		0.15815926 -0.32874322 3.6224113 0.11438537 0.27790046 3.5436745 0.38288367 0.64266294 
		0.99530154 0.34712017 0.54112464 -0.24329555 0.18270862 0.93523639 -1.7790132 0.34712017 
		0.12050337 -2.0396976 0.29217243 -0.70178276 -1.6516609 -0.67724681 -1.3563911 -0.33799362 
		-0.76922178 -1.4562268 1.2821615 -0.7807371 -0.77268147 3.5274878 -0.49214309 -0.32874322 
		3.6224113 -0.44723046 0.27790046 3.5436745 -0.79350293 0.62222469 0.970388 -0.6998623 
		0.54112464 -0.24329555 -0.52584505 0.93523639 -1.7790132 -0.6998623 0.12050337 -2.0396976 
		-0.63945961 -0.70178276 -1.6516609 1.2898326 -0.18676735 -1.5602875 1.4809062 -0.68758953 
		-0.27715719 1.3984892 -0.69472063 1.4475331 0.72256327 -0.51761645 3.5434394 0.15815926 
		-0.53539842 3.6224113 -0.17123288 -0.53539842 3.6224113 -0.49214303 -0.53539842 3.6224113 
		-1.0288522 -0.51761645 3.5434394 -1.8062636 -0.52389342 1.3042994 -1.7879899 -0.60402566 
		-0.33625376 -1.5930668 -0.18676735 -1.5602875 -0.69986224 -0.21221027 -2.0396976 
		-0.18319899 -0.21221027 -2.0907006 0.34712017 -0.21221027 -2.0907006 1.1938868 0.52932459 
		-1.6113491 1.4014859 0.074731074 -0.24329555 1.4014859 0.074731074 1.2310319 0.67996073 
		-0.097345509 3.4930549 0.14308882 -0.072436392 3.6393251 -0.17027897 -0.072436392 
		3.6393251 -0.47557646 -0.072436392 3.6393251 -0.98624903 -0.097345509 3.4930549 -1.8290597 
		0.064287953 1.2334265 -1.3693709 0.52932459 -1.6113491 -0.53513539 0.56372517 -1.9295306 
		-0.15001875 0.5014447 -2.0396976 0.19116008 0.56372517 -1.9295306 -1.6390336 0.76110661 
		-0.76749313 1.3359017 0.75568825 -0.42179573 1.4739687 0.1312591 -0.4290179 1.4975381 
		-0.27438357 -0.47237492 1.4975381 -0.62056637 -0.47237492 1.2006435 -1.0373871 -0.51605463 
		0.32169986 -1.2640784 -0.56705534 -0.18158883 -1.2640784 -0.56705534 -0.67191803 
		-1.2640784 -0.56705534 -1.5038764 -1.0373871 -0.86175251 -1.7736745 -0.54657441 -0.80411112 
		0.72664249 0.83765322 0.23027951 0.17110801 0.87113196 0.26578927 0.17116332 1.3730404 
		0.14688998 0.88673484 1.148631 0.006817162 -0.17864907 0.86653417 0.34888297 -0.15418166 
		1.3977119 0.21880472 -0.52486473 0.88006347 0.33526564 -0.47497189 1.3733156 0.14665282 
		-1.031968 0.83767402 0.23019087 -1.3120681 1.1204813 0.075971246 -0.54278296 1.4420038 
		-0.98573089 -1.0766634 1.3396373 -0.59225535 -0.14189208 1.4562268 -0.98144937 0.27644324 
		1.4414898 -0.9851048 0.68222666 1.3380263 -0.57122672 -1.4353995 -0.79536968 -1.4040542 
		-1.7622981 -0.070080101 -1.3507485 -1.779487 0.075098962 -1.2828798 -1.7155881 0.330549 
		-1.2697716 -1.6640811 0.44168085 -1.260612 -1.8304435 0.32915035 0.95009822 -2.1839654 
		0.6771403 -0.11925602 -1.9397644 0.13615087 1.0853087 -2.6002333 0.33230361 -0.22082043 
		-2.0355804 -0.092572607 1.1102314 -2.8472748 -0.25414467 -0.30673289 -2.0598104 -0.52963656 
		0.90958589 -2.574986 -0.59094357 -0.34294558 -2.6480649 0.34001356 -0.78474736 -2.2510118 
		0.68965983 -0.66016984 -2.556392 -0.53604472 -0.91175199 -2.8287296 -0.17538886 -0.90749347 
		-2.4320886 -0.24050161 -1.3623862 -2.4430065 0.10641813 -1.3859844 -2.2306633 0.43931133 
		-1.3377719 -2.1305065 0.59517819 -1.2379727 0.79990363 -0.55909353 2.8477864 0.85153222 
		-0.32957226 2.8874817 0.8026129 -0.068133421 2.6016445 0.67978144 0.23717269 2.4940066 
		0.16286421 0.36441964 2.4936457 -0.17408758 0.36441964 2.6046767 -0.57341981 0.36363766 
		2.3177106 -1.0796473 0.22544657 2.2852268 -1.1443374 -0.070962355 2.6027398 -1.1878936 
		-0.30453598 2.7411923 -1.1397576 -0.51281828 2.7086546 -1.0634156 -0.82472372 2.6200314 
		-0.52017605 -0.92447793 2.7492356 -0.17511356 -0.92447793 2.7492356 0.17906928 -0.92447793 
		2.7492356 0.73041093 -0.82472372 2.6200314 -2.0129952 -0.16546337 -1.570292 -1.8880522 
		-0.50976163 -1.1450224 -1.9156432 -0.61552334 -0.59153163 -1.8954387 -0.4964616 1.2469857 
		-1.898437 -0.23528777 1.2543521 -1.8364112 0.069060624 1.2235894 -1.7634292 0.36677623 
		1.0055518 -1.7865793 0.64390165 -0.081582069 -1.7919534 0.60067123 -0.93077111 -1.9475397 
		0.53471154 -1.2857933 -1.9798518 0.34655246 -1.5209432 -1.9884207 0.078216113 -1.5852108 
		-1.7702283 -0.17515054 -1.3505635 -1.8270829 -0.43437889 -1.0931337 -1.8515927 -0.60317987 
		-0.48830688 -1.8924582 -0.5015372 1.2547525 -1.8941362 -0.2397632 1.2588716 -1.8331698 
		0.066956833 1.2279259 -1.697041 0.38008609 1.0072908 -1.7391597 0.57993889 -0.014692903 
		-1.7422217 0.54996395 -0.99834204 -1.6835166 0.43522382 -1.2934566 -1.7066916 0.29213786 
		-1.3619394;
	setAttr ".pt[166:194]" -1.7277384 0.098732762 -1.3943148 -1.8081533 -0.17304511 
		-1.4351478 -1.8328309 -0.35947791 -1.2727957 -1.8876905 -0.16037469 -1.5434337 -1.9072201 
		-0.37990957 -1.3038993 -1.7401402 0.54181987 -1.0842228 -1.7480934 0.42827716 -1.3323026 
		-1.7857652 0.59205025 -1.0833254 -1.7966945 0.49109992 -1.3126082 -1.7567183 0.22465415 
		-1.5012403 -1.814468 0.26608974 -1.5731783 -1.7811133 0.080882795 -1.5341415 -1.8596853 
		0.055682555 -1.620574 -1.0098283 -0.80913359 2.8715811 -0.80097377 -0.89748466 2.9195094 
		-0.17977703 -0.89748466 2.9195094 0.50604057 -0.89748466 2.9195094 0.68407762 -0.80913359 
		2.8715811 0.77890182 -0.54783076 3.0366912 0.81651139 -0.32969347 3.065608 0.76930642 
		-0.076066092 2.8437085 0.62434387 0.24823226 2.7265646 0.14969945 0.34092507 2.7787828 
		-0.17300075 0.34092507 2.8596635 -0.53915286 0.3403554 2.6506233 -0.99879909 0.23969054 
		2.5744793 -1.1014079 -0.078126855 2.8445077 -1.1447058 -0.31145567 2.9590445 -1.1096411 
		-0.51412129 2.9353423;
	setAttr ".dr" 1;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 45 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "256";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "1";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.167";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	setAttr ".w" 5.034839630355151;
	setAttr ".h" 2.2076832261361647;
	setAttr ".d" 6.290618926346502;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 0.82433250897578936 0 0 0 0 1 0 0 0 0 0.73798426676434892 0
		 -0.69897180044736373 1.1038416130680824 -1.4119555958898689 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.69897181 1.1038417 0.90923327 ;
	setAttr ".rs" 376132285;
	setAttr ".lt" -type "double3" 0 -0.33993795676393845 1.1144057360529795 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.7741627927440069 -4.9338839014367863e-008 0.90923329101812067 ;
	setAttr ".cbx" -type "double3" 1.3762191918492794 2.207683275475004 0.90923329101812067 ;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 0.82433250897578936 0 0 0 0 1 0 0 0 0 0.66285660712667382 0
		 -0.69897180044736373 1.1038416130680824 -1.4119555958898689 1;
	setAttr ".wt" 0.47243174910545349;
	setAttr ".re" 6;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[0:3]" "e[14]" "e[18]" "e[24]" "e[27]";
	setAttr ".ix" -type "matrix" 0.82433250897578936 0 0 0 0 1 0 0 0 0 0.66285660712667382 0
		 -0.69897180044736373 1.1038416130680824 -1.4119555958898689 1;
	setAttr ".wt" 0.51016741991043091;
	setAttr ".dr" no;
	setAttr ".re" 18;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[4:5]" "e[8:9]" "e[16]" "e[19]" "e[22]" "e[26]" "e[36]" "e[43]";
	setAttr ".ix" -type "matrix" 0.82433250897578936 0 0 0 0 1 0 0 0 0 0.66285660712667382 0
		 -0.69897180044736373 1.1038416130680824 -1.4119555958898689 1;
	setAttr ".wt" 0.51283365488052368;
	setAttr ".re" 19;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[0:3]" "e[14]" "e[18]" "e[24]" "e[31]" "e[52]" "e[63]";
	setAttr ".ix" -type "matrix" 0.82433250897578936 0 0 0 0 1 0 0 0 0 0.66285660712667382 0
		 -0.69897180044736373 1.1038416130680824 -1.4119555958898689 1;
	setAttr ".wt" 0.66534680128097534;
	setAttr ".dr" no;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[27:29]" "e[33]" "e[35]" "e[37]" "e[39]" "e[41]" "e[54]" "e[62]";
	setAttr ".ix" -type "matrix" 0.82433250897578936 0 0 0 0 1 0 0 0 0 0.66285660712667382 0
		 -0.69897180044736373 1.1038416130680824 -1.4119555958898689 1;
	setAttr ".wt" 0.33957064151763916;
	setAttr ".re" 29;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[8:9]" "e[22]" "e[36]" "e[44:45]" "e[55]" "e[57]" "e[59]" "e[61]" "e[70]" "e[82]" "e[90]" "e[102]";
	setAttr ".ix" -type "matrix" 0.82433250897578936 0 0 0 0 1 0 0 0 0 0.66285660712667382 0
		 -0.69897180044736373 1.1038416130680824 -1.4119555958898689 1;
	setAttr ".wt" 0.41334700584411621;
	setAttr ".re" 44;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[4:5]" "e[16]" "e[19]" "e[26]" "e[43]" "e[47]" "e[49]" "e[51]" "e[53]" "e[72]" "e[80]" "e[92]" "e[100]";
	setAttr ".ix" -type "matrix" 0.82433250897578936 0 0 0 0 1 0 0 0 0 0.66285660712667382 0
		 -0.69897180044736373 1.1038416130680824 -1.4119555958898689 1;
	setAttr ".wt" 0.55042409896850586;
	setAttr ".re" 19;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n"
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
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n"
		+ "                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n"
		+ "                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polySplitRing -n "polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[12:13]" "e[15]" "e[17]" "e[30]" "e[42]" "e[46]" "e[60]" "e[78]" "e[83]" "e[98]" "e[103]" "e[106]" "e[124]" "e[134]" "e[152]";
	setAttr ".ix" -type "matrix" 0.82433250897578936 0 0 0 0 1 0 0 0 0 0.66285660712667382 0
		 -0.69897180044736373 1.1038416130680824 -1.4119555958898689 1;
	setAttr ".wt" 0.1410195380449295;
	setAttr ".re" 13;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 65 ".tk";
	setAttr ".tk[0]" -type "float3" 0.2097562 0.091974206 -1.1802661e-007 ;
	setAttr ".tk[1]" -type "float3" -0.20975617 0.091974162 -4.0112056e-008 ;
	setAttr ".tk[2]" -type "float3" 0.20975617 -0.091974162 -4.0112056e-008 ;
	setAttr ".tk[3]" -type "float3" -0.20975617 -0.091974162 -4.0112056e-008 ;
	setAttr ".tk[4]" -type "float3" 1.0298703 -0.45157894 2.9802322e-007 ;
	setAttr ".tk[5]" -type "float3" -1.0298703 -0.45157894 2.9802322e-007 ;
	setAttr ".tk[6]" -type "float3" 1.0298703 0.45157897 2.9802322e-007 ;
	setAttr ".tk[7]" -type "float3" -1.0298703 0.45157903 2.9802322e-007 ;
	setAttr ".tk[8]" -type "float3" 0.36209029 -0.071449481 1.1446706 ;
	setAttr ".tk[9]" -type "float3" -0.36209023 -0.071449526 1.1446708 ;
	setAttr ".tk[10]" -type "float3" -0.36209023 -0.3889893 1.1446708 ;
	setAttr ".tk[11]" -type "float3" 0.36209023 -0.3889893 1.1446708 ;
	setAttr ".tk[12]" -type "float3" 0.25354695 -0.11117561 -6.2642522e-009 ;
	setAttr ".tk[13]" -type "float3" 0.25354695 0.11117561 6.2642522e-009 ;
	setAttr ".tk[14]" -type "float3" -0.25354698 0.11117566 3.2934448e-008 ;
	setAttr ".tk[15]" -type "float3" -0.25354695 -0.11117561 -6.2642522e-009 ;
	setAttr ".tk[16]" -type "float3" -0.0036801179 -0.30957407 1.1446708 ;
	setAttr ".tk[17]" -type "float3" -9.3132224e-010 0.26278126 0 ;
	setAttr ".tk[18]" -type "float3" 2.7061686e-016 0.21703568 0 ;
	setAttr ".tk[19]" -type "float3" -0.020942243 -0.45157897 2.9802322e-007 ;
	setAttr ".tk[20]" -type "float3" -0.020942243 0.45157897 2.9802322e-007 ;
	setAttr ".tk[23]" -type "float3" -0.0036801174 -0.15086484 1.1446708 ;
	setAttr ".tk[24]" -type "float3" 0.18097591 -0.23225629 1.1446708 ;
	setAttr ".tk[27]" -type "float3" 1.0298703 -0.011590803 2.9802322e-007 ;
	setAttr ".tk[29]" -type "float3" -1.0298703 -0.011590803 2.9802322e-007 ;
	setAttr ".tk[32]" -type "float3" -0.18097591 -0.23225629 1.1446708 ;
	setAttr ".tk[33]" -type "float3" 7.9103391e-016 -0.23021945 2.1110516 ;
	setAttr ".tk[34]" -type "float3" 2.220446e-016 0.26278129 0 ;
	setAttr ".tk[35]" -type "float3" 2.220446e-016 0.21703568 0 ;
	setAttr ".tk[36]" -type "float3" 0.33071554 -0.45157897 2.9802322e-007 ;
	setAttr ".tk[37]" -type "float3" 0.33071554 -0.011590803 2.9802322e-007 ;
	setAttr ".tk[38]" -type "float3" 0.33071554 0.45157897 2.9802322e-007 ;
	setAttr ".tk[41]" -type "float3" 0.058115583 -0.15086481 1.1446706 ;
	setAttr ".tk[42]" -type "float3" 6.6613381e-016 -0.23021945 2.1110516 ;
	setAttr ".tk[43]" -type "float3" 0.058115635 -0.30957407 1.1446708 ;
	setAttr ".tk[44]" -type "float3" 2.220446e-016 0.26278129 0 ;
	setAttr ".tk[45]" -type "float3" 2.220446e-016 0.21703568 0 ;
	setAttr ".tk[46]" -type "float3" -0.36354455 -0.45157897 2.9802322e-007 ;
	setAttr ".tk[47]" -type "float3" -0.36354455 -0.011590803 2.9802322e-007 ;
	setAttr ".tk[48]" -type "float3" -0.36354455 0.45157897 2.9802322e-007 ;
	setAttr ".tk[49]" -type "float3" -4.4703484e-008 4.4703484e-008 2.9802322e-008 ;
	setAttr ".tk[51]" -type "float3" -0.063884586 -0.15086484 1.1446708 ;
	setAttr ".tk[52]" -type "float3" 6.6613381e-016 -0.23021945 2.1110516 ;
	setAttr ".tk[53]" -type "float3" -0.063884586 -0.30957407 1.1446708 ;
	setAttr ".tk[54]" -type "float3" 0.18097591 -0.26421532 1.1446708 ;
	setAttr ".tk[57]" -type "float3" 1.0298703 -0.19345857 2.9802322e-007 ;
	setAttr ".tk[58]" -type "float3" 0.33071554 -0.19345857 2.9802322e-007 ;
	setAttr ".tk[59]" -type "float3" -0.020942247 -0.19345857 2.9802322e-007 ;
	setAttr ".tk[60]" -type "float3" -0.36354455 -0.19345857 2.9802322e-007 ;
	setAttr ".tk[61]" -type "float3" -1.0298703 -0.19345857 2.9802322e-007 ;
	setAttr ".tk[64]" -type "float3" -0.18097591 -0.26421532 1.1446708 ;
	setAttr ".tk[65]" -type "float3" 6.6613381e-016 -0.23021945 2.1110516 ;
	setAttr ".tk[66]" -type "float3" 7.9103391e-016 -0.23021945 2.1110516 ;
	setAttr ".tk[67]" -type "float3" 6.6613381e-016 -0.23021945 2.1110516 ;
	setAttr ".tk[68]" -type "float3" 0.18097597 -0.19566464 1.1446706 ;
	setAttr ".tk[69]" -type "float3" 5.9604645e-008 1.4901161e-008 0 ;
	setAttr ".tk[71]" -type "float3" 1.0298703 0.19663915 2.9802322e-007 ;
	setAttr ".tk[72]" -type "float3" 0.33071554 0.19663915 2.9802322e-007 ;
	setAttr ".tk[73]" -type "float3" -0.020942247 0.19663915 2.9802322e-007 ;
	setAttr ".tk[74]" -type "float3" -0.36354455 0.19663915 2.9802322e-007 ;
	setAttr ".tk[75]" -type "float3" -1.0298703 0.19663911 2.9802322e-007 ;
	setAttr ".tk[78]" -type "float3" -0.18097591 -0.19566467 1.1446708 ;
	setAttr ".tk[79]" -type "float3" 6.6613381e-016 -0.23021945 2.1110516 ;
	setAttr ".tk[80]" -type "float3" 7.9103391e-016 -0.23021945 2.1110516 ;
	setAttr ".tk[81]" -type "float3" -4.4703484e-008 -0.23021945 2.1110513 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 5 "f[6]" "f[20]" "f[38]" "f[48]" "f[80:83]";
	setAttr ".ix" -type "matrix" 0.82433250897578936 0 0 0 0 1 0 0 0 0 0.66285660712667382 0
		 -0.69897180044736373 1.1038416130680824 -1.4119555958898689 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.69897181 -0.19941436 1.581145 ;
	setAttr ".rs" 1301227379;
	setAttr ".lt" -type "double3" -1.7121720707891086e-015 -0.68041017349275668 0.69828439603243053 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.601253990931065 -0.49080293344070669 0.6729333952980876 ;
	setAttr ".cbx" -type "double3" 1.2033103900363378 0.091974209084012548 2.4893567875110478 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[8]" -type "float3" 0.38164219 0.26661032 -0.6185835 ;
	setAttr ".tk[9]" -type "float3" -0.38164225 0.26661032 -0.61858356 ;
	setAttr ".tk[41]" -type "float3" 0.1328526 0.05120628 0.085558102 ;
	setAttr ".tk[51]" -type "float3" -0.14604044 0.05120628 0.085557997 ;
	setAttr ".tk[68]" -type "float3" 0.20120156 -0.05120628 0.085558094 ;
	setAttr ".tk[78]" -type "float3" -0.25447792 -0.051206253 0.085558005 ;
	setAttr ".tk[79]" -type "float3" -0.15735246 -0.045087688 -0.085558102 ;
	setAttr ".tk[81]" -type "float3" 0.14314307 -0.045087688 -0.085558102 ;
	setAttr ".tk[95]" -type "float3" -5.9604645e-008 3.7252903e-009 0 ;
	setAttr ".tk[96]" -type "float3" -7.4505806e-009 -7.4505806e-009 0 ;
	setAttr ".tk[97]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".tk[98]" -type "float3" -5.9604645e-008 7.4505806e-009 0 ;
	setAttr ".tk[101]" -type "float3" 2.2351742e-008 -7.4505806e-009 0 ;
	setAttr ".tk[102]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[103]" -type "float3" 5.9604645e-008 3.7252903e-009 0 ;
	setAttr ".tk[104]" -type "float3" 5.9604645e-008 7.4505806e-009 0 ;
createNode polySplit -n "polySplit1";
	setAttr -s 9 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 92;
	setAttr ".sps[0].sp[0].t" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.50000005960464478 0 0.49999994039535522 ;
	setAttr ".sps[0].sp[1].f" 92;
	setAttr ".sps[0].sp[1].bc" -type "double3" 1.4623981314798584e-007 0.49992263317108154 
		0.50007724761962891 ;
	setAttr ".sps[0].sp[2].f" 93;
	setAttr ".sps[0].sp[2].t" 1;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[3].f" 93;
	setAttr ".sps[0].sp[3].t" 1;
	setAttr ".sps[0].sp[3].bc" -type "double3" 0.5000002384185791 0.49999964237213135 
		1.1920928955078125e-007 ;
	setAttr ".sps[0].sp[4].f" 94;
	setAttr ".sps[0].sp[4].t" 1;
	setAttr ".sps[0].sp[4].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[5].f" 94;
	setAttr ".sps[0].sp[5].t" 1;
	setAttr ".sps[0].sp[5].bc" -type "double3" 0.5246042013168335 0.47539576888084412 
		2.9802322387695313e-008 ;
	setAttr ".sps[0].sp[6].f" 95;
	setAttr ".sps[0].sp[6].bc" -type "double3" 0.49999991059303284 0.49999994039535522 
		1.7881393432617188e-007 ;
	setAttr ".sps[0].sp[7].f" 95;
	setAttr ".sps[0].sp[7].t" 1;
	setAttr ".sps[0].sp[7].bc" -type "double3" 0.50044238567352295 0.49955755472183228 
		5.9604644775390625e-008 ;
	setAttr ".sps[0].sp[8].f" 102;
	setAttr ".sps[0].sp[8].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".c2v" yes;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 83 ".tk";
	setAttr ".tk[0]" -type "float3" 0.11226821 0.010371952 -0.064935781 ;
	setAttr ".tk[1]" -type "float3" -0.11226822 0.010371959 -0.064935781 ;
	setAttr ".tk[2]" -type "float3" 0.20282982 -0.012401756 0.11666775 ;
	setAttr ".tk[3]" -type "float3" -0.20282982 -0.012401756 0.11666775 ;
	setAttr ".tk[6]" -type "float3" 0.072369538 -0.0071228761 0.24110378 ;
	setAttr ".tk[7]" -type "float3" -0.072369531 -0.0071228785 0.24110378 ;
	setAttr ".tk[8]" -type "float3" -0.15705423 -0.29683334 0.35420051 ;
	setAttr ".tk[9]" -type "float3" 0.0023680329 -0.29683334 0.35420051 ;
	setAttr ".tk[10]" -type "float3" -0.28127864 -0.072658792 -0.11666776 ;
	setAttr ".tk[11]" -type "float3" 0.28127867 -0.072658792 -0.11666776 ;
	setAttr ".tk[12]" -type "float3" -0.16233481 0.093913503 -0.018403549 ;
	setAttr ".tk[13]" -type "float3" -0.044299379 -0.10830355 0.53170478 ;
	setAttr ".tk[14]" -type "float3" 0.044299379 -0.10830358 0.066954762 ;
	setAttr ".tk[15]" -type "float3" 0.16233481 0.093913503 -0.018403549 ;
	setAttr ".tk[16]" -type "float3" -0.0041759307 0.036602501 -0.11666776 ;
	setAttr ".tk[17]" -type "float3" -0.0044993907 -0.043582618 0.11666775 ;
	setAttr ".tk[18]" -type "float3" 0.0036707483 0.12907098 -0.018403549 ;
	setAttr ".tk[20]" -type "float3" -0.0014716246 -0.0071228761 0.24110378 ;
	setAttr ".tk[21]" -type "float3" 0.0010017012 -0.11422446 0.066954762 ;
	setAttr ".tk[22]" -type "float3" -0.0024904662 0.014846515 -0.064935781 ;
	setAttr ".tk[23]" -type "float3" 0 0 0.4558304 ;
	setAttr ".tk[24]" -type "float3" 0.11366836 -0.012396606 -0.19408917 ;
	setAttr ".tk[32]" -type "float3" -0.11366836 -0.012396606 -0.19408917 ;
	setAttr ".tk[33]" -type "float3" -0.0024904662 -0.012495697 -0.24110378 ;
	setAttr ".tk[34]" -type "float3" 0.071053758 -0.043582618 0.11666775 ;
	setAttr ".tk[35]" -type "float3" -0.057967827 0.12907098 -0.018403549 ;
	setAttr ".tk[38]" -type "float3" 0.023239555 -0.0071228761 0.24110378 ;
	setAttr ".tk[39]" -type "float3" -0.015818775 -0.11422446 0.53170478 ;
	setAttr ".tk[40]" -type "float3" 0.039328914 0.014846515 -0.064935781 ;
	setAttr ".tk[41]" -type "float3" 0 0 0.4558304 ;
	setAttr ".tk[42]" -type "float3" 0.039328914 -0.012495697 -0.24110378 ;
	setAttr ".tk[43]" -type "float3" 0.065945737 0.036602501 -0.11666776 ;
	setAttr ".tk[44]" -type "float3" -0.078107007 -0.043582618 0.11666775 ;
	setAttr ".tk[45]" -type "float3" 0.063722134 0.12907098 -0.018403549 ;
	setAttr ".tk[48]" -type "float3" -0.025546474 -0.0071228761 0.24110378 ;
	setAttr ".tk[49]" -type "float3" 0.017389052 -0.11422446 0.35968322 ;
	setAttr ".tk[50]" -type "float3" -0.043232974 0.014846515 -0.064935781 ;
	setAttr ".tk[51]" -type "float3" 0 0 0.4558304 ;
	setAttr ".tk[52]" -type "float3" -0.043232974 -0.012495697 -0.24110378 ;
	setAttr ".tk[53]" -type "float3" -0.072491929 0.036602501 -0.11666776 ;
	setAttr ".tk[54]" -type "float3" 0.11366836 -0.032469627 -0.19408917 ;
	setAttr ".tk[64]" -type "float3" -0.11366836 -0.032469627 -0.19408917 ;
	setAttr ".tk[65]" -type "float3" -0.04323297 -0.034123532 -0.24110378 ;
	setAttr ".tk[66]" -type "float3" -0.0024904662 -0.034123532 -0.24110378 ;
	setAttr ".tk[67]" -type "float3" 0.039328914 -0.034123532 -0.24110378 ;
	setAttr ".tk[68]" -type "float3" -0.094187945 0.013077246 -0.19825163 ;
	setAttr ".tk[69]" -type "float3" 0.12247289 -0.015471096 -0.064935781 ;
	setAttr ".tk[70]" -type "float3" 0.12247289 -0.015471096 0.079647057 ;
	setAttr ".tk[71]" -type "float3" 0.072369538 -0.025037628 0.24110378 ;
	setAttr ".tk[72]" -type "float3" 0.023239555 -0.025037628 0.24110378 ;
	setAttr ".tk[73]" -type "float3" -0.0014716246 -0.025037628 0.24110378 ;
	setAttr ".tk[74]" -type "float3" -0.025546474 -0.025037628 0.24110378 ;
	setAttr ".tk[75]" -type "float3" -0.072369531 -0.025037618 0.24110378 ;
	setAttr ".tk[76]" -type "float3" -0.12247289 -0.015471096 0.079647057 ;
	setAttr ".tk[77]" -type "float3" -0.12247289 -0.015471096 -0.064935781 ;
	setAttr ".tk[78]" -type "float3" -0.049530767 0.013077251 -0.19825163 ;
	setAttr ".tk[79]" -type "float3" -0.035577752 0.014460679 -0.2369414 ;
	setAttr ".tk[80]" -type "float3" -0.0024904662 0.012267153 -0.24110378 ;
	setAttr ".tk[81]" -type "float3" 0.032364987 0.014460679 -0.2369414 ;
	setAttr ".tk[82]" -type "float3" 0.0074755847 0.032585077 -0.096997373 ;
	setAttr ".tk[83]" -type "float3" -0.0076336619 0.032585081 -0.096997373 ;
	setAttr ".tk[84]" -type "float3" 0.12123127 -0.011796534 -0.083148934 ;
	setAttr ".tk[87]" -type "float3" 0.20094165 -0.0045068501 0.083762899 ;
	setAttr ".tk[88]" -type "float3" 0.070333421 -0.032274965 0.083762899 ;
	setAttr ".tk[89]" -type "float3" -0.004453775 -0.032274965 0.083762899 ;
	setAttr ".tk[90]" -type "float3" -0.077315174 -0.032274965 0.083762899 ;
	setAttr ".tk[91]" -type "float3" -0.20094165 -0.0045068501 0.083762899 ;
	setAttr ".tk[94]" -type "float3" -0.12123128 -0.011796527 -0.083148934 ;
	setAttr ".tk[95]" -type "float3" 1.0136062 0.034112934 0.29788178 ;
	setAttr ".tk[96]" -type "float3" 0.040794592 0.25996801 0.20354106 ;
	setAttr ".tk[97]" -type "float3" 2.220446e-016 -0.67514729 -4.4408921e-016 ;
	setAttr ".tk[98]" -type "float3" 0.59009773 -0.21436174 0.17664298 ;
	setAttr ".tk[99]" -type "float3" -0.0024904662 0.28605142 0.43058982 ;
	setAttr ".tk[100]" -type "float3" 2.6367797e-016 -0.67514729 -4.4408921e-016 ;
	setAttr ".tk[101]" -type "float3" -0.044781152 0.24228895 -0.0043542385 ;
	setAttr ".tk[102]" -type "float3" 2.220446e-016 -0.67514729 -4.4408921e-016 ;
	setAttr ".tk[103]" -type "float3" -1.0137712 0.034132779 0.29775524 ;
	setAttr ".tk[104]" -type "float3" -0.58998209 -0.21420367 0.17630632 ;
	setAttr ".tk[105]" -type "float3" 1.110223e-016 -0.17397799 0 ;
	setAttr ".tk[106]" -type "float3" -0.47011167 -0.28684527 -0.24685049 ;
	setAttr ".tk[107]" -type "float3" 1.3183898e-016 -0.17397799 0 ;
	setAttr ".tk[108]" -type "float3" 1.110223e-016 -0.17397799 0 ;
	setAttr ".tk[109]" -type "float3" 0.46978834 -0.28714991 -0.24625054 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 6 "f[4]" "f[27]" "f[66]" "f[89:90]" "f[97]" "f[102:104]";
	setAttr ".ix" -type "matrix" 0.82433250897578936 0 0 0 0 1 0 0 0 0 0.66285660712667382 0
		 -0.69897180044736373 1.1038416130680824 -1.4119555958898689 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.1773229 0.69135755 0.15776832 ;
	setAttr ".rs" 280669980;
	setAttr ".lt" -type "double3" 5.2085072366203633e-016 2.4286128663675299e-016 1.2385057492812923 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.97842661128772512 -0.19401757882644888 -1.297002165433538 ;
	setAttr ".cbx" -type "double3" 1.3762191918492794 1.5767327053684974 1.6125388119990207 ;
createNode polySplitRing -n "polySplitRing9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[9:10]" "e[16]" "e[21]" "e[30]" "e[34]" "e[45]" "e[51]" "e[58]" "e[64]" "e[77]" "e[83]" "e[96]" "e[106]" "e[121]" "e[131]";
	setAttr ".ix" -type "matrix" 0.82433250897578936 0 0 0 0 1 0 0 0 0 0.66285660712667382 0
		 -0.69897180044736373 1.1038416130680824 -1.4119555958898689 1;
	setAttr ".wt" 0.68310987949371338;
	setAttr ".dr" no;
	setAttr ".re" 96;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 25 ".tk";
	setAttr ".tk[1]" -type "float3" 0.22466207 -0.030924007 -0.43895626 ;
	setAttr ".tk[14]" -type "float3" 0.33726415 0.11318582 0.4375284 ;
	setAttr ".tk[30]" -type "float3" 0.16120389 -0.11748202 0.01526477 ;
	setAttr ".tk[61]" -type "float3" 0.16120389 -0.22831608 0.01526477 ;
	setAttr ".tk[62]" -type "float3" 4.4408921e-016 -0.089384958 0 ;
	setAttr ".tk[75]" -type "float3" 0.19173798 0.013274767 -0.0045922119 ;
	setAttr ".tk[90]" -type "float3" 4.4408921e-016 -0.088621683 0 ;
	setAttr ".tk[107]" -type "float3" 0.30407399 -0.29637435 -0.1727442 ;
	setAttr ".tk[108]" -type "float3" 0.35096151 -0.14858451 0.067766733 ;
	setAttr ".tk[109]" -type "float3" 0.36239329 -0.0046142279 0.052349295 ;
	setAttr ".tk[110]" -type "float3" 0.35865831 0.18515126 -0.1642984 ;
	setAttr ".tk[111]" -type "float3" -1.1882255 0.51531881 0.49593627 ;
	setAttr ".tk[112]" -type "float3" -0.47571644 -0.07266593 -0.28008866 ;
	setAttr ".tk[113]" -type "float3" -1.1096598 0.16783291 0.2517021 ;
	setAttr ".tk[114]" -type "float3" 0.16790602 0 0 ;
	setAttr ".tk[115]" -type "float3" -1.1869421 -0.19474564 0.31130508 ;
	setAttr ".tk[116]" -type "float3" 0.22393425 0 0 ;
	setAttr ".tk[117]" -type "float3" -1.1944573 -0.50642848 0.31130508 ;
	setAttr ".tk[118]" -type "float3" -0.28023404 -0.0077062696 0.047247373 ;
	setAttr ".tk[120]" -type "float3" -0.57812285 -0.050011199 -0.14093514 ;
	setAttr ".tk[121]" -type "float3" -0.27390164 0.0077062696 -0.047247373 ;
	setAttr ".tk[123]" -type "float3" -0.39939883 -0.29637435 -0.14000441 ;
	setAttr ".tk[124]" -type "float3" -0.48106807 -0.070884496 -0.064888194 ;
	setAttr ".tk[125]" -type "float3" -0.39267322 0.13453256 -0.1834248 ;
	setAttr ".tk[126]" -type "float3" -0.24726351 0.32736513 -0.31661248 ;
createNode polySplitRing -n "polySplitRing10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[213:214]" "e[216]" "e[220]" "e[222]" "e[224]" "e[230]" "e[233]" "e[238:239]" "e[243]" "e[246]";
	setAttr ".ix" -type "matrix" 0.82433250897578936 0 0 0 0 1 0 0 0 0 0.66285660712667382 0
		 -0.69897180044736373 1.1038416130680824 -1.4119555958898689 1;
	setAttr ".wt" 0.066412806510925293;
	setAttr ".re" 238;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 63 ".tk";
	setAttr ".tk[2]" -type "float3" -1.4901161e-008 -3.7252903e-009 2.9802322e-008 ;
	setAttr ".tk[4]" -type "float3" 0.13952686 -0.056983512 -1.0361065 ;
	setAttr ".tk[5]" -type "float3" -0.13481621 -0.056983512 -1.0361065 ;
	setAttr ".tk[6]" -type "float3" 0.13285342 -0.095010884 -0.90704799 ;
	setAttr ".tk[7]" -type "float3" -0.12814279 -0.095010884 -0.90704799 ;
	setAttr ".tk[12]" -type "float3" 0 1.1175871e-008 4.6566129e-010 ;
	setAttr ".tk[16]" -type "float3" 0 0 0.097802378 ;
	setAttr ".tk[19]" -type "float3" -0.00043406524 -0.056983512 -1.0361065 ;
	setAttr ".tk[20]" -type "float3" -0.00029836086 -0.095010884 -1.2776639 ;
	setAttr ".tk[27]" -type "float3" 0.13952686 0.0016198137 -1.0361065 ;
	setAttr ".tk[28]" -type "float3" 0 0 -1.1875523 ;
	setAttr ".tk[29]" -type "float3" -0.13481621 0.0016198137 -1.0361065 ;
	setAttr ".tk[33]" -type "float3" -3.7252903e-009 7.4505806e-009 2.9802322e-008 ;
	setAttr ".tk[34]" -type "float3" 3.7252903e-009 -7.4505806e-009 4.6566129e-010 ;
	setAttr ".tk[35]" -type "float3" 0.046404306 -0.056983512 -1.0361065 ;
	setAttr ".tk[36]" -type "float3" 0 0 -1.1875523 ;
	setAttr ".tk[37]" -type "float3" 0.044261284 -0.095010884 -1.2776639 ;
	setAttr ".tk[42]" -type "float3" 0 0 0.097802378 ;
	setAttr ".tk[45]" -type "float3" -0.046066284 -0.056983512 -1.0361065 ;
	setAttr ".tk[46]" -type "float3" 0 0 -1.1875523 ;
	setAttr ".tk[47]" -type "float3" -0.043710589 -0.095010884 -1.2776639 ;
	setAttr ".tk[52]" -type "float3" 0 0 0.097802378 ;
	setAttr ".tk[56]" -type "float3" 0.13952686 -0.022603692 -1.0361065 ;
	setAttr ".tk[57]" -type "float3" 0 0 -1.1875523 ;
	setAttr ".tk[58]" -type "float3" 0 0 -1.1875523 ;
	setAttr ".tk[59]" -type "float3" 0 0 -1.1875523 ;
	setAttr ".tk[60]" -type "float3" -0.13481621 -0.022603692 -1.0361065 ;
	setAttr ".tk[65]" -type "float3" 0 0 0.097802378 ;
	setAttr ".tk[66]" -type "float3" 0 0 0.097802378 ;
	setAttr ".tk[70]" -type "float3" 0.13285342 0.031663369 -0.90704799 ;
	setAttr ".tk[71]" -type "float3" 0 0 -1.1875523 ;
	setAttr ".tk[72]" -type "float3" 0 0 -1.1875523 ;
	setAttr ".tk[73]" -type "float3" 0 0 -1.1875523 ;
	setAttr ".tk[74]" -type "float3" -0.12814279 0.031663369 -0.90704799 ;
	setAttr ".tk[86]" -type "float3" 0 0 0.097802378 ;
	setAttr ".tk[87]" -type "float3" 0 0 0.097802378 ;
	setAttr ".tk[88]" -type "float3" 0 0 0.097802378 ;
	setAttr ".tk[112]" -type "float3" 4.4408921e-016 0.068221033 0 ;
	setAttr ".tk[114]" -type "float3" -0.25823683 -0.078020081 0 ;
	setAttr ".tk[115]" -type "float3" 0.085779794 0 0 ;
	setAttr ".tk[116]" -type "float3" -0.08072298 0 0 ;
	setAttr ".tk[117]" -type "float3" 0.01013205 0.057708748 0.2127021 ;
	setAttr ".tk[118]" -type "float3" 0 -0.11514627 0 ;
	setAttr ".tk[121]" -type "float3" 0 -0.11514627 0 ;
	setAttr ".tk[122]" -type "float3" 0.14803518 0 0 ;
	setAttr ".tk[123]" -type "float3" 0 0 -0.15526523 ;
	setAttr ".tk[126]" -type "float3" -0.15333194 0 -0.24948142 ;
	setAttr ".tk[127]" -type "float3" 0.26700717 -0.049116105 -0.55631173 ;
	setAttr ".tk[128]" -type "float3" 0.26700717 -0.0026192516 -0.55631173 ;
	setAttr ".tk[129]" -type "float3" 0.2541976 0.053811733 -0.47164708 ;
	setAttr ".tk[130]" -type "float3" 0.25020617 -0.033336461 -0.40779343 ;
	setAttr ".tk[131]" -type "float3" 0.086682543 -0.027950138 -0.40779343 ;
	setAttr ".tk[132]" -type "float3" -0.0015467424 -0.027950138 -0.47344002 ;
	setAttr ".tk[133]" -type "float3" -0.087504029 -0.027950138 -0.43209162 ;
	setAttr ".tk[134]" -type "float3" -0.25830463 -0.038542852 -0.41163838 ;
	setAttr ".tk[135]" -type "float3" -0.25560221 0.053201135 -0.47229561 ;
	setAttr ".tk[136]" -type "float3" -0.2670072 0.0027847588 -0.55415535 ;
	setAttr ".tk[137]" -type "float3" -0.2670072 -0.038613886 -0.55415535 ;
	setAttr ".tk[138]" -type "float3" -0.25539649 -0.11431389 -0.55891097 ;
	setAttr ".tk[139]" -type "float3" -0.09216845 -0.13102835 -0.55891097 ;
	setAttr ".tk[140]" -type "float3" -0.0018154427 -0.13102835 -0.55891097 ;
	setAttr ".tk[141]" -type "float3" 0.090925701 -0.13102835 -0.55891097 ;
	setAttr ".tk[142]" -type "float3" 0.26281157 -0.11431389 -0.55891097 ;
createNode polySplitRing -n "polySplitRing11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[213:214]" "e[216]" "e[220]" "e[222]" "e[224]" "e[230]" "e[233]" "e[238:239]" "e[243]" "e[246]";
	setAttr ".ix" -type "matrix" 0.82433250897578936 0 0 0 0 1 0 0 0 0 0.66285660712667382 0
		 -0.69897180044736373 1.1038416130680824 -1.4119555958898689 1;
	setAttr ".wt" 0.55919498205184937;
	setAttr ".dr" no;
	setAttr ".re" 238;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 23 ".tk";
	setAttr ".tk[14]" -type "float3" -0.39219552 0.082029551 -1.110223e-016 ;
	setAttr ".tk[103]" -type "float3" 0 0 0.11072455 ;
	setAttr ".tk[107]" -type "float3" -0.029450856 -0.075231105 0.19083093 ;
	setAttr ".tk[108]" -type "float3" -0.037978124 -0.026399968 0.19428138 ;
	setAttr ".tk[109]" -type "float3" -0.011724923 0.039602574 0.028929552 ;
	setAttr ".tk[110]" -type "float3" 0.01927067 0.093598664 -0.12262915 ;
	setAttr ".tk[111]" -type "float3" 0 0.02381146 0 ;
	setAttr ".tk[112]" -type "float3" 0 0 0.069328949 ;
	setAttr ".tk[117]" -type "float3" 0.10698469 0.24793656 0.17207411 ;
	setAttr ".tk[119]" -type "float3" 0.011496462 0 0 ;
	setAttr ".tk[120]" -type "float3" 0.13419226 0.077510305 0 ;
	setAttr ".tk[123]" -type "float3" 0.075176664 0.088966258 0 ;
	setAttr ".tk[124]" -type "float3" 0.29579735 0 0 ;
	setAttr ".tk[125]" -type "float3" 0.14171411 0 0 ;
	setAttr ".tk[143]" -type "float3" 0.17055643 0.01384316 0.55398846 ;
	setAttr ".tk[144]" -type "float3" 0.12179089 0 0.59449548 ;
	setAttr ".tk[145]" -type "float3" 0.12179089 0 0.59449548 ;
	setAttr ".tk[149]" -type "float3" -0.15619594 0.1108205 -1.110223e-016 ;
	setAttr ".tk[150]" -type "float3" 0 -0.17357995 -4.4408921e-016 ;
	setAttr ".tk[151]" -type "float3" 0.073918618 -0.11242198 0 ;
	setAttr ".tk[152]" -type "float3" 0.18464474 0.0031007575 0.1860536 ;
	setAttr ".tk[153]" -type "float3" 0.18927112 0.041156501 0.29581475 ;
	setAttr ".tk[154]" -type "float3" 0.16373345 -0.025679331 0.5111118 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 2 "f[152]" "f[160:163]";
	setAttr ".ix" -type "matrix" 0.82433250897578936 0 0 0 0 1 0 0 0 0 0.66285660712667382 0
		 -0.69897180044736373 1.1038416130680824 -1.4119555958898689 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.4779283 0.66117859 1.8646907 ;
	setAttr ".rs" 773313225;
	setAttr ".lt" -type "double3" -1.9775847626135601e-016 1.5265566588595902e-016 0.085275119613507394 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.2523416479856311 -0.079857517943880518 1.2892083412463649 ;
	setAttr ".cbx" -type "double3" 1.7035148322815328 1.402214716209867 2.4401730416872986 ;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk";
	setAttr ".tk[80]" -type "float3" -1.4901161e-008 0 0.66294324 ;
	setAttr ".tk[89]" -type "float3" -1.4901161e-008 0 0.66294324 ;
	setAttr ".tk[90]" -type "float3" -1.4901161e-008 0 0.66294324 ;
	setAttr ".tk[106]" -type "float3" -1.4901161e-008 0 0.66294324 ;
	setAttr ".tk[107]" -type "float3" -1.4901161e-008 0 0.66294324 ;
	setAttr ".tk[110]" -type "float3" -1.4901161e-008 0 0.66294324 ;
	setAttr ".tk[119]" -type "float3" -1.4901161e-008 0 0.66294324 ;
	setAttr ".tk[120]" -type "float3" -1.4901161e-008 0 0.66294324 ;
	setAttr ".tk[121]" -type "float3" -1.4901161e-008 0 0.66294324 ;
	setAttr ".tk[122]" -type "float3" -1.4901161e-008 0 0.66294324 ;
	setAttr ".tk[123]" -type "float3" -1.4901161e-008 0 0.66294324 ;
	setAttr ".tk[124]" -type "float3" -1.4901161e-008 0 0.66294324 ;
	setAttr ".tk[125]" -type "float3" -1.4901161e-008 0 0.66294324 ;
	setAttr ".tk[126]" -type "float3" -1.4901161e-008 0 0.66294324 ;
	setAttr ".tk[143]" -type "float3" -1.4901161e-008 0 0.66294324 ;
	setAttr ".tk[144]" -type "float3" -1.4901161e-008 0 0.66294324 ;
	setAttr ".tk[151]" -type "float3" -1.4901161e-008 0 0.66294324 ;
	setAttr ".tk[152]" -type "float3" -1.4901161e-008 0 0.66294324 ;
	setAttr ".tk[153]" -type "float3" -1.4901161e-008 0 0.66294324 ;
	setAttr ".tk[154]" -type "float3" -1.4901161e-008 0 0.66294324 ;
	setAttr ".tk[155]" -type "float3" -1.4901161e-008 0 0.66294324 ;
	setAttr ".tk[156]" -type "float3" -1.4901161e-008 0 0.66294324 ;
	setAttr ".tk[163]" -type "float3" -1.4901161e-008 0 0.66294324 ;
	setAttr ".tk[164]" -type "float3" -1.4901161e-008 0 0.66294324 ;
	setAttr ".tk[165]" -type "float3" -1.4901161e-008 0 0.66294324 ;
	setAttr ".tk[166]" -type "float3" -1.4901161e-008 0 0.66294324 ;
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode polySplitRing -n "polySplitRing12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 14 "e[9:10]" "e[34]" "e[51]" "e[64]" "e[83]" "e[106]" "e[131]" "e[249:250]" "e[252]" "e[270]" "e[272]" "e[274]" "e[276]" "e[278]";
	setAttr ".ix" -type "matrix" 0.82433250897578936 0 0 0 0 1 0 0 0 0 0.66285660712667382 0
		 -0.69897180044736373 1.1038416130680824 -1.4119555958898689 1;
	setAttr ".wt" 0.27155232429504395;
	setAttr ".re" 270;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 103 ".tk";
	setAttr ".tk[0]" -type "float3" -5.9604645e-008 0 0 ;
	setAttr ".tk[4]" -type "float3" 0.25100508 -0.02104954 -0.0056229243 ;
	setAttr ".tk[5]" -type "float3" -0.25100508 -0.02104954 -0.0056229243 ;
	setAttr ".tk[6]" -type "float3" 0.31508258 8.3128926e-009 0 ;
	setAttr ".tk[7]" -type "float3" -0.31508258 -8.3128917e-009 0 ;
	setAttr ".tk[8]" -type "float3" 0.16018836 0 0 ;
	setAttr ".tk[9]" -type "float3" -0.16018836 0 0 ;
	setAttr ".tk[11]" -type "float3" 0 0 1.1175871e-007 ;
	setAttr ".tk[12]" -type "float3" 0.3995851 -0.020956947 -0.074474752 ;
	setAttr ".tk[13]" -type "float3" 0 7.4505806e-009 -1.4901161e-008 ;
	setAttr ".tk[14]" -type "float3" -0.011395842 0.0039174845 0.20956902 ;
	setAttr ".tk[15]" -type "float3" -0.39169917 -0.020956947 -0.074474752 ;
	setAttr ".tk[23]" -type "float3" -0.058046561 0.019598626 -0.12940136 ;
	setAttr ".tk[24]" -type "float3" 0 0 -2.9802322e-008 ;
	setAttr ".tk[28]" -type "float3" -0.003626362 -0.0099575585 -0.083532855 ;
	setAttr ".tk[31]" -type "float3" -0.087962642 0.028933708 -0.19411469 ;
	setAttr ".tk[32]" -type "float3" -0.05116526 0 0.19310057 ;
	setAttr ".tk[40]" -type "float3" 0.1018908 -0.046533898 -0.31602538 ;
	setAttr ".tk[41]" -type "float3" 0 0 -1.4901161e-008 ;
	setAttr ".tk[42]" -type "float3" 0 0 5.2154064e-008 ;
	setAttr ".tk[48]" -type "float3" 0.083775729 0.025980402 0.21979837 ;
	setAttr ".tk[50]" -type "float3" -0.10164982 -0.046533898 -0.31602541 ;
	setAttr ".tk[53]" -type "float3" 0 0 -2.9802322e-008 ;
	setAttr ".tk[55]" -type "float3" 0.12709185 0.0090639032 -0.33553636 ;
	setAttr ".tk[61]" -type "float3" -0.12709185 0.020232826 -0.076121807 ;
	setAttr ".tk[62]" -type "float3" 0.0059344475 -0.016837645 0.11332934 ;
	setAttr ".tk[66]" -type "float3" 0 0 2.9802322e-008 ;
	setAttr ".tk[67]" -type "float3" 0.15460829 -0.019598627 0.016529772 ;
	setAttr ".tk[68]" -type "float3" -5.9604645e-008 0 0 ;
	setAttr ".tk[69]" -type "float3" -5.9604645e-008 -1.8626451e-009 4.4703484e-008 ;
	setAttr ".tk[70]" -type "float3" 0 0 -0.27354267 ;
	setAttr ".tk[71]" -type "float3" 0 0 -0.27354267 ;
	setAttr ".tk[72]" -type "float3" 0 0 -0.27354267 ;
	setAttr ".tk[73]" -type "float3" 0 0 -0.27354267 ;
	setAttr ".tk[74]" -type "float3" 0 0 -0.27354267 ;
	setAttr ".tk[75]" -type "float3" 2.9802322e-008 -3.7252903e-009 2.9802322e-008 ;
	setAttr ".tk[76]" -type "float3" -0.15460828 -0.019598616 0.016529772 ;
	setAttr ".tk[77]" -type "float3" -0.10431858 -0.036273845 -0.12987325 ;
	setAttr ".tk[78]" -type "float3" -0.05116526 0 -2.9802322e-008 ;
	setAttr ".tk[79]" -type "float3" 0.10431858 -0.036273845 -0.12987325 ;
	setAttr ".tk[80]" -type "float3" 0 -0.31836075 0 ;
	setAttr ".tk[81]" -type "float3" 0 -0.31147292 0 ;
	setAttr ".tk[82]" -type "float3" -0.13605174 0 0 ;
	setAttr ".tk[83]" -type "float3" -0.05116526 0 1.8626451e-008 ;
	setAttr ".tk[84]" -type "float3" -0.05116526 0 1.8626451e-008 ;
	setAttr ".tk[85]" -type "float3" 0 0 -2.9802322e-008 ;
	setAttr ".tk[90]" -type "float3" 0.0093814656 -0.0054333624 -0.026777409 ;
	setAttr ".tk[92]" -type "float3" 0.30008009 -0.17561682 0.02662993 ;
	setAttr ".tk[93]" -type "float3" 0.35838535 0.21736887 0.058796316 ;
	setAttr ".tk[94]" -type "float3" 0.18300824 -0.036261056 0.13363686 ;
	setAttr ".tk[95]" -type "float3" -0.0070162532 -0.19503522 -0.35938048 ;
	setAttr ".tk[96]" -type "float3" -0.047146883 0.16977426 -0.062244263 ;
	setAttr ".tk[97]" -type "float3" -0.30012774 -0.16926752 0.10114267 ;
	setAttr ".tk[98]" -type "float3" -0.44010836 0.21764898 0.058431566 ;
	setAttr ".tk[101]" -type "float3" -0.1593207 0.021652022 -0.16195206 ;
	setAttr ".tk[103]" -type "float3" -0.063318707 0.024459649 -0.16067722 ;
	setAttr ".tk[104]" -type "float3" 0.036860876 0.021550341 -0.16176599 ;
	setAttr ".tk[105]" -type "float3" 0.13403428 0.0011262643 -0.038509227 ;
	setAttr ".tk[107]" -type "float3" -0.14822412 -0.052434877 -0.039719511 ;
	setAttr ".tk[108]" -type "float3" -0.16007881 -0.017311813 0.24911144 ;
	setAttr ".tk[109]" -type "float3" -0.14051212 -0.045114346 0.4056187 ;
	setAttr ".tk[110]" -type "float3" -0.08050245 0.056522448 0.17608473 ;
	setAttr ".tk[112]" -type "float3" -0.039984342 0.0088165225 0.11648357 ;
	setAttr ".tk[120]" -type "float3" -0.056215111 0.01131481 -0.046360195 ;
	setAttr ".tk[124]" -type "float3" -0.10957307 -0.023859531 -0.12369238 ;
	setAttr ".tk[125]" -type "float3" -0.19781387 -0.015111323 -0.10158239 ;
	setAttr ".tk[126]" -type "float3" -0.030750386 0.073663615 0.10619231 ;
	setAttr ".tk[127]" -type "float3" 0.079615198 0.017931378 -0.19742087 ;
	setAttr ".tk[128]" -type "float3" 0 0 -0.27354267 ;
	setAttr ".tk[129]" -type "float3" -1.8626451e-008 3.7252903e-009 -1.4901161e-008 ;
	setAttr ".tk[130]" -type "float3" 0.1659053 0.13003032 -0.00069081783 ;
	setAttr ".tk[133]" -type "float3" 0.10957307 0.00099437032 0.41619906 ;
	setAttr ".tk[134]" -type "float3" -0.11567032 0.11427476 0.41215464 ;
	setAttr ".tk[135]" -type "float3" 0 -7.4505806e-009 -1.4901161e-008 ;
	setAttr ".tk[137]" -type "float3" -0.074228257 0.020956947 0.062398344 ;
	setAttr ".tk[138]" -type "float3" -0.12357313 -0.028369658 0.24777173 ;
	setAttr ".tk[142]" -type "float3" 0.16206612 -0.028369661 0.24777173 ;
	setAttr ".tk[143]" -type "float3" -0.013445847 -0.020262234 0.0066184308 ;
	setAttr ".tk[144]" -type "float3" -0.016817177 -0.05097799 0.02056095 ;
	setAttr ".tk[150]" -type "float3" 0.051052965 0.0021836173 0.12782574 ;
	setAttr ".tk[151]" -type "float3" 0.10439593 0.019010965 0.32370582 ;
	setAttr ".tk[152]" -type "float3" 0.14548557 0.036644112 -0.077922888 ;
	setAttr ".tk[153]" -type "float3" 0.019634217 -0.058467183 -0.042774476 ;
	setAttr ".tk[154]" -type "float3" -0.082037643 -0.018032413 -0.15764743 ;
	setAttr ".tk[155]" -type "float3" -0.27680489 0.031315967 -0.24959022 ;
	setAttr ".tk[156]" -type "float3" -0.021540701 -0.14735216 0.18836845 ;
	setAttr ".tk[157]" -type "float3" -0.0093814656 -0.016669758 0.067794956 ;
	setAttr ".tk[163]" -type "float3" 0.08563368 0.024649698 0.44861856 ;
	setAttr ".tk[164]" -type "float3" -0.16858895 0.1197431 0.070027359 ;
	setAttr ".tk[165]" -type "float3" -0.29255402 0.0076213088 -0.22994855 ;
	setAttr ".tk[166]" -type "float3" -0.37639877 -0.045541301 -0.38108614 ;
	setAttr ".tk[167]" -type "float3" -0.13565435 0.0072105522 -0.15636609 ;
	setAttr ".tk[168]" -type "float3" 0.07497099 -0.26665148 0.47503605 ;
	setAttr ".tk[169]" -type "float3" -0.12400392 -0.048159711 -0.11386134 ;
	setAttr ".tk[170]" -type "float3" 0.10038716 -0.24012862 0.26736605 ;
	setAttr ".tk[171]" -type "float3" 0.15520184 0.092752457 0.5855968 ;
	setAttr ".tk[172]" -type "float3" 0.0044980035 0.1685866 0.08913862 ;
	setAttr ".tk[173]" -type "float3" 0.16762948 0.087719634 0.58854258 ;
	setAttr ".tk[174]" -type "float3" -0.013618786 0.13209525 -0.081885934 ;
	setAttr ".tk[175]" -type "float3" -0.14258826 0.11030655 -0.050059386 ;
	setAttr ".tk[176]" -type "float3" -0.16257289 0.060717188 -0.029854611 ;
	setAttr ".tk[177]" -type "float3" -0.21954311 -0.026470426 -0.19870383 ;
	setAttr ".tk[178]" -type "float3" -0.20600174 0.0069920286 -0.17559554 ;
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode file -n "file1";
	setAttr ".ftn" -type "string" "/Users/Guest/Desktop/fruitpunch.jpg";
createNode place2dTexture -n "place2dTexture1";
createNode polyTweakUV -n "polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk";
	setAttr ".uvtk[29]" -type "float2" 0.0056470037 0.40148276 ;
	setAttr ".uvtk[49]" -type "float2" -0.43294531 0.40148276 ;
	setAttr ".uvtk[60]" -type "float2" 0.43294531 0.40148276 ;
	setAttr ".uvtk[204]" -type "float2" 0.43294531 -0.32929581 ;
	setAttr ".uvtk[205]" -type "float2" 0.0056470037 -0.61355978 ;
	setAttr ".uvtk[206]" -type "float2" -0.43294531 -0.32929581 ;
createNode polyPlanarProj -n "polyPlanarProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:191]";
	setAttr ".ix" -type "matrix" 0.82433250897578936 0 0 0 0 1 0 0 0 0 0.66285660712667382 0
		 -0.69897180044736373 1.1038416130680824 -1.4119555958898689 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.033838033676147461 0.70269960165023804 -0.64899814128875732 ;
	setAttr ".ic" -type "double2" 0.5 0.16272220229465684 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 5.5229282379150391 7.3807871341705322 ;
	setAttr ".is" -type "double2" 1 0.28967251695389884 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[19]" -type "float3" 0.0079121264 -0.014222845 0.03059011 ;
	setAttr ".tk[35]" -type "float3" -0.53361458 -0.014222845 0.03059011 ;
	setAttr ".tk[45]" -type "float3" 0.49109003 -0.014222845 0.03059011 ;
	setAttr ".tk[180]" -type "float3" 0.45724982 0.014222845 0.0870528 ;
	setAttr ".tk[181]" -type "float3" 0.0089335972 0.014222845 0.0870528 ;
	setAttr ".tk[182]" -type "float3" -0.5255602 0.014222845 0.0870528 ;
createNode polyPlanarProj -n "polyPlanarProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[177:178]";
	setAttr ".ix" -type "matrix" 0.82433250897578936 0 0 0 0 1 0 0 0 0 0.66285660712667382 0
		 -0.69897180044736373 1.1038416130680824 -1.4119555958898689 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.7042471170425415 1.7642197608947754 -3.776939868927002 ;
	setAttr ".ic" -type "double2" 0.5 0.77978726400556875 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 1.6614172458648682 0.77283382415771484 ;
	setAttr ".is" -type "double2" 1 0.41231898884675078 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV2";
	setAttr ".uopa" yes;
	setAttr -s 201 ".uvtk[0:200]" -type "float2" 0 0.0044154227 0 0.0140111
		 0 0.019666553 0 0.0077113509 0 -0.040133253 0 -0.040133253 0 -0.10100834 0 -0.10246754
		 0 -0.1840796 0 -0.18957555 0 -0.18598157 0 -0.17872006 0 -0.090229988 0 -0.090229988
		 0 -0.043691427 0 -0.043691427 0 -0.048352033 0 -0.088531539 0 -0.093611881 0 -0.044535905
		 0 -0.043691427 0 -0.099087223 0 -0.061485335 0 -0.06281957 0 -0.058352098 0 -0.053089067
		 0 -0.03152661 0 -0.03344287 0 -0.036984533 0 -0.036713198 0 -0.14654176 0 -0.15058605
		 0 -0.1465282 0 -0.099177182 0 -0.086657241 0 -0.13869713 0 -0.15062727 0 -0.15613161
		 0 -0.15127701 0 -0.03152661 0 -0.040133253 0 -0.040133253 0 -0.03152661 0 -0.10100834
		 0 -0.10100834 0 -0.15613161 0 -0.15613161 0 -0.18598157 0 -0.18957555 0 -0.18957555
		 0 -0.18598157 0 -0.099335924 0 -0.15069999 0 -0.13991767 0 -0.089293897 0 -0.043691427
		 0 -0.043691427 0 -0.0610542 0 -0.065941691 0 -0.065430045 0 -0.058343187 0 0.023805946
		 0 0.0159913 0 0.0140111 0 0.019666553 0 -0.042419136 0 -0.042419136 0 -0.035084054
		 0 -0.035084054 0 -0.10064775 0 -0.10722196 0 -0.16132598 0 -0.15983452 0 -0.18597268
		 0 -0.18893999 0 -0.18893999 0 -0.18597268 0 -0.18893999 0 -0.19057669 0 -0.18893999
		 0 -0.18893999 0 -0.10184014 0 -0.10034867 0 -0.1558294 0 -0.15460679 0 -0.041307852
		 0 -0.0945483 0 -0.087009341 0 -0.039947182 0 0.025722206 0 0.027589396 0 0.023805946
		 0 0.023805946 0 0.0057927072 0 0.023805946 0 0.025722206 0 0.0057927072 0 -0.040133253
		 0 -0.10246754 0 -0.15127701 0 -0.18597268 0 -0.18597268 0 -0.1840796 0 -0.17872006
		 0 -0.05229196 0 -0.18608283 0 -0.18537332 0 -0.18537332 0 -0.18537332 0 -0.18608283
		 0 -0.040198654 0 0.00922589 0 0.00922589 0 0.00922589 0 0.0073096305 0 -0.015956327
		 0 -0.015795469 0 -0.015818939 0 -0.03136988 0 -0.061482012 0 -0.02334711 0 -0.028027937
		 0 -0.018575102 0 -0.018735141 0 -0.055687428 0 0.0044154227 0 0.0077113509 0 0.0057927072
		 0 0.0019893944 0 -0.020453736 0 -0.02261956 0 0.0073096305 0 -0.030579761 0 -7.7486038e-005
		 0 -0.0020804107 0 -0.001643151 0 -0.00075648725 0 -0.0025680065 0 -0.0063177645 0
		 -0.023995399 0 -0.0054671764 0 -0.0046304464 0 -0.0051230043 0 -0.09068045 0 -0.052280843
		 0 -0.098970532 0 -0.099978492 0 -0.10013327 0 -0.034485489 0 -0.015321597 0 -0.011759967
		 0 -0.00044341385 0 -0.0020873398 0 -0.0016599298 0 -0.0042330921 0 -0.16801885 0
		 -0.1669324 0 -0.15968128 0 -0.15527982 0 -0.15724185 0 -0.16028078 0 -0.15242644
		 0 -0.14956543 0 -0.15971133 0 -0.16401489 0 -0.16312429 0 -0.16072859 0 -0.16252939
		 0 -0.16252939 0 -0.16252939 0 -0.16072859 0 -0.0098102838 0 0.0061685741 0 -0.03060694
		 0 -0.099686667 0 -0.099963456 0 -0.098807588 0 -0.090615124 0 -0.049767584 0 -0.017860472
		 0 -0.0045210272 0 0.0043144822 0 0.0067292452 0 -0.0050093532 0 0.0010907352 0 0.0051595122
		 0 -0.0038407147 0 -0.0027734488 0 -0.012094721 0 -0.012128457 0 -0.0035134852 0 0.0035741329
		 0 0.0062770694 0 0.0048103929 0 0.0080579519 -0.00020378828 -0.12310393 -0.00023007393
		 -0.41529593 -0.0046538711 -0.41529593 -0.004509747 -0.12310393 0.0044264793 -0.12310393
		 0.0046538711 -0.41529593;
createNode lambert -n "lambert4";
createNode shadingEngine -n "lambert4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "C:/Users/Leonard/Dropbox/Poly/Game Dev 1/FourSquared/Assets/textures/fruitpunch.jpg";
createNode place2dTexture -n "place2dTexture2";
createNode transformGeometry -n "transformGeometry1";
	setAttr ".txf" -type "matrix" 0.82433250897578936 0 0 0 0 1 0 0 0 0 0.66285660712667382 0
		 -0.69897180044736373 1.1038416130680824 -1.4119555958898689 1;
createNode transformGeometry -n "transformGeometry2";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.7087064267338623 -0.70269948244094849 -0.11379045973030477 1;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 5 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -k on ".mico";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -av -cb on ".micc";
	setAttr -k on ".micr";
	setAttr -k on ".micg";
	setAttr -k on ".micb";
	setAttr -cb on ".mica";
	setAttr -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -k on ".mico";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -av -cb on ".micc";
	setAttr -k on ".micr";
	setAttr -k on ".micg";
	setAttr -k on ".micb";
	setAttr -cb on ".mica";
	setAttr -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 3 ".s";
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av ".w";
	setAttr -av ".h";
	setAttr -av ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av ".dar";
	setAttr -av -k on ".ldar";
	setAttr -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -k on ".isu";
	setAttr -k on ".pdu";
select -ne :defaultLightSet;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
select -ne :defaultObjectSet;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off ".eeaa";
	setAttr -k off ".engm";
	setAttr -k off ".mes";
	setAttr -k off ".emb";
	setAttr -av -k off ".mbbf";
	setAttr -k off ".mbs";
	setAttr -k off ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off ".twa";
	setAttr -k off ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".rp";
	setAttr -k on ".cai";
	setAttr -k on ".coi";
	setAttr -cb on ".bc";
	setAttr -av -k on ".bcb";
	setAttr -av -k on ".bcg";
	setAttr -av -k on ".bcr";
	setAttr -k on ".ei";
	setAttr -k on ".ex";
	setAttr -av -k on ".es";
	setAttr -av -k on ".ef";
	setAttr -av -k on ".bf";
	setAttr -k on ".fii";
	setAttr -av -k on ".sf";
	setAttr -k on ".gr";
	setAttr -k on ".li";
	setAttr -k on ".ls";
	setAttr -k on ".mb";
	setAttr -k on ".ti";
	setAttr -k on ".txt";
	setAttr -k on ".mpr";
	setAttr -k on ".wzd";
	setAttr ".fn" -type "string" "im";
	setAttr -k on ".if";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
	setAttr -k on ".as";
	setAttr -k on ".ds";
	setAttr -k on ".lm";
	setAttr -k on ".fir";
	setAttr -k on ".aap";
	setAttr -k on ".gh";
	setAttr -cb on ".sd";
connectAttr "transformGeometry2.og" "GloveShape.i";
connectAttr "polyTweakUV2.uvtk[0]" "GloveShape.uvst[0].uvtw";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
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
connectAttr "polyCube1.out" "polyExtrudeFace1.ip";
connectAttr "GloveShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polySplitRing1.ip";
connectAttr "GloveShape.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "GloveShape.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "GloveShape.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "GloveShape.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "GloveShape.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "GloveShape.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "GloveShape.wm" "polySplitRing7.mp";
connectAttr "polyTweak1.out" "polySplitRing8.ip";
connectAttr "GloveShape.wm" "polySplitRing8.mp";
connectAttr "polySplitRing7.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace2.ip";
connectAttr "GloveShape.wm" "polyExtrudeFace2.mp";
connectAttr "polySplitRing8.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polySplit1.ip";
connectAttr "polyExtrudeFace2.out" "polyTweak3.ip";
connectAttr "polySplit1.out" "polyExtrudeFace3.ip";
connectAttr "GloveShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyTweak4.out" "polySplitRing9.ip";
connectAttr "GloveShape.wm" "polySplitRing9.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polySplitRing10.ip";
connectAttr "GloveShape.wm" "polySplitRing10.mp";
connectAttr "polySplitRing9.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polySplitRing11.ip";
connectAttr "GloveShape.wm" "polySplitRing11.mp";
connectAttr "polySplitRing10.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace4.ip";
connectAttr "GloveShape.wm" "polyExtrudeFace4.mp";
connectAttr "polySplitRing11.out" "polyTweak7.ip";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "polyTweak8.out" "polySplitRing12.ip";
connectAttr "GloveShape.wm" "polySplitRing12.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak8.ip";
connectAttr "lambert3SG.msg" "materialInfo2.sg";
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
connectAttr "polySplitRing12.out" "polyTweakUV1.ip";
connectAttr "polyTweak9.out" "polyPlanarProj1.ip";
connectAttr "GloveShape.wm" "polyPlanarProj1.mp";
connectAttr "polyTweakUV1.out" "polyTweak9.ip";
connectAttr "polyPlanarProj1.out" "polyPlanarProj2.ip";
connectAttr "GloveShape.wm" "polyPlanarProj2.mp";
connectAttr "polyPlanarProj2.out" "polyTweakUV2.ip";
connectAttr "file2.oc" "lambert4.c";
connectAttr "lambert4.oc" "lambert4SG.ss";
connectAttr "GloveShape.iog" "lambert4SG.dsm" -na;
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "lambert4.msg" "materialInfo3.m";
connectAttr "file2.msg" "materialInfo3.t" -na;
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "polyTweakUV2.out" "transformGeometry1.ig";
connectAttr "transformGeometry1.og" "transformGeometry2.ig";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of BoxingGlove.ma
