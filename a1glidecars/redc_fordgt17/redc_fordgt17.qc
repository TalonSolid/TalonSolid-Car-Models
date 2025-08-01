// Created by Crowbar 0.67

$modelname "redc_fordgt17\redc_glidefordgt17.mdl"

$bodygroup "Base"
{
	studio "base.smd"
}
$bodygroup "Body Kit"
{
	studio "body.smd"
	studio "body_1.smd"
	studio "body_2.smd"
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
}
$bodygroup "Hood"
{
	studio "hood.smd"
	studio "hood_1.smd"
	studio "hood_2.smd"
}
$bodygroup "Plate"
{
	studio "plate.smd"
	studio "plate_1.smd"
	studio "plate_2.smd"
	blank
}
$bodygroup "Interior"
{
	studio "interior.smd"
}
$bodygroup "Mirrors"
{
	studio "mirrors.smd"
}
$bodygroup "Windows"
{
	studio "windows.smd"
}
$bodygroup "Tail Lights"
{
	studio "brakelights.smd"
}
$bodygroup "Head Lights"
{
	studio "headlights.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0.248 24.646

$cdmaterials "models\redc_fordgt17\"
$cdmaterials "models\talonshared\redlineshared\"
$cdmaterials "models\talonshared\nfsunboundshared\"

$cbox 0 0 0 0 0 0

$bbox -100.438 -46.863 -0.409 99.943 46.863 49.554

$definebone "root" "" 0 0 0 0 0 0 0 0 0 270 270 0
$definebone "steering_wheel" "root" 16.4955 11.9487 26.9288 0 0 0 0 0 0 270 270 0


$poseparameter "vehicle_steer" -1 1 loop 0

$weightlist "weights_turning" {
	 "root" 1
	 "steering_wheel" 2
}

$animation "left_corrective_animation" "redc_fordgt17_anims\left_corrective_animation.smd" {
}

$animation "mid_corrective_animation" "redc_fordgt17_anims\mid_corrective_animation.smd" {
}

$animation "right_corrective_animation" "redc_fordgt17_anims\right_corrective_animation.smd" {
}

$animation "neutral" "redc_fordgt17_anims\neutral.smd" {
	fps 30
}

$animation "left" "redc_fordgt17_anims\left.smd" {
	fps 30
	subtract "left_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "mid" "redc_fordgt17_anims\mid.smd" {
	fps 30
	subtract "mid_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "right" "redc_fordgt17_anims\right.smd" {
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
	"redc_fordgt17_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "redc_fordgt17_physics.smd"
{
	$mass 1385
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
