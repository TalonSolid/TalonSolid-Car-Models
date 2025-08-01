// Created by Crowbar 0.67

$modelname "nfsuc_trf_trk_mov_94\nfsuc_trf_trk_mov_94.mdl"

$BodyGroup "base"
{
	studio "base.smd"
}
$BodyGroup "Front bumper"
{
	studio "frbumper.smd"
	studio "frbumper_1.smd"
	studio "frbumper_2.smd"
}
$BodyGroup "Hood"
{
	studio "hood.smd"
	studio "hood_1.smd"
	studio "hood_2.smd"
}
$BodyGroup "Rear bumper"
{
	studio "rebumper.smd"
	studio "rebumper_1.smd"
	studio "rebumper_2.smd"
}
$BodyGroup "body"
{
	studio "body.smd"
}
$BodyGroup "brakelight"
{
	studio "brakelight.smd"
}
$BodyGroup "chassis"
{
	studio "chassis.smd"
}
$BodyGroup "doorleft"
{
	studio "doorleft.smd"
}
$BodyGroup "doorright"
{
	studio "doorright.smd"
}
$BodyGroup "engine"
{
	studio "engine.smd"
}

$BodyGroup "headlight"
{
	studio "headlight.smd"
}
$BodyGroup "mirrorleft"
{
	studio "mirrorleft.smd"
}
$BodyGroup "mirrorright"
{
	studio "mirrorright.smd"
}

$surfaceprop "metal"

$contents "solid"

$illumposition 0 0.248 24.646

$cdmaterials "models\nfsuc_trf_trk_mov_94\"
$CDMaterials "models\nfsuc\shared\"

$cbox 0 0 0 0 0 0

$bbox -100.438 -46.863 -0.409 99.943 46.863 49.554

$definebone "root" "" 0 0 0 0 0 0 0 0 0 0 0 0

$sequence "idle" {
	"nfsuc_trf_trk_mov_94_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "nfsuc_trf_trk_mov_94_physics.smd"
{
	$mass 3500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
