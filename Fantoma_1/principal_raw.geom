#include NIST_materials.txt
#include NIST_elements.txt



:P source_detector_distance 70.0*cm
:P source_phantom_distance 63.63*cm
:P height_plane_2 2.0*mm
:P height_plane_1 4.0*mm


:P x_mundo 1800.0/2.0
:P y_mundo 1800.0/2.0
:P z_mundo 1800.0/2.0
:P x_detector 14.0/2.0
:P y_detector 14.0/2.0 
:P z_detector 1.0/2.0 



:MIXT Al2O3 3.961000 2
   Aluminum 0.529250
   Oxygen   0.470750

:MIXT Hidroxiapatita 3.160000 4
   Calcium 0.398940
   Phosphorus 0.184990
   Oxygen 0.414060
   Hydrogen 0.002010

:MIXT CaC2O4 0.002200 3
   Calcium 0.312880
   Carbon  0.187530
   Oxygen  0.499590




:ROTM R00 0.0 0.0 0.0

:VOLU world BOX $x_mundo $y_mundo $z_mundo G4_AIR


:VOLU source TUBE 0.0 1.0 2.5 G4_AIR
:PLACE source 1 world R00 0.0 0.0 0.0

:VOLU cilindro TUBE 0.000*cm 1.400*cm 5.000*mm NIST_PMMA
:PLACE cilindro 1 world R00 0.000*cm 0.000*cm $source_phantom_distance
:COLOUR cilindro 0.9960 0.7294 0.6666

:VOLU esfera1_p2_HA SPHERE 0.0 (0.6/2.0)*mm 180.0*deg 360*deg 0.0*deg 180*deg Hidroxiapatita
:PLACE esfera1_p2_HA 1 cilindro R00 -2.00*mm 2.00*mm $height_plane_2
:COLOUR esfera1_p2_HA 0.0 0.0 0.7

:VOLU esfera2_p2_HA SPHERE 0.0 (0.6/2.0)*mm 180.0*deg 360*deg 0.0*deg 180*deg Hidroxiapatita
:PLACE esfera2_p2_HA 1 cilindro R00 -1.00*mm 2.00*mm $height_plane_2
:COLOUR esfera2_p2_HA 0.0 0.0 0.7

:VOLU esfera3_p2_HA SPHERE 0.0 (0.6/2.0)*mm 180.0*deg 360*deg 0.0*deg 180*deg Hidroxiapatita
:PLACE esfera3_p2_HA 1 cilindro R00 0.00*mm 2.00*mm $height_plane_2
:COLOUR esfera3_p2_HA 0.0 0.0 0.7

:VOLU esfera4_p2_HA SPHERE 0.0 (0.6/2.0)*mm 180.0*deg 360*deg 0.0*deg 180*deg Hidroxiapatita
:PLACE esfera4_p2_HA 1 cilindro R00 1.00*mm 2.00*mm $height_plane_2
:COLOUR esfera4_p2_HA 0.0 0.0 0.7

:VOLU esfera5_p2_HA SPHERE 0.0 (0.6/2.0)*mm 180.0*deg 360*deg 0.0*deg 180*deg Hidroxiapatita
:PLACE esfera5_p2_HA 1 cilindro R00 2.00*mm 2.00*mm $height_plane_2
:COLOUR esfera5_p2_HA 0.0 0.0 0.7

:VOLU esfera1_p2_Al2O3 SPHERE 0.0 (0.6/2.0)*mm 180.0*deg 360*deg 0.0*deg 180*deg NIST_Al2O3
:PLACE esfera1_p2_Al2O3 1 cilindro R00 -1.50*mm -2.00*mm $height_plane_2
:COLOUR esfera1_p2_Al2O3 0.0 0.7 0.0

:VOLU esfera2_p2_Al2O3 SPHERE 0.0 (0.6/2.0)*mm 180.0*deg 360*deg 0.0*deg 180*deg NIST_Al2O3
:PLACE esfera2_p2_Al2O3 1 cilindro R00 -0.50*mm -2.00*mm $height_plane_2
:COLOUR esfera2_p2_Al2O3 0.0 0.7 0.0

:VOLU esfera3_p2_Al2O3 SPHERE 0.0 (0.6/2.0)*mm 180.0*deg 360*deg 0.0*deg 180*deg NIST_Al2O3
:PLACE esfera3_p2_Al2O3 1 cilindro R00 0.50*mm -2.00*mm $height_plane_2
:COLOUR esfera3_p2_Al2O3 0.0 0.7 0.0

:VOLU esfera4_p2_Al2O3 SPHERE 0.0 (0.6/2.0)*mm 180.0*deg 360*deg 0.0*deg 180*deg NIST_Al2O3
:PLACE esfera4_p2_Al2O3 1 cilindro R00 1.50*mm -2.00*mm $height_plane_2
:COLOUR esfera4_p2_Al2O3 0.0 0.7 0.0

:VOLU esfera5_p2_Al2O3 SPHERE 0.0 (0.6/2.0)*mm 180.0*deg 360*deg 0.0*deg 180*deg NIST_Al2O3
:PLACE esfera5_p2_Al2O3 1 cilindro R00 2.50*mm -2.00*mm $height_plane_2
:COLOUR esfera5_p2_Al2O3 0.0 0.7 0.0

:VOLU esfera1_p1_HA SPHERE 0.0 (0.6/2.0)*mm 180.0*deg 360*deg 0.0*deg 180*deg Hidroxiapatita
:PLACE esfera1_p1_HA 1 cilindro R00 -2.00*mm 3.50*mm $height_plane_1
:COLOUR esfera1_p1_HA 0.0 0.0 0.7

:VOLU esfera2_p1_HA SPHERE 0.0 (0.6/2.0)*mm 180.0*deg 360*deg 0.0*deg 180*deg Hidroxiapatita
:PLACE esfera2_p1_HA 1 cilindro R00 -1.00*mm 3.50*mm $height_plane_1
:COLOUR esfera2_p1_HA 0.0 0.0 0.7

:VOLU esfera3_p1_HA SPHERE 0.0 (0.6/2.0)*mm 180.0*deg 360*deg 0.0*deg 180*deg Hidroxiapatita
:PLACE esfera3_p1_HA 1 cilindro R00 0.00*mm 3.50*mm $height_plane_1
:COLOUR esfera3_p1_HA 0.0 0.0 0.7

:VOLU esfera4_p1_HA SPHERE 0.0 (0.6/2.0)*mm 180.0*deg 360*deg 0.0*deg 180*deg Hidroxiapatita
:PLACE esfera4_p1_HA 1 cilindro R00 1.00*mm 3.50*mm $height_plane_1
:COLOUR esfera4_p1_HA 0.0 0.0 0.7

:VOLU esfera5_p1_HA SPHERE 0.0 (0.6/2.0)*mm 180.0*deg 360*deg 0.0*deg 180*deg Hidroxiapatita
:PLACE esfera5_p1_HA 1 cilindro R00 2.00*mm 3.50*mm $height_plane_1
:COLOUR esfera5_p1_HA 0.0 0.0 0.7

:VOLU esfera1_p1_Al2O3 SPHERE 0.0 (0.6/2.0)*mm 180.0*deg 360*deg 0.0*deg 180*deg NIST_Al2O3
:PLACE esfera1_p1_Al2O3 1 cilindro R00 -1.50*mm -3.50*mm $height_plane_1
:COLOUR esfera1_p1_Al2O3 0.0 0.7 0.0

:VOLU esfera2_p1_Al2O3 SPHERE 0.0 (0.6/2.0)*mm 180.0*deg 360*deg 0.0*deg 180*deg NIST_Al2O3
:PLACE esfera2_p1_Al2O3 1 cilindro R00 -0.50*mm -3.50*mm $height_plane_1
:COLOUR esfera2_p1_Al2O3 0.0 0.7 0.0

:VOLU esfera3_p1_Al2O3 SPHERE 0.0 (0.6/2.0)*mm 180.0*deg 360*deg 0.0*deg 180*deg NIST_Al2O3
:PLACE esfera3_p1_Al2O3 1 cilindro R00 0.50*mm -3.50*mm $height_plane_1
:COLOUR esfera3_p1_Al2O3 0.0 0.7 0.0

:VOLU esfera4_p1_Al2O3 SPHERE 0.0 (0.6/2.0)*mm 180.0*deg 360*deg 0.0*deg 180*deg NIST_Al2O3
:PLACE esfera4_p1_Al2O3 1 cilindro R00 1.50*mm -3.50*mm $height_plane_1
:COLOUR esfera4_p1_Al2O3 0.0 0.7 0.0

:VOLU esfera5_p1_Al2O3 SPHERE 0.0 (0.6/2.0)*mm 180.0*deg 360*deg 0.0*deg 180*deg NIST_Al2O3
:PLACE esfera5_p1_Al2O3 1 cilindro R00 2.50*mm -3.50*mm $height_plane_1
:COLOUR esfera5_p1_Al2O3 0.0 0.7 0.0


:VOLU detector BOX $x_detector $y_detector $z_detector G4_CADMIUM_TELLURIDE
:PLACE detector 1 world R00 0.0 0.0 $source_detector_distance
:COLOUR detector 0.6 0.6 0.6

