// Created by Crowbar 0.67

$modelname "nfsuc_bug_vey_164_08\nfsuc_bug_vey_164_08.mdl"

$bodygroup "base"
{
	studio "base.smd"
}
$bodygroup "Front Bumper"
{
	studio "frbumper.smd"
	studio "frbumper_1.smd"
	studio "frbumper_2.smd"
	blank
}
$bodygroup "Rear Bumper"
{
	studio "rebumper.smd"
	studio "rebumper_1.smd"
	studio "rebumper_2.smd"
	blank
}
$bodygroup "Hood"
{
	studio "hood.smd"
	studio "hood_1.smd"
	studio "hood_2.smd"
	blank
}
$bodygroup "Fender Left"
{
	studio "fenderleft.smd"
	studio "fenderleft_1.smd"
	studio "fenderleft_2.smd"
}
$bodygroup "Fender Right"
{
	studio "fenderright.smd"
	studio "fenderright_1.smd"
	studio "fenderright_2.smd"
}
$bodygroup "Door Left"
{
	studio "doorleft.smd"
	studio "doorleft_1.smd"
}
$bodygroup "Door Right"
{
	studio "doorright.smd"
	studio "doorright_1.smd"
}
$bodygroup "Mirror Left"
{
	studio "mirrorleft.smd"
	studio "mirrorleft_1.smd"
	blank
}
$bodygroup "Mirror Right"
{
	studio "mirrorright.smd"
	studio "mirrorright_1.smd"
	blank
}
$bodygroup "Skirt Left"
{
	studio "skirtleft.smd"
	studio "skirtleft_1.smd"
}
$bodygroup "Skirt Right"
{
	studio "skirtright.smd"
	studio "skirtright_1.smd"
}
$bodygroup "Windows"
{
	studio "windows.smd"
	studio "windows_1.smd"
}
$bodygroup "Spoiler"
{
	studio "spoiler.smd"
	studio "spoiler_1.smd"
	studio "spoiler_2.smd"
	blank
}
$bodygroup "Exhaust"
{
	studio "exhaust.smd"
	blank
}
$bodygroup "Headlight 2"
{
	studio "none1.smd"
	studio "lit.smd"
}
$bodygroup "Headlight 3"
{
	studio "none2.smd"
	studio "litfull.smd"
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
	blank
}
$bodygroup "body"
{
	studio "body.smd"
}
$bodygroup "chassis"
{
	studio "chassis.smd"
}

$surfaceprop "metal"

$contents "solid"

$illumposition 0 0.248 24.646

$cdmaterials "models\nfsuc_bug_vey_164_08\"
$CDMaterials "models\nfsuc\shared\"

$cbox 0 0 0 0 0 0

$bbox -100.438 -46.863 -0.409 99.943 46.863 49.554

$definebone "root" "" 0 0 0 0 0 0 0 0 0 270 270 0
$definebone "steering_wheel" "root" 22.2454 17.5401 28.809 0 0 0 0 0 0 270 270 0


$poseparameter "vehicle_steer" -1 1 loop 0

$weightlist "weights_turning" {
	 "root" 1
	 "steering_wheel" 2
}

$animation "left_corrective_animation" "nfsuc_bug_vey_164_08_anims\left_corrective_animation.smd" {
}

$animation "mid_corrective_animation" "nfsuc_bug_vey_164_08_anims\mid_corrective_animation.smd" {
}

$animation "right_corrective_animation" "nfsuc_bug_vey_164_08_anims\right_corrective_animation.smd" {
}

$animation "neutral" "nfsuc_bug_vey_164_08_anims\neutral.smd" {
	fps 30
}

$animation "left" "nfsuc_bug_vey_164_08_anims\left.smd" {
	fps 30
	subtract "left_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "mid" "nfsuc_bug_vey_164_08_anims\mid.smd" {
	fps 30
	subtract "mid_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "right" "nfsuc_bug_vey_164_08_anims\right.smd" {
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
	"nfsuc_bug_vey_164_08_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "nfsuc_bug_vey_164_08_physics.smd"
{
	$mass 1888
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
