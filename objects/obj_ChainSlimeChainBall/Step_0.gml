// Check if parent
if(network_is_online() and !network_is_host()) { visible = true; exit; }
if(!instance_exists(parent)) {
    instance_destroy();
    exit;
}
if(parent != -1) {
    x = parent.x;
    y = parent.y;
} else {
    instance_destroy();
    exit;
}

// Make it visible
if(visible == false) and (!instance_exists(fxTransition2)) {
    visible = true;
}

