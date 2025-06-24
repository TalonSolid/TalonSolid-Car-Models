// Created by Crowbar 0.67

$modelname "nfsuc_lot_eli_111_06\nfsuc_lot_eli_111_06.mdl"

$bodygroup "base"
{
	studio "base.smd"
}
$bodygroup "Front bumper"
{
	studio "frbumper.smd"
	studio "frbumper_1.smd"
}
$bodygroup "Rear bumper"
{
	studio "rebumper.smd"
	studio "rebumper_1.smd"
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
$bodygroup "Trunk"
{
	studio "trunk.smd"
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
$bodygroup "Headlights"
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
$bodygroup "Hood"
{
	studio "hood.smd"
}
$bodygroup "Fenders"
{
	studio "fenders.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0.248 24.646

$cdmaterials "models\nfsuc_lot_eli_111_06\"
$CDMaterials "models\nfsuc\shared\"

$cbox 0 0 0 0 0 0

$bbox -100.438 -46.863 -0.409 99.943 46.863 49.554

$definebone "root" "" 0 0 0 0 0 0 0 0 0 270 270 0
$definebone "steering_wheel" "root" 9.90309 11.3036 24.5547 0 0 0 0 0 0 270 270 0


$poseparameter "vehicle_steer" -1 1 loop 0

$weightlist "weights_turning" {
	 "root" 1
	 "steering_wheel" 2
}

$animation "left_corrective_animation" "nfsuc_lot_eli_111_06_anims\left_corrective_animation.smd" {
}

$animation "mid_corrective_animation" "nfsuc_lot_eli_111_06_anims\mid_corrective_animation.smd" {
}

$animation "right_corrective_animation" "nfsuc_lot_eli_111_06_anims\right_corrective_animation.smd" {
}

$animation "neutral" "nfsuc_lot_eli_111_06_anims\neutral.smd" {
	fps 30
}

$animation "left" "nfsuc_lot_eli_111_06_anims\left.smd" {
	fps 30
	subtract "left_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "mid" "nfsuc_lot_eli_111_06_anims\mid.smd" {
	fps 30
	subtract "mid_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "right" "nfsuc_lot_eli_111_06_anims\right.smd" {
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
	"nfsuc_lot_eli_111_06_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "nfsuc_lot_eli_111_06_physics.smd"
{
	$mass 880
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
