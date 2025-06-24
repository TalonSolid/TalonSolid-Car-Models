// Created by Crowbar 0.67

$modelname "redcpol_f15017swat\redcpol_f15017swat.mdl"

$bodygroup "body"
{
	studio "body.smd"
}
$bodygroup "taillight"
{
	studio "taillight.smd"
	studio "taillight_1.smd"
}
$bodygroup "lit"
{
	studio "lit.smd"
	studio "lit_1.smd"
}
$bodygroup "litfull"
{
	studio "litfull.smd"
	studio "litfull_1.smd"
}
$bodygroup "blue"
{
	studio "blue.smd"
	studio "blue_1.smd"
}
$bodygroup "red"
{
	studio "red.smd"
	studio "red_1.smd"
}
$bodygroup "white"
{
	studio "white.smd"
	studio "white_1.smd"
}
$bodygroup "headlight"
{
	studio "headlight.smd"
}
$bodygroup "headlight"
{
	studio "headlight.smd"
}
$bodygroup "headlight"
{
	studio "metal.smd"
}
$bodygroup "police"
{
	studio "police.smd"
}
$bodygroup "licenseplate"
{
	studio "licenseplate.smd"
}
$bodygroup "steering_wheel"
{
	studio "steering_wheel.smd"
}
$bodygroup "metal"
{
	studio "metal.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0.248 24.646

$cdmaterials "models\redcpol_f15017swat\"
$cdmaterials "models\talonshared\nfsunboundshared\"
$cdmaterials "models\talonshared\redlineshared\"

$texturegroup "skinfamilies"
{
	{ "skin_0" }
	{ "skin_1" }
}

$cbox 0 0 0 0 0 0

$bbox -100.438 -46.863 -0.409 99.943 46.863 49.554

$definebone "root" "" 0 0 0 0 0 0 0 0 0 270 270 0
$definebone "steering_wheel" "root" 25.2856 20.7072 48.207 0 0 0 0 0 0 270 270 0


$poseparameter "vehicle_steer" -1 1 loop 0

$weightlist "weights_turning" {
	 "root" 1
	 "steering_wheel" 2
}

$animation "left_corrective_animation" "redcpol_f15017swat_anims\left_corrective_animation.smd" {
}

$animation "mid_corrective_animation" "redcpol_f15017swat_anims\mid_corrective_animation.smd" {
}

$animation "right_corrective_animation" "redcpol_f15017swat_anims\right_corrective_animation.smd" {
}

$animation "neutral" "redcpol_f15017swat_anims\neutral.smd" {
	fps 30
}

$animation "left" "redcpol_f15017swat_anims\left.smd" {
	fps 30
	subtract "left_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "mid" "redcpol_f15017swat_anims\mid.smd" {
	fps 30
	subtract "mid_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "right" "redcpol_f15017swat_anims\right.smd" {
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
	"redcpol_f15017swat_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "redcpol_f15017swat_physics.smd"
{
	$mass 1442
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 7

	$noselfcollisions
}
