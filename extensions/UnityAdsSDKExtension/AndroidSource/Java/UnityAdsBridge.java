package ${YYAndroidPackageName};

import com.unity3d.ads.IUnityAdsListener;
import com.unity3d.ads.UnityAds;
import android.util.Log;
import android.os.Bundle;
import android.app.Activity;
import android.content.Context;
import android.widget.Toast;
import ${YYAndroidPackageName}.R;
import ${YYAndroidPackageName}.RunnerActivity;
import com.yoyogames.runner.RunnerJNILib;

/**
 *
 * @author Josep Gonzalez Fernandez (Dreams Corner);
 */
//public class ChartBoostExt extends Activity{
public class UnityAdsBridge extends Activity implements IUnityAdsListener {

	final int UAPlacementStateReady = 101;
  final int UAPlacementStateNotAvailable = 102;
  final int UAPlacementStateDisabled = 103;
  final int UAPlacementStateWaiting = 104;
  final int UAPlacementStateNoFill = 105;
  final int UAPlacementStateUnknown = 106;

  final int UAFinishStateError = 201;
  final int UAFinishStateCompleted = 202;
  final int UAFinishStateSkipped = 203;
  final int UAFinishStateUnknown = 204;

  final int UAErrorNotInitialized = 301;
  final int UAErrorInitializedFailed = 302;
  final int UAErrorInvalidArgument = 303;
  final int UAErrorVideoPlayerError = 304;
  final int UAErrorInitSanityCheckFail = 305;
  final int UAErrorAdBlockerDetected = 306;
  final int UAErrorFileIoError = 307;
  final int UAErrorDeviceIdError = 308;
  final int UAErrorShowError = 309;
  final int UAErrorInternalError = 310;
  final int UAErrorUnknown = 311;

  final int UADidError = 401;
  final int UADidFinish = 402;
  final int UADidStart = 403;
  final int UAReady = 404;

	final int EVENT_OTHER_SOCIAL = 70;

	public double getErrorDoubleConstant(UnityAds.UnityAdsError error) {
		if (error.equals(UnityAds.UnityAdsError.NOT_INITIALIZED)) {
			return UAErrorNotInitialized;
		} else if (error.equals(UnityAds.UnityAdsError.INITIALIZE_FAILED)) {
			return UAErrorInitializedFailed;
		} else if (error.equals(UnityAds.UnityAdsError.INVALID_ARGUMENT)) {
			return UAErrorInvalidArgument;
		} else if (error.equals(UnityAds.UnityAdsError.VIDEO_PLAYER_ERROR)) {
			return UAErrorVideoPlayerError;
		} else if (error.equals(UnityAds.UnityAdsError.INIT_SANITY_CHECK_FAIL)) {
			return UAErrorInitSanityCheckFail;
		} else if (error.equals(UnityAds.UnityAdsError.AD_BLOCKER_DETECTED)) {
			return UAErrorAdBlockerDetected;
		} else if (error.equals(UnityAds.UnityAdsError.FILE_IO_ERROR)) {
			return UAErrorFileIoError;
		} else if (error.equals(UnityAds.UnityAdsError.DEVICE_ID_ERROR)) {
			return UAErrorDeviceIdError;
		} else if (error.equals(UnityAds.UnityAdsError.SHOW_ERROR)) {
			return UAErrorShowError;
		} else if (error.equals(UnityAds.UnityAdsError.INTERNAL_ERROR)) {
			return UAErrorInternalError;
		} else {
			return UAErrorUnknown;
		}
	}

	public double getFinishStateDoubleConstant(UnityAds.FinishState finishState) {
		if (finishState.equals(UnityAds.FinishState.ERROR)) {
			return UAFinishStateError;
		} else if (finishState.equals(UnityAds.FinishState.COMPLETED)) {
			return UAFinishStateCompleted;
		} else if (finishState.equals(UnityAds.FinishState.SKIPPED)) {
			return UAFinishStateSkipped;
		} else {
			return UAFinishStateUnknown;
		}
	}

	public double getPlacementStateDoubleConstant(UnityAds.PlacementState placementState) {
		if (placementState.equals(UnityAds.PlacementState.READY)) {
			return UAPlacementStateReady;
		} else if (placementState.equals(UnityAds.PlacementState.NOT_AVAILABLE)) {
			return UAPlacementStateNotAvailable;
		} else if (placementState.equals(UnityAds.PlacementState.DISABLED)) {
			return UAPlacementStateDisabled;
		} else if (placementState.equals(UnityAds.PlacementState.WAITING)) {
			return UAPlacementStateWaiting;
		} else if (placementState.equals(UnityAds.PlacementState.NO_FILL)) {
			return UAPlacementStateNoFill;
		} else {
			return UAPlacementStateUnknown;
		}
	}

	public void initialize(String gameId) {
		final String gameId_ = gameId;
		final Context context_ = this;
		RunnerActivity.CurrentActivity.runOnUiThread(new Runnable() {
			public void run() {
				UnityAds.initialize(RunnerActivity.CurrentActivity, gameId_, UnityAdsBridge.this);
				//Chartboost.setDelegate(delegate);
				//Chartboost.onCreate(RunnerActivity.CurrentActivity);
				//Chartboost.onStart(RunnerActivity.CurrentActivity);
			}
		});
	}

	public void initializeWithTestMode(String gameId, double testMode) {
		final String gameId_ = gameId;
		final double testMode_ = testMode;
		RunnerActivity.CurrentActivity.runOnUiThread(new Runnable() {
			public void run() {
				UnityAds.initialize(RunnerActivity.CurrentActivity, gameId_, UnityAdsBridge.this, testMode_ == 1);
				//Chartboost.setDelegate(delegate);
				//Chartboost.onCreate(RunnerActivity.CurrentActivity);
				//Chartboost.onStart(RunnerActivity.CurrentActivity);
			}
		});
	}

	public double isInitialized() {
		return UnityAds.isInitialized() ? 1 : 0;
	}

	public void show() {
		RunnerActivity.CurrentActivity.runOnUiThread(new Runnable() {
			public void run() {
				UnityAds.show(RunnerActivity.CurrentActivity);
			}
		});
	}

	public void showWithPlacementId(String placementId) {
		final String placementId_ = placementId;
		RunnerActivity.CurrentActivity.runOnUiThread(new Runnable() {
			public void run() {
				UnityAds.show(RunnerActivity.CurrentActivity, placementId_);
			}
		});
	}

	public double isReady() {
		return UnityAds.isReady() ? 1 : 0;
	}

	public double isReadyWithPlacementId(String placementId) {
		return UnityAds.isReady(placementId) ? 1 : 0;
	}

	public String getVersion() {
		return UnityAds.getVersion();
	}

	public double isSupported() {
		return UnityAds.isSupported() ? 1 : 0;
	}

	public double getDebugMode() {
		return UnityAds.getDebugMode() ? 1 : 0;
	}

	public void setDebugMode(double enable) {
		UnityAds.setDebugMode(enable == 1);
	}

	public double getPlacementState() {
		return getPlacementStateDoubleConstant(UnityAds.getPlacementState());
	}

	public double getPlacementState(String placementId) {
		return getPlacementStateDoubleConstant(UnityAds.getPlacementState(placementId));
	}

	@Override
	public void onUnityAdsReady(String s) {
		final String placementId = s;
		RunnerActivity.CurrentActivity.runOnUiThread(new Runnable() {
			public void run() {
				int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
				RunnerJNILib.DsMapAddDouble( dsMapIndex, "type", UAReady);
				RunnerJNILib.DsMapAddString( dsMapIndex, "placementId", placementId);

				RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
			}
		});
  }

  @Override
  public void onUnityAdsStart(String s) {
		final String placementId = s;
		RunnerActivity.CurrentActivity.runOnUiThread(new Runnable() {
			public void run() {
				int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
				RunnerJNILib.DsMapAddDouble( dsMapIndex, "type", UADidStart);
				RunnerJNILib.DsMapAddString( dsMapIndex, "placementId", placementId);

				RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
			}
		});
  }

  @Override
  public void onUnityAdsFinish(String s, UnityAds.FinishState finishState) {
		final String placementId = s;
		final UnityAds.FinishState finishState_ = finishState;
		RunnerActivity.CurrentActivity.runOnUiThread(new Runnable() {
			public void run() {
				int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
				RunnerJNILib.DsMapAddDouble( dsMapIndex, "type", UADidFinish);
				RunnerJNILib.DsMapAddString( dsMapIndex, "placementId", placementId);
				RunnerJNILib.DsMapAddDouble( dsMapIndex, "finishState", getFinishStateDoubleConstant(finishState_));

				RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
			}
		});
  }

  @Override
  public void onUnityAdsError(UnityAds.UnityAdsError unityAdsError, String s) {
		final String message = s;
		final UnityAds.UnityAdsError unityAdsError_ = unityAdsError;
		RunnerActivity.CurrentActivity.runOnUiThread(new Runnable() {
			public void run() {
				int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
				RunnerJNILib.DsMapAddDouble( dsMapIndex, "type", UADidError);
				RunnerJNILib.DsMapAddDouble( dsMapIndex, "error", getErrorDoubleConstant(unityAdsError_));
				RunnerJNILib.DsMapAddString( dsMapIndex, "message", message);

				RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
			}
		});
  }
}
