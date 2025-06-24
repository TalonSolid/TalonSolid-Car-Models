// Created by Crowbar 0.67

$modelname "glide_countach800pol\glide_countach800pol.mdl"

$bodygroup "Interior"
{
	studio "interior.smd"
}
$bodygroup "Body Kit"
{
	studio "body.smd"
	studio "body_1.smd"
}
$bodygroup "Spoiler"
{
	studio "spoiler.smd"
	studio "spoiler_1.smd"
	studio "spoiler_2.smd"
	studio "spoiler_3.smd"
	studio "spoiler_4.smd"
	studio "spoiler_5.smd"
	studio "spoiler_6.smd"
	studio "spoiler_7.smd"
}
$bodygroup "Tail Light"
{
	studio "taillights.smd"
	studio "taillights_1.smd"
}
$bodygroup "Brake Light"
{
	studio "brake.smd"
	studio "brake_1.smd"
}
$bodygroup "Beam"
{
	studio "beam.smd"
	studio "beam_1.smd"
}
$bodygroup "Police Red"
{
	studio "policered.smd"
	studio "policeredlit.smd"
}
$bodygroup "Police Blue"
{
	studio "policeblue.smd"
	studio "policebluelit.smd"
}
$bodygroup "Police Siren"
{
	studio "policesiren.smd"
}
$bodygroup "Police Equipment"
{
	studio "police_equipment.smd"
}
$bodygroup "Head Lights"
{
	studio "headlights.smd"
}
$bodygroup "Hood"
{
	studio "hood.smd"
}
$bodygroup "Trunk"
{
	studio "trunk.smd"
}
$bodygroup "Window"
{
	studio "window.smd"
}
$bodygroup "Mirrors"
{
	studio "mirrors.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 0.248 24.646

$cdmaterials "models\glide_countach800pol\"
$cdmaterials "models\glide_countach800\"

$cbox 0 0 0 0 0 0

$bbox -100.438 -46.863 -0.409 99.943 46.863 49.554

$definebone "root" "" 0 0 0 0 0 0 0 0 0 270 270 0
$definebone "steering_wheel" "root" 16.479 16.9717 27.5668 0 0 0 0 0 0 270 270 0


$poseparameter "vehicle_steer" -1 1 loop 0

$weightlist "weights_turning" {
	 "root" 1
	 "steering_wheel" 2
}

$animation "left_corrective_animation" "glide_countach800pol_anims\left_corrective_animation.smd" {
}

$animation "mid_corrective_animation" "glide_countach800pol_anims\mid_corrective_animation.smd" {
}

$animation "right_corrective_animation" "glide_countach800pol_anims\right_corrective_animation.smd" {
}

$animation "neutral" "glide_countach800pol_anims\neutral.smd" {
	fps 30
}

$animation "left" "glide_countach800pol_anims\left.smd" {
	fps 30
	subtract "left_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "mid" "glide_countach800pol_anims\mid.smd" {
	fps 30
	subtract "mid_corrective_animation" 0
	weightlist "weights_turning"
}

$animation "right" "glide_countach800pol_anims\right.smd" {
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
	"glide_countach800pol_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "glide_countach800pol_physics.smd"
{
	$mass 1595
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
