// Created by Crowbar 0.74

$ModelName "nfsucextra_apollo\nfsucextra_apollo.mdl"

$BodyGroup "base"
{
	studio "base.smd"
}
$BodyGroup "Front bumper"
{
	studio "frbumper.smd"
	studio "frbumper_1.smd"
}
$BodyGroup "Rear bumper"
{
	studio "rebumper.smd"
	studio "rebumper_1.smd"
}
$BodyGroup "Exhaust"
{
	studio "exhaust.smd"
	blank
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
$BodyGroup "Spoiler"
{
	studio "spoiler.smd"
	blank
}
$BodyGroup "Brakelight"
{
	studio "brakelight.smd"
	studio "brakelight_1.smd"
}
$BodyGroup "Lit"
{
	studio "litoff.smd"
	studio "lit.smd"
}
$BodyGroup "Lit full"
{
	studio "litfulloff.smd"
	studio "litfull.smd"
}
$BodyGroup "Headlight"
{
	studio "headlight.smd"
}


$SurfaceProp "metal"

$Contents "solid"

$IllumPosition 0 0.248 24.646

$CDMaterials "models\nfsucextra_apollo\"
$CDMaterials "models\nfsuc\shared\"

$CBox 0 0 0 0 0 0

$BBox -100.438 -46.863 -0.409 99.943 46.863 49.554

$DefineBone "root" "" 0 0 0 0 0 0 0 0 0 0 0 0


$Sequence "idle" {
	"nfsucextra_apollo_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "nfsucextra_apollo_physics.smd"
{
	$mass 1200
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
