// Created by Crowbar 0.67

$modelname "nfsuc_mer_cls_55_08\nfsuc_mer_cls_55_08.mdl"

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
	studio "doorreleft.smd"
	studio "doorreleft_1.smd"
	studio "doorreleft_2.smd"
}
$bodygroup "Rear door right"
{
	studio "doorreright.smd"
	studio "doorreright_1.smd"
	studio "doorreright_2.smd"
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
$bodygroup "Spoiler"
{
	studio "spoiler.smd"
	studio "spoiler_1.smd"
	blank
}
$bodygroup "Brakelight"
{
	studio "brakelight.smd"
	studio "brakelight_1.smd"
}
$bodygroup "Lit"
{
	studio "litoff.smd"
	studio "lit.smd"
}
$bodygroup "Lit full"
{
	studio "litfulloff.smd"
	studio "litfull.smd"
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

$cdmaterials "models\nfsuc_mer_cls_55_08\"
$CDMaterials "models\nfsuc\shared\"

$cbox 0 0 0 0 0 0

$bbox -100.438 -46.863 -0.409 99.943 46.863 49.554

$definebone "root" "" 0 0 0 0 0 0 0 0 0 270 270 0
$definebone "steering_wheel" "root" 18.7257 16.7368 34.7331 0 0 0 0 0 0 270 270 0


$poseparameter "vehicle_steer" -1 1 loop 0

$weightlist "weights_turning" {
	 "root" 1
	 "steering_wheel" 2
}

$animation "left_corrective_animation" "nfsuc_mer_cls_55_08_anims\left_corrective_animation.smd" {
}

$animation "mid_corrective_animation" "nfsuc_mer_cls_55_08_anims\mid_corrective_animation.smd" {
}

$animation "right_corrective_animation" "nfsuc_mer_cls_55_08_anims\right_corrective_animation.smd" {
}

$animation "neutral" "nfsuc_mer_cls_55_08_anims\neutral.smd" {
	fps 30
}

$animation "left" "nfsuc_mer_cls_55_08_anims\left.smd" {
	fps 30
	subtract "left_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "mid" "nfsuc_mer_cls_55_08_anims\mid.smd" {
	fps 30
	subtract "mid_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "right" "nfsuc_mer_cls_55_08_anims\right.smd" {
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
	"nfsuc_mer_cls_55_08_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "nfsuc_mer_cls_55_08_physics.smd"
{
	$mass 1905
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
