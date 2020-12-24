action_inherited();
///Z Gravity
vz += weight;
z -= vz;
y += vz;
if (z <= 0)
{
    instance_destroy();
}



