// Created by Crowbar 0.67

$modelname "nfsuc_cop_car_mid_05\nfsuc_cop_car_mid_05.mdl"

$bodygroup "base"
{
	studio "base.smd"
}
$bodygroup "Front Bumper"
{
	studio "frbumper.smd"
	studio "frbumper_1.smd"
	studio "frbumper_2.smd"
	blank
}
$bodygroup "Rear Bumper"
{
	studio "rebumper.smd"
	studio "rebumper_1.smd"
	studio "rebumper_2.smd"
	blank
}
$bodygroup "Trunk"
{
	studio "trunk.smd"
	studio "trunk_1.smd"
	studio "trunk_2.smd"
}
$bodygroup "Hood"
{
	studio "hood.smd"
	studio "hood_1.smd"
	studio "hood_2.smd"
	blank
}
$bodygroup "Fender left"
{
	studio "fenderleft.smd"
	studio "fenderleft_1.smd"
	studio "fenderleft_2.smd"
}
$bodygroup "Fender right"
{
	studio "fenderright.smd"
	studio "fenderright_1.smd"
	studio "fenderright_2.smd"
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
$bodygroup "Rear door left"
{
	studio "redoorleft.smd"
	studio "redoorleft_1.smd"
}
$bodygroup "Rear door right"
{
	studio "redoorright.smd"
	studio "redoorright_1.smd"
}
$bodygroup "Light Bar"
{
	studio "lightbar.smd"
}
$bodygroup "Headlights 1"
{
	studio "low.smd"
	studio "low_1.smd"
}
$bodygroup "Headlights 2"
{
	studio "high.smd"
	studio "high_1.smd"
}
$bodygroup "Brakelight"
{
	studio "brakelight.smd"
	studio "brakelight_1.smd"
}
$bodygroup "Windows"
{
	studio "windows.smd"
}
$bodygroup "Chassis"
{
	studio "chassis.smd"
}
$bodygroup "body"
{
	studio "body.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0.248 24.646

$cdmaterials "models\nfsuc_cop_car_mid_05\"
$CDMaterials "models\nfsuc\shared\"

$cbox 0 0 0 0 0 0

$bbox -100.438 -46.863 -0.409 99.943 46.863 49.554

$definebone "root" "" 0 0 0 0 0 0 0 0 0 0 0 0

$sequence "idle" {
	"nfsuc_cop_car_mid_05_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "nfsuc_cop_car_mid_05_physics.smd"
{
	$mass 1400
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
