// Mostrar anuncio
if(global.Ads_Active == true) {
    if(global.NO_ANUNCIOS == false) {
        //GoogleMobileAds_ShowInterstitial();
        if(unity_ads_is_ready_with_placement_id("ingameAd")) {
            unity_ads_show_with_placement_id("ingameAd");
        } else {
            //GoogleMobileAds_ShowInterstitial();
        }
    }
}

