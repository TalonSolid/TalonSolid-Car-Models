// Created by Crowbar 0.67

$modelname "redcpol_mustanggtpol\redcpol_mustanggtpol.mdl"

$bodygroup "base"
{
	studio "base.smd"
}
$bodygroup "body"
{
	studio "body.smd"
	studio "body_1.smd"
	studio "body_2.smd"
	studio "body_3.smd"
}
$bodygroup "spoiler"
{
	blank
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
}
$bodygroup "hood"
{
	studio "hood.smd"
	studio "hood_1.smd"
	studio "hood_2.smd"
	studio "hood_3.smd"
	studio "hood_4.smd"
	studio "hood_5.smd"
}
$bodygroup "mirror"
{
	studio "mirror.smd"
	studio "mirror_1.smd"
	studio "mirror_2.smd"
	studio "mirror_3.smd"
}
$bodygroup "exhaust"
{
	studio "exhaust.smd"
	studio "exhaust_1.smd"
	studio "exhaust_2.smd"
	studio "exhaust_3.smd"
	blank
}
$bodygroup "roof"
{
	studio "roof.smd"
	studio "roof_1.smd"
}
$bodygroup "roof_fins"
{
	blank
	studio "roof_fins.smd"
	studio "roof_fins_1.smd"
}
$bodygroup "roof_lip"
{
	blank
	studio "roof_lip.smd"
	studio "roof_lip_1.smd"
}
$bodygroup "Plate"
{
	studio "plate.smd"
	blank
}
$bodygroup "Police Siren"
{
	studio "policesiren.smd"
	blank
}
$bodygroup "Search Lights"
{
	studio "searchlights.smd"
	blank
}
$bodygroup "Brakelight"
{
	studio "brakelight.smd"
	studio "brakelight_1.smd"
}
$bodygroup "Brake"
{
	studio "brake.smd"
	studio "brake_1.smd"
}
$bodygroup "Headlight"
{
	studio "headlight.smd"
	studio "headlight_1.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0.248 24.646

$cdmaterials "models\redcpol_mustanggtpol\"

$texturegroup "skinfamilies"
{
	{ "skin_0" }
	{ "skin_1" }
}

$cbox 0 0 0 0 0 0

$bbox -100.438 -46.863 -0.409 99.943 46.863 49.554

$definebone "root" "" 0 0 0 0 0 0 0 0 0 270 270 0
$definebone "steering_wheel" "root" 6.1607 16.7026 33.5888 0 0 0 0 0 0 270 270 0


$poseparameter "vehicle_steer" -1 1 loop 0

$weightlist "weights_turning" {
	 "root" 1
	 "steering_wheel" 2
}

$animation "left_corrective_animation" "redcpol_mustanggtpol_anims\left_corrective_animation.smd" {
}

$animation "mid_corrective_animation" "redcpol_mustanggtpol_anims\mid_corrective_animation.smd" {
}

$animation "right_corrective_animation" "redcpol_mustanggtpol_anims\right_corrective_animation.smd" {
}

$animation "neutral" "redcpol_mustanggtpol_anims\neutral.smd" {
	fps 30
}

$animation "left" "redcpol_mustanggtpol_anims\left.smd" {
	fps 30
	subtract "left_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "mid" "redcpol_mustanggtpol_anims\mid.smd" {
	fps 30
	subtract "mid_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "right" "redcpol_mustanggtpol_anims\right.smd" {
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
	"redcpol_mustanggtpol_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "redcpol_mustanggtpol_physics.smd"
{
	$mass 1680
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
