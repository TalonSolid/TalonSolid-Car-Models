// Created by Crowbar 0.74

$ModelName "nfsuc_nis_370_z_09\nfsuc_nis_370_z_09_hector.mdl"

$BodyGroup "base"
{
	studio "base.smd"
}
$BodyGroup "Front bumper"
{
	studio "frbumper.smd"
	studio "frbumper_1.smd"
	studio "frbumper_2.smd"
	blank
}
$BodyGroup "Rear bumper"
{
	studio "rebumper.smd"
	studio "rebumper_1.smd"
	studio "rebumper_2.smd"
	blank
}
$BodyGroup "Hood"
{
	studio "hood.smd"
	studio "hood_1.smd"
	studio "hood_2.smd"
	blank
}
$BodyGroup "Fender left"
{
	studio "fenderleft.smd"
	studio "fenderleft_1.smd"
}
$BodyGroup "Fender right"
{
	studio "fenderright.smd"
	studio "fenderright_1.smd"
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
$BodyGroup "Window"
{
	studio "window.smd"
}


$SurfaceProp "metal"

$Contents "solid"

$IllumPosition 0 0.248 24.646

$CDMaterials "models\nfsuc_nis_370_z_09\"
$CDMaterials "models\nfsuc\shared\"

$CBox 0 0 0 0 0 0

$BBox -100.438 -46.863 -0.409 99.943 46.863 49.554


$definebone "root" "" 0 0 0 0 0 0 0 0 0 270 270 0
$definebone "steering_wheel" "root" 6.744296 16.695551 31.078762 0 0 0 0 0 0 270 270 0


$poseparameter "vehicle_steer" -1 1 loop 0

$weightlist "weights_turning" {
	 "root" 1
	 "steering_wheel" 2
}

$animation "left_corrective_animation" "nfsuc_nis_370_z_09_hector_anims\left_corrective_animation.smd" {
}

$animation "mid_corrective_animation" "nfsuc_nis_370_z_09_hector_anims\mid_corrective_animation.smd" {
}

$animation "right_corrective_animation" "nfsuc_nis_370_z_09_hector_anims\right_corrective_animation.smd" {
}

$animation "neutral" "nfsuc_nis_370_z_09_hector_anims\neutral.smd" {
	fps 30
}

$animation "left" "nfsuc_nis_370_z_09_hector_anims\left.smd" {
	fps 30
	subtract "left_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "mid" "nfsuc_nis_370_z_09_hector_anims\mid.smd" {
	fps 30
	subtract "mid_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "right" "nfsuc_nis_370_z_09_hector_anims\right.smd" {
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

$Sequence "idle" {
	"nfsuc_nis_370_z_09_hector_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "nfsuc_nis_370_z_09_hector_physics.smd"
{
	$mass 1466
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
