// Saltar
//if(AdColony_VideoAvailable("vz610971032e9542339e")) {
    xscale = 0.6;
    yscale = 0.6;
   // AdColony_ShowVideoForV4VC("vz610971032e9542339e");
//}


if(!os_is_network_connected()) exit;
var has_video = unity_ads_is_ready_with_placement_id("rewardedVideo");
if has_video {
    audio_master_gain(0);
    unity_ads_show_with_placement_id("rewardedVideo");
} else {
    show_message_async("Not available, please try again in a few seconds.");
}


