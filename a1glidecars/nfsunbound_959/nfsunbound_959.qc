// Created by Crowbar 0.67

$modelname "nfsunbound_959\nfsunbound_959.mdl"

$bodygroup "base"
{
	studio "base.smd"
}
$bodygroup "Plate"
{
	studio "plate.smd"
	studio "platepol.smd"
	studio "platepolscpd.smd"
	studio "platepoltppd.smd"
	blank
}
$bodygroup "Tail lights"
{
	studio "taillights_1.smd"
	studio "taillights_2.smd"
}
$bodygroup "Head light"
{
	studio "headlight_1.smd"
	studio "headlight_2.smd"
}
$bodygroup "Reverse"
{
	studio "reverse_1.smd"
	studio "reverse_2.smd"
}
$bodygroup "Turn signal left"
{
	studio "turnsignalleft_1.smd"
	studio "turnsignalleft_2.smd"
}
$bodygroup "Turn signal right"
{
	studio "turnsignalright_1.smd"
	studio "turnsignalright_2.smd"
}
$bodygroup "Police Equipment"
{
	blank
	studio "policeequipment.smd"
}
$bodygroup "Police Siren"
{
	blank
	studio "policesiren.smd"
	studio "policesirenuc.smd"
}
$bodygroup "NFS Plate"
{
	blank
	studio "nfsplate.smd"
}
$bodygroup "Police light left"
{
	studio "light_left.smd"
	studio "light_left_lit.smd"
	blank
}
$bodygroup "Police light right"
{
	studio "light_right.smd"
	studio "light_right_lit.smd"
	blank
}
$bodygroup "Blue UC"
{
	studio "blueuc.smd"
	studio "blueuc_lit.smd"
	blank
}
$bodygroup "Red UC"
{
	studio "reduc.smd"
	studio "reduc_lit.smd"
	blank
}
$bodygroup "badge"
{
	studio "badge.smd"
}
$bodygroup "body"
{
	studio "body.smd"
}
$bodygroup "chassis1"
{
	studio "chassis1.smd"
}
$bodygroup "chassis2"
{
	studio "chassis2.smd"
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
$bodygroup "opaque"
{
	studio "opaque.smd"
}
$bodygroup "tlhl"
{
	studio "tlhl.smd"
}
$bodygroup "window"
{
	studio "window.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0.248 24.646

$cdmaterials "models\nfsunbound_959\"
$CDMaterials "models\talonshared\nfsunboundshared\"
$cdmaterials "models\nfsunbound_959cc\"

$TextureGroup "skinfamilies"
{
	{ "skin_0" }
	{ "skin_1" }
	{ "skin_2" }
}

$cbox 0 0 0 0 0 0

$bbox -100.438 -46.863 -0.409 99.943 46.863 49.554

$definebone "root" "" 0 0 0 0 0 0 0 0 0 270 270 0
$definebone "steering_wheel" "root" 10.186 12.6108 29.9833 0 0 0 0 0 0 270 270 0


$poseparameter "vehicle_steer" -1 1 loop 0

$weightlist "weights_turning" {
	 "root" 1
	 "steering_wheel" 2
}

$animation "left_corrective_animation" "nfsunbound_959_anims\left_corrective_animation.smd" {
}

$animation "mid_corrective_animation" "nfsunbound_959_anims\mid_corrective_animation.smd" {
}

$animation "right_corrective_animation" "nfsunbound_959_anims\right_corrective_animation.smd" {
}

$animation "neutral" "nfsunbound_959_anims\neutral.smd" {
	fps 30
}

$animation "left" "nfsunbound_959_anims\left.smd" {
	fps 30
	subtract "left_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "mid" "nfsunbound_959_anims\mid.smd" {
	fps 30
	subtract "mid_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "right" "nfsunbound_959_anims\right.smd" {
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
	"nfsunbound_959_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "nfsunbound_959_physics.smd"
{
	$mass 1350
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
