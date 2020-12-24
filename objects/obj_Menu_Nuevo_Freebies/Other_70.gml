// Give the player money
/*
var name = ds_map_find_value(async_load, "currname");
var amount = ds_map_find_value(async_load, "curramount");
switch(string(name)) {
    case "Gold Coins": 
        global.Monedas_General += amount/2;
        ini_open("save.ini");
        ini_write_real("S", "MG", global.Monedas_General);
        ini_close();
        break;
}
*/

/// Async calls from native code
if(!os_is_network_connected()) exit;
var type = async_load[? "type"];

switch type {
    case UADidFinish:
        placementId = async_load[? "placementId"];
        finishState = async_load[? "finishState"];
        result = "Did Finish: " + string(finishState);
        error = -1;
        global.Monedas_General += 50;
        ini_open("save.ini");
        ini_write_real("S", "MG", global.Monedas_General);
        ini_close();
        audio_master_gain(1);
        show_message_async(string(lang(5003)));
        break;
    case UADidStart:
        result = "Did Start";
        placementId = async_load[? "placementId"];
        error = -1;
        break;
    case UADidError:
        message = async_load[? "message"];
        errorType = async_load[? "error"];
        result = "Did Error " + "[" + string(errorType) + "] " + message;
        show_message_async("Did Error " + "[" + string(errorType) + "] " + message);
        break;
    case UAReady:
        placementId = async_load[? "placementId"];
        result = "Ready! :)  [" + placementId + "]";
        error = -1;
        break;
    default:
        break;
}

/* */
/*  */
