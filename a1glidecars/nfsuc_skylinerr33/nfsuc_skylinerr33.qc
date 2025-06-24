// Created by Crowbar 0.74

$ModelName "nfsuc_skylinerr33\nfsuc_skylinerr33.mdl"

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
$BodyGroup "Trunk"
{
	studio "trunk.smd"
	studio "trunk_1.smd"
	studio "trunk_2.smd"
}
$BodyGroup "Brakelight"
{
	studio "brakelight.smd"
	studio "brakelightlit.smd"
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
$BodyGroup "Headlight"
{
	studio "headlight.smd"
}
$BodyGroup "body"
{
	studio "body.smd"
}
$BodyGroup "exhaust"
{
	studio "exhaust.smd"
}
$BodyGroup "interior"
{
	studio "interior.smd"
}


$SurfaceProp "metal"

$Contents "solid"

$IllumPosition 0 0.248 24.646

$CDMaterials "models\nfsuc_skylinerr33\"
$CDMaterials "models\nfsuc\shared\"

$CBox 0 0 0 0 0 0

$BBox -100.438 -46.863 -0.409 99.943 46.863 49.554

$DefineBone "root" "" 0 0 0 0 0 0 0 0 0 0 0 0


$Sequence "idle" {
	"nfsuc_skylinerr33_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "nfsuc_skylinerr33_physics.smd"
{
	$mass 1340
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
