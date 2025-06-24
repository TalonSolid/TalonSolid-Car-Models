// Created by Crowbar 0.67

$modelname "nfsuc_for_gt_stk_06\nfsuc_for_gt_stk_06.mdl"

$bodygroup "base"
{
	studio "base.smd"
}
$bodygroup "Brakelight"
{
	studio "brakelight.smd"
	studio "brakelight_1.smd"
}
$bodygroup "Headlight"
{
	studio "headlight.smd"
	studio "headlight_1.smd"
}
$bodygroup "Front bumper"
{
	studio "frbumper.smd"
}
$bodygroup "Rear bumper"
{
	studio "rebumper.smd"
}
$bodygroup "Rear bumper Extra"
{
	studio "rebumperextra.smd"
	blank
}
$bodygroup "Door left"
{
	studio "doorleft.smd"
}
$bodygroup "Door right"
{
	studio "doorright.smd"
}
$bodygroup "Hood"
{
	studio "hood.smd"
}
$bodygroup "Trunk"
{
	studio "trunk.smd"
}
$bodygroup "Window"
{
	studio "window.smd"
}
$bodygroup "Fender left"
{
	studio "fenderleft.smd"
}
$bodygroup "Fender right"
{
	studio "fenderright.smd"
}
$bodygroup "Skirt left"
{
	studio "skirtleft.smd"
}
$bodygroup "Skirt right"
{
	studio "skirtright.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0.248 24.646

$cdmaterials "models\nfsuc_for_gt_stk_06\"
$CDMaterials "models\nfsuc\shared\"

$cbox 0 0 0 0 0 0

$bbox -100.438 -46.863 -0.409 99.943 46.863 49.554

$definebone "root" "" 0 0 0 0 0 0 0 0 0 270 270 0
$definebone "steering_wheel" "root" 10.5018 17.5764 26.5367 0 0 0 0 0 0 270 270 0


$poseparameter "vehicle_steer" -1 1 loop 0

$weightlist "weights_turning" {
	 "root" 1
	 "steering_wheel" 2
}

$animation "left_corrective_animation" "nfsuc_for_gt_stk_06_anims\left_corrective_animation.smd" {
}

$animation "mid_corrective_animation" "nfsuc_for_gt_stk_06_anims\mid_corrective_animation.smd" {
}

$animation "right_corrective_animation" "nfsuc_for_gt_stk_06_anims\right_corrective_animation.smd" {
}

$animation "neutral" "nfsuc_for_gt_stk_06_anims\neutral.smd" {
	fps 30
}

$animation "left" "nfsuc_for_gt_stk_06_anims\left.smd" {
	fps 30
	subtract "left_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "mid" "nfsuc_for_gt_stk_06_anims\mid.smd" {
	fps 30
	subtract "mid_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "right" "nfsuc_for_gt_stk_06_anims\right.smd" {
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
	"nfsuc_for_gt_stk_06_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "nfsuc_for_gt_stk_06_physics.smd"
{
	$mass 1538
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
