private ["_ammo","_projectile","_vehicle"];
_ammo = _this select 4;
_projectile = _this select 6;
_vehicle = _this select 7;
if !(isNull objectParent player) then
{
	if((_vehicle iskindof "Air")&&((getNumber (configFile >> "CfgAmmo" >> _ammo >> "weaponLockSystem") > 1)||(toLowerANSI getText(configFile >> "CfgAmmo" >> _ammo >> "simulation") in ["shotmissile", "shotrocket"])))then
	{
		deleteVehicle _projectile;
	};
};
true
