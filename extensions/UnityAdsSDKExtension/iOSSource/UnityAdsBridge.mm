//
//  UnityAdsBridge.m
//  Unity_Ads_Example
//
//  Created by Josep Gonzalez Fernandez on 2/10/16.
//  Copyright © 2016 YoYo Games Ltd. All rights reserved.
//

#import "UnityAdsBridge.h"
#include <asl.h>
#include <stdio.h>

@implementation UnityAdsBridge

const int EVENT_OTHER_SOCIAL = 70;
extern UIView *g_glView;

extern "C" NSString* findOption( const char* _key );
extern bool F_DsMapAdd_Internal(int _index, char* _pKey, double _value);
extern bool F_DsMapAdd_Internal(int _index, char* _pKey, char* _pValue);
extern int CreateDsMap( int _num, ... );
extern void CreateAsynEventWithDSMap(int dsmapindex, int event_index);

typedef NS_ENUM(NSUInteger, UAPlacementState) {
    UAPlacementStateReady = 101,
    UAPlacementStateNotAvailable,
    UAPlacementStateDisabled,
    UAPlacementStateWaiting,
    UAPlacementStateNoFill,
    UAPlacementStateUnknown
};

typedef NS_ENUM(NSUInteger, UAFinishState) {
    UAFinishStateError = 201,
    UAFinishStateCompleted,
    UAFinishStateSkipped,
    UAFinishStateUnknown
};

typedef NS_ENUM(NSUInteger, UAError) {
    UAErrorNotInitialized = 301,
    UAErrorInitializedFailed,
    UAErrorInvalidArgument,
    UAErrorVideoPlayerError,
    UAErrorInitSanityCheckFail,
    UAErrorAdBlockerDetected,
    UAErrorFileIoError,
    UAErrorDeviceIdError,
    UAErrorShowError,
    UAErrorInternalError,
    UAErrorUnknown
};

typedef NS_ENUM(NSUInteger, DelegateType) {
    UADidError = 401,
    UADidFinish = 402,
    UADidStart = 403,
    UAReady = 404
};

// MARK: Helper Methods

- (NSString *) charToNSString:(char *)text {
    return [NSString stringWithFormat:@"%s", text];
}

- (char *) charFromNSString:(NSString *)text {
    return (char *)[text UTF8String];
}

- (UnityAdsPlacementState) getPlacementStateConstant:(NSUInteger)placementState {
    switch (placementState) {
        case UAPlacementStateReady:
            return kUnityAdsPlacementStateReady;
        case UAPlacementStateNotAvailable:
            return kUnityAdsPlacementStateNotAvailable;
        case UAPlacementStateDisabled:
            return kUnityAdsPlacementStateDisabled;
        case UAPlacementStateWaiting:
            return kUnityAdsPlacementStateWaiting;
        case UAPlacementStateNoFill:
            return kUnityAdsPlacementStateNoFill;
            
        default:
            return kUnityAdsPlacementStateNotAvailable;
    }
}

- (double) getPlacementStateDoubleConstant:(UnityAdsPlacementState)placementState {
    switch (placementState) {
        case kUnityAdsPlacementStateReady:
            return UAPlacementStateReady;
        case kUnityAdsPlacementStateNotAvailable:
            return UAPlacementStateNotAvailable;
        case kUnityAdsPlacementStateDisabled:
            return UAPlacementStateDisabled;
        case kUnityAdsPlacementStateWaiting:
            return UAPlacementStateWaiting;
        case kUnityAdsPlacementStateNoFill:
            return UAPlacementStateNoFill;
            
        default:
            return UAPlacementStateUnknown;
    }
}

- (UnityAdsFinishState) getFinishStateConstant:(NSUInteger)finishState {
    switch (finishState) {
        case UAFinishStateError:
            return kUnityAdsFinishStateError;
        case UAFinishStateCompleted:
            return kUnityAdsFinishStateCompleted;
        case UAFinishStateSkipped:
            return kUnityAdsFinishStateSkipped;
            
        default:
            return kUnityAdsFinishStateError;
    }
}

- (double) getFinishStateDoubleConstant:(UnityAdsFinishState)finishState {
    switch (finishState) {
        case kUnityAdsFinishStateError:
            return UAFinishStateError;
        case kUnityAdsFinishStateCompleted:
            return UAFinishStateCompleted;
        case kUnityAdsFinishStateSkipped:
            return UAFinishStateSkipped;
            
        default:
            return UAFinishStateUnknown;
    }
}

- (UnityAdsError) getErrorConstant:(NSUInteger)error {
    switch (error) {
        case UAErrorNotInitialized:
            return kUnityAdsErrorNotInitialized;
        case UAErrorInitializedFailed:
            return kUnityAdsErrorInitializedFailed;
        case UAErrorInvalidArgument:
            return kUnityAdsErrorInvalidArgument;
        case UAErrorVideoPlayerError:
            return kUnityAdsErrorVideoPlayerError;
        case UAErrorInitSanityCheckFail:
            return kUnityAdsErrorInitSanityCheckFail;
        case UAErrorAdBlockerDetected:
            return kUnityAdsErrorAdBlockerDetected;
        case UAErrorFileIoError:
            return kUnityAdsErrorFileIoError;
        case UAErrorDeviceIdError:
            return kUnityAdsErrorDeviceIdError;
        case UAErrorShowError:
            return kUnityAdsErrorShowError;
        case UAErrorInternalError:
            return kUnityAdsErrorInternalError;
            
        default:
            return kUnityAdsErrorShowError;
    }
}

- (double) getErrorDoubleConstant:(UnityAdsError)error {
    switch (error) {
        case kUnityAdsErrorNotInitialized:
            return UAErrorNotInitialized;
        case kUnityAdsErrorInitializedFailed:
            return UAErrorInitializedFailed;
        case kUnityAdsErrorInvalidArgument:
            return UAErrorInvalidArgument;
        case kUnityAdsErrorVideoPlayerError:
            return UAErrorVideoPlayerError;
        case kUnityAdsErrorInitSanityCheckFail:
            return UAErrorInitSanityCheckFail;
        case kUnityAdsErrorAdBlockerDetected:
            return UAErrorAdBlockerDetected;
        case kUnityAdsErrorFileIoError:
            return UAErrorFileIoError;
        case kUnityAdsErrorDeviceIdError:
            return UAErrorDeviceIdError;
        case kUnityAdsErrorShowError:
            return UAErrorShowError;
        case kUnityAdsErrorInternalError:
            return UAErrorInternalError;
            
        default:
            return UAErrorUnknown;
    }
}

- (UIViewController *) getRootViewController {
    return [UIApplication sharedApplication].keyWindow.rootViewController;
}

// MARK: GameMaker Methods

- (void) initialize:(char *)gameId {
    NSLog(@"Unity Ads Init");
    [UnityAds initialize:[self charToNSString:gameId] delegate:self];
}

- (void) initializeWithTestMode:(char *)gameId testMode:(double)testMode {
    NSLog(@"Unity Ads Init");
    [UnityAds initialize:[self charToNSString:gameId] delegate:self testMode:testMode == 1];
}

- (double) isInitialized {
    return [UnityAds isInitialized] ? 1 : 0;
}

- (void) show {
    [UnityAds show:[self getRootViewController]];
}

- (void) showWithPlacementId:(char *)placementId {
    [UnityAds show:[self getRootViewController] placementId:[self charToNSString:placementId]];
}

- (double) isReady {
    return [UnityAds isReady] ? 1 : 0;
}

- (double) isReadyWithPlacementId:(char *)placementId {
    return [UnityAds isReady:[self charToNSString:placementId]] ? 1 : 0;
}

- (char *) getVersion {
    return [self charFromNSString:[UnityAds getVersion]];
}

- (double) isSupported {
    return [UnityAds isSupported] ? 1 : 0;
}

- (double) getDebugMode {
    return [UnityAds getDebugMode] ? 1 : 0;
}

- (void) setDebugMode:(double)enable {
    [UnityAds setDebugMode:enable == 1];
}

- (double) getPlacementState {
    return [self getPlacementStateDoubleConstant:[UnityAds getPlacementState]];
}

- (double) getPlacementStateWithPlacementId:(char *)placementId {
    return [self getPlacementStateDoubleConstant:[UnityAds getPlacementState:[self charToNSString:placementId]]];
}


// MARK: -- DELEGATES --

// MARK: Interstitial Methods

- (void) unityAdsDidFinish:(NSString *)placementId withFinishState:(UnityAdsFinishState)state {
    NSLog(@"Unity Ads Did Finish");
    int dsMapIndex = CreateDsMap( 0 );
    F_DsMapAdd_Internal(dsMapIndex, (char *)"type", UADidFinish);
    F_DsMapAdd_Internal(dsMapIndex, (char *)"placementId", [self charFromNSString:placementId]);
    F_DsMapAdd_Internal(dsMapIndex, (char *)"finishState", [self getFinishStateDoubleConstant:state]);
    CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
}

- (void) unityAdsDidStart:(NSString *)placementId {
    NSLog(@"Unity Ads Did Start");
    int dsMapIndex = CreateDsMap( 0 );
    F_DsMapAdd_Internal(dsMapIndex, (char *)"type", UADidStart);
    F_DsMapAdd_Internal(dsMapIndex, (char *)"placementId", [self charFromNSString:placementId]);
    CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
}

- (void) unityAdsReady:(NSString *)placementId {
    NSLog(@"Unity Ads Ready");
    int dsMapIndex = CreateDsMap( 0 );
    F_DsMapAdd_Internal(dsMapIndex, (char *)"type", UAReady);
    F_DsMapAdd_Internal(dsMapIndex, (char *)"placementId", [self charFromNSString:placementId]);
    CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
}

- (void) unityAdsDidError:(UnityAdsError)error withMessage:(NSString *)message {
    NSLog(@"Unity Ads Did Error");
    int dsMapIndex = CreateDsMap( 0 );
    F_DsMapAdd_Internal(dsMapIndex, (char *)"type", UADidError);
    F_DsMapAdd_Internal(dsMapIndex, (char *)"error", [self getErrorDoubleConstant:error]);
    F_DsMapAdd_Internal(dsMapIndex, (char *)"message", [self charFromNSString:message]);
    CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
}

@end
