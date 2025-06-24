// Created by Crowbar 0.67

$modelname "nfsunbound_skyliner34\nfsunbound_skyliner34pol.mdl"

$bodygroup "badge"
{
	studio "badge.smd"
}
$bodygroup "plate"
{
	studio "platepolice.smd"
	studio "plate.smd"
	blank
}
$bodygroup "glassprotection"
{
	studio "glassprotection.smd"
	blank
}
$bodygroup "spoiler"
{
	studio "spoiler.smd"
	blank
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
$bodygroup "coplightside"
{
	studio "coplightside1.smd"
	studio "coplightside2.smd"
}
$bodygroup "coplightmid"
{
	studio "coplightmid1.smd"
	studio "coplightmid2.smd"
}
$bodygroup "policesiren"
{
	studio "policesiren.smd"
}
$bodygroup "policeprop"
{
	studio "policeprop.smd"
}
$bodygroup "pushbar"
{
	studio "pushbar.smd"
}
$bodygroup "Hood"
{
	studio "hood.smd"
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

$cdmaterials "models\nfsunbound_skyliner34pol\"
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

$animation "left_corrective_animation" "nfsunbound_skyliner34pol_anims\left_corrective_animation.smd" {
}

$animation "mid_corrective_animation" "nfsunbound_skyliner34pol_anims\mid_corrective_animation.smd" {
}

$animation "right_corrective_animation" "nfsunbound_skyliner34pol_anims\right_corrective_animation.smd" {
}

$animation "neutral" "nfsunbound_skyliner34pol_anims\neutral.smd" {
	fps 30
}

$animation "left" "nfsunbound_skyliner34pol_anims\left.smd" {
	fps 30
	subtract "left_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "mid" "nfsunbound_skyliner34pol_anims\mid.smd" {
	fps 30
	subtract "mid_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "right" "nfsunbound_skyliner34pol_anims\right.smd" {
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
	"nfsunbound_skyliner34pol_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "nfsunbound_skyliner34pol_physics.smd"
{
	$mass 1560
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
