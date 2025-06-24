// Created by Crowbar 0.67

$modelname "redcpol_lam_mur_lp_06\redcpol_lam_mur_lp_06.mdl"

$BodyGroup "base"
{
	studio "base.smd"
}
$BodyGroup "Front Bumper"
{
	studio "frbumper.smd"
	studio "frbumper_1.smd"
	studio "frbumper_2.smd"
	blank
}
$BodyGroup "Hood"
{
	studio "hood.smd"
	studio "hood_1.smd"
	studio "hood_2.smd"
	blank
}
$BodyGroup "Front Fender Left"
{
	studio "fenderleft.smd"
	studio "fenderleft_1.smd"
	studio "fenderleft_2.smd"
	blank
}
$BodyGroup "Front Fender Right"
{
	studio "fenderright.smd"
	studio "fenderright_1.smd"
	studio "fenderright_2.smd"
	blank
}
$BodyGroup "Door Left"
{
	studio "doorleft.smd"
	studio "doorleft_1.smd"
	studio "doorleft_2.smd"
	blank
}
$BodyGroup "Door Right"
{
	studio "doorright.smd"
	studio "doorright_1.smd"
	studio "doorright_2.smd"
	blank
}
$BodyGroup "Rear Bumper"
{
	studio "rebumper.smd"
	studio "rebumper_1.smd"
	studio "rebumper_2.smd"
	blank
}
$BodyGroup "Trunk"
{
	studio "trunk.smd"
	studio "trunk_1.smd"
	studio "trunk_2.smd"
	blank
}
$BodyGroup "Brakelight"
{
	studio "brakelight.smd"
	studio "brakelight_1.smd"
}
$BodyGroup "Brake"
{
	studio "brake.smd"
	studio "brake_1.smd"
}
$BodyGroup "Lit"
{
	studio "lit.smd"
	studio "lit_1.smd"
}
$BodyGroup "Lit full"
{
	studio "litfull.smd"
	studio "litfull_1.smd"
}
$BodyGroup "Police Siren"
{
	studio "policesiren.smd"
	blank
}
$BodyGroup "Blue"
{
	studio "blue.smd"
	studio "blue_1.smd"
	blank
}
$BodyGroup "Red"
{
	studio "Red.smd"
	studio "Red_1.smd"
	blank
}
$BodyGroup "Skirts"
{
	studio "skirts.smd"
}
$BodyGroup "Headlight"
{
	studio "headlight.smd"
}



$surfaceprop "metal"

$contents "solid"

$illumposition 0 0.248 24.646

$cdmaterials "models\redcpol_lam_mur_lp_06\"
$CDMaterials "models\nfsuc\shared\"

$cbox 0 0 0 0 0 0

$bbox -100.438 -46.863 -0.409 99.943 46.863 49.554


$definebone "root" "" 0 0 0 0 0 0 0 0 0 270 270 0
$definebone "steering_wheel" "root" 23.137 19.391 26.7867 0 0 0 0 0 0 270 270 0


$poseparameter "vehicle_steer" -1 1 loop 0

$weightlist "weights_turning" {
	 "root" 1
	 "steering_wheel" 2
}

$animation "left_corrective_animation" "redcpol_lam_mur_lp_06_anims\left_corrective_animation.smd" {
}

$animation "mid_corrective_animation" "redcpol_lam_mur_lp_06_anims\mid_corrective_animation.smd" {
}

$animation "right_corrective_animation" "redcpol_lam_mur_lp_06_anims\right_corrective_animation.smd" {
}

$animation "neutral" "redcpol_lam_mur_lp_06_anims\neutral.smd" {
	fps 30
}

$animation "left" "redcpol_lam_mur_lp_06_anims\left.smd" {
	fps 30
	subtract "left_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "mid" "redcpol_lam_mur_lp_06_anims\mid.smd" {
	fps 30
	subtract "mid_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "right" "redcpol_lam_mur_lp_06_anims\right.smd" {
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
	"redcpol_lam_mur_lp_06_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "redcpol_lam_mur_lp_06_physics.smd"
{
	$mass 1650
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
