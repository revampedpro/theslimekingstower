// Recoger calavera
if(other.Velocidad < 0 and other.parent == id) {
    with(other) instance_destroy();
    hasSkull = true;
}

