// Created by Crowbar 0.67

$modelname "nfsuc_aud_r8_stk_08\nfsuc_aud_r8_stk_08.mdl"

$BodyGroup "base"
{
	studio "base.smd"
}
$BodyGroup "Front bumper"
{
	studio "frbumper.smd"
	studio "frbumper_1.smd"
	blank
}
$BodyGroup "Rear bumper"
{
	studio "rebumper.smd"
	studio "rebumper_1.smd"
	blank
}
$BodyGroup "Hood"
{
	studio "hood.smd"
	studio "hood_1.smd"
	blank
}
$BodyGroup "Door left"
{
	studio "doorleft.smd"
	studio "doorleft_1.smd"
	studio "doorleft_2.smd"
}
$BodyGroup "Door right"
{
	studio "doorright.smd"
	studio "doorright_1.smd"
	studio "doorright_2.smd"
}
$BodyGroup "Mirror left"
{
	studio "mirrorleft.smd"
	blank
}
$BodyGroup "Mirror right"
{
	studio "mirrorright.smd"
	blank
}
$BodyGroup "Trunk"
{
	studio "trunk.smd"
	studio "trunk_1.smd"
	studio "trunk_2.smd"
	blank
}
$BodyGroup "Exhaust"
{
	studio "exhaust.smd"
	blank
}
$BodyGroup "Brakelight"
{
	studio "brakelight.smd"
	studio "brakelight_1.smd"
}
$BodyGroup "Headlight"
{
	studio "headlight.smd"
	studio "headlight_1.smd"
}
$BodyGroup "Fenders"
{
	studio "fenders.smd"
}
$BodyGroup "Muffler"
{
	studio "muffler.smd"
}
$BodyGroup "Skirts"
{
	studio "skirts.smd"
}
$BodyGroup "Body"
{
	studio "body.smd"
}
$BodyGroup "Chassis"
{
	studio "chassis.smd"
}
$BodyGroup "Spoiler"
{
	studio "spoiler.smd"
}

$surfaceprop "metal"

$contents "solid"

$illumposition 0 0.248 24.646

$cdmaterials "models\nfsuc_aud_r8_stk_08\"
$CDMaterials "models\nfsuc\shared\"

$cbox 0 0 0 0 0 0

$bbox -100.438 -46.863 -0.409 99.943 46.863 49.554

$definebone "root" "" 0 0 0 0 0 0 0 0 0 270 270 0
$definebone "steering_wheel" "root" 20.2053 16.2413 26.9496 0 0 0 0 0 0 270 270 0


$poseparameter "vehicle_steer" -1 1 loop 0

$weightlist "weights_turning" {
	 "root" 1
	 "steering_wheel" 2
}

$animation "left_corrective_animation" "nfsuc_aud_r8_stk_08_anims\left_corrective_animation.smd" {
}

$animation "mid_corrective_animation" "nfsuc_aud_r8_stk_08_anims\mid_corrective_animation.smd" {
}

$animation "right_corrective_animation" "nfsuc_aud_r8_stk_08_anims\right_corrective_animation.smd" {
}

$animation "neutral" "nfsuc_aud_r8_stk_08_anims\neutral.smd" {
	fps 30
}

$animation "left" "nfsuc_aud_r8_stk_08_anims\left.smd" {
	fps 30
	subtract "left_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "mid" "nfsuc_aud_r8_stk_08_anims\mid.smd" {
	fps 30
	subtract "mid_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "right" "nfsuc_aud_r8_stk_08_anims\right.smd" {
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
	"nfsuc_aud_r8_stk_08_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "nfsuc_aud_r8_stk_08_physics.smd"
{
	$mass 1560
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
