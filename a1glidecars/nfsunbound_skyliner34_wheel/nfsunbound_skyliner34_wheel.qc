// Created by Crowbar 0.74

$ModelName "nfsunbound_skyliner34\nfsunbound_skyliner34_wheel.mdl"

$BodyGroup "wheel"
{
	studio "wheel.smd"
}
$BodyGroup "rim"
{
	studio "rim.smd"
}
$BodyGroup "brakedisc"
{
	studio "brakedisc.smd"
}


$SurfaceProp "rubbertire"

$Contents "solid"

$IllumPosition 0.062 0 0

$CDMaterials "models\nfsunbound_skyliner34\"

$CBox 0 0 0 0 0 0

$BBox -14.428 -7.717 -14.428 14.428 7.88 14.428

$DefineBone "root" "" 0 0 0 0 0 0 0 0 0 0 0 0


$Sequence "idle" {
	"nfsunbound_skyliner34_wheel_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "nfsunbound_skyliner34_wheel_physics.smd"
{
	$mass 15
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
