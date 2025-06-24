// Created by Crowbar 0.74

$ModelName "nfsunbound_959\nfsunbound_959cc.mdl"

$BodyGroup "base"
{
	studio "base.smd"
}
$BodyGroup "Plate"
{
	studio "plate.smd"
	studio "platepol.smd"
	blank
}
$BodyGroup "Police Equipment"
{
	blank
	studio "policeequipment.smd"
}
$BodyGroup "Tail light"
{
	studio "taillight_1.smd"
	studio "taillight_2.smd"
}
$BodyGroup "Reverse light"
{
	studio "reverse_1.smd"
	studio "reverse_2.smd"
}
$BodyGroup "Headlight"
{
	studio "headlight_1.smd"
	studio "headlight_2.smd"
}
$BodyGroup "Turn signal left"
{
	studio "turnsignalleft_1.smd"
	studio "turnsignalleft_2.smd"
}
$BodyGroup "Turn signal right"
{
	studio "turnsignalright_1.smd"
	studio "turnsignalright_2.smd"
}
$BodyGroup "Blue light"
{
	studio "bluelight_1.smd"
	studio "bluelight_2.smd"
	blank
}
$BodyGroup "Red light"
{
	studio "redlight_1.smd"
	studio "redlight_2.smd"
	blank
}
$BodyGroup "body"
{
	studio "body.smd"
}
$BodyGroup "chassis"
{
	studio "chassis.smd"
}
$BodyGroup "chassis1"
{
	studio "chassis1.smd"
}
$BodyGroup "engine"
{
	studio "engine.smd"
}
$BodyGroup "exhaust"
{
	studio "exhaust.smd"
}
$BodyGroup "glass"
{
	studio "glass.smd"
}
$BodyGroup "interior"
{
	studio "interior.smd"
}
$BodyGroup "opaque"
{
	studio "opaque.smd"
}
$BodyGroup "tlhl"
{
	studio "tlhl.smd"
}
$BodyGroup "window"
{
	studio "window.smd"
}
$BodyGroup "windowsp"
{
	studio "windowsp.smd"
}
$BodyGroup "hood"
{
	studio "hood.smd"
}
$BodyGroup "badgerm"
{
	studio "badgerm.smd"
}
$BodyGroup "rearbody"
{
	studio "rearbody.smd"
}
$BodyGroup "mirrors"
{
	studio "mirrors.smd"
}


$SurfaceProp "metal"

$Contents "solid"

$IllumPosition 0 0.248 24.646

$CDMaterials "models\nfsunbound_959cc\"
$CDMaterials "models\nfsunbound_959\"
$CDMaterials "models\talonshared\nfsunboundshared\"

$TextureGroup "skinfamilies"
{
	{ "skin_0" }
	{ "skin_1" }
}

$CBox 0 0 0 0 0 0

$BBox -100.438 -46.863 -0.409 99.943 46.863 49.554

$definebone "root" "" 0 0 0 0 0 0 0 0 0 270 270 0
$definebone "steering_wheel" "root" 10.186 12.6108 29.9833 0 0 0 0 0 0 270 270 0


$poseparameter "vehicle_steer" -1 1 loop 0

$weightlist "weights_turning" {
	 "root" 1
	 "steering_wheel" 2
}

$animation "left_corrective_animation" "nfsunbound_959cc_anims\left_corrective_animation.smd" {
}

$animation "mid_corrective_animation" "nfsunbound_959cc_anims\mid_corrective_animation.smd" {
}

$animation "right_corrective_animation" "nfsunbound_959cc_anims\right_corrective_animation.smd" {
}

$animation "neutral" "nfsunbound_959cc_anims\neutral.smd" {
	fps 30
}

$animation "left" "nfsunbound_959cc_anims\left.smd" {
	fps 30
	subtract "left_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "mid" "nfsunbound_959cc_anims\mid.smd" {
	fps 30
	subtract "mid_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "right" "nfsunbound_959cc_anims\right.smd" {
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
	"nfsunbound_959cc_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "nfsunbound_959cc_physics.smd"
{
	$mass 1350
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
