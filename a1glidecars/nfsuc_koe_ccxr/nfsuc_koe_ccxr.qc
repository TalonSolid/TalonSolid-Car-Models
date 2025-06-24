// Created by Crowbar 0.67

$modelname "nfsuc_koe_ccxr\nfsuc_koe_ccxr.mdl"

$bodygroup "base"
{
	studio "base.smd"
}
$bodygroup "Front bumper"
{
	studio "frbumper.smd"
	studio "frbumper_1.smd"
}
$bodygroup "Rear bumper"
{
	studio "rebumper.smd"
	studio "rebumper_1.smd"
}
$bodygroup "Trunk"
{
	studio "trunk.smd"
	studio "trunk_1.smd"
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
$bodygroup "Hood"
{
	studio "hood.smd"
	studio "hood_1.smd"
}
$bodygroup "Mirror left"
{
	studio "mirrorleft.smd"
	blank
}
$bodygroup "Mirror right"
{
	studio "mirrorright.smd"
	blank
}
$bodygroup "Lit"
{
	studio "litoff.smd"
	studio "lit.smd"
}
$bodygroup "Lit full"
{
	studio "litfulloff.smd"
	studio "litfull.smd"
}
$bodygroup "brakelight"
{
	studio "brakelight.smd"
	studio "brakelight_1.smd"
}
$bodygroup "Spoiler brake"
{
	studio "spoiler.smd"
	studio "spoiler_1.smd"
}
$bodygroup "headlight"
{
	studio "headlight.smd"
}
$bodygroup "exhaust"
{
	studio "exhaust.smd"
}
$bodygroup "chassis"
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

$cdmaterials "models\nfsuc_koe_ccxr\"
$CDMaterials "models\nfsuc\shared\"

$cbox 0 0 0 0 0 0

$bbox -100.438 -46.863 -0.409 99.943 46.863 49.554

$definebone "root" "" 0 0 0 0 0 0 0 0 0 270 270 0
$definebone "steering_wheel" "root" 17.6177 14.0391 25.8485 0 0 0 0 0 0 270 270 0


$poseparameter "vehicle_steer" -1 1 loop 0

$weightlist "weights_turning" {
	 "root" 1
	 "steering_wheel" 2
}

$animation "left_corrective_animation" "nfsuc_koe_ccxr_anims\left_corrective_animation.smd" {
}

$animation "mid_corrective_animation" "nfsuc_koe_ccxr_anims\mid_corrective_animation.smd" {
}

$animation "right_corrective_animation" "nfsuc_koe_ccxr_anims\right_corrective_animation.smd" {
}

$animation "neutral" "nfsuc_koe_ccxr_anims\neutral.smd" {
	fps 30
}

$animation "left" "nfsuc_koe_ccxr_anims\left.smd" {
	fps 30
	subtract "left_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "mid" "nfsuc_koe_ccxr_anims\mid.smd" {
	fps 30
	subtract "mid_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "right" "nfsuc_koe_ccxr_anims\right.smd" {
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
	"nfsuc_koe_ccxr_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "nfsuc_koe_ccxr_physics.smd"
{
	$mass 1180
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
