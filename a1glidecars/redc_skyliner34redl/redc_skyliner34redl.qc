// Created by Crowbar 0.67

$modelname "redc_skyliner34redl\redc_skyliner34redl.mdl"

$bodygroup "base"
{
	studio "base.smd"
}
$bodygroup "Front bumper"
{
	studio "frbumper.smd"
	studio "frbumper_1.smd"
	studio "frbumper_2.smd"
	blank
}
$bodygroup "Hood"
{
	studio "hood.smd"
	studio "hood_1.smd"
	studio "hood_2.smd"
	blank
}
$bodygroup "Front fenders"
{
	studio "frontfenders.smd"
	studio "frontfenders_1.smd"
}
$bodygroup "Door left"
{
	studio "doorleft.smd"
	studio "doorleft_1.smd"
	studio "doorleft_2.smd"
	blank
}
$bodygroup "Door right"
{
	studio "doorright.smd"
	studio "doorright_1.smd"
	studio "doorright_2.smd"
	blank
}
$bodygroup "Left skirt"
{
	studio "leftskirt.smd"
	studio "leftskirt_1.smd"
}
$bodygroup "Right skirt"
{
	studio "rightskirt.smd"
	studio "rightskirt_1.smd"
}
$bodygroup "Rear left fender"
{
	studio "releftfender.smd"
	studio "releftfender_1.smd"
}
$bodygroup "Rear right fender"
{
	studio "rerightfender.smd"
	studio "rerightfender_1.smd"
}
$bodygroup "Trunk"
{
	studio "trunk.smd"
	studio "trunk_1.smd"
	studio "trunk_2.smd"
	blank
}
$bodygroup "Rear bumper"
{
	studio "rebumper.smd"
	studio "rebumper_1.smd"
	studio "rebumper_2.smd"
	blank
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
$bodygroup "Exhaust"
{
	studio "exhaust.smd"
	blank
}
$bodygroup "Lit"
{
	studio "lit.smd"
	studio "lit_1.smd"
}
$bodygroup "Lit full"
{
	studio "litfull.smd"
	studio "litfull_1.smd"
}
$bodygroup "Engine"
{
	studio "engine.smd"
}
$bodygroup "Rollcage"
{
	studio "rollcage.smd"
}
$bodygroup "Steering wheel"
{
	studio "steering_wheel.smd"
}
$bodygroup "Headlight"
{
	studio "headlight.smd"
}
$bodygroup "Muffler"
{
	studio "muffler.smd"
}



$surfaceprop "metal"

$contents "solid"

$illumposition 0 0.248 24.646

$cdmaterials "models\redc_skyliner34redl\"

$cbox 0 0 0 0 0 0

$bbox -100.438 -46.863 -0.409 99.943 46.863 49.554

$definebone "root" "" 0 0 0 0 0 0 0 0 0 270 270 0
$definebone "steering_wheel" "root" 14.5479 -16.7608 27.2182 0 0 0 0 0 0 270 270 0


$poseparameter "vehicle_steer" -1 1 loop 0

$weightlist "weights_turning" {
	 "root" 1
	 "steering_wheel" 2
}

$animation "left_corrective_animation" "redc_skyliner34redl_anims\left_corrective_animation.smd" {
}

$animation "mid_corrective_animation" "redc_skyliner34redl_anims\mid_corrective_animation.smd" {
}

$animation "right_corrective_animation" "redc_skyliner34redl_anims\right_corrective_animation.smd" {
}

$animation "neutral" "redc_skyliner34redl_anims\neutral.smd" {
	fps 30
}

$animation "left" "redc_skyliner34redl_anims\left.smd" {
	fps 30
	subtract "left_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "mid" "redc_skyliner34redl_anims\mid.smd" {
	fps 30
	subtract "mid_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "right" "redc_skyliner34redl_anims\right.smd" {
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
	"redc_skyliner34redl_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "redc_skyliner34redl_physics.smd"
{
	$mass 1560
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
