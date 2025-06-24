// Created by Crowbar 0.74

$ModelName "nfsuc_cop_hel_fed_01\nfsuc_cop_hel_fed_01.mdl"

$BodyGroup "Helicopter"
{
	studio "heli.smd"
}
$BodyGroup "Rotor"
{
	studio "rotor_1.smd"
	studio "rotor_2.smd"
}
$BodyGroup "Window"
{
	studio "window_1.smd"
}


$SurfaceProp "metal"

$Contents "solid"

$IllumPosition 0 0.248 24.646

$CDMaterials "models\nfsuc_cop_hel_fed_01\"
$CDMaterials "models\nfsuc\shared\"

$CBox 0 0 0 0 0 0

$BBox -100.438 -46.863 -0.409 99.943 46.863 49.554

$DefineBone "root" "" 0 0 0 0 0 0 0 0 0 0 0 0


$Sequence "idle" {
	"nfsuc_cop_hel_fed_01_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "nfsuc_cop_hel_fed_01_physics.smd"
{
	$mass 1000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 7

	$noselfcollisions
}
