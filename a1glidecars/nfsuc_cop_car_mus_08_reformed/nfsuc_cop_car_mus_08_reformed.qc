// Created by Crowbar 0.74

$ModelName "nfsuc_cop_car_mus_08\nfsuc_cop_car_mus_08_reformed.mdl"

$BodyGroup "Base"
{
	studio "base.smd"
}
$bodygroup "Front Bumper"
{
	studio "frbumper.smd"
	studio "frbumper_1.smd"
	studio "frbumper_2.smd"
	blank
}
$bodygroup "Rear Bumper"
{
	studio "rebumper.smd"
	studio "rebumper_1.smd"
	studio "rebumper_2.smd"
	blank
}
$bodygroup "Trunk"
{
	studio "trunk.smd"
	studio "trunk_1.smd"
	studio "trunk_2.smd"
}
$bodygroup "Hood"
{
	studio "hood.smd"
	studio "hood_1.smd"
	studio "hood_2.smd"
	blank
}
$bodygroup "Fender left"
{
	studio "fenderleft.smd"
	studio "fenderleft_1.smd"
	studio "fenderleft_2.smd"
}
$bodygroup "Fender right"
{
	studio "fenderright.smd"
	studio "fenderright_1.smd"
	studio "fenderright_2.smd"
}
$bodygroup "Door left"
{
	studio "doorleft.smd"
	studio "doorleft_1.smd"
}
$bodygroup "Door right"
{
	studio "doorright.smd"
	studio "doorright_1.smd"
}
$BodyGroup "Exhaust"
{
	studio "exhaust.smd"
	blank
}
$BodyGroup "Headlight"
{
	studio "headlight.smd"
	studio "headlight_1.smd"
}
$BodyGroup "Headlight 1"
{
	studio "beam.smd"
	studio "beam_1.smd"
}
$BodyGroup "Brakelight"
{
	studio "brakelight.smd"
	studio "brakelight_1.smd"
}
$BodyGroup "Windows"
{
	studio "windows.smd"
}
$BodyGroup "Police Equipment"
{
	studio "policeequipment.smd"
}


$SurfaceProp "metal"

$Contents "solid"

$IllumPosition 0 0.248 24.646

$CDMaterials "models\nfsuc_cop_car_mus_08_reformed\"
$CDMaterials "models\nfsuc_cop_car_mus_08\"
$CDMaterials "models\nfsuc\shared\"

$CBox 0 0 0 0 0 0

$BBox -100.438 -46.863 -0.409 99.943 46.863 49.554

$DefineBone "root" "" 0 0 0 0 0 0 0 0 0 0 0 0


$Sequence "idle" {
	"nfsuc_cop_car_mus_08_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionModel "nfsuc_cop_car_mus_08_physics.smd"
{
	$mass 1600
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
