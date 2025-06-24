// Created by Crowbar 0.67

$modelname "nfsunbound_bmwm3gtr\nfsunbound_bmwm3gtr.mdl"

$bodygroup "body"
{
	studio "body.smd"
}
$bodygroup "Spoiler"
{
	studio "spoiler.smd"
	blank
}
$bodygroup "Plate"
{
	studio "plate.smd"
	blank
}
$bodygroup "Beam"
{
	studio "beam.smd"
	studio "beamlit.smd"
}
$bodygroup "Lit"
{
	studio "lit.smd"
	studio "lit2.smd"
}
$bodygroup "Lit full"
{
	studio "litfull.smd"
	studio "litfull2.smd"
}
$bodygroup "glass"
{
	studio "glass.smd"
	studio "glass30th.smd"
}
$bodygroup "frchassis"
{
	studio "frchassis.smd"
	studio "frchassis30th.smd"
}
$bodygroup "tspmo"
{
	studio "tspmo.smd"
}
$bodygroup "badges"
{
	studio "badges.smd"
}
$bodygroup "chassis"
{
	studio "chassis.smd"
}
$bodygroup "engine"
{
	studio "engine.smd"
}
$bodygroup "grill"
{
	studio "grill.smd"
}
$bodygroup "interior"
{
	studio "interior.smd"
}
$bodygroup "opaque1"
{
	studio "opaque1.smd"
}
$bodygroup "opaque2"
{
	studio "opaque2.smd"
}
$bodygroup "opaque3"
{
	studio "opaque3.smd"
}
$bodygroup "tlhl"
{
	studio "tlhl.smd"
}
$bodygroup "window"
{
	studio "window.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0.248 24.646

$cdmaterials "models\nfsunbound_bmwm3gtr\"
$cdmaterials "models\nfsunbound_distressedm3gtr\"

$texturegroup "skinfamilies"
{
	{ "skin_0" }
	{ "skin_1" }
	{ "skin_2" }
}

$cbox 0 0 0 0 0 0

$bbox -100.438 -46.863 -0.409 99.943 46.863 49.554

$definebone "root" "" 0 0 0 0 0 0 0 0 0 270 270 0
$definebone "steering_wheel" "root" 16.1587 15.1962 31.9755 0 0 0 0 0 0 270 270 0


$poseparameter "vehicle_steer" -1 1 loop 0

$weightlist "weights_turning" {
	 "root" 1
	 "steering_wheel" 2
}

$animation "left_corrective_animation" "nfsunbound_bmwm3gtr_anims\left_corrective_animation.smd" {
}

$animation "mid_corrective_animation" "nfsunbound_bmwm3gtr_anims\mid_corrective_animation.smd" {
}

$animation "right_corrective_animation" "nfsunbound_bmwm3gtr_anims\right_corrective_animation.smd" {
}

$animation "neutral" "nfsunbound_bmwm3gtr_anims\neutral.smd" {
	fps 30
}

$animation "left" "nfsunbound_bmwm3gtr_anims\left.smd" {
	fps 30
	subtract "left_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "mid" "nfsunbound_bmwm3gtr_anims\mid.smd" {
	fps 30
	subtract "mid_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "right" "nfsunbound_bmwm3gtr_anims\right.smd" {
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
	"nfsunbound_bmwm3gtr_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "nfsunbound_bmwm3gtr_physics.smd"
{
	$mass 1120
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
