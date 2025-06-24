// Created by Crowbar 0.67

$modelname "nfsuc_dod_chr_bee_07\nfsuc_dod_chr_bee_07.mdl"

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
$bodygroup "Rear bumper"
{
	studio "rebumper.smd"
	studio "rebumper_1.smd"
	studio "rebumper_2.smd"
	blank
}
$bodygroup "Fender left"
{
	studio "fenderleft.smd"
	studio "fenderleft_1.smd"
	studio "fenderleft_2.smd"
}
$bodygroup "Fender right"
{
	studio "fenderright.smd"
	studio "fenderright_1.smd"
	studio "fenderright_2.smd"
}
$bodygroup "Hood"
{
	studio "hood.smd"
	studio "hood_1.smd"
	studio "hood_2.smd"
	blank
}
$bodygroup "Door left"
{
	studio "doorleft.smd"
	studio "doorleft_1.smd"
	studio "doorleft_2.smd"
}
$bodygroup "Door right"
{
	studio "doorright.smd"
	studio "doorright_1.smd"
	studio "doorright_2.smd"
}
$bodygroup "Rear door left"
{
	studio "redoorleft.smd"
	studio "redoorleft_1.smd"
	studio "redoorleft_2.smd"
}
$bodygroup "Rear door right"
{
	studio "redoorright.smd"
	studio "redoorright_1.smd"
	studio "redoorright_2.smd"
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
$bodygroup "Trunk"
{
	studio "trunk.smd"
	studio "trunk_1.smd"
	studio "trunk_2.smd"
}
$BodyGroup "Exhaust"
{
	studio "exhaust.smd"
	blank
}
$bodygroup "Brakelight"
{
	studio "brakelight.smd"
	studio "brakelight_1.smd"
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
$bodygroup "Headlight"
{
	studio "headlight.smd"
}
$bodygroup "Body"
{
	studio "body.smd"
}
$bodygroup "Skirts"
{
	studio "skirts.smd"
}

$surfaceprop "metal"

$contents "solid"

$illumposition 0 0.248 24.646

$cdmaterials "models\nfsuc_dod_chr_bee_07\"
$CDMaterials "models\nfsuc\shared\"

$cbox 0 0 0 0 0 0

$bbox -100.438 -46.863 -0.409 99.943 46.863 49.554

$definebone "root" "" 0 0 0 0 0 0 0 0 0 270 270 0
$definebone "steering_wheel" "root" 19.9163 17.9343 33.3085 0 0 0 0 0 0 270 270 0


$poseparameter "vehicle_steer" -1 1 loop 0

$weightlist "weights_turning" {
	 "root" 1
	 "steering_wheel" 2
}

$animation "left_corrective_animation" "nfsuc_dod_chr_bee_07_anims\left_corrective_animation.smd" {
}

$animation "mid_corrective_animation" "nfsuc_dod_chr_bee_07_anims\mid_corrective_animation.smd" {
}

$animation "right_corrective_animation" "nfsuc_dod_chr_bee_07_anims\right_corrective_animation.smd" {
}

$animation "neutral" "nfsuc_dod_chr_bee_07_anims\neutral.smd" {
	fps 30
}

$animation "left" "nfsuc_dod_chr_bee_07_anims\left.smd" {
	fps 30
	subtract "left_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "mid" "nfsuc_dod_chr_bee_07_anims\mid.smd" {
	fps 30
	subtract "mid_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "right" "nfsuc_dod_chr_bee_07_anims\right.smd" {
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
	"nfsuc_dod_chr_bee_07_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "nfsuc_dod_chr_bee_07_physics.smd"
{
	$mass 1887
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
