// Created by Crowbar 0.67

$modelname "redc_r8v10plus\redc_glider8v10plus.mdl"

$bodygroup "Base"
{
	studio "base.smd"
}
$bodygroup "Body Kit"
{
	studio "body.smd"
	studio "bodykit_1.smd"
	studio "bodykit_2.smd"
	studio "bodykit_3.smd"
}
$bodygroup "Spoiler"
{
	studio "spoiler.smd"
	studio "spoiler_1.smd"
	studio "spoiler_2.smd"
	studio "spoiler_3.smd"
	studio "spoiler_4.smd"
	studio "spoiler_5.smd"
	studio "spoiler_6.smd"
	studio "spoiler_7.smd"
	studio "spoiler_8.smd"
	studio "spoiler_9.smd"
	studio "spoiler_10.smd"
	studio "spoiler_11.smd"
	blank
}
$bodygroup "Plate"
{
	studio "plate.smd"
	blank
}
$bodygroup "Brakelight"
{
	studio "brakelight.smd"
}
$bodygroup "Door"
{
	studio "door.smd"
}
$bodygroup "Headlight"
{
	studio "headlight.smd"
}
$bodygroup "Interior"
{
	studio "interior.smd"
}
$bodygroup "Window"
{
	studio "window.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0.248 24.646

$cdmaterials "models\redc_r8v10plus\"

$cbox 0 0 0 0 0 0

$bbox -100.438 -46.863 -0.409 99.943 46.863 49.554

$definebone "root" "" 0 0 0 0 0 0 0 0 0 270 270 0
$definebone "steering_wheel" "root" 20.0616 16.2078 27.2406 0 0 0 0 0 0 270 270 0


$poseparameter "vehicle_steer" -1 1 loop 0

$weightlist "weights_turning" {
	 "root" 1
	 "steering_wheel" 2
}

$animation "left_corrective_animation" "redc_r8v10plus_anims\left_corrective_animation.smd" {
}

$animation "mid_corrective_animation" "redc_r8v10plus_anims\mid_corrective_animation.smd" {
}

$animation "right_corrective_animation" "redc_r8v10plus_anims\right_corrective_animation.smd" {
}

$animation "neutral" "redc_r8v10plus_anims\neutral.smd" {
	fps 30
}

$animation "left" "redc_r8v10plus_anims\left.smd" {
	fps 30
	subtract "left_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "mid" "redc_r8v10plus_anims\mid.smd" {
	fps 30
	subtract "mid_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "right" "redc_r8v10plus_anims\right.smd" {
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
	"redc_r8v10plus_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "redc_r8v10plus_physics.smd"
{
	$mass 1670
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
