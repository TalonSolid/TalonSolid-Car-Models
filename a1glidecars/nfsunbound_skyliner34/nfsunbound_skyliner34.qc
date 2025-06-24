// Created by Crowbar 0.67

$modelname "nfsunbound_skyliner34\nfsunbound_skyliner34.mdl"

$bodygroup "badge"
{
	studio "badge.smd"
}
$bodygroup "plate"
{
	studio "plate.smd"
	studio "platered.smd"
	studio "plateeddie.smd"
	studio "plateturbo.smd"
	blank
}
$bodygroup "spoiler"
{
	studio "spoiler.smd"
	studio "spoiler_1.smd"
	blank
}
$bodygroup "Diffuser Rear"
{
	blank
	studio "diffuserrear.smd"
}
$bodygroup "Splitter"
{
	blank
	studio "splitter_1.smd"
}
$bodygroup "Hood"
{
	studio "hood.smd"
	studio "hood_1.smd"
}
$bodygroup "headlight"
{
	studio "headlight1.smd"
	studio "headlight2.smd"
}
$bodygroup "beam"
{
	studio "beam1.smd"
	studio "beam2.smd"
}
$bodygroup "brake"
{
	studio "brake1.smd"
	studio "brake2.smd"
}
$bodygroup "Turn Signal Left"
{
	studio "turnsignall1.smd"
	studio "turnsignall2.smd"
}
$bodygroup "Turn Signal Right"
{
	studio "turnsignalr1.smd"
	studio "turnsignalr2.smd"
}
$bodygroup "Reverse"
{
	studio "reverse1.smd"
	studio "reverse2.smd"
}
$bodygroup "bumperfr"
{
	studio "bumperfr.smd"
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
$bodygroup "exhaust"
{
	studio "exhaust.smd"
}
$bodygroup "engine"
{
	studio "engine.smd"
}
$bodygroup "glass"
{
	studio "glass.smd"
}
$bodygroup "interior"
{
	studio "interior.smd"
}
$bodygroup "metal"
{
	studio "metal.smd"
}
$bodygroup "mirrors"
{
	studio "mirrors.smd"
}
$bodygroup "opaque"
{
	studio "opaque.smd"
}
$bodygroup "opaque_1"
{
	studio "opaque_1.smd"
}
$bodygroup "opaque_2"
{
	studio "opaque_2.smd"
}
$bodygroup "tlhl"
{
	studio "tlhl.smd"
}
$bodygroup "window2"
{
	studio "window2.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0.248 24.646

$cdmaterials "models\nfsunbound_skyliner34\"
$cdmaterials "models\nfsunbound_mantiskitr34\"

$texturegroup "skinfamilies"
{
	{ "skin_0" }
	{ "skin_1" }
}

$cbox 0 0 0 0 0 0

$bbox -100.438 -46.863 -0.409 99.943 46.863 49.554

$definebone "root" "" 0 0 0 0 0 0 0 0 0 270 270 0
$definebone "steering_wheel" "root" 12.5344 -16.5863 31.0739 0 0 0 0 0 0 270 270 0


$poseparameter "vehicle_steer" -1 1 loop 0

$weightlist "weights_turning" {
	 "root" 1
	 "steering_wheel" 2
}

$animation "left_corrective_animation" "nfsunbound_skyliner34_anims\left_corrective_animation.smd" {
}

$animation "mid_corrective_animation" "nfsunbound_skyliner34_anims\mid_corrective_animation.smd" {
}

$animation "right_corrective_animation" "nfsunbound_skyliner34_anims\right_corrective_animation.smd" {
}

$animation "neutral" "nfsunbound_skyliner34_anims\neutral.smd" {
	fps 30
}

$animation "left" "nfsunbound_skyliner34_anims\left.smd" {
	fps 30
	subtract "left_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "mid" "nfsunbound_skyliner34_anims\mid.smd" {
	fps 30
	subtract "mid_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "right" "nfsunbound_skyliner34_anims\right.smd" {
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
	"nfsunbound_skyliner34_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "nfsunbound_skyliner34_physics.smd"
{
	$mass 1560
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
