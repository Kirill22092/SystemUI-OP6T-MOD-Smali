.class public Lcom/android/systemui/Dependency;
.super Ljava/lang/Object;
.source "Dependency.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/Dependency$DependencyInjector;,
        Lcom/android/systemui/Dependency$DependencyKey;,
        Lcom/android/systemui/Dependency$LazyDependencyCreator;
    }
.end annotation


# static fields
.field public static final BACKGROUND_EXECUTOR:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public static final BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field public static final LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAIN_EXECUTOR:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAIN_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static sDependency:Lcom/android/systemui/Dependency;


# instance fields
.field mAccessibilityController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityController;",
            ">;"
        }
    .end annotation
.end field

.field mAccessibilityManagerWrapper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field mActivityManagerWrapper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field mActivityStarter:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field mAlarmManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/app/AlarmManager;",
            ">;"
        }
    .end annotation
.end field

.field mAppOpsController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/appops/AppOpsController;",
            ">;"
        }
    .end annotation
.end field

.field mAssistManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;"
        }
    .end annotation
.end field

.field mAsyncSensorManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
            ">;"
        }
    .end annotation
.end field

.field mAutoHideController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            ">;"
        }
    .end annotation
.end field

.field mBackgroundExecutor:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field mBatteryController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;"
        }
    .end annotation
.end field

.field mBgHandler:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field mBgLooper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field mBluetoothController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/BluetoothController;",
            ">;"
        }
    .end annotation
.end field

.field mBroadcastDispatcher:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field mBubbleController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/bubbles/BubbleController;",
            ">;"
        }
    .end annotation
.end field

.field mCastController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/CastController;",
            ">;"
        }
    .end annotation
.end field

.field mClockManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/keyguard/clock/ClockManager;",
            ">;"
        }
    .end annotation
.end field

.field mCommandQueue:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;"
        }
    .end annotation
.end field

.field mConfigurationController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;"
        }
    .end annotation
.end field

.field mDarkIconDispatcher:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/DarkIconDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field mDataSaverController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/DataSaverController;",
            ">;"
        }
    .end annotation
.end field

.field private final mDependencies:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mDevicePolicyManagerWrapper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field mDeviceProvisionedController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/wm/DisplayController;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayImeController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/wm/DisplayImeController;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayMetrics:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field mDivider:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/stackdivider/Divider;",
            ">;"
        }
    .end annotation
.end field

.field mDockManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/dock/DockManager;",
            ">;"
        }
    .end annotation
.end field

.field mDozeParameters:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;"
        }
    .end annotation
.end field

.field mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field mEnhancedEstimates:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/power/EnhancedEstimates;",
            ">;"
        }
    .end annotation
.end field

.field mExtensionController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/ExtensionController;",
            ">;"
        }
    .end annotation
.end field

.field mFlashlightController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/FlashlightController;",
            ">;"
        }
    .end annotation
.end field

.field mForegroundServiceController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/ForegroundServiceController;",
            ">;"
        }
    .end annotation
.end field

.field mForegroundServiceNotificationListener:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/ForegroundServiceNotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field mFragmentService:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/fragments/FragmentService;",
            ">;"
        }
    .end annotation
.end field

.field mGarbageMonitor:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/util/leak/GarbageMonitor;",
            ">;"
        }
    .end annotation
.end field

.field mHotspotController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/HotspotController;",
            ">;"
        }
    .end annotation
.end field

.field mINotificationManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/app/INotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field mIStatusBarService:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            ">;"
        }
    .end annotation
.end field

.field mIWindowManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/view/IWindowManager;",
            ">;"
        }
    .end annotation
.end field

.field mKeyguardDismissUtil:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;"
        }
    .end annotation
.end field

.field mKeyguardEnvironment:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;",
            ">;"
        }
    .end annotation
.end field

.field mKeyguardMonitor:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;"
        }
    .end annotation
.end field

.field mKeyguardSecurityModel:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/keyguard/KeyguardSecurityModel;",
            ">;"
        }
    .end annotation
.end field

.field mKeyguardUpdateMonitor:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field mLeakDetector:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/util/leak/LeakDetector;",
            ">;"
        }
    .end annotation
.end field

.field mLeakReportEmail:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mLeakReporter:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/util/leak/LeakReporter;",
            ">;"
        }
    .end annotation
.end field

.field mLightBarController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            ">;"
        }
    .end annotation
.end field

.field mLocalBluetoothManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
            ">;"
        }
    .end annotation
.end field

.field mLocationController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/LocationController;",
            ">;"
        }
    .end annotation
.end field

.field mLockscreenGestureLogger:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;",
            ">;"
        }
    .end annotation
.end field

.field mMainExecutor:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field mMainHandler:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field mMainLooper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field mManagedProfileController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileController;",
            ">;"
        }
    .end annotation
.end field

.field mMetricsLogger:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;"
        }
    .end annotation
.end field

.field mNavBarModeController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/NavigationModeController;",
            ">;"
        }
    .end annotation
.end field

.field mNavigationBarController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NavigationBarController;",
            ">;"
        }
    .end annotation
.end field

.field mNetworkController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/NetworkController;",
            ">;"
        }
    .end annotation
.end field

.field mNextAlarmController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/NextAlarmController;",
            ">;"
        }
    .end annotation
.end field

.field mNightDisplayListener:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/hardware/display/NightDisplayListener;",
            ">;"
        }
    .end annotation
.end field

.field mNotificationBlockingHelperManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;",
            ">;"
        }
    .end annotation
.end field

.field mNotificationEntryManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;"
        }
    .end annotation
.end field

.field mNotificationFilter:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/NotificationFilter;",
            ">;"
        }
    .end annotation
.end field

.field mNotificationGroupAlertTransferHelper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;",
            ">;"
        }
    .end annotation
.end field

.field mNotificationGroupManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;"
        }
    .end annotation
.end field

.field mNotificationGutsManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            ">;"
        }
    .end annotation
.end field

.field mNotificationListener:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field mNotificationLockscreenUserManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;"
        }
    .end annotation
.end field

.field mNotificationLogger:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
            ">;"
        }
    .end annotation
.end field

.field mNotificationMediaManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;"
        }
    .end annotation
.end field

.field mNotificationRemoteInputManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;"
        }
    .end annotation
.end field

.field mNotificationRemoteInputManagerCallback:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field mNotificationShadeWindowController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;",
            ">;"
        }
    .end annotation
.end field

.field mNotificationViewHierarchyManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;",
            ">;"
        }
    .end annotation
.end field

.field mOPWLBHelper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/oneplus/worklife/OPWLBHelper;",
            ">;"
        }
    .end annotation
.end field

.field mOpBiometricDialogImpl:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;",
            ">;"
        }
    .end annotation
.end field

.field mOpBitmojiManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;",
            ">;"
        }
    .end annotation
.end field

.field mOpChargingAnimationController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/oneplus/battery/OpChargingAnimationController;",
            ">;"
        }
    .end annotation
.end field

.field mOpHighlightHintController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;",
            ">;"
        }
    .end annotation
.end field

.field mOpNetworkSpeedController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/oneplus/networkspeed/NetworkSpeedController;",
            ">;"
        }
    .end annotation
.end field

.field mOpNotificationController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/oneplus/notification/OpNotificationController;",
            ">;"
        }
    .end annotation
.end field

.field mOpSceneModeObserver:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/oneplus/scene/OpSceneModeObserver;",
            ">;"
        }
    .end annotation
.end field

.field mOpThreekeyVolumeGuideController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideController;",
            ">;"
        }
    .end annotation
.end field

.field mOpZenModeController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/oneplus/opzenmode/OpZenModeController;",
            ">;"
        }
    .end annotation
.end field

.field mOverviewProxyService:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;"
        }
    .end annotation
.end field

.field mPackageManagerWrapper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field mPluginDependencyProvider:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/PluginDependencyProvider;",
            ">;"
        }
    .end annotation
.end field

.field mPluginManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;"
        }
    .end annotation
.end field

.field mProtoTracer:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/tracing/ProtoTracer;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Lcom/android/systemui/Dependency$LazyDependencyCreator;",
            ">;"
        }
    .end annotation
.end field

.field mRecents:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/recents/Recents;",
            ">;"
        }
    .end annotation
.end field

.field mRecordingController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/screenrecord/RecordingController;",
            ">;"
        }
    .end annotation
.end field

.field mRemoteInputQuickSettingsDisabler:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;",
            ">;"
        }
    .end annotation
.end field

.field mRotationLockController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/RotationLockController;",
            ">;"
        }
    .end annotation
.end field

.field mScreenLifecycle:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field mSecurityController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/SecurityController;",
            ">;"
        }
    .end annotation
.end field

.field mSensorPrivacyController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/SensorPrivacyController;",
            ">;"
        }
    .end annotation
.end field

.field mSensorPrivacyManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/hardware/SensorPrivacyManager;",
            ">;"
        }
    .end annotation
.end field

.field mShadeController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;"
        }
    .end annotation
.end field

.field mSmartReplyConstants:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/SmartReplyConstants;",
            ">;"
        }
    .end annotation
.end field

.field mSmartReplyController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            ">;"
        }
    .end annotation
.end field

.field mStatusBar:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field

.field mStatusBarIconController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
            ">;"
        }
    .end annotation
.end field

.field mStatusBarStateController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;"
        }
    .end annotation
.end field

.field mSysUiStateFlagsContainer:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;"
        }
    .end annotation
.end field

.field mSystemWindows:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/wm/SystemWindows;",
            ">;"
        }
    .end annotation
.end field

.field mSysuiColorExtractor:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            ">;"
        }
    .end annotation
.end field

.field mTempStatusBarWindowController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
            ">;"
        }
    .end annotation
.end field

.field mTimeTickHandler:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field mTunablePaddingService:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;",
            ">;"
        }
    .end annotation
.end field

.field mTunerService:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;"
        }
    .end annotation
.end field

.field mUiOffloadThread:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/UiOffloadThread;",
            ">;"
        }
    .end annotation
.end field

.field mUserInfoController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/UserInfoController;",
            ">;"
        }
    .end annotation
.end field

.field mUserSwitcherController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            ">;"
        }
    .end annotation
.end field

.field mVibratorHelper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ">;"
        }
    .end annotation
.end field

.field mVisualStabilityManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            ">;"
        }
    .end annotation
.end field

.field mVolumeDialogController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/VolumeDialogController;",
            ">;"
        }
    .end annotation
.end field

.field mWakefulnessLifecycle:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field mWallpaperManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/app/IWallpaperManager;",
            ">;"
        }
    .end annotation
.end field

.field mWarningsUI:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/power/PowerUI$WarningsUI;",
            ">;"
        }
    .end annotation
.end field

.field mZenModeController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/ZenModeController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string v1, "background_looper"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string v1, "main_looper"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->MAIN_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string/jumbo v1, "time_tick_handler"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string v1, "main_handler"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string v1, "main_executor"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->MAIN_EXECUTOR:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string v1, "background_executor"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->BACKGROUND_EXECUTOR:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string v1, "leak_report_email"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    return-void
.end method

.method public static destroy(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    if-eqz v0, :cond_0

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/Dependency;->destroyDependency(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private destroyDependency(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/android/systemui/Dumpable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/Dependency;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/Dependency;->createDependency(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/Dependency;->autoRegisterModulesForDump()Z

    move-result p1

    if-eqz p1, :cond_0

    instance-of p1, v0, Lcom/android/systemui/Dumpable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/Dumpable;

    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected autoRegisterModulesForDump()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method protected createDependency(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    instance-of v0, p1, Lcom/android/systemui/Dependency$DependencyKey;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/Dependency$LazyDependencyCreator;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/systemui/Dependency$LazyDependencyCreator;->createDependency()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported dependency "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " providers known."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected final getDependency(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected start()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mTimeTickHandler:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mBgLooper:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mMainLooper:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mMainHandler:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_EXECUTOR:Lcom/android/systemui/Dependency$DependencyKey;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mMainExecutor:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->BACKGROUND_EXECUTOR:Lcom/android/systemui/Dependency$DependencyKey;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mBackgroundExecutor:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mActivityStarter:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mBroadcastDispatcher:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mAsyncSensorManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mBluetoothController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Landroid/hardware/SensorPrivacyManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSensorPrivacyManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/LocationController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mLocationController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mRotationLockController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNetworkController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mZenModeController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mHotspotController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/CastController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mCastController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mFlashlightController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mKeyguardMonitor:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mKeyguardUpdateMonitor:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mUserSwitcherController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/UserInfoController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mUserInfoController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mBatteryController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Landroid/hardware/display/NightDisplayListener;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNightDisplayListener:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mManagedProfileController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNextAlarmController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/DataSaverController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mDataSaverController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mAccessibilityController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mDeviceProvisionedController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/shared/plugins/PluginManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mPluginManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/assist/AssistManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mAssistManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSecurityController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/leak/LeakDetector;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mLeakDetector:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mLeakReportEmail:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/leak/LeakReporter;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mLeakReporter:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/leak/GarbageMonitor;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mGarbageMonitor:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/tuner/TunerService;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mTunerService:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationShadeWindowController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mTempStatusBarWindowController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mDarkIconDispatcher:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mConfigurationController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mStatusBarIconController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mScreenLifecycle:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mWakefulnessLifecycle:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/fragments/FragmentService;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mFragmentService:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/ExtensionController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mExtensionController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/PluginDependencyProvider;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mPluginDependencyProvider:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mLocalBluetoothManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mVolumeDialogController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mMetricsLogger:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mAccessibilityManagerWrapper:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSysuiColorExtractor:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mTunablePaddingService:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/ForegroundServiceController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mForegroundServiceController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/UiOffloadThread;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mUiOffloadThread:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mWarningsUI:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mLightBarController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mIWindowManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mOverviewProxyService:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNavBarModeController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/power/EnhancedEstimates;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mEnhancedEstimates:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/VibratorHelper;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mVibratorHelper:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mIStatusBarService:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Landroid/util/DisplayMetrics;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mDisplayMetrics:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mLockscreenGestureLogger:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mKeyguardEnvironment:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/ShadeController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mShadeController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationRemoteInputManagerCallback:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/appops/AppOpsController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mAppOpsController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/NavigationBarController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNavigationBarController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mStatusBarStateController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationLockscreenUserManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mVisualStabilityManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationGroupManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationGroupAlertTransferHelper:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationMediaManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationGutsManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationBlockingHelperManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationRemoteInputManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSmartReplyConstants:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/NotificationListener;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationListener:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationLogger:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationViewHierarchyManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/notification/NotificationFilter;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationFilter:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mKeyguardDismissUtil:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/SmartReplyController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSmartReplyController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mRemoteInputQuickSettingsDisabler:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/bubbles/BubbleController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mBubbleController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mNotificationEntryManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/ForegroundServiceNotificationListener;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mForegroundServiceNotificationListener:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/keyguard/clock/ClockManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mClockManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mActivityManagerWrapper:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mDevicePolicyManagerWrapper:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/shared/system/PackageManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mPackageManagerWrapper:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/SensorPrivacyController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSensorPrivacyController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/dock/DockManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mDockManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Landroid/app/INotificationManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mINotificationManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/model/SysUiState;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSysUiStateFlagsContainer:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mAlarmManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/keyguard/KeyguardSecurityModel;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mKeyguardSecurityModel:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mDozeParameters:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Landroid/app/IWallpaperManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mWallpaperManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mCommandQueue:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/recents/Recents;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mRecents:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mStatusBar:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/wm/DisplayController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mDisplayController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/wm/SystemWindows;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mSystemWindows:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/wm/DisplayImeController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mDisplayImeController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/tracing/ProtoTracer;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mProtoTracer:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/AutoHideController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mAutoHideController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/screenrecord/RecordingController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mRecordingController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/stackdivider/Divider;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mDivider:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mOpBiometricDialogImpl:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/oneplus/opzenmode/OpZenModeController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mOpZenModeController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/oneplus/battery/OpChargingAnimationController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mOpChargingAnimationController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/oneplus/networkspeed/NetworkSpeedController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mOpNetworkSpeedController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/oneplus/notification/OpNotificationController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mOpNotificationController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/oneplus/worklife/OPWLBHelper;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mOPWLBHelper:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/oneplus/scene/OpSceneModeObserver;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mOpSceneModeObserver:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mOpHighlightHintController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mOpThreekeyVolumeGuideController:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->isBitmojiAodEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mOpBitmojiManager:Ldagger/Lazy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;

    invoke-direct {v3, v2}, Lcom/android/systemui/-$$Lambda$Vs-MsjQwuYhfrxzUr7AqZvcfoH4;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sput-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    return-void
.end method
