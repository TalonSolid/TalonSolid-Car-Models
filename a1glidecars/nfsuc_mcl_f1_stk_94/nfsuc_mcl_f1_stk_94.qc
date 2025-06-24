// Created by Crowbar 0.67

$modelname "nfsuc_mcl_f1_stk_94\nfsuc_mcl_f1_stk_94.mdl"

$bodygroup "base"
{
	studio "base.smd"
}
$bodygroup "Trunk"
{
	studio "trunk.smd"
	blank
}
$bodygroup "Brakelight"
{
	studio "brakelight.smd"
	studio "brakelight_1.smd"
}
$bodygroup "Lit"
{
	studio "lit.smd"
	studio "lit_1.smd"
}
$bodygroup "Litfull"
{
	studio "litfull.smd"
	studio "litfull_1.smd"
}
$bodygroup "Headlight"
{
	studio "Headlight.smd"
}
$bodygroup "window"
{
	studio "window.smd"
}
$bodygroup "body"
{
	studio "body.smd"
}
$bodygroup "chassis"
{
	studio "chassis.smd"
}
$bodygroup "sidemirrors"
{
	studio "sidemirrors.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0.248 24.646

$cdmaterials "models\nfsuc_mcl_f1_stk_94\"
$CDMaterials "models\nfsuc\shared\"

$cbox 0 0 0 0 0 0

$bbox -100.438 -46.863 -0.409 99.943 46.863 49.554

$definebone "root" "" 0 0 0 0 0 0 0 0 0 270 270 0
$definebone "steering_wheel" "root" 22.2148 0 24.1831 0 0 0 0 0 0 270 270 0


$poseparameter "vehicle_steer" -1 1 loop 0

$weightlist "weights_turning" {
	 "root" 1
	 "steering_wheel" 2
}

$animation "left_corrective_animation" "nfsuc_mcl_f1_stk_94_anims\left_corrective_animation.smd" {
}

$animation "mid_corrective_animation" "nfsuc_mcl_f1_stk_94_anims\mid_corrective_animation.smd" {
}

$animation "right_corrective_animation" "nfsuc_mcl_f1_stk_94_anims\right_corrective_animation.smd" {
}

$animation "neutral" "nfsuc_mcl_f1_stk_94_anims\neutral.smd" {
	fps 30
}

$animation "left" "nfsuc_mcl_f1_stk_94_anims\left.smd" {
	fps 30
	subtract "left_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "mid" "nfsuc_mcl_f1_stk_94_anims\mid.smd" {
	fps 30
	subtract "mid_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "right" "nfsuc_mcl_f1_stk_94_anims\right.smd" {
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
	"nfsuc_mcl_f1_stk_94_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "nfsuc_mcl_f1_stk_94_physics.smd"
{
	$mass 1140
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
