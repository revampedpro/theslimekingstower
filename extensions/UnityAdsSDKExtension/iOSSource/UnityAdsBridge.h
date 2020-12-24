//
//  UnityAdsBridge.h
//  Unity_Ads_Example
//
//  Created by Josep Gonzalez Fernandez on 2/10/16.
//  Copyright © 2016 YoYo Games Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UnityAds.h>

@interface UnityAdsBridge : NSObject <UnityAdsDelegate>
{
}

- (void) initialize:(char *)gameId;
- (void) initializeWithTestMode:(char *)gameId testMode:(double)testMode;
- (double) isInitialized;
- (void) show;
- (void) showWithPlacementId:(char *)placementId;
- (double) isReady;
- (double) isReadyWithPlacementId:(char *)placementId;
- (char *) getVersion;
- (double) isSupported;
- (double) getDebugMode;
- (void) setDebugMode:(double)enable;
- (double) getPlacementState;
- (double) getPlacementStateWithPlacementId:(char *)placementId;
@end
