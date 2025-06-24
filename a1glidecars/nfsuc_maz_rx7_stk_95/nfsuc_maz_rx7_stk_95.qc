// Created by Crowbar 0.67

$modelname "nfsuc_maz_rx7_stk_95\nfsuc_maz_rx7_stk_95.mdl"

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
$bodygroup "Hood"
{
	studio "hood.smd"
	studio "hood_1.smd"
	studio "hood_2.smd"
	blank
}
$bodygroup "Fender Left"
{
	studio "fenderleft.smd"
	studio "fenderleft_1.smd"
	studio "fenderleft_2.smd"
}
$bodygroup "Fender Right"
{
	studio "fenderright.smd"
	studio "fenderright_1.smd"
	studio "fenderright_2.smd"
}
$bodygroup "Trunk"
{
	studio "trunk.smd"
	studio "trunk_1.smd"
	studio "trunk_2.smd"
}
$bodygroup "Door Left"
{
	studio "doorleft.smd"
	studio "doorleft_1.smd"
	studio "doorleft_2.smd"
}
$bodygroup "Door Right"
{
	studio "doorright.smd"
	studio "doorright_1.smd"
	studio "doorright_2.smd"
}
$bodygroup "Mirror Left"
{
	studio "mirrorleft.smd"
	blank
}
$bodygroup "Mirror Right"
{
	studio "mirrorright.smd"
	blank
}
$bodygroup "Exhaust"
{
	studio "exhaust.smd"
	blank
}
$bodygroup "Spoiler"
{
	studio "spoiler.smd"
	blank
}
$bodygroup "Brakelight"
{
	studio "brakelight.smd"
	studio "brakelight_1.smd"
}
$bodygroup "body"
{
	studio "body.smd"
}
$bodygroup "chassis"
{
	studio "chassis.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0.248 24.646

$cdmaterials "models\nfsuc_maz_rx7_stk_95\"
$CDMaterials "models\nfsuc\shared\"

$cbox 0 0 0 0 0 0

$bbox -100.438 -46.863 -0.409 99.943 46.863 49.554

$definebone "root" "" 0 0 0 0 0 0 0 0 0 270 270 0
$definebone "steering_wheel" "root" 4.62465 17.487 27.7479 0 0 0 0 0 0 270 270 0


$poseparameter "vehicle_steer" -1 1 loop 0

$weightlist "weights_turning" {
	 "root" 1
	 "steering_wheel" 2
}

$animation "left_corrective_animation" "nfsuc_maz_rx7_stk_95_anims\left_corrective_animation.smd" {
}

$animation "mid_corrective_animation" "nfsuc_maz_rx7_stk_95_anims\mid_corrective_animation.smd" {
}

$animation "right_corrective_animation" "nfsuc_maz_rx7_stk_95_anims\right_corrective_animation.smd" {
}

$animation "neutral" "nfsuc_maz_rx7_stk_95_anims\neutral.smd" {
	fps 30
}

$animation "left" "nfsuc_maz_rx7_stk_95_anims\left.smd" {
	fps 30
	subtract "left_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "mid" "nfsuc_maz_rx7_stk_95_anims\mid.smd" {
	fps 30
	subtract "mid_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "right" "nfsuc_maz_rx7_stk_95_anims\right.smd" {
	fps 30
	subtract "right_corrective_animation" 0
	weightlist "weights_turning"
}

$sequence "turning" {
	"left"
	"mid"
	"right"
	autoplay
	blend "vehicle_steer" -1 1
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "idle" {
	"nfsuc_maz_rx7_stk_95_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "nfsuc_maz_rx7_stk_95_physics.smd"
{
	$mass 1310
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
