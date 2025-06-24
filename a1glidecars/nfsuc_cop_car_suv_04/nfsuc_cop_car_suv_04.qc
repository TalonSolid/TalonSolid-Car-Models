// Created by Crowbar 0.67

$modelname "nfsuc_cop_car_suv_04\nfsuc_cop_car_suv_04.mdl"

$bodygroup "Base"
{
	studio "base.smd"
}
$bodygroup "Front Bumper"
{
	studio "frbumper.smd"
	studio "frbumper_1.smd"
	blank
}
$bodygroup "Rear Bumper"
{
	studio "rebumper.smd"
	studio "rebumper_1.smd"
	blank
}
$bodygroup "Trunk"
{
	studio "trunk.smd"
	studio "trunk_1.smd"
}
$bodygroup "Hood"
{
	studio "hood.smd"
	studio "hood_1.smd"
	blank
}
$bodygroup "Fender left"
{
	studio "fenderleft.smd"
	studio "fenderleft_1.smd"
}
$bodygroup "Fender right"
{
	studio "fenderright.smd"
	studio "fenderright_1.smd"
}
$bodygroup "Door left"
{
	studio "doorleft.smd"
	studio "doorleft_1.smd"
}
$bodygroup "Door right"
{
	studio "doorright.smd"
	studio "doorright_1.smd"
}
$bodygroup "Exhaust"
{
	studio "exhaust.smd"
	blank
}
$bodygroup "Headlight"
{
	studio "headlight.smd"
	studio "headlight_1.smd"
}
$bodygroup "Headlight 1"
{
	studio "beam.smd"
	studio "beam_1.smd"
}
$bodygroup "Brakelight"
{
	studio "brakelight.smd"
	studio "brakelight_1.smd"
}



$surfaceprop "metal"

$contents "solid"

$illumposition 0 0.248 24.646

$cdmaterials "models\nfsuc_cop_car_suv_04\"
$CDMaterials "models\nfsuc\shared\"

$cbox 0 0 0 0 0 0

$bbox -100.438 -46.863 -0.409 99.943 46.863 49.554

$definebone "root" "" 0 0 0 0 0 0 0 0 0 0 0 0

$sequence "idle" {
	"nfsuc_cop_car_suv_04_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "nfsuc_cop_car_suv_04_physics.smd"
{
	$mass 2000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
