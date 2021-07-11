.class public Lcom/android/systemui/statusbar/phone/StatusBar;
.super Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/plugins/ActivityStarter;
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBar$H;,
        Lcom/android/systemui/statusbar/phone/StatusBar$StatusBarUiEvent;
    }
.end annotation


# static fields
.field public static final CHATTY:Z

.field public static DEBUG:Z = false

.field public static final DEBUG_CAMERA_LIFT:Z

.field public static DEBUG_GESTURES:Z = false

.field public static DEBUG_MEDIA_FAKE_ARTWORK:Z = false

.field public static DUMPTRUCK:Z = true

.field public static final ONLY_CORE_APPS:Z

.field public static SPEW:Z = false

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# instance fields
.field private mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

.field private mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

.field private mAmbientIndicationContainer:Landroid/view/View;

.field private mAppFullscreen:Z

.field private mAppImmersive:Z

.field private mAppearance:I

.field private final mAssistManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

.field private final mBannerActionBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field private final mBiometricUnlockControllerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;"
        }
    .end annotation
.end field

.field protected mBouncerShowing:Z

.field private mBouncerWasShowingWhenHidden:Z

.field private mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

.field private final mBubbleExpandListener:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

.field private final mBypassHeadsUpNotifier:Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;

.field private mCameraLaunchGestureVibePattern:[J

.field private final mCheckBarModes:Ljava/lang/Runnable;

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field protected final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mCurrentDisplaySize:Landroid/graphics/Point;

.field private final mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

.field private mDemoMode:Z

.field private mDemoModeAllowed:Z

.field private final mDemoReceiver:Landroid/content/BroadcastReceiver;

.field protected mDeviceInteractive:Z

.field protected mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mDisabled1:I

.field private mDisabled2:I

.field private final mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

.field protected mDisplay:Landroid/view/Display;

.field private mDisplayId:I

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mDividerOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/systemui/stackdivider/Divider;",
            ">;"
        }
    .end annotation
.end field

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field protected mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected mDozing:Z

.field private mDraggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private mDreamManager:Landroid/service/dreams/IDreamManager;

.field private final mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

.field private mExpandedVisible:Z

.field private final mExtensionController:Lcom/android/systemui/statusbar/policy/ExtensionController;

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

.field private mGestureView:Landroid/widget/FrameLayout;

.field protected mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mGoToLockedShadeListener:Landroid/view/View$OnClickListener;

.field private final mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private final mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field protected final mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

.field private mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

.field private final mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private mHideIconsForBouncer:Z

.field private mHideNavBar:Z

.field private final mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

.field private final mInitController:Lcom/android/systemui/InitController;

.field private mInteractingWindows:I

.field protected mIsKeyguard:Z

.field private mIsOccluded:Z

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

.field mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field protected mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field private final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mLastCameraLaunchSource:I

.field private mLastLoggedStateFingerprint:I

.field private mLaunchCameraOnFinishedGoingToSleep:Z

.field private mLaunchCameraWhenFinishedWaking:Z

.field private mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

.field private final mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field private final mLightsOutNotifController:Lcom/android/systemui/statusbar/phone/LightsOutNotifController;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockscreenLockIconController:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field protected mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

.field private final mLockscreenWallpaperLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

.field protected mNavigationBarGuide:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

.field private final mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mNoAnimationOnNextBarModeChange:Z

.field private mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

.field protected mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field protected final mNotificationInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

.field private final mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

.field protected mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

.field private mNotificationShadeDepthControllerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            ">;"
        }
    .end annotation
.end field

.field protected mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

.field protected mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

.field protected mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

.field protected mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field private mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

.field protected mPanelExpanded:Z

.field private mPhoneState:I

.field protected mPhoneStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

.field private final mPluginDependencyProvider:Lcom/android/systemui/plugins/PluginDependencyProvider;

.field private final mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

.field private final mPowerManager:Landroid/os/PowerManager;

.field protected mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

.field private final mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private final mQueueLock:Ljava/lang/Object;

.field private final mRecentsOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/systemui/recents/Recents;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

.field private mReportRejectedTouch:Landroid/view/View;

.field private final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private final mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

.field private final mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field protected mStackScroller:Landroid/view/ViewGroup;

.field protected mState:I

.field private final mStatusBarComponentBuilder:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field protected mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarMode:I

.field private final mStatusBarNotificationActivityStarterBuilder:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;

.field private final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private mStatusBarStateLog:Landroid/metrics/LogMaker;

.field private final mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

.field protected mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field protected mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

.field private mStatusBarWindowHidden:Z

.field private mStatusBarWindowState:I

.field final mStopTracing:Ljava/lang/Runnable;

.field private final mSuperStatusBarViewFactory:Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

.field private final mTmpInt2:[I

.field private mTopHidesStatusBar:Z

.field private mTransientShown:Z

.field private final mUiBgExecutor:Ljava/util/concurrent/Executor;

.field private mUiModeManager:Landroid/app/UiModeManager;

.field private final mUnlockScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUserInfoControllerImpl:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

.field protected mUserSetup:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mUserSetupObserver:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

.field private final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field private mVibrateOnOpening:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field private final mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

.field protected mVisible:Z

.field private mVisibleToUser:Z

.field private final mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

.field private final mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

.field private mWakeUpComingFromTouch:Z

.field private final mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

.field private mWakeUpTouchLocation:Landroid/graphics/PointF;

.field private final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mWallpaperSupported:Z

.field private mWereIconsJustHidden:Z

.field protected mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 323
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_CAMERA_LIFT:Z

    .line 328
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->CHATTY:Z

    .line 350
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 351
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 352
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBar;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 366
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBar;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    :try_start_0
    const-string v0, "package"

    .line 372
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 373
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 377
    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->ONLY_CORE_APPS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/init/NotificationsController;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/phone/AutoHideController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/util/DisplayMetrics;Lcom/android/internal/logging/MetricsLogger;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/NavigationBarController;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/KeyguardLiftController;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Landroid/os/PowerManager;Lcom/android/systemui/recents/ScreenPinningRequest;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/volume/VolumeComponent;Lcom/android/systemui/statusbar/CommandQueue;Ljava/util/Optional;Ljavax/inject/Provider;Lcom/android/systemui/shared/plugins/PluginManager;Ljava/util/Optional;Lcom/android/systemui/statusbar/phone/LightsOutNotifController;Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/systemui/InitController;Lcom/android/systemui/plugins/DarkIconDispatcher;Landroid/os/Handler;Lcom/android/systemui/plugins/PluginDependencyProvider;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/statusbar/policy/ExtensionController;Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsController;",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            "Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            "Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            "Landroid/util/DisplayMetrics;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            "Lcom/android/systemui/statusbar/policy/NetworkController;",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            "Lcom/android/systemui/bubbles/BubbleController;",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Lcom/android/systemui/statusbar/NavigationBarController;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;",
            "Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/systemui/statusbar/phone/ScrimController;",
            "Lcom/android/systemui/statusbar/phone/KeyguardLiftController;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/DozeServiceHost;",
            "Landroid/os/PowerManager;",
            "Lcom/android/systemui/recents/ScreenPinningRequest;",
            "Lcom/android/systemui/statusbar/phone/DozeScrimController;",
            "Lcom/android/systemui/volume/VolumeComponent;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/recents/Recents;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Builder;",
            ">;",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/stackdivider/Divider;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/LightsOutNotifController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            "Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            "Lcom/android/systemui/InitController;",
            "Lcom/android/systemui/plugins/DarkIconDispatcher;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/plugins/PluginDependencyProvider;",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            "Lcom/android/systemui/statusbar/policy/ExtensionController;",
            "Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;",
            "Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;",
            "Lcom/android/systemui/statusbar/KeyguardIndicationController;",
            "Lcom/android/systemui/keyguard/DismissCallbackRegistry;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 830
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;-><init>(Landroid/content/Context;)V

    .line 401
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    const/4 v1, 0x0

    .line 406
    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    .line 416
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQueueLock:Ljava/lang/Object;

    .line 477
    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    .line 478
    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    .line 491
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_GESTURES:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 492
    new-instance v2, Lcom/android/systemui/statusbar/GestureRecorder;

    const-string v4, "/sdcard/statusbar_gestures.dat"

    invoke-direct {v2, v4}, Lcom/android/systemui/statusbar/GestureRecorder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 493
    :goto_0
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    .line 504
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    .line 506
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetupObserver:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .line 568
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->createHandler()Lcom/android/systemui/statusbar/phone/StatusBar$H;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    .line 585
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 615
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    .line 629
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    .line 663
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$yGW3L-liHoPrdVSisJBkD7OsnTE;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$yGW3L-liHoPrdVSisJBkD7OsnTE;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGoToLockedShadeListener:Landroid/view/View$OnClickListener;

    .line 687
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 721
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMainThreadHandler:Landroid/os/Handler;

    .line 736
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureView:Landroid/widget/FrameLayout;

    .line 737
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideNavBar:Z

    .line 2829
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$KBnY14rlKZ6x8gvk_goBuFrr5eE;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$KBnY14rlKZ6x8gvk_goBuFrr5eE;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    .line 3184
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$10;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3230
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$11;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoReceiver:Landroid/content/BroadcastReceiver;

    .line 3518
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$fP2l2CQge0H_ibXpnpzx_WSEAp4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$fP2l2CQge0H_ibXpnpzx_WSEAp4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStopTracing:Ljava/lang/Runnable;

    .line 4253
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$13;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$13;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 4360
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$14;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$14;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 4657
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$16;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$16;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBannerActionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object v1, p2

    .line 831
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    move-object v1, p3

    .line 832
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    move-object v1, p4

    .line 833
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    move-object v1, p5

    .line 834
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v1, p6

    .line 835
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-object v1, p7

    .line 836
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    move-object v1, p8

    .line 837
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-object v1, p9

    .line 838
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object v1, p10

    .line 839
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v1, p11

    .line 840
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    move-object/from16 v1, p74

    .line 841
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-object/from16 v1, p77

    .line 842
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    move-object/from16 v1, p12

    .line 843
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    move-object/from16 v1, p13

    .line 844
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBypassHeadsUpNotifier:Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;

    move-object/from16 v1, p14

    .line 845
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v1, p15

    .line 846
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v1, p16

    .line 847
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    move-object/from16 v1, p17

    .line 848
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    move-object/from16 v1, p18

    .line 849
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    move-object/from16 v1, p19

    .line 850
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    move-object/from16 v1, p20

    .line 851
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    move-object/from16 v1, p21

    .line 852
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-object/from16 v1, p22

    .line 853
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v1, p23

    .line 854
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v1, p24

    .line 855
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v1, p25

    .line 856
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    move-object/from16 v1, p26

    .line 857
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object/from16 v1, p27

    .line 858
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-object/from16 v1, p28

    .line 859
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v1, p29

    .line 860
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v1, p30

    .line 861
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v1, p31

    .line 862
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    move-object/from16 v1, p32

    .line 863
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-object/from16 v1, p33

    .line 864
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object/from16 v1, p34

    .line 865
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object/from16 v1, p35

    .line 866
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    move-object/from16 v1, p36

    .line 867
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    move-object/from16 v1, p37

    .line 868
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v1, p38

    .line 869
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    move-object/from16 v1, p39

    .line 870
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v1, p40

    .line 871
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    move-object/from16 v1, p41

    .line 872
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManagerLazy:Ldagger/Lazy;

    move-object/from16 v1, p42

    .line 873
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v1, p43

    .line 874
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    move-object/from16 v1, p44

    .line 875
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenLockIconController:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    move-object/from16 v1, p50

    .line 876
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    move-object/from16 v1, p51

    .line 877
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v1, p45

    .line 878
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 v1, p46

    .line 879
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object/from16 v1, p48

    .line 881
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaperLazy:Ldagger/Lazy;

    move-object/from16 v1, p52

    .line 882
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

    move-object/from16 v1, p53

    .line 883
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    move-object/from16 v1, p49

    .line 884
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    move-object/from16 v1, p76

    .line 885
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeDepthControllerLazy:Ldagger/Lazy;

    move-object/from16 v1, p54

    .line 886
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    move-object/from16 v1, p55

    .line 887
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v1, p56

    .line 888
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRecentsOptional:Ljava/util/Optional;

    move-object/from16 v1, p57

    .line 889
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarComponentBuilder:Ljavax/inject/Provider;

    move-object/from16 v1, p58

    .line 890
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    move-object/from16 v1, p59

    .line 891
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDividerOptional:Ljava/util/Optional;

    move-object/from16 v1, p61

    .line 892
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarNotificationActivityStarterBuilder:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;

    move-object/from16 v1, p62

    .line 893
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    move-object/from16 v1, p63

    .line 894
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSuperStatusBarViewFactory:Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

    move-object/from16 v1, p60

    .line 895
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightsOutNotifController:Lcom/android/systemui/statusbar/phone/LightsOutNotifController;

    move-object/from16 v1, p64

    .line 896
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v1, p65

    .line 897
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    move-object/from16 v1, p66

    .line 898
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInitController:Lcom/android/systemui/InitController;

    move-object/from16 v1, p67

    .line 899
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    move-object/from16 v1, p69

    .line 900
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPluginDependencyProvider:Lcom/android/systemui/plugins/PluginDependencyProvider;

    move-object/from16 v1, p70

    .line 901
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    move-object/from16 v1, p71

    .line 902
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExtensionController:Lcom/android/systemui/statusbar/policy/ExtensionController;

    move-object/from16 v1, p72

    .line 903
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserInfoControllerImpl:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    move-object/from16 v1, p73

    .line 904
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    move-object/from16 v1, p75

    .line 905
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    .line 907
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$be2UvXBqvJVkeR4_MOL5Z579OFk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$be2UvXBqvJVkeR4_MOL5Z579OFk;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubbleExpandListener:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

    .line 914
    invoke-static/range {p68 .. p68}, Landroid/widget/DateTimeView;->setReceiverHandler(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 284
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/os/Handler;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/lang/Runnable;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 0

    .line 284
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isTransientShown()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 284
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearTransient()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/Context;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Context;)V
    .locals 0

    .line 284
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->inflateOPAodView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOPAodWindow:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 0

    .line 284
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperSupported:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/oneplus/aod/OpAodWindowManager;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodWindowManager:Lcom/oneplus/aod/OpAodWindowManager;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOPAodWindow:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/oneplus/aod/OpAodDisplayViewManager;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/ShadeController;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 284
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLaunchTransitionTimeout()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/bubbles/BubbleController;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 284
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->finishBarAnimations()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/qs/QSPanel;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 284
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/Context;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 0

    .line 284
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraWhenFinishedWaking:Z

    return p0
.end method

.method static synthetic access$3002(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0

    .line 284
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraWhenFinishedWaking:Z

    return p1
.end method

.method static synthetic access$3102(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0

    .line 284
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpComingFromTouch:Z

    return p1
.end method

.method static synthetic access$3202(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpTouchLocation:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/VisualStabilityManager;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 0

    .line 284
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnFinishedGoingToSleep:Z

    return p0
.end method

.method static synthetic access$3402(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0

    .line 284
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnFinishedGoingToSleep:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 284
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissVolumeDialog()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBypassHeadsUpNotifier:Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/ScrimController;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/PulseExpansionHandler;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/phone/StatusBar;)I
    .locals 0

    .line 284
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastCameraLaunchSource:I

    return p0
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/plugins/FalsingManager;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/oneplus/aod/OpAodDisplayViewManager;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/oneplus/aod/OpAodDisplayViewManager;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/Context;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/Context;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/Context;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/Context;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/init/NotificationsController;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/phone/StatusBar;I)I
    .locals 0

    .line 284
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPhoneState:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/os/PowerManager;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method private static barMode(ZI)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    and-int/lit8 p0, p1, 0x5

    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    and-int/lit8 p0, p1, 0x4

    if-eqz p0, :cond_2

    const/4 p0, 0x6

    return p0

    :cond_2
    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private clearTransient()V
    .locals 1

    .line 2704
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTransientShown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2705
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTransientShown:Z

    .line 2706
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleTransientChanged()V

    :cond_0
    return-void
.end method

.method private dismissVolumeDialog()V
    .locals 0

    .line 2850
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    if-eqz p0, :cond_0

    .line 2851
    invoke-interface {p0}, Lcom/android/systemui/volume/VolumeComponent;->dismissNow()V

    :cond_0
    return-void
.end method

.method private dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0

    .line 3622
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez p0, :cond_0

    return-void

    .line 3623
    :cond_0
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 3624
    instance-of p3, p0, Lcom/android/systemui/DemoMode;

    if-eqz p3, :cond_1

    .line 3625
    check-cast p0, Lcom/android/systemui/DemoMode;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/DemoMode;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method static dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V
    .locals 1

    const-string v0, "  "

    if-eqz p2, :cond_0

    .line 3024
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, ".BarTransitions.mMode="

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3025
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getMode()I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3027
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, ".BarTransitions.mMode= null"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V
    .locals 1

    .line 3260
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 3261
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 3263
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private finishBarAnimations()V
    .locals 1

    .line 2822
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    .line 2823
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->getBarTransitions()Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2824
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->getBarTransitions()Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->finishAnimations()V

    .line 2826
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/NavigationBarController;->finishBarAnimations(I)V

    return-void
.end method

.method public static getActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;
    .locals 0

    .line 4837
    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getActivityOptionsInternal(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static getLoggingFingerprint(IZZZZZ)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x9

    or-int/2addr p0, p1

    shl-int/lit8 p1, p3, 0xa

    or-int/2addr p0, p1

    shl-int/lit8 p1, p4, 0xb

    or-int/2addr p0, p1

    shl-int/lit8 p1, p5, 0xc

    or-int/2addr p0, p1

    return p0
.end method

.method public static getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;
    .locals 3

    if-ltz p1, :cond_0

    .line 4922
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4929
    :catch_0
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method private handleStartActivityDismissingKeyguard(Landroid/content/Intent;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 3545
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method private handleTransientChanged()V
    .locals 2

    .line 2711
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTransientShown:Z

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAppearance:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->barMode(ZI)I

    move-result v0

    .line 2712
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateBarMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2713
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/LightBarController;->onStatusBarModeChanged(I)V

    .line 2714
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateBubblesVisibility()V

    :cond_0
    return-void
.end method

.method private inflateShelf()V
    .locals 2

    .line 1582
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSuperStatusBarViewFactory:Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->getNotificationShelf(Landroid/view/ViewGroup;)Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 1583
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGoToLockedShadeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private inflateStatusBarWindow()V
    .locals 3

    .line 1660
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSuperStatusBarViewFactory:Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    .line 1661
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarComponentBuilder:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    .line 1662
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Builder;->statusBarWindowView(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;)Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Builder;->build()Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent;

    move-result-object v0

    .line 1664
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent;->getNotificationShadeWindowViewController()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    .line 1665
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setNotificationShadeView(Landroid/view/ViewGroup;)V

    .line 1666
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->setupExpandedStatusBar()V

    .line 1667
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent;->getStatusBarWindowController()Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 1668
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSuperStatusBarViewFactory:Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->getStatusBarWindowView()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPhoneStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 1669
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent;->getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 1671
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPhoneStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setNotificationPanelViewController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method

.method private initControlPanelWindow()V
    .locals 9

    .line 5047
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 5048
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 5049
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureView:Landroid/widget/FrameLayout;

    .line 5052
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideNavBar:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 5056
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    .line 5057
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5058
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureView:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$18;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$18;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5065
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 5066
    div-int/lit8 v3, v0, 0x64

    sub-int v5, v0, v3

    .line 5069
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/16 v6, 0x7e1

    const v7, 0x1000008

    const/4 v8, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 5080
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureView:Landroid/widget/FrameLayout;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private isGoingToSleep()Z
    .locals 1

    .line 4515
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTransientShown()Z
    .locals 0

    .line 4964
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTransientShown:Z

    return p0
.end method

.method private isWakingUpOrAwake()Z
    .locals 3

    .line 4520
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 4521
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static synthetic lambda$GDSEpzokV1v2-uNGuP8V5K9Jrjw(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLaunchTransitionFadingEnded()V

    return-void
.end method

.method public static synthetic lambda$SBKxeejWdiPVIq--MxMI8pU8ipA(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V

    return-void
.end method

.method private synthetic lambda$awakenDreams$31()V
    .locals 0

    .line 4697
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4699
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$executeActionDismissingKeyguard$32(Ljava/lang/Runnable;)V
    .locals 1

    .line 4781
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4784
    :catch_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$executeActionDismissingKeyguard$33(Ljava/lang/Runnable;)Z
    .locals 2

    .line 4775
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$N0soCd5RBgNyAcmYj5-rYlAQiyQ;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$N0soCd5RBgNyAcmYj5-rYlAQiyQ;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4785
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4787
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->collapsePanel()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$executeRunnableDismissingKeyguard$19(Ljava/lang/Runnable;ZZ)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 3156
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 3157
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3158
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3160
    :cond_0
    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 3164
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-nez p1, :cond_2

    .line 3165
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    const/4 p1, 0x2

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2, p2}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels(IZZ)V

    goto :goto_1

    .line 3170
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$1D7d4MB3IfMdSh7fQ1kWsUzvPD8;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$1D7d4MB3IfMdSh7fQ1kWsUzvPD8;-><init>(Lcom/android/systemui/statusbar/phone/ShadeController;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 3172
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 3173
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isLaunchTransitionFinished()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3178
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$JQMd1r5WuAA5n3kv4yv5u3MFjI8;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$JQMd1r5WuAA5n3kv4yv5u3MFjI8;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return p3
.end method

.method private synthetic lambda$fadeKeyguardAfterLaunchTransition$29(Ljava/lang/Runnable;)V
    .locals 14

    .line 3739
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->setLaunchTransitionFadingAway(Z)V

    if-eqz p1, :cond_0

    .line 3741
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 3743
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 3744
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateMediaMetaData(ZZ)V

    .line 3745
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setAlpha(F)V

    .line 3746
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x12c

    new-instance v6, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$GDSEpzokV1v2-uNGuP8V5K9Jrjw;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$GDSEpzokV1v2-uNGuP8V5K9Jrjw;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->fadeOut(JJLjava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 3749
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x78

    const/4 v13, 0x1

    invoke-virtual/range {v7 .. v13}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionStarting(IJJZ)V

    return-void
.end method

.method private synthetic lambda$fadeKeyguardWhilePulsing$30()V
    .locals 0

    .line 3766
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    .line 3767
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onKeyguardFadedAway()V

    return-void
.end method

.method private synthetic lambda$getStatusBarWindowTouchListener$10(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1564
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/AutoHideController;->checkUserAutoHide(Landroid/view/MotionEvent;)V

    .line 1565
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->checkRemoteInputOutside(Landroid/view/MotionEvent;)V

    .line 1566
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 1572
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getPreventModeCtrl()Lcom/oneplus/plugin/OpPreventModeCtrl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpPreventModeCtrl;->isPreventModeActive()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1574
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels()V

    .line 1577
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$handleVisibleToUserChangedImpl$22(ZI)V
    .locals 0

    .line 3423
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private synthetic lambda$handleVisibleToUserChangedImpl$23()V
    .locals 0

    .line 3432
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelHidden()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private synthetic lambda$makeStatusBarView$3(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 11

    .line 1158
    check-cast p2, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    .line 1161
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 1162
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 1163
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 1164
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->setPanel(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    .line 1165
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 1167
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->initNotificationIconArea(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    .line 1175
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1176
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyBarPanelExpansionChanged()V

    .line 1178
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->setBouncerShowing(Z)V

    if-eqz p1, :cond_1

    .line 1180
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->getExpansionFraction()F

    move-result p2

    .line 1181
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->isExpanded()Z

    move-result p1

    .line 1182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, p2, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->panelExpansionChanged(FZ)V

    .line 1185
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    if-eqz p1, :cond_2

    .line 1188
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->destroy()V

    .line 1192
    :cond_2
    new-instance p2, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object v0, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Landroid/view/View;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 1198
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->readFrom(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    .line 1200
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightsOutNotifController:Lcom/android/systemui/statusbar/phone/LightsOutNotifController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget v0, Lcom/android/systemui/R$id;->notification_lights_out:I

    .line 1201
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 1200
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->setLightsOutNotifView(Landroid/view/View;)V

    .line 1202
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->setStatusBarView(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    .line 1203
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    return-void
.end method

.method private synthetic lambda$makeStatusBarView$4(Ljava/lang/Integer;)V
    .locals 2

    .line 1298
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setScrimsVisibility(I)V

    .line 1299
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    if-eqz v0, :cond_0

    .line 1300
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenLockIconController:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->onScrimVisibilityChanged(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$makeStatusBarView$5(FLcom/android/systemui/statusbar/BackDropView;F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1343
    invoke-static {p0, v0, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    .line 1344
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 1345
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 1346
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1347
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$makeStatusBarView$6(Ljava/lang/Boolean;)V
    .locals 0

    .line 1373
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1374
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    return-void
.end method

.method private synthetic lambda$makeStatusBarView$7(Ljava/lang/Boolean;)V
    .locals 0

    .line 1382
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1383
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    return-void
.end method

.method private synthetic lambda$makeStatusBarView$8(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 1

    .line 1387
    check-cast p2, Lcom/android/systemui/plugins/qs/QS;

    .line 1388
    instance-of p1, p2, Lcom/android/systemui/qs/QSFragment;

    if-eqz p1, :cond_0

    .line 1389
    check-cast p2, Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {p2}, Lcom/android/systemui/qs/QSFragment;->getQsPanel()Lcom/android/systemui/qs/QSPanel;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 1390
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSPanel;->setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 1392
    invoke-virtual {p2}, Lcom/android/systemui/qs/QSFragment;->getQuickQsPanel()Lcom/android/systemui/qs/QuickQSPanel;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 1393
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mQuickBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSPanel;->setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$makeStatusBarView$9(Landroid/view/View;)V
    .locals 4

    .line 1404
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->reportRejectedTouch()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1407
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const-string v1, "Build info: "

    .line 1408
    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    const-string v1, "ro.build.description"

    .line 1409
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    const-string v1, "\nSerial number: "

    .line 1410
    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    const-string v1, "ro.serialno"

    .line 1411
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 1412
    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 1414
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1415
    invoke-static {v1}, Lcom/android/systemui/classifier/FalsingLog;->dump(Ljava/io/PrintWriter;)V

    .line 1416
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1418
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "*/*"

    .line 1419
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.SUBJECT"

    const-string v3, "Rejected touch report"

    .line 1420
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    .line 1421
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 1422
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Share rejected touch report"

    .line 1418
    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 1424
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    .line 1418
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method private synthetic lambda$maybeEscalateHeadsUp$14(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 7

    .line 2280
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 2281
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 2282
    iget-object v2, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_6

    .line 2296
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPhoneState:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 2297
    :goto_0
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result p0

    .line 2299
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.oneplus.dialer"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2300
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.dialer"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2301
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.google.android.dialer"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    .line 2303
    :cond_2
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "maybeEscalateHeadsUp, isDialer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isCallStateIdle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isInCall: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StatusBar"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_4

    if-nez v2, :cond_3

    if-nez p0, :cond_4

    :cond_3
    const-string p0, "Bypass fullScreenIntent of dialer since call state is idle or not in a call"

    .line 2307
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2309
    :cond_4
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-eqz p0, :cond_5

    const-string p0, "converting a heads up to fullScreen"

    .line 2310
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const p0, 0x8ca3

    .line 2314
    :try_start_0
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 2313
    invoke-static {p0, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2315
    iget-object p0, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V

    .line 2316
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notifyFullScreenIntentLaunched()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    :goto_2
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 4

    .line 664
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 665
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v0, "SHADE_CLICK"

    invoke-virtual {p0, v2, v3, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpIfDozing(JLandroid/view/View;Ljava/lang/String;)V

    .line 670
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->isQsDisabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "StatusBar"

    const-string v0, "return shelf click"

    .line 671
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 673
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->goToLockedShade(Landroid/view/View;)V

    .line 679
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isExpanding()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isQsExpanded()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyExpanded()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 680
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FI)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$new$1(ZLjava/lang/String;)V
    .locals 0

    .line 909
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    const-string p2, "onBubbleExpandChanged"

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->requestNotificationUpdate(Ljava/lang/String;)V

    .line 910
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    return-void
.end method

.method private synthetic lambda$new$24()V
    .locals 2

    .line 3519
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    const-string v0, "StatusBar"

    const-string/jumbo v1, "stopTracing"

    .line 3520
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3521
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->vibrate()V

    return-void
.end method

.method private synthetic lambda$onHeadsUpPinnedModeChanged$11()V
    .locals 1

    .line 2022
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setForceWindowCollapsed(Z)V

    return-void
.end method

.method private synthetic lambda$onHeadsUpPinnedModeChanged$12()V
    .locals 2

    .line 2041
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2042
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setHeadsUpShowing(Z)V

    .line 2043
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setHeadsUpGoingAway(Z)V

    .line 2045
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->onPanelCollapsed()V

    return-void
.end method

.method private synthetic lambda$postAnimateForceCollapsePanels$15()V
    .locals 2

    .line 2408
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels(IZ)V

    return-void
.end method

.method private synthetic lambda$postQSRunnableDismissingKeyguard$25(Ljava/lang/Runnable;)V
    .locals 0

    .line 3528
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$postQSRunnableDismissingKeyguard$26(Ljava/lang/Runnable;)V
    .locals 8

    .line 3527
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    .line 3528
    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$iwqoe1y41DFVWwbh9GAKKnDbOk8;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$iwqoe1y41DFVWwbh9GAKKnDbOk8;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    return-void
.end method

.method private synthetic lambda$postStartActivityDismissingKeyguard$27(Landroid/app/PendingIntent;)V
    .locals 0

    .line 3535
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private synthetic lambda$postStartActivityDismissingKeyguard$28(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    .line 3541
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleStartActivityDismissingKeyguard(Landroid/content/Intent;Z)V

    return-void
.end method

.method private synthetic lambda$start$2(II)V
    .locals 0

    .line 1054
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setUpDisableFlags(II)V

    return-void
.end method

.method private synthetic lambda$startActivityDismissingKeyguard$17(Landroid/content/Intent;IZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v13, p4

    .line 3089
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v1}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    const/high16 v1, 0x14000000

    .line 3090
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3092
    invoke-virtual/range {p1 .. p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3097
    iget-object v1, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$anim;->op_qs_tile_long_press_enter:I

    sget v3, Lcom/android/systemui/R$anim;->op_qs_tile_long_press_exit:I

    invoke-static {v1, v2, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    move/from16 v2, p3

    .line 3100
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    .line 3102
    sget-object v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    if-ne v4, v2, :cond_0

    const/4 v2, 0x3

    .line 3111
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setRotationAnimationHint(I)V

    .line 3114
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.settings.panel.action.VOLUME"

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    .line 3120
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    .line 3123
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v5, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 3124
    invoke-virtual {v5}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 3126
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x10000000

    const/4 v12, 0x0

    .line 3128
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v14

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    move-object v0, v2

    move-object v1, v3

    move-object v2, v5

    move-object v3, v6

    move-object/from16 v4, p1

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move v8, v10

    move v9, v11

    move-object v10, v12

    move-object v11, v14

    move v12, v15

    .line 3123
    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StatusBar"

    const-string v2, "Unable to start activity"

    .line 3130
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, -0x60

    :goto_0
    if-eqz v13, :cond_2

    .line 3133
    invoke-interface {v13, v0}, Lcom/android/systemui/plugins/ActivityStarter$Callback;->onActivityStarted(I)V

    :cond_2
    return-void
.end method

.method static synthetic lambda$startActivityDismissingKeyguard$18(Lcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, -0x60

    .line 3138
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/ActivityStarter$Callback;->onActivityStarted(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startPendingIntentDismissingKeyguard$34(Landroid/app/PendingIntent;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4812
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    .line 4813
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isOccluded()Z

    move-result v7

    invoke-virtual {v0, p2, v7}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->getLaunchAnimation(Landroid/view/View;Z)Landroid/view/RemoteAnimationAdapter;

    move-result-object p2

    .line 4812
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;

    move-result-object v7

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 4817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending intent failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "StatusBar"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4821
    :goto_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4822
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p1}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    :cond_0
    if-eqz p3, :cond_1

    .line 4825
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$updateHideIconsForBouncer$13()V
    .locals 2

    const/4 v0, 0x0

    .line 2180
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWereIconsJustHidden:Z

    .line 2181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    return-void
.end method

.method private synthetic lambda$updateResources$20()V
    .locals 0

    .line 3351
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    return-void
.end method

.method private synthetic lambda$updateResources$21()V
    .locals 0

    .line 3369
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateResources()V

    return-void
.end method

.method private logStateToEventlog()V
    .locals 12

    .line 3442
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    .line 3443
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v7

    .line 3444
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v8

    .line 3445
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result v9

    .line 3446
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v10

    .line 3447
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    move v2, v0

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->getLoggingFingerprint(IZZZZZ)I

    move-result v11

    .line 3453
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastLoggedStateFingerprint:I

    if-eq v11, v1, :cond_6

    .line 3454
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateLog:Landroid/metrics/LogMaker;

    if-nez v1, :cond_0

    .line 3455
    new-instance v1, Landroid/metrics/LogMaker;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateLog:Landroid/metrics/LogMaker;

    .line 3457
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateLog:Landroid/metrics/LogMaker;

    if-eqz v8, :cond_1

    const/16 v3, 0xc5

    goto :goto_0

    :cond_1
    const/16 v3, 0xc4

    .line 3458
    :goto_0
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v2

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    .line 3459
    :goto_1
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 3460
    invoke-virtual {v2, v9}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 3457
    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3461
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    move v2, v0

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/EventLogTags;->writeSysuiStatusBarState(IIIIII)V

    .line 3467
    iput v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastLoggedStateFingerprint:I

    .line 3469
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_3

    const-string v1, "BOUNCER"

    goto :goto_2

    :cond_3
    const-string v1, "LOCKSCREEN"

    .line 3470
    :goto_2
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    const-string v0, "_OPEN"

    goto :goto_3

    :cond_4
    const-string v0, "_CLOSE"

    .line 3471
    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_5

    const-string v0, "_SECURE"

    goto :goto_4

    :cond_5
    const-string v0, "_INSECURE"

    .line 3472
    :goto_4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3473
    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBar;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$StatusBarUiEvent;->valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/StatusBar$StatusBarUiEvent;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_6
    return-void
.end method

.method private onLaunchTransitionFadingEnded()V
    .locals 2

    .line 3714
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setAlpha(F)V

    .line 3715
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onAffordanceLaunchEnded()V

    .line 3716
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    .line 3717
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runLaunchTransitionEndRunnable()V

    .line 3718
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->setLaunchTransitionFadingAway(Z)V

    .line 3719
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateMediaMetaData(ZZ)V

    return-void
.end method

.method private onLaunchTransitionTimeout()V
    .locals 2

    const-string v0, "StatusBar"

    const-string v1, "Launch transition: Timeout!"

    .line 3790
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3791
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onAffordanceLaunchEnded()V

    .line 3792
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    .line 3793
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->resetViews(Z)V

    .line 3796
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private postOnUiThread(Ljava/lang/Runnable;)V
    .locals 0

    .line 4831
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private releaseGestureWakeLock()V
    .locals 1

    .line 3860
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3861
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private runLaunchTransitionEndRunnable()V
    .locals 2

    .line 3801
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3806
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 3807
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private setUpPresenter()V
    .locals 24

    move-object/from16 v14, p0

    move-object/from16 v19, p0

    .line 1487
    new-instance v7, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    move-object v15, v7

    iget-object v1, v14, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    iget-object v3, v14, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v0, v14, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeDepthControllerLazy:Ldagger/Lazy;

    .line 1489
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-object v0, v14, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    iget-object v0, v14, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 1490
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    move-object v0, v7

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$Callback;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Ljava/util/concurrent/Executor;)V

    iput-object v7, v14, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    .line 1493
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    move-object v7, v0

    iget-object v8, v14, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v9, v14, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v10, v14, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v11, v14, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    iget-object v12, v14, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    iget-object v13, v14, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-object v1, v14, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object v2, v14

    move-object v14, v1

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    move-object/from16 v16, v1

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v17, v1

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-object/from16 v18, v1

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    move-object/from16 v20, v1

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v21, v1

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mInitController:Lcom/android/systemui/InitController;

    move-object/from16 v22, v1

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    move-object/from16 v23, v1

    invoke-direct/range {v7 .. v23}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/InitController;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;)V

    iput-object v0, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 1500
    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOnActivatedListener(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;)V

    .line 1501
    iget-object v0, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v0

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/RemoteInputController;->addCallback(Lcom/android/systemui/statusbar/RemoteInputController$Callback;)V

    .line 1503
    iget-object v0, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarNotificationActivityStarterBuilder:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;

    .line 1505
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    .line 1506
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;->setActivityLaunchAnimator(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 1507
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;->setNotificationPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;)Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 1508
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;->setNotificationPanelViewController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;

    .line 1509
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;->build()Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    move-result-object v0

    iput-object v0, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    .line 1511
    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    check-cast v1, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 1512
    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->setNotificationActivityStarter(Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;)V

    .line 1514
    iget-object v0, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->setNotificationActivityStarter(Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;)V

    .line 1516
    iget-object v0, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->initialize(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$BindRowCallback;)V

    return-void
.end method

.method private showBouncerIfKeyguard()V
    .locals 3

    .line 4017
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 4018
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isHiding()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4019
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    :cond_1
    return-void
.end method

.method private showTransientUnchecked()V
    .locals 1

    .line 2685
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTransientShown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2686
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTransientShown:Z

    .line 2687
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNoAnimationOnNextBarModeChange:Z

    .line 2688
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleTransientChanged()V

    :cond_0
    return-void
.end method

.method private updateBarMode(I)Z
    .locals 1

    .line 2719
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    if-eq v0, p1, :cond_0

    .line 2720
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    .line 2721
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    .line 2722
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private updateBubblesVisibility()V
    .locals 3

    .line 2808
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowHidden:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/bubbles/BubbleController;->onStatusBarVisibilityChanged(Z)V

    return-void
.end method

.method private updateDozingState()V
    .locals 5

    .line 3918
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    const-wide/16 v1, 0x1000

    const-string v3, "dozing"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    const-string v0, "StatusBar#updateDozingState"

    .line 3919
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3921
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 3922
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3923
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 3925
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->shouldAnimateWakeup()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 3926
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->shouldAnimateScreenOff()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    .line 3928
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpTouchLocation:Landroid/graphics/PointF;

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setDozing(ZZLandroid/graphics/PointF;)V

    .line 3929
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    .line 3930
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private updateHideIconsForBouncer(Z)V
    .locals 4

    .line 2169
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTopHidesStatusBar:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsOccluded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowHidden:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2171
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPanelExpanded:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsOccluded:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    move v1, v2

    .line 2173
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideIconsForBouncer:Z

    if-eq v0, v1, :cond_6

    .line 2174
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideIconsForBouncer:Z

    if-nez v1, :cond_5

    .line 2175
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerWasShowingWhenHidden:Z

    if-eqz v0, :cond_5

    .line 2178
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWereIconsJustHidden:Z

    .line 2179
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$a1IsrkRZhqgkId0jst0xYX6PoT4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$a1IsrkRZhqgkId0jst0xYX6PoT4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 2184
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 2188
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerWasShowingWhenHidden:Z

    :cond_7
    return-void
.end method

.method private updateKeyguardState()V
    .locals 2

    .line 4114
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 4115
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result p0

    .line 4114
    invoke-interface {v0, v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->notifyKeyguardState(ZZ)V

    return-void
.end method

.method private updatePanelExpansionForKeyguard()V
    .locals 2

    .line 3705
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-nez v0, :cond_0

    .line 3707
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->instantExpandNotificationsPanel()V

    goto :goto_0

    .line 3708
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3709
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantCollapseNotificationPanel()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateQsExpansionEnabled()V
    .locals 3

    .line 1788
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v0, :cond_0

    .line 1790
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isSimpleUserSwitcher()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_1

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->ONLY_CORE_APPS:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1795
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansionEnabled(Z)V

    .line 1796
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateQsExpansionEnabled - QS Expand enabled: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StatusBar"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateReportRejectedTouchVisibility()V
    .locals 3

    .line 1833
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mReportRejectedTouch:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 1837
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isReportingEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    .line 1836
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private vibrateForCameraGesture()V
    .locals 2

    .line 4396
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->opVibrateForCameraGesture(Landroid/content/Context;Landroid/os/Vibrator;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4403
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibrator:Landroid/os/Vibrator;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraLaunchGestureVibePattern:[J

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    return-void
.end method

.method public static viewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    .line 2866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2867
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abortTransient(I[I)V
    .locals 1

    .line 2694
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2697
    invoke-static {p2, p1}, Landroid/view/InsetsState;->containsType([II)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2700
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearTransient()V

    return-void
.end method

.method public addQsTile(Landroid/content/ComponentName;)V
    .locals 1

    .line 1800
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1801
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->addTile(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method

.method public animateCollapsePanels(IZ)V
    .locals 2

    .line 2427
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels(IZZF)V

    return-void
.end method

.method public animateCollapseQuickSettings()V
    .locals 3

    .line 2496
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez v0, :cond_0

    .line 2497
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PanelBar;->collapsePanel(ZZF)V

    :cond_0
    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 2

    .line 2467
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->SPEW:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateExpand: mExpandedVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2472
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->expandWithoutQs()V

    return-void
.end method

.method public animateExpandSettingsPanel(Ljava/lang/String;)V
    .locals 2

    .line 2479
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->SPEW:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateExpand: mExpandedVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2485
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 2488
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->openDetails(Ljava/lang/String;)V

    .line 2490
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->expandWithQs()V

    return-void
.end method

.method public animateKeyguardUnoccluding()V
    .locals 2

    .line 3775
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedFraction(F)V

    .line 3776
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateExpandNotificationsPanel()V

    return-void
.end method

.method public appTransitionCancelled(I)V
    .locals 1

    .line 4430
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    if-ne p1, v0, :cond_0

    .line 4431
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDividerOptional:Ljava/util/Optional;

    sget-object p1, Lcom/android/systemui/statusbar/phone/-$$Lambda$0LwwxILcL3cgEtrSMW_qhRkAhLc;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$0LwwxILcL3cgEtrSMW_qhRkAhLc;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public appTransitionFinished(I)V
    .locals 1

    .line 4437
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    if-ne p1, v0, :cond_0

    .line 4438
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDividerOptional:Ljava/util/Optional;

    sget-object p1, Lcom/android/systemui/statusbar/phone/-$$Lambda$0LwwxILcL3cgEtrSMW_qhRkAhLc;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$0LwwxILcL3cgEtrSMW_qhRkAhLc;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public areLaunchAnimationsEnabled()Z
    .locals 0

    .line 2227
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method areNotificationAlertsDisabled()Z
    .locals 1

    .line 1949
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    const/high16 v0, 0x40000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method awakenDreams()V
    .locals 2

    .line 4695
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$uVSnBgW5bpIDYbVSsVJZcuCIXb4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$uVSnBgW5bpIDYbVSsVJZcuCIXb4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public cancelPreloadRecentApps()V
    .locals 2

    .line 4714
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x3ff

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4715
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V
    .locals 1

    .line 2816
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNoAnimationOnNextBarModeChange:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    if-eq p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 2818
    :goto_0
    invoke-virtual {p3, p1, p0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    return-void
.end method

.method checkBarModes()V
    .locals 3

    .line 2793
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 2794
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2795
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 2797
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NavigationBarController;->checkNavBarModes(I)V

    const/4 v0, 0x0

    .line 2798
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNoAnimationOnNextBarModeChange:Z

    return-void
.end method

.method public clearNotificationEffects()V
    .locals 0

    .line 4878
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->clearNotificationEffects()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .locals 0

    .line 1812
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->clickTile(Landroid/content/ComponentName;)V

    return-void
.end method

.method public createAndAddWindows(Lcom/android/internal/statusbar/RegisterStatusBarResult;)V
    .locals 0

    .line 3033
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeStatusBarView(Lcom/android/internal/statusbar/RegisterStatusBarResult;)V

    .line 3034
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->attach()V

    .line 3035
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->attach()V

    .line 3038
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oneplus/plugin/OpLsState;->onWallpaperChange(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected createDefaultQSFragment()Lcom/android/systemui/plugins/qs/QS;
    .locals 1

    .line 1482
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object p0

    const-class v0, Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {p0, v0}, Lcom/android/systemui/fragments/FragmentHostManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QS;

    return-object p0
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/phone/StatusBar$H;
    .locals 1

    .line 1953
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-object v0
.end method

.method protected createNavigationBar(Lcom/android/internal/statusbar/RegisterStatusBarResult;)V
    .locals 1

    .line 1555
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/NavigationBarController;->createNavigationBars(ZLcom/android/internal/statusbar/RegisterStatusBarResult;)V

    return-void
.end method

.method protected createUserSwitcher()V
    .locals 5

    .line 1653
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    sget v3, Lcom/android/systemui/R$id;->keyguard_user_switcher:I

    .line 1654
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    sget v4, Lcom/android/systemui/R$id;->keyguard_header:I

    .line 1655
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;-><init>(Landroid/content/Context;Landroid/view/ViewStub;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    return-void
.end method

.method public disable(IIIZ)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1845
    iget v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    move/from16 v3, p1

    if-eq v3, v2, :cond_0

    return-void

    .line 1848
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    move/from16 v3, p3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->adjustDisableFlags(I)I

    move-result v2

    .line 1850
    iget v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    const/4 v4, 0x2

    .line 1851
    iget v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    xor-int v5, v1, v3

    .line 1853
    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    .line 1855
    iget v6, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    xor-int v7, v2, v6

    .line 1857
    iput v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    .line 1859
    sget-boolean v8, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    const/4 v9, 0x0

    const-string v10, "StatusBar"

    if-eqz v8, :cond_1

    const/4 v8, 0x3

    new-array v11, v8, [Ljava/lang/Object;

    .line 1861
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v11, v9

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v12, 0x1

    aput-object v3, v11, v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v11, v4

    const-string v3, "disable1: 0x%08x -> 0x%08x (diff1: 0x%08x)"

    .line 1860
    invoke-static {v3, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v8, [Ljava/lang/Object;

    .line 1863
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const-string v4, "disable2: 0x%08x -> 0x%08x (diff2: 0x%08x)"

    .line 1862
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disable<"

    .line 1867
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v4, 0x10000

    and-int v6, v1, v4

    if-eqz v6, :cond_2

    const/16 v8, 0x45

    goto :goto_0

    :cond_2
    const/16 v8, 0x65

    .line 1868
    :goto_0
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    const/16 v12, 0x21

    goto :goto_1

    :cond_3
    const/16 v12, 0x20

    .line 1869
    :goto_1
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v12, 0x20000

    and-int v13, v1, v12

    const/16 v14, 0x49

    const/16 v15, 0x69

    if-eqz v13, :cond_4

    move v13, v14

    goto :goto_2

    :cond_4
    move v13, v15

    .line 1870
    :goto_2
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr v12, v5

    if-eqz v12, :cond_5

    const/16 v12, 0x21

    goto :goto_3

    :cond_5
    const/16 v12, 0x20

    .line 1871
    :goto_3
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v12, 0x40000

    and-int v13, v1, v12

    if-eqz v13, :cond_6

    const/16 v13, 0x41

    goto :goto_4

    :cond_6
    const/16 v13, 0x61

    .line 1872
    :goto_4
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr v12, v5

    if-eqz v12, :cond_7

    const/16 v13, 0x21

    goto :goto_5

    :cond_7
    const/16 v13, 0x20

    .line 1873
    :goto_5
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v13, 0x100000

    and-int v16, v1, v13

    const/16 v17, 0x53

    const/16 v18, 0x73

    if-eqz v16, :cond_8

    move/from16 v8, v17

    goto :goto_6

    :cond_8
    move/from16 v8, v18

    .line 1874
    :goto_6
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int v8, v5, v13

    if-eqz v8, :cond_9

    const/16 v8, 0x21

    goto :goto_7

    :cond_9
    const/16 v8, 0x20

    .line 1875
    :goto_7
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v8, 0x400000

    and-int v13, v1, v8

    if-eqz v13, :cond_a

    const/16 v13, 0x42

    goto :goto_8

    :cond_a
    const/16 v13, 0x62

    .line 1876
    :goto_8
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr v8, v5

    if-eqz v8, :cond_b

    const/16 v8, 0x21

    goto :goto_9

    :cond_b
    const/16 v8, 0x20

    .line 1877
    :goto_9
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v8, 0x200000

    and-int v13, v1, v8

    if-eqz v13, :cond_c

    const/16 v13, 0x48

    goto :goto_a

    :cond_c
    const/16 v13, 0x68

    .line 1878
    :goto_a
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr v8, v5

    if-eqz v8, :cond_d

    const/16 v8, 0x21

    goto :goto_b

    :cond_d
    const/16 v8, 0x20

    .line 1879
    :goto_b
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v8, 0x1000000

    and-int v13, v1, v8

    if-eqz v13, :cond_e

    const/16 v16, 0x52

    goto :goto_c

    :cond_e
    const/16 v16, 0x72

    :goto_c
    move/from16 v9, v16

    .line 1880
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr v8, v5

    if-eqz v8, :cond_f

    const/16 v9, 0x21

    goto :goto_d

    :cond_f
    const/16 v9, 0x20

    .line 1881
    :goto_d
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v9, 0x800000

    and-int v16, v1, v9

    if-eqz v16, :cond_10

    const/16 v16, 0x43

    goto :goto_e

    :cond_10
    const/16 v16, 0x63

    :goto_e
    move/from16 v11, v16

    .line 1882
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr v9, v5

    if-eqz v9, :cond_11

    const/16 v9, 0x21

    goto :goto_f

    :cond_11
    const/16 v9, 0x20

    .line 1883
    :goto_f
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v9, 0x2000000

    and-int v11, v1, v9

    if-eqz v11, :cond_12

    move/from16 v11, v17

    goto :goto_10

    :cond_12
    move/from16 v11, v18

    .line 1884
    :goto_10
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr v5, v9

    if-eqz v5, :cond_13

    const/16 v5, 0x21

    goto :goto_11

    :cond_13
    const/16 v5, 0x20

    .line 1885
    :goto_11
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "> disable2<"

    .line 1886
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_14

    const/16 v5, 0x51

    goto :goto_12

    :cond_14
    const/16 v5, 0x71

    .line 1887
    :goto_12
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v5, v7, 0x1

    if-eqz v5, :cond_15

    const/16 v9, 0x21

    goto :goto_13

    :cond_15
    const/16 v9, 0x20

    .line 1888
    :goto_13
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v9, v2, 0x2

    if-eqz v9, :cond_16

    goto :goto_14

    :cond_16
    move v14, v15

    .line 1889
    :goto_14
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v9, v7, 0x2

    if-eqz v9, :cond_17

    const/16 v9, 0x21

    goto :goto_15

    :cond_17
    const/16 v9, 0x20

    .line 1890
    :goto_15
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v9, v2, 0x4

    if-eqz v9, :cond_18

    const/16 v9, 0x4e

    goto :goto_16

    :cond_18
    const/16 v9, 0x6e

    .line 1891
    :goto_16
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v9, v7, 0x4

    if-eqz v9, :cond_19

    const/16 v11, 0x21

    goto :goto_17

    :cond_19
    const/16 v11, 0x20

    .line 1892
    :goto_17
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 v11, 0x40000000    # 2.0f

    and-int/2addr v2, v11

    if-eqz v2, :cond_1a

    const/16 v14, 0x56

    goto :goto_18

    :cond_1a
    const/16 v14, 0x76

    .line 1894
    :goto_18
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr v7, v11

    if-eqz v7, :cond_1b

    const/16 v11, 0x21

    goto :goto_19

    :cond_1b
    const/16 v11, 0x20

    .line 1895
    :goto_19
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v11, 0x3e

    .line 1897
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1898
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_1c

    if-eqz v6, :cond_1c

    .line 1902
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels()V

    :cond_1c
    if-eqz v8, :cond_1d

    if-eqz v13, :cond_1d

    .line 1909
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v4, 0x3fc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1910
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1d
    if-eqz v12, :cond_1e

    .line 1915
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->areNotificationAlertsDisabled()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1916
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    :cond_1e
    if-eqz v5, :cond_1f

    .line 1921
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    :cond_1f
    if-eqz v9, :cond_20

    .line 1925
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_20

    .line 1927
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels()V

    :cond_20
    if-eqz v7, :cond_22

    .line 1934
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 1935
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v2, :cond_21

    const/16 v9, 0x8

    goto :goto_1a

    :cond_21
    const/4 v9, 0x0

    :goto_1a
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1943
    :cond_22
    const-class v0, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->updateSystemUIStateFlagsInternal()V

    return-void
.end method

.method protected dismissKeyboardShortcuts()V
    .locals 0

    .line 4749
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    return-void
.end method

.method public dismissKeyboardShortcutsMenu()V
    .locals 2

    .line 4721
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x403

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4722
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V
    .locals 2

    .line 3273
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 3274
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 3275
    invoke-interface {v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->leaveOpenOnKeyguardHide()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 3276
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->isPulsing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(I)V

    .line 3282
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3283
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    goto :goto_0

    .line 3286
    :cond_1
    invoke-interface {p1}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->onDismiss()Z

    :goto_0
    return-void
.end method

.method protected dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 3267
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 3553
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoModeAllowed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3554
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "sysui_demo_allowed"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoModeAllowed:Z

    .line 3557
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoModeAllowed:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, "enter"

    .line 3558
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "exit"

    if-eqz v3, :cond_3

    .line 3559
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    goto :goto_1

    .line 3560
    :cond_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3561
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    .line 3562
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    goto :goto_1

    .line 3563
    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    if-nez v3, :cond_5

    .line 3565
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3567
    :cond_5
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    :goto_2
    move v0, v1

    :goto_3
    if-nez v0, :cond_8

    const-string/jumbo v3, "volume"

    .line 3568
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    if-eqz v3, :cond_9

    .line 3569
    invoke-interface {v3, p1, p2}, Lcom/android/systemui/DemoMode;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_9
    if-nez v0, :cond_a

    const-string v3, "clock"

    .line 3571
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3572
    :cond_a
    sget v3, Lcom/android/systemui/R$id;->clock:I

    invoke-direct {p0, p1, p2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V

    :cond_b
    if-nez v0, :cond_c

    const-string v3, "battery"

    .line 3574
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3575
    :cond_c
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v3, p1, p2}, Lcom/android/systemui/DemoMode;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_d
    if-nez v0, :cond_e

    const-string/jumbo v3, "status"

    .line 3577
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 3578
    :cond_e
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    invoke-virtual {v3, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3580
    :cond_f
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    if-eqz v3, :cond_11

    if-nez v0, :cond_10

    const-string v3, "network"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 3581
    :cond_10
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v3, p1, p2}, Lcom/android/systemui/DemoMode;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_11
    const/4 v3, 0x4

    if-nez v0, :cond_12

    const-string v4, "notifications"

    .line 3583
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 3584
    :cond_12
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v4, :cond_13

    const/4 v4, 0x0

    goto :goto_4

    .line 3585
    :cond_13
    sget v5, Lcom/android/systemui/R$id;->notification_icon_area:I

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    :goto_4
    if-eqz v4, :cond_15

    const-string/jumbo v5, "visible"

    .line 3587
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3588
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    if-eqz v6, :cond_14

    const-string v6, "false"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    move v5, v3

    goto :goto_5

    :cond_14
    move v5, v2

    .line 3589
    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    const-string v4, "bars"

    .line 3592
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string v4, "mode"

    .line 3593
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "opaque"

    .line 3594
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_16

    move v2, v3

    goto :goto_6

    :cond_16
    const-string/jumbo v3, "translucent"

    .line 3595
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v2, 0x2

    goto :goto_6

    :cond_17
    const-string v3, "semi-transparent"

    .line 3596
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    move v2, v1

    goto :goto_6

    :cond_18
    const-string/jumbo v3, "transparent"

    .line 3597
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_6

    :cond_19
    const-string/jumbo v2, "warning"

    .line 3598
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x5

    goto :goto_6

    :cond_1a
    move v2, v6

    :goto_6
    if-eq v2, v6, :cond_1c

    .line 3602
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    .line 3603
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->getBarTransitions()Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 3604
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->getBarTransitions()Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 3607
    :cond_1b
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v3, v4, v2, v1}, Lcom/android/systemui/statusbar/NavigationBarController;->transitionTo(IIZ)V

    :cond_1c
    if-nez v0, :cond_1d

    const-string v0, "operator"

    .line 3610
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3611
    :cond_1d
    sget v0, Lcom/android/systemui/R$id;->operator_name:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 3616
    :cond_1e
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->opDispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 2876
    array-length v3, p3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2877
    aget-object v3, p3, v2

    const-string v4, "SystemBars"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, p3, v1

    const-string v4, "log"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2878
    aget-object v3, p3, v0

    .line 2879
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modify SystemUI debug to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StatusBar"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modify SystemUI debug to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    const-string v4, "0"

    .line 2883
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2884
    sput-boolean v2, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    .line 2885
    sput-boolean v2, Lcom/android/systemui/statusbar/phone/StatusBar;->SPEW:Z

    .line 2886
    sput-boolean v2, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_MEDIA_FAKE_ARTWORK:Z

    return-void

    :cond_1
    const-string v4, "1"

    .line 2888
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2889
    sput-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    .line 2890
    sput-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBar;->SPEW:Z

    .line 2891
    sput-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_MEDIA_FAKE_ARTWORK:Z

    return-void

    .line 2896
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string v4, "Current Status Bar state:"

    .line 2897
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2898
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mExpandedVisible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2899
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDisplayMetrics="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2900
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mStackScroller: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2901
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mStackScroller: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " scroll "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    .line 2902
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    .line 2903
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2901
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2905
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mPanelExpanded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPanelExpanded:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2907
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "  mInteractingWindows="

    .line 2909
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    const-string v3, "  mStatusBarWindowState="

    .line 2910
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2911
    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    invoke-static {v3}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  mStatusBarMode="

    .line 2912
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2913
    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  mDozing="

    .line 2914
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "  mWallpaperSupported= "

    .line 2915
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperSupported:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "  StatusBarWindowView: "

    .line 2917
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2918
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    if-eqz v3, :cond_3

    .line 2919
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2920
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    .line 2921
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->getBarTransitions()Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    move-result-object v3

    const-string v4, "PhoneStatusBarTransitions"

    .line 2920
    invoke-static {p2, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    :cond_3
    const-string v3, "  mMediaManager: "

    .line 2924
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2925
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    if-eqz v3, :cond_4

    .line 2926
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/NotificationMediaManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_4
    const-string v3, "  Panels: "

    .line 2929
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2930
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz v3, :cond_5

    .line 2931
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    mNotificationPanel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 2932
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " params="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 2933
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2931
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "      "

    .line 2934
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2935
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_5
    const-string v3, "  mStackScroller: "

    .line 2937
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2938
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    instance-of v3, v3, Lcom/android/systemui/Dumpable;

    if-eqz v3, :cond_6

    const-string v3, "      "

    .line 2939
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2940
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    check-cast v3, Lcom/android/systemui/Dumpable;

    invoke-interface {v3, p1, p2, p3}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_6
    const-string v3, "  Theme:"

    .line 2942
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2943
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiModeManager:Landroid/app/UiModeManager;

    if-nez v3, :cond_7

    const-string v3, "null"

    goto :goto_1

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v4}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2944
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    dark theme: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (auto: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", yes: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", no: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2948
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    sget v3, Lcom/android/systemui/R$style;->Theme_SystemUI_Light:I

    if-ne v0, v3, :cond_8

    goto :goto_2

    :cond_8
    move v1, v2

    .line 2949
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    light wallpaper theme: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mStartDozingRequested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mStartDozingRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mCustomDozing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mCustomDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2956
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    if-eqz v0, :cond_9

    .line 2957
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2960
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    if-eqz v0, :cond_a

    .line 2961
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/ScrimController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2964
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_b

    .line 2965
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dump(Ljava/io/PrintWriter;)V

    .line 2968
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBar;->DUMPTRUCK:Z

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 2983
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_GESTURES:Z

    if-eqz v0, :cond_c

    const-string v0, "  status bar gestures: "

    .line 2984
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2985
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/GestureRecorder;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2988
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    if-eqz v0, :cond_d

    .line 2989
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    const-string v0, "  mHeadsUpManager: null"

    .line 2991
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2994
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    if-eqz v0, :cond_e

    .line 2995
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    const-string v0, "  mStatusBarTouchableRegionManager: null"

    .line 2997
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3000
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    if-eqz v0, :cond_f

    .line 3001
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/LightBarController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3004
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0, p2}, Lcom/android/systemui/plugins/FalsingManager;->dump(Ljava/io/PrintWriter;)V

    .line 3005
    invoke-static {p2}, Lcom/android/systemui/classifier/FalsingLog;->dump(Ljava/io/PrintWriter;)V

    const-string v0, "SharedPreferences:"

    .line 3007
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3008
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Prefs;->getAll(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v2, "  "

    .line 3009
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_5

    .line 3013
    :cond_10
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 2907
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public endAffordanceLaunch()V
    .locals 0

    .line 3959
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    .line 3960
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onAffordanceLaunchEnded()V

    return-void
.end method

.method public executeActionDismissingKeyguard(Ljava/lang/Runnable;Z)V
    .locals 1

    .line 4772
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4774
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$azP2e3yurdr5J-8YKihnebZ5HV0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$azP2e3yurdr5J-8YKihnebZ5HV0;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V

    return-void
.end method

.method public executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V
    .locals 1

    .line 3154
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$L4kE_3rylr6H_pNi7mB0rm5zMes;

    invoke-direct {v0, p0, p1, p3, p5}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$L4kE_3rylr6H_pNi7mB0rm5zMes;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;ZZ)V

    invoke-virtual {p0, v0, p2, p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    .line 3736
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3737
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 3738
    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$Y3fM-rUHySZxiJoTF8C7vKsQWUE;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$Y3fM-rUHySZxiJoTF8C7vKsQWUE;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V

    .line 3752
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isLaunchTransitionRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3753
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setLaunchTransitionEndRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3755
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public fadeKeyguardWhilePulsing()V
    .locals 6

    .line 3764
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    new-instance v5, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$61-RWUFHT3DUOUKO1dL6l4XWnMc;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$61-RWUFHT3DUOUKO1dL6l4XWnMc;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x60

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->fadeOut(JJLjava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 3768
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public finishKeyguardFadingAway()V
    .locals 1

    .line 3898
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->notifyKeyguardDoneFading()V

    .line 3899
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setExpansionAffectsAlpha(Z)V

    return-void
.end method

.method public getAmbientIndicationContainer()Landroid/view/View;
    .locals 0

    .line 2135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    return-object p0
.end method

.method public getAodDisplayViewManager()Lcom/oneplus/aod/OpAodDisplayViewManager;
    .locals 0

    .line 4973
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    return-object p0
.end method

.method protected getBouncerContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 1734
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    return-object p0
.end method

.method getDisplayDensity()F
    .locals 0

    .line 3054
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    return p0
.end method

.method getDisplayHeight()F
    .locals 0

    .line 3062
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p0, p0

    return p0
.end method

.method getDisplayWidth()F
    .locals 0

    .line 3058
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    return p0
.end method

.method public getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;
    .locals 0

    .line 2595
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    return-object p0
.end method

.method public getGutsManager()Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;
    .locals 0

    .line 4960
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    return-object p0
.end method

.method public getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
    .locals 0

    .line 4174
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object p0

    return-object p0
.end method

.method public getKeyguardIndicationController()Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .locals 0

    .line 5357
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    return-object p0
.end method

.method public getKeyguardStatusView()Lcom/android/keyguard/KeyguardStatusView;
    .locals 0

    .line 4179
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardStatusView()Lcom/android/keyguard/KeyguardStatusView;

    move-result-object p0

    return-object p0
.end method

.method public getLockscreenWallpaper()Landroid/graphics/Bitmap;
    .locals 0

    .line 5096
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5099
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getMsgDump()V
    .locals 0

    .line 3224
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    if-eqz p0, :cond_0

    .line 3225
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getMsgDump()V

    :cond_0
    return-void
.end method

.method public getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 1

    .line 4166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/NavigationBarController;->getNavigationBarView(I)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationScrollLayout()Landroid/view/ViewGroup;
    .locals 0

    .line 2117
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;
    .locals 0

    .line 1722
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    return-object p0
.end method

.method public getNotificationShadeWindowViewController()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;
    .locals 0

    .line 1730
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    return-object p0
.end method

.method public getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
    .locals 0

    .line 4950
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    return-object p0
.end method

.method public getPresenter()Lcom/android/systemui/statusbar/NotificationPresenter;
    .locals 0

    .line 2235
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    return-object p0
.end method

.method getRotation()I
    .locals 0

    .line 3066
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    return p0
.end method

.method public getStatusBarHeight()I
    .locals 0

    .line 1738
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->getStatusBarHeight()I

    move-result p0

    return p0
.end method

.method protected getStatusBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 0

    .line 2789
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->getBarTransitions()Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    move-result-object p0

    return-object p0
.end method

.method public getStatusBarView()Landroid/view/View;
    .locals 0

    .line 1718
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object p0
.end method

.method public getStatusBarWindowState()I
    .locals 0

    .line 2604
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    return p0
.end method

.method protected getStatusBarWindowTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .line 1563
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$n71p2lA3I37oyoKRz8xFfo1UnRo;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$n71p2lA3I37oyoKRz8xFfo1UnRo;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-object v0
.end method

.method protected getUnlockScrimCallback()Lcom/android/systemui/statusbar/phone/ScrimController$Callback;
    .locals 0

    .line 5006
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    return-object p0
.end method

.method public getViewHierarchyManager()Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;
    .locals 0

    .line 5370
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    return-object p0
.end method

.method public getWakefulnessState()I
    .locals 0

    .line 4390
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result p0

    return p0
.end method

.method goToLockedShade(Landroid/view/View;)V
    .locals 5

    .line 4191
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    return-void

    .line 4195
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v0

    const/4 v1, 0x0

    .line 4198
    instance-of v2, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 4199
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    .line 4200
    invoke-virtual {v1, v3, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setUserExpanded(ZZ)V

    .line 4203
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setGroupExpansionChanging(Z)V

    .line 4204
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    .line 4206
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 4207
    invoke-interface {p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 4208
    invoke-interface {p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowLockscreenNotifications()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 4209
    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->shouldEnforceBouncer()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v2

    goto :goto_1

    :cond_3
    :goto_0
    move p1, v3

    .line 4210
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move v2, p1

    .line 4213
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz v2, :cond_5

    .line 4214
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p1, v3}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    .line 4215
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showBouncerIfKeyguard()V

    .line 4216
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto :goto_3

    .line 4219
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->animateToFullShade(J)V

    .line 4220
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(I)Z

    :goto_3
    return-void
.end method

.method handlePeekToExpandTransistion()V
    .locals 2

    .line 3398
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->getActiveNotificationsCount()I

    move-result v0

    .line 3399
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public handleSystemKey(I)V
    .locals 3

    .line 2332
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->SPEW:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNavigationKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2334
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isOccluded()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2339
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/16 v0, 0x118

    const/4 v1, 0x0

    if-ne v0, p1, :cond_3

    .line 2342
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x1ed

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 2343
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->collapse(ZF)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x119

    if-ne v0, p1, :cond_6

    .line 2346
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x1ee

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 2347
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    .line 2348
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibrateOnOpening:Z

    if-eqz p1, :cond_4

    .line 2349
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(I)V

    .line 2351
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->expand(Z)V

    .line 2352
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->setWillExpand(Z)V

    .line 2353
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->unpinAll(Z)V

    .line 2354
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string p1, "panel_open"

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    goto :goto_0

    .line 2355
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isInSettings()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 2356
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isExpanding()Z

    move-result p1

    if-nez p1, :cond_6

    .line 2357
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FI)V

    .line 2359
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string p1, "panel_open_qs"

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    :cond_6
    :goto_0
    return-void
.end method

.method protected handleVisibleToUserChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3386
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleVisibleToUserChangedImpl(Z)V

    .line 3387
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->startNotificationLogging()V

    goto :goto_0

    .line 3389
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->stopNotificationLogging()V

    .line 3390
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleVisibleToUserChangedImpl(Z)V

    :goto_0
    return-void
.end method

.method handleVisibleToUserChangedImpl(Z)V
    .locals 3

    if-eqz p1, :cond_3

    .line 3411
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result p1

    .line 3412
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 3413
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3416
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->getActiveNotificationsCount()I

    move-result v2

    if-eqz p1, :cond_2

    .line 3417
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 3421
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$fCd_cT_TmFiQXy_u9P-kDdlrJok;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$fCd_cT_TmFiQXy_u9P-kDdlrJok;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;ZI)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 3430
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$ZSdqCpFCAr0vDfuEwe1WC6a2-mU;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$ZSdqCpFCAr0vDfuEwe1WC6a2-mU;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method

.method public headsUpShouldBeVisible()Z
    .locals 0

    .line 2193
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldBeVisible()Z

    move-result p0

    return p0
.end method

.method public hideKeyguard()Z
    .locals 2

    .line 3638
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setKeyguardRequested(Z)V

    .line 3639
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateIsKeyguard()Z

    move-result p0

    return p0
.end method

.method public hideKeyguardImpl()Z
    .locals 5

    const/4 v0, 0x0

    .line 3815
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsKeyguard:Z

    const-string v1, "StatusBar#hideKeyguard"

    .line 3816
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3817
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->leaveOpenOnKeyguardHide()Z

    move-result v1

    .line 3818
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3823
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->updatePublicMode()V

    .line 3825
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->leaveOpenOnKeyguardHide()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3826
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->isKeyguardRequested()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3827
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    .line 3829
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->calculateGoingToFullShadeDelay()J

    move-result-wide v2

    .line 3830
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->animateToFullShade(J)V

    .line 3831
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v4, :cond_2

    .line 3832
    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setUserLocked(Z)V

    const/4 v0, 0x0

    .line 3833
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 3838
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/systemui/statusbar/NavigationBarController;->disableAnimationsDuringHide(IJ)V

    goto :goto_0

    .line 3839
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3840
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantCollapseNotificationPanel()V

    .line 3845
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_5

    .line 3846
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    .line 3848
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v2, 0x3eb

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3849
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    .line 3850
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onAffordanceLaunchEnded()V

    .line 3851
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->cancelAnimation()V

    .line 3852
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setAlpha(F)V

    .line 3853
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->resetViewGroupFade()V

    .line 3854
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 3855
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v1
.end method

.method public hideStatusBarIconsForBouncer()Z
    .locals 1

    .line 2155
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideIconsForBouncer:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWereIconsJustHidden:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public hideStatusBarIconsWhenExpanded()Z
    .locals 0

    .line 2125
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->hideStatusBarIconsWhenExpanded()Z

    move-result p0

    return p0
.end method

.method public inFullscreenMode()Z
    .locals 0

    .line 2857
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAppFullscreen:Z

    return p0
.end method

.method public inImmersiveMode()Z
    .locals 0

    .line 2862
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAppImmersive:Z

    return p0
.end method

.method public instantCollapseNotificationPanel()V
    .locals 1

    .line 4028
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->instantCollapse()V

    .line 4029
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->runPostCollapseRunnables()V

    return-void
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 3940
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 3941
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 2552
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_GESTURES:Z

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    .line 2553
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v4, :cond_0

    const v0, 0x8ca0

    new-array v7, v2, [Ljava/lang/Object;

    .line 2555
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    iget v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    .line 2556
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    iget v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    .line 2554
    invoke-static {v0, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2561
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->SPEW:Z

    const-string v7, "StatusBar"

    if-eqz v0, :cond_1

    .line 2562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Touch: rawY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mDisabled1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mDisabled2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2564
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->CHATTY:Z

    if-eqz v0, :cond_2

    .line 2565
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    .line 2568
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 2569
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v4

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "panel: %s at (%f, %f) mDisabled1=0x%08x mDisabled2=0x%08x"

    .line 2566
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_GESTURES:Z

    if-eqz v0, :cond_3

    .line 2574
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/GestureRecorder;->add(Landroid/view/MotionEvent;)V

    .line 2577
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    if-nez v0, :cond_7

    .line 2579
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v6, :cond_5

    .line 2580
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_4

    goto :goto_1

    :cond_4
    move p1, v5

    goto :goto_2

    :cond_5
    :goto_1
    move p1, v6

    :goto_2
    if-eqz p1, :cond_6

    .line 2581
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-nez p1, :cond_6

    .line 2582
    invoke-virtual {p0, v6, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    goto :goto_3

    .line 2584
    :cond_6
    invoke-virtual {p0, v6, v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    :cond_7
    :goto_3
    return v5
.end method

.method public isBouncerShowing()Z
    .locals 0

    .line 4892
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    return p0
.end method

.method public isBouncerShowingScrimmed()Z
    .locals 1

    .line 4899
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->bouncerNeedsScrimming()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isCameraAllowedByAdmin()Z
    .locals 4

    .line 4501
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 4502
    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v1

    const/4 v2, 0x0

    .line 4501
    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4504
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 4505
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v3

    .line 4507
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 4508
    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result p0

    .line 4507
    invoke-virtual {v0, v2, p0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method public isDeviceInVrMode()Z
    .locals 0

    .line 2231
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isDeviceInVrMode()Z

    move-result p0

    return p0
.end method

.method public isDeviceInteractive()Z
    .locals 0

    .line 4654
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    return p0
.end method

.method public isDozing()Z
    .locals 0

    .line 4988
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    return p0
.end method

.method public isDozingCustom()Z
    .locals 0

    .line 4992
    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mCustomDozing:Z

    return p0
.end method

.method public isFalsingThresholdNeeded()Z
    .locals 1

    .line 1993
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFullScreenUserSwitcherState()Z
    .locals 1

    .line 3647
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHideNavBar()Z
    .locals 0

    .line 5089
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideNavBar:Z

    return p0
.end method

.method public isInLaunchTransition()Z
    .locals 1

    .line 3723
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isLaunchTransitionRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 3724
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isLaunchTransitionFinished()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isKeyguardSecure()Z
    .locals 2

    .line 4933
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez p0, :cond_0

    .line 4937
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string v0, "StatusBar"

    const-string v1, "isKeyguardSecure() called before startKeyguard(), returning false"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0

    .line 4941
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result p0

    return p0
.end method

.method public isKeyguardShowing()Z
    .locals 1

    .line 4590
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez p0, :cond_0

    const-string p0, "StatusBar"

    const-string v0, "isKeyguardShowing() called before startKeyguard(), returning true"

    .line 4591
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 4594
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result p0

    return p0
.end method

.method public isOccluded()Z
    .locals 0

    .line 2145
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsOccluded:Z

    return p0
.end method

.method public isPanelExpanded()Z
    .locals 0

    .line 2447
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPanelExpanded:Z

    return p0
.end method

.method public isPulsing()Z
    .locals 0

    .line 2121
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->isPulsing()Z

    move-result p0

    return p0
.end method

.method isSameStatusBarState(I)Z
    .locals 0

    .line 2591
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isScreenFullyOff()Z
    .locals 0

    .line 4411
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWakeUpComingFromTouch()Z
    .locals 0

    .line 1989
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpComingFromTouch:Z

    return p0
.end method

.method public keyguardGoingAway()V
    .locals 2

    .line 3871
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->notifyKeyguardGoingAway(Z)V

    .line 3872
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionPending(IZ)V

    return-void
.end method

.method public synthetic lambda$awakenDreams$31$StatusBar()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$awakenDreams$31()V

    return-void
.end method

.method public synthetic lambda$executeActionDismissingKeyguard$33$StatusBar(Ljava/lang/Runnable;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$executeActionDismissingKeyguard$33(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$executeRunnableDismissingKeyguard$19$StatusBar(Ljava/lang/Runnable;ZZ)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$executeRunnableDismissingKeyguard$19(Ljava/lang/Runnable;ZZ)Z

    return p3
.end method

.method public synthetic lambda$fadeKeyguardAfterLaunchTransition$29$StatusBar(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$fadeKeyguardAfterLaunchTransition$29(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$fadeKeyguardWhilePulsing$30$StatusBar()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$fadeKeyguardWhilePulsing$30()V

    return-void
.end method

.method public synthetic lambda$getStatusBarWindowTouchListener$10$StatusBar(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$getStatusBarWindowTouchListener$10(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$handleVisibleToUserChangedImpl$22$StatusBar(ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$handleVisibleToUserChangedImpl$22(ZI)V

    return-void
.end method

.method public synthetic lambda$handleVisibleToUserChangedImpl$23$StatusBar()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$handleVisibleToUserChangedImpl$23()V

    return-void
.end method

.method public synthetic lambda$makeStatusBarView$3$StatusBar(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$makeStatusBarView$3(Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method

.method public synthetic lambda$makeStatusBarView$4$StatusBar(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$makeStatusBarView$4(Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic lambda$makeStatusBarView$6$StatusBar(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$makeStatusBarView$6(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic lambda$makeStatusBarView$7$StatusBar(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$makeStatusBarView$7(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic lambda$makeStatusBarView$8$StatusBar(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$makeStatusBarView$8(Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method

.method public synthetic lambda$makeStatusBarView$9$StatusBar(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$makeStatusBarView$9(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$maybeEscalateHeadsUp$14$StatusBar(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$maybeEscalateHeadsUp$14(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public synthetic lambda$new$0$StatusBar(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$new$1$StatusBar(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$new$1(ZLjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$new$24$StatusBar()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$new$24()V

    return-void
.end method

.method public synthetic lambda$onHeadsUpPinnedModeChanged$11$StatusBar()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$onHeadsUpPinnedModeChanged$11()V

    return-void
.end method

.method public synthetic lambda$onHeadsUpPinnedModeChanged$12$StatusBar()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$onHeadsUpPinnedModeChanged$12()V

    return-void
.end method

.method public synthetic lambda$postAnimateForceCollapsePanels$15$StatusBar()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$postAnimateForceCollapsePanels$15()V

    return-void
.end method

.method public synthetic lambda$postQSRunnableDismissingKeyguard$25$StatusBar(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$postQSRunnableDismissingKeyguard$25(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$postQSRunnableDismissingKeyguard$26$StatusBar(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$postQSRunnableDismissingKeyguard$26(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$postStartActivityDismissingKeyguard$27$StatusBar(Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$postStartActivityDismissingKeyguard$27(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public synthetic lambda$postStartActivityDismissingKeyguard$28$StatusBar(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$postStartActivityDismissingKeyguard$28(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$start$2$StatusBar(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$start$2(II)V

    return-void
.end method

.method public synthetic lambda$startActivityDismissingKeyguard$17$StatusBar(Landroid/content/Intent;IZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$startActivityDismissingKeyguard$17(Landroid/content/Intent;IZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    return-void
.end method

.method public synthetic lambda$startPendingIntentDismissingKeyguard$34$StatusBar(Landroid/app/PendingIntent;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$startPendingIntentDismissingKeyguard$34(Landroid/app/PendingIntent;Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$updateHideIconsForBouncer$13$StatusBar()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$updateHideIconsForBouncer$13()V

    return-void
.end method

.method public synthetic lambda$updateResources$20$StatusBar()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$updateResources$20()V

    return-void
.end method

.method public synthetic lambda$updateResources$21$StatusBar()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$updateResources$21()V

    return-void
.end method

.method makeExpandedInvisible()V
    .locals 11

    .line 2502
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->SPEW:Z

    const-string v1, "StatusBar"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeExpandedInvisible: mExpandedVisible="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mExpandedVisible="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    if-nez v0, :cond_1

    goto :goto_1

    .line 2510
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2}, Lcom/android/systemui/statusbar/phone/PanelBar;->collapsePanel(ZZF)V

    .line 2513
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->closeQs()V

    .line 2515
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    .line 2516
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    .line 2519
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setPanelVisible(Z)V

    .line 2520
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setForceStatusBarVisible(Z)V

    .line 2523
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    .line 2526
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ShadeController;->runPostCollapseRunnables()V

    const/4 v0, 0x1

    .line 2527
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    .line 2528
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;->isCollapsingToShowActivityOverLockscreen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2529
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showBouncerIfKeyguard()V

    goto :goto_0

    .line 2530
    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "Not showing bouncer due to activity showing over lockscreen"

    .line 2531
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 2535
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->hideStatusBarIconsWhenExpanded()Z

    move-result v2

    .line 2533
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    .line 2539
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result p0

    if-nez p0, :cond_4

    .line 2540
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object p0

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    .line 2546
    :cond_4
    const-class p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {p0, v3}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->onExpandedVisibleChange(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method makeExpandedVisible(Z)V
    .locals 3

    .line 2380
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->SPEW:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Make expanded visible: expanded visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_2

    .line 2381
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    .line 2385
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    .line 2389
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setPanelVisible(Z)V

    .line 2391
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    .line 2392
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    xor-int/2addr p1, v0

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    .line 2393
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    .line 2398
    const-class p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->onExpandedVisibleChange(Z)V

    return-void
.end method

.method protected makeStatusBarView(Lcom/android/internal/statusbar/RegisterStatusBarResult;)V
    .locals 9

    .line 1118
    const-class v0, Lcom/android/systemui/plugins/qs/QS;

    sget-boolean v1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    const-string v1, "StatusBar"

    const-string v2, "makeStatusBarView"

    .line 1119
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 1123
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDisplaySize()V

    .line 1124
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateResources()V

    .line 1125
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateTheme()V

    .line 1127
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateStatusBarWindow()V

    .line 1129
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-virtual {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->setService(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;)V

    .line 1130
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindowTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1134
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    sget v3, Lcom/android/systemui/R$id;->notification_stack_scroller:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    .line 1136
    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 1137
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->setUpWithContainer(Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V

    .line 1141
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v3

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object v4, v1

    move-object v5, p0

    .line 1142
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/SystemUIFactory;->createNotificationIconAreaController(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 1145
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setIconAreaController(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    .line 1146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateShelf()V

    .line 1147
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setupShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V

    .line 1148
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 1149
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$LyXF2jzAv77MElAagmeOMv_-4xQ;

    invoke-direct {v4, v3}, Lcom/android/systemui/statusbar/phone/-$$Lambda$LyXF2jzAv77MElAagmeOMv_-4xQ;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    .line 1148
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setOnReinflationListener(Ljava/lang/Runnable;)V

    .line 1150
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addExpansionListener(Lcom/android/systemui/statusbar/phone/PanelExpansionListener;)V

    .line 1152
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-interface {v2, v3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 1154
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPluginDependencyProvider:Lcom/android/systemui/plugins/PluginDependencyProvider;

    const-class v3, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-virtual {v2, v3}, Lcom/android/systemui/plugins/PluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;)V

    .line 1155
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPluginDependencyProvider:Lcom/android/systemui/plugins/PluginDependencyProvider;

    const-class v3, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-virtual {v2, v3}, Lcom/android/systemui/plugins/PluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;)V

    .line 1156
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPhoneStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {v2}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$TPJyILujZ88K3rKFmgzHGHpbtLo;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$TPJyILujZ88K3rKFmgzHGHpbtLo;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    const-string v4, "CollapsedStatusBarFragment"

    .line 1157
    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 1204
    invoke-virtual {v2}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 1205
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$id;->status_bar_container:I

    new-instance v5, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-direct {v5}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;-><init>()V

    .line 1206
    invoke-virtual {v2, v3, v5, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1208
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 1210
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setup(Lcom/android/systemui/statusbar/notification/VisualStabilityManager;)V

    .line 1211
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    invoke-virtual {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->setup(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;)V

    .line 1212
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 1213
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getOnHeadsUpChangedListener()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$MyOnHeadsUpChangedListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 1214
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 1215
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    .line 1216
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 1218
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->createNavigationBar(Lcom/android/internal/statusbar/RegisterStatusBarResult;)V

    .line 1220
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperSupported:Z

    if-eqz p1, :cond_1

    .line 1221
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaperLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    .line 1225
    :cond_1
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpFacelockController:Lcom/oneplus/faceunlock/OpFacelockController;

    if-eqz p1, :cond_2

    .line 1226
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1, v2}, Lcom/oneplus/faceunlock/OpFacelockController;->setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 1230
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    sget v3, Lcom/android/systemui/R$id;->keyguard_indication_area:I

    .line 1231
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1230
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setIndicationArea(Landroid/view/ViewGroup;)V

    .line 1233
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 1234
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardStatusView()Lcom/android/keyguard/KeyguardStatusView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object v4

    .line 1233
    invoke-virtual {p1, v2, v3, v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->init(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/keyguard/KeyguardStatusView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 1237
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 1240
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    sget v2, Lcom/android/systemui/R$id;->ambient_indication_container:I

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    .line 1244
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$6;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 1259
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$7;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/phone/AutoHideController;->setStatusBar(Lcom/android/systemui/statusbar/AutoHideUiElement;)V

    .line 1293
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    sget v2, Lcom/android/systemui/R$id;->scrim_behind:I

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/ScrimView;

    .line 1294
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    sget v3, Lcom/android/systemui/R$id;->scrim_in_front:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ScrimView;

    .line 1295
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {v3}, Lcom/android/systemui/bubbles/BubbleController;->getScrimForBubble()Lcom/android/systemui/statusbar/ScrimView;

    move-result-object v3

    .line 1297
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    new-instance v5, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$FJ09N4w98W1tToxpLlffdr7H_Fk;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$FJ09N4w98W1tToxpLlffdr7H_Fk;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimVisibleListener(Ljava/util/function/Consumer;)V

    .line 1303
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v4, p1, v2, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->attachViews(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;)V

    .line 1306
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/android/systemui/R$color;->op_quick_settings_scrim_color:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 1307
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimColor(I)V

    .line 1310
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->initDependencies(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 1314
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/oneplus/aod/OpDozeScrimController;->initWakeLock(Landroid/content/Context;)V

    .line 1318
    new-instance p1, Lcom/oneplus/aod/OpAodWindowManager;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/oneplus/aod/OpAodWindowManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodWindowManager:Lcom/oneplus/aod/OpAodWindowManager;

    .line 1319
    new-instance p1, Lcom/oneplus/aod/OpAodDisplayViewManager;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-direct {p1, v2, v3, p0, v4}, Lcom/oneplus/aod/OpAodDisplayViewManager;-><init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    .line 1320
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->getAodNotificationIconCtrl()Lcom/oneplus/aod/OpAodNotificationIconAreaController;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationIconAreaController;->setAodIconController(Lcom/oneplus/aod/OpAodNotificationIconAreaController;)V

    .line 1322
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodWindowManager:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-virtual {p1}, Lcom/oneplus/aod/OpAodWindowManager;->getUIHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$8;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1337
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    sget v2, Lcom/android/systemui/R$id;->backdrop:I

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/BackDropView;

    .line 1338
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    sget v3, Lcom/android/systemui/R$id;->backdrop_front:I

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/widget/ImageView;

    sget v3, Lcom/android/systemui/R$id;->backdrop_back:I

    .line 1339
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    move-object v3, p1

    .line 1338
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/NotificationMediaManager;->setup(Lcom/android/systemui/statusbar/BackDropView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;)V

    .line 1340
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    .line 1342
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeDepthControllerLazy:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$0t3JH2b2N_u7FE2hJfbqVDTbwtw;

    invoke-direct {v4, v2, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$0t3JH2b2N_u7FE2hJfbqVDTbwtw;-><init>(FLcom/android/systemui/statusbar/BackDropView;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->addListener(Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthListener;)V

    .line 1350
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setUserSetupComplete(Z)V

    .line 1351
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1352
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->createUserSwitcher()V

    .line 1355
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenLockIconController:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    .line 1356
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$sBkty3XIL7r37AAUJ1Bk1mVwNfA;

    invoke-direct {v3, v2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$sBkty3XIL7r37AAUJ1Bk1mVwNfA;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    .line 1355
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setLaunchAffordanceListener(Ljava/util/function/Consumer;)V

    .line 1359
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    sget v2, Lcom/android/systemui/R$id;->qs_frame:I

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1361
    invoke-static {p1}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v2

    .line 1362
    sget v3, Lcom/android/systemui/R$id;->qs_frame:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExtensionController:Lcom/android/systemui/statusbar/policy/ExtensionController;

    .line 1364
    invoke-interface {v4, v0}, Lcom/android/systemui/statusbar/policy/ExtensionController;->newExtension(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v4

    .line 1365
    invoke-interface {v4, v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withPlugin(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$Zqmz5npIKuMPJHZWVxICwxzCPwk;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$Zqmz5npIKuMPJHZWVxICwxzCPwk;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 1366
    invoke-interface {v4, v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withDefault(Ljava/util/function/Supplier;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    .line 1367
    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->build()Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    move-result-object v0

    const-string v4, "QS"

    .line 1362
    invoke-static {p1, v4, v3, v0}, Lcom/android/systemui/fragments/ExtensionFragmentListener;->attachExtensonToFragment(Landroid/view/View;Ljava/lang/String;ILcom/android/systemui/statusbar/policy/ExtensionController$Extension;)V

    .line 1368
    new-instance p1, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeDepthControllerLazy:Ldagger/Lazy;

    .line 1371
    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    new-instance v6, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$_gTb2j_mFw_X1LTvRYyxjB4ReLg;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$_gTb2j_mFw_X1LTvRYyxjB4ReLg;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-direct {p1, v0, v3, v5, v6}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Ljava/util/function/Consumer;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 1377
    new-instance p1, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeDepthControllerLazy:Ldagger/Lazy;

    .line 1380
    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    new-instance v6, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$0m7F6e2QtJDG3hy0Y3EVPv_U6WQ;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$0m7F6e2QtJDG3hy0Y3EVPv_U6WQ;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-direct {p1, v0, v3, v5, v6}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Ljava/util/function/Consumer;)V

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mQuickBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 1386
    new-instance p1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$PK92anhRWLDXkprajoojY6dzepA;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$PK92anhRWLDXkprajoojY6dzepA;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v2, v4, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 1399
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    sget v0, Lcom/android/systemui/R$id;->report_rejected_touch:I

    .line 1400
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mReportRejectedTouch:Landroid/view/View;

    if-eqz p1, :cond_5

    .line 1402
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateReportRejectedTouchVisibility()V

    .line 1403
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mReportRejectedTouch:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$ggtzWYldpP6XbhwYmX0SNphBaak;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$ggtzWYldpP6XbhwYmX0SNphBaak;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1429
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p1

    if-nez p1, :cond_6

    .line 1430
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1432
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPowerManager:Landroid/os/PowerManager;

    const/16 v0, 0xa

    const-string v2, "GestureWakeLock"

    invoke-virtual {p1, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1434
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibrator:Landroid/os/Vibrator;

    .line 1435
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$array;->config_cameraLaunchGestureVibePattern:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    .line 1437
    array-length v0, p1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraLaunchGestureVibePattern:[J

    const/4 v0, 0x0

    .line 1438
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_7

    .line 1439
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraLaunchGestureVibePattern:[J

    aget v3, p1, v0

    int-to-long v3, v3

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1443
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->registerBroadcastReceiver()V

    .line 1445
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1446
    sget-boolean p1, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_MEDIA_FAKE_ARTWORK:Z

    if-eqz p1, :cond_8

    const-string p1, "fake_artwork"

    .line 1447
    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_8
    const-string p1, "com.android.systemui.demo"

    .line 1449
    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1450
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const-string v7, "android.permission.DUMP"

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1454
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetupObserver:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 1455
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetupObserver:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;->onUserSetupChanged()V

    const-string p1, "disableProfileBars"

    const-string/jumbo v0, "true"

    .line 1458
    invoke-static {p1, v0}, Landroid/view/ThreadedRenderer;->overrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p1, 0x3fc00000    # 1.5f

    .line 1461
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ambientRatio"

    invoke-static {v0, p1}, Landroid/view/ThreadedRenderer;->overrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    invoke-super {p0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->makeStatusBarView(Landroid/content/Context;)V

    .line 1467
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p1, v0, v1, p0, v2}, Lcom/oneplus/plugin/OpLsState;->init(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/CommandQueue;)V

    return-void
.end method

.method public maybeEscalateHeadsUp()V
    .locals 2

    .line 2279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->getAllEntries()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$b6bl-u9gqLHDg4mLmYXNBqqErp8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$b6bl-u9gqLHDg4mLmYXNBqqErp8;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 2323
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    return-void
.end method

.method public notifyBiometricAuthModeChanged()V
    .locals 2

    .line 4525
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->updateDozing()V

    .line 4526
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 4527
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenLockIconController:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 4528
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 4529
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isBiometricUnlock()Z

    move-result p0

    .line 4527
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->onBiometricAuthModeChanged(ZZ)V

    return-void
.end method

.method protected notifyHeadsUpGoingToSleep()V
    .locals 0

    .line 4885
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->maybeEscalateHeadsUp()V

    return-void
.end method

.method public notifyImeWindowVisibleStatus(ILandroid/os/IBinder;IIZ)V
    .locals 1

    .line 5273
    const-class v0, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/OverviewProxyService;

    .line 5274
    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getNavBarMode()I

    move-result v0

    .line 5277
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5279
    invoke-virtual/range {p0 .. p5}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->notifyImeWindowVisible(ILandroid/os/IBinder;IIZ)V

    :cond_0
    return-void
.end method

.method public notifyNavBarColorChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5033
    invoke-static {}, Lcom/oneplus/util/OpNavBarUtils;->isSupportCustomNavBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5034
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/NavigationBarController;->notifyNavBarColorChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 5037
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz p0, :cond_0

    .line 5038
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateTopPackage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notifyPreventModeChange(Z)V
    .locals 2

    .line 5236
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->notifyPreventModeChange(Z)V

    .line 5239
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_1

    .line 5240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPreventModeChange, prevent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", occluded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5241
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 5243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ShadeController;->instantExpandNotificationsPanel()V

    goto :goto_0

    .line 5245
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantCollapseNotificationPanel()V

    .line 5250
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    if-eqz v0, :cond_2

    .line 5251
    invoke-virtual {v0, p1}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->notifyPreventModeChange(Z)V

    .line 5262
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    if-eqz p0, :cond_3

    .line 5263
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setPreventModeActive(Z)V

    :cond_3
    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    .line 3968
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getState()Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getState()Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED_BOOT:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 3970
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onBackPressed(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    .line 3972
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->expandWithoutQs()V

    goto :goto_2

    .line 3979
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3980
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->resetViews(Z)V

    :goto_2
    return v3

    .line 3985
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isQsExpanded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3986
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isQsDetailShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3987
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->closeQsDetail()V

    goto :goto_3

    .line 3989
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->animateCloseQs(Z)V

    :goto_3
    return v3

    .line 3993
    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq v0, v3, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    .line 3994
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->canPanelBeCollapsed()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3995
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels()V

    goto :goto_4

    .line 3997
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleController;->performBackPressIfNeeded()V

    :goto_4
    return v3

    .line 4001
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz p0, :cond_8

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hideIfNotSimple(Z)Z

    move-result p0

    if-eqz p0, :cond_8

    return v3

    :cond_8
    return v2
.end method

.method public onBouncerPreHideAnimation()V
    .locals 1

    .line 4906
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onBouncerPreHideAnimation()V

    .line 4907
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenLockIconController:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->onBouncerPreHideAnimation()V

    return-void
.end method

.method public onCameraHintStarted()V
    .locals 1

    .line 4142
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onCameraHintStarted()V

    .line 4143
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    sget v0, Lcom/android/systemui/R$string;->camera_hint:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    return-void
.end method

.method public onCameraLaunchGestureDetected(I)V
    .locals 0

    .line 4446
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onOnePlusCameraLaunchGestureDetected(I)V

    return-void
.end method

.method public onClosingFinished()V
    .locals 1

    .line 4123
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ShadeController;->runPostCollapseRunnables()V

    .line 4124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4127
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setNotificationShadeFocusable(Z)V

    :cond_0
    return-void
.end method

.method public onColorsChanged(Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .locals 0

    .line 2130
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateTheme()V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 3292
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateResources()V

    .line 3293
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDisplaySize()V

    .line 3295
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configuration changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBar"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3299
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateRowStates()V

    .line 3300
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-virtual {v0}, Lcom/android/systemui/recents/ScreenPinningRequest;->onConfigurationChanged()V

    .line 3303
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->opOnConfigChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    .line 1589
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    .line 1590
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->onDensityOrFontScaleChanged()V

    .line 1593
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserInfoControllerImpl:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->onDensityOrFontScaleChanged()V

    .line 1594
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->onDensityOrFontScaleChanged()V

    .line 1595
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v0, :cond_1

    .line 1596
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->onDensityOrFontScaleChanged()V

    .line 1598
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->onDensityOrFontScaleChanged(Landroid/content/Context;)V

    .line 1599
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->onDensityOrFontScaleChanged()V

    .line 1602
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->opOnDensityOrFontScaleChanged()V

    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 1

    const-string v0, "StatusBar#updateDozing"

    .line 4094
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4095
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    .line 4098
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->getDozingRequested()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 4099
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4100
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->resetViews(Z)V

    .line 4102
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    .line 4103
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setDozing(Z)V

    .line 4105
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    const-string v0, "onDozingChanged"

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->requestNotificationUpdate(Ljava/lang/String;)V

    .line 4106
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozingState()V

    .line 4107
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->updateDozing()V

    .line 4108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 4109
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateReportRejectedTouchVisibility()V

    .line 4110
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onExpandAnimationFinished(Z)V
    .locals 1

    .line 2206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2207
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onClosingFinished()V

    :cond_0
    if-eqz p1, :cond_1

    .line 2210
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantCollapseNotificationPanel()V

    :cond_1
    return-void
.end method

.method public onExpandAnimationTimedOut()V
    .locals 1

    .line 2216
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    if-eqz v0, :cond_0

    .line 2218
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->isLaunchForActivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2219
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onClosingFinished()V

    goto :goto_0

    .line 2221
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/phone/ShadeController;->collapsePanel(Z)V

    :goto_0
    return-void
.end method

.method public onFpPressedTimeOut()V
    .locals 2

    .line 5014
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$17;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$17;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onHeadsUpPinnedModeChanged(Z)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2012
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setHeadsUpShowing(Z)V

    .line 2013
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setForceStatusBarVisible(Z)V

    .line 2014
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2019
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2020
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setForceWindowCollapsed(Z)V

    .line 2021
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$a1PwGueSv8bkjX5GxiVzM2PDffE;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$a1PwGueSv8bkjX5GxiVzM2PDffE;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 2026
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne v1, v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 2028
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 2029
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isTracking()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    .line 2039
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setHeadsUpGoingAway(Z)V

    .line 2040
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$vQbe7Nr2PT8-R2UTHbkZ0b3R-4w;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$vQbe7Nr2PT8-R2UTHbkZ0b3R-4w;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->runAfterAnimationFinished(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 2032
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setHeadsUpShowing(Z)V

    if-eqz v1, :cond_4

    .line 2034
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setForceStatusBarVisible(Z)V

    .line 2053
    :cond_4
    :goto_2
    const-class p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->onHeadUpPinnedModeChange(Z)V

    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 2

    .line 2060
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    const-string v1, "onHeadsUpStateChanged"

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->requestNotificationUpdate(Ljava/lang/String;)V

    .line 2065
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozingCustom()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 2067
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setPulseSuppressed(Z)V

    .line 2068
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->fireNotificationPulse(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_1
    if-nez p2, :cond_2

    .line 2082
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->hasNotifications()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_2
    return-void
.end method

.method public onHideNavBar(Z)V
    .locals 0

    .line 5084
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideNavBar:Z

    .line 5085
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->initControlPanelWindow()V

    return-void
.end method

.method public onHintFinished()V
    .locals 2

    .line 4138
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-wide/16 v0, 0x4b0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    return-void
.end method

.method public onInputFocusTransfer(ZZF)V
    .locals 1

    .line 2454
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2459
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->startWaitingForOpenPanelGesture()V

    goto :goto_0

    .line 2461
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->stopWaitingForOpenPanelGesture(ZF)V

    :goto_0
    return-void
.end method

.method public onKeyguardShowingChanged()V
    .locals 0

    .line 5363
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->updateQsEnabled()V

    return-void
.end method

.method public onKeyguardViewManagerStatesUpdated()V
    .locals 0

    .line 2000
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->logStateToEventlog()V

    return-void
.end method

.method public onLaunchAnimationCancelled()V
    .locals 1

    .line 2199
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2200
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onClosingFinished()V

    :cond_0
    return-void
.end method

.method public onMenuPressed()Z
    .locals 2

    .line 3950
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldUnlockOnMenuPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3951
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels(IZ)V

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onOnePlusCameraLaunchGestureDetected(I)V
    .locals 11

    .line 5376
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastCameraLaunchSource:I

    .line 5380
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    .line 5384
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 5385
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 5384
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    .line 5390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraLaunch , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isSecure:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", interactive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isWake:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakingUpOrAwake()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", expand:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", occlude:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", simpin:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isLockDisabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StatusBar"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    const-string p0, "not launch camera for simpin"

    .line 5395
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/16 v0, 0xb

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ne p1, v0, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    move v0, v2

    .line 5404
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/PowerManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    const/high16 v6, 0x10000000

    and-int/2addr v6, p1

    if-eqz v6, :cond_3

    move v6, v4

    goto :goto_2

    :cond_3
    move v6, v2

    .line 5412
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isGoingToSleep()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 5413
    sget-boolean p1, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_CAMERA_LIFT:Z

    if-eqz p1, :cond_4

    const-string p1, "Finish going to sleep before launching camera"

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5414
    :cond_4
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnFinishedGoingToSleep:Z

    .line 5416
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result p1

    if-nez p1, :cond_5

    .line 5417
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, v4}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateLaunchingCameraStateEvenSleep(Z)V

    :cond_5
    return-void

    .line 5422
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 5427
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 5428
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v8

    if-nez v8, :cond_8

    :cond_7
    move v8, v4

    goto :goto_3

    :cond_8
    move v8, v2

    .line 5422
    :goto_3
    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->canCameraGestureBeLaunched(Z)Z

    move-result v7

    const-string v8, "com.android.systemui:CAMERA_GESTURE_CIRCLE"

    if-nez v7, :cond_b

    .line 5433
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-nez p1, :cond_9

    if-eqz v6, :cond_9

    .line 5434
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1, v8}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 5438
    :cond_9
    sget-boolean p1, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_CAMERA_LIFT:Z

    if-eqz p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t launch camera right now, mExpandedVisible: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void

    .line 5443
    :cond_b
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-nez v7, :cond_d

    if-eqz v6, :cond_c

    .line 5451
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10, v8}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 5453
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v5

    goto :goto_4

    .line 5458
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-string v9, "com.android.systemui:CAMERA_GESTURE"

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    :cond_d
    :goto_4
    if-nez v6, :cond_e

    if-nez v0, :cond_e

    .line 5467
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->vibrateForCameraGesture()V

    .line 5469
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_11

    .line 5474
    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    const-string v5, "com.android.systemui.camera_launch_source_gesture"

    .line 5475
    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v1, :cond_f

    .line 5479
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne v1, v4, :cond_f

    if-eqz v6, :cond_f

    .line 5480
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakingUpOrAwake()Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "dismissShade to false"

    .line 5481
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v2

    goto :goto_5

    :cond_f
    move v7, v4

    .line 5487
    :goto_5
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getDoubleTapPowerOpAppIntent(I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_10

    move-object v5, p1

    goto :goto_6

    :cond_10
    move-object v5, v0

    :goto_6
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    .line 5493
    invoke-virtual/range {v4 .. v10}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;I)V

    goto :goto_7

    .line 5500
    :cond_11
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-nez v0, :cond_12

    .line 5503
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1770

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 5505
    :cond_12
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakingUpOrAwake()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 5506
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_CAMERA_LIFT:Z

    if-eqz v0, :cond_13

    const-string v0, "Launching camera"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5507
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5508
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    .line 5510
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->launchCamera(ZI)V

    if-nez v6, :cond_15

    .line 5512
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result p1

    if-nez p1, :cond_15

    .line 5513
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p1}, Lcom/android/keyguard/ViewMediatorCallback;->startPowerKeyLaunchCamera()V

    .line 5516
    :cond_15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    goto :goto_7

    .line 5522
    :cond_16
    sget-boolean p1, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_CAMERA_LIFT:Z

    if-eqz p1, :cond_17

    const-string p1, "Deferring until screen turns on"

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5525
    :cond_17
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, v4}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateLaunchingCameraState(Z)V

    .line 5527
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraWhenFinishedWaking:Z

    :goto_7
    return-void
.end method

.method public onOverlayChanged()V
    .locals 1

    .line 1625
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    .line 1626
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->onOverlayChanged()V

    .line 1630
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onThemeChanged()V

    .line 1631
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onThemeChanged()V

    .line 1634
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->opOnOverlayChanged()V

    return-void
.end method

.method public onPanelLaidOut()V
    .locals 0

    .line 4756
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardMaxNotifications()V

    return-void
.end method

.method public onPhoneHintStarted()V
    .locals 1

    .line 4152
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onLeftAffordanceHintStarted()V

    .line 4153
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    sget v0, Lcom/android/systemui/R$string;->phone_hint:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    return-void
.end method

.method public onRecentsAnimationStateChanged(Z)V
    .locals 1

    const/4 v0, 0x2

    .line 2785
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    return-void
.end method

.method public onSpacePressed()Z
    .locals 2

    .line 4008
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eqz v0, :cond_0

    .line 4009
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels(IZ)V

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStateChanged(I)V
    .locals 4

    .line 4050
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    .line 4051
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateReportRejectedTouchVisibility()V

    .line 4052
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->updateDozing()V

    .line 4053
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateTheme()V

    .line 4054
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/NavigationBarController;->touchAutoDim(I)V

    const-string p1, "StatusBar#updateKeyguardState"

    .line 4055
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4056
    iget p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 4057
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    .line 4058
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz p1, :cond_0

    .line 4059
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 4060
    invoke-interface {v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->fromShadeLocked()Z

    move-result v2

    .line 4059
    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->setKeyguard(ZZ)V

    .line 4062
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->removePendingHideExpandedRunnables()V

    .line 4063
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    if-eqz p1, :cond_6

    .line 4064
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 4067
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    .line 4068
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz p1, :cond_5

    .line 4069
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 4070
    invoke-interface {v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->goingToFullShade()Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 4072
    invoke-interface {v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->fromShadeLocked()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    :goto_0
    move v2, v1

    .line 4069
    :goto_1
    invoke-virtual {p1, v0, v2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->setKeyguard(ZZ)V

    .line 4074
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    if-eqz p1, :cond_6

    const/4 v2, 0x4

    .line 4075
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4081
    :cond_6
    :goto_2
    const-class p1, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    invoke-interface {p1, v2}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->onBarStatechange(I)V

    .line 4084
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozingState()V

    .line 4085
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    .line 4086
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 4087
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq v2, v1, :cond_7

    goto :goto_3

    :cond_7
    move v1, v0

    :goto_3
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateMediaMetaData(ZZ)V

    .line 4088
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardState()V

    .line 4089
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onStatePreChange(II)V
    .locals 0

    .line 4038
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisible:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 4039
    invoke-interface {p1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->goingToFullShade()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4040
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearNotificationEffects()V

    :cond_1
    const/4 p1, 0x1

    if-ne p2, p1, :cond_2

    .line 4043
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->onPanelCollapsed()V

    .line 4044
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->maybeEscalateHeadsUp()V

    :cond_2
    return-void
.end method

.method public onSystemBarAppearanceChanged(II[Lcom/android/internal/view/AppearanceRegion;Z)V
    .locals 1

    .line 2650
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    if-eq p1, v0, :cond_0

    return-void

    .line 2657
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->opOnSystemBarAppearanceChanged(II[Lcom/android/internal/view/AppearanceRegion;Z)V

    const/4 p1, 0x0

    .line 2663
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAppearance:I

    if-eq v0, p2, :cond_1

    .line 2664
    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAppearance:I

    .line 2665
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTransientShown:Z

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->barMode(ZI)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateBarMode(I)Z

    move-result p1

    .line 2667
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    invoke-virtual {p2, p3, p1, v0, p4}, Lcom/android/systemui/statusbar/phone/LightBarController;->onStatusBarAppearanceChanged([Lcom/android/internal/view/AppearanceRegion;ZIZ)V

    .line 2670
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateBubblesVisibility()V

    return-void
.end method

.method public onThemeChanged()V
    .locals 2

    .line 1608
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_0

    .line 1609
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onThemeChanged()V

    .line 1611
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    instance-of v1, v0, Lcom/android/systemui/AutoReinflateContainer;

    if-eqz v1, :cond_1

    .line 1612
    check-cast v0, Lcom/android/systemui/AutoReinflateContainer;

    invoke-virtual {v0}, Lcom/android/systemui/AutoReinflateContainer;->inflateLayout()V

    .line 1614
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->onThemeChanged()V

    .line 1617
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpFacelockController:Lcom/oneplus/faceunlock/OpFacelockController;

    if-eqz v0, :cond_2

    .line 1618
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, p0}, Lcom/oneplus/faceunlock/OpFacelockController;->setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    :cond_2
    return-void
.end method

.method public onTrackingStarted()V
    .locals 0

    .line 4119
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->runPostCollapseRunnables()V

    return-void
.end method

.method public onTrackingStopped(Z)V
    .locals 2

    .line 4157
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    if-nez p1, :cond_1

    .line 4158
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4159
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    :cond_1
    return-void
.end method

.method public onUiModeChanged()V
    .locals 1

    .line 1641
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    .line 1642
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->onUiModeChanged()V

    .line 1647
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->opOnUiModeChanged()V

    return-void
.end method

.method public onUnlockHintStarted()V
    .locals 1

    .line 4132
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onUnlockHintStarted()V

    .line 4133
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    sget v0, Lcom/android/systemui/R$string;->keyguard_unlock:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    return-void
.end method

.method public onUnlockedChanged()V
    .locals 0

    .line 2005
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardState()V

    .line 2006
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->logStateToEventlog()V

    return-void
.end method

.method public onVoiceAssistHintStarted()V
    .locals 1

    .line 4147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onLeftAffordanceHintStarted()V

    .line 4148
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    sget v0, Lcom/android/systemui/R$string;->voice_hint:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    return-void
.end method

.method public passSystemUIEvent(I)V
    .locals 2

    .line 4979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "passSystemUIEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StatusBar"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4980
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    .line 4982
    invoke-virtual {p1, p0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public postAnimateCollapsePanels()V
    .locals 2

    .line 2404
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$XCWkmsWO8Vw7cZeQUx0r8bL0Lus;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$XCWkmsWO8Vw7cZeQUx0r8bL0Lus;-><init>(Lcom/android/systemui/statusbar/phone/ShadeController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postAnimateForceCollapsePanels()V
    .locals 2

    .line 2408
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$vsXwLw7AvX4yDOof5dgbuWdLbIs;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$vsXwLw7AvX4yDOof5dgbuWdLbIs;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postAnimateOpenPanels()V
    .locals 1

    .line 2413
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method postHideRecentApps()V
    .locals 2

    .line 2436
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x3fc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2437
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2438
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V
    .locals 2

    .line 3526
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$DAm5qzwf8tbrH56SpYfBXIUo1Mo;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$DAm5qzwf8tbrH56SpYfBXIUo1Mo;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 2

    .line 3535
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$r5_blb0mImZBzspRqqf6xf1HZbY;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$r5_blb0mImZBzspRqqf6xf1HZbY;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    .locals 2

    .line 3540
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$swMevwBD7gZzyvLphvmM2iTSGzE;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$swMevwBD7gZzyvLphvmM2iTSGzE;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;)V

    int-to-long p0, p2

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public preloadRecentApps()V
    .locals 2

    .line 4707
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x3fe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4708
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public readyForKeyguardDone()V
    .locals 0

    .line 3146
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->readyForKeyguardDone()V

    return-void
.end method

.method protected registerBroadcastReceiver()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1474
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 1475
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 1476
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.app.action.SHOW_DEVICE_MONITORING_DIALOG"

    .line 1477
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1478
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v3, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    return-void
.end method

.method public remQsTile(Landroid/content/ComponentName;)V
    .locals 1

    .line 1806
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1807
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->removeTile(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method

.method public requestFaceAuth()V
    .locals 1

    .line 1827
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1828
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuth()V

    :cond_0
    return-void
.end method

.method public requestNotificationUpdate(Ljava/lang/String;)V
    .locals 0

    .line 1820
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->requestNotificationUpdate(Ljava/lang/String;)V

    return-void
.end method

.method public resetUserExpandedStates()V
    .locals 0

    .line 3256
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->resetUserExpandedStates()V

    return-void
.end method

.method setBarStateForTest(I)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2240
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    return-void
.end method

.method public setBouncerShowing(Z)V
    .locals 2

    .line 4228
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    .line 4229
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->setBouncerShowing(Z)V

    .line 4230
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setBouncerShowing(Z)V

    .line 4231
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenLockIconController:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowingScrimmed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->setBouncerShowingScrimmed(Z)V

    .line 4232
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->setBouncerShowing(Z)V

    :cond_0
    const/4 p1, 0x1

    .line 4233
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateHideIconsForBouncer(Z)V

    .line 4234
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    .line 4235
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 4236
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-nez p1, :cond_1

    .line 4237
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updatePanelExpansionForKeyguard()V

    :cond_1
    return-void
.end method

.method public setInteracting(IZ)V
    .locals 3

    .line 2832
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eq v0, p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz p2, :cond_2

    .line 2834
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    or-int/2addr v0, p1

    goto :goto_2

    .line 2835
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    not-int v2, p1

    and-int/2addr v0, v2

    :goto_2
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    if-eqz v0, :cond_3

    .line 2837
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->suspendAutoHide()V

    goto :goto_3

    .line 2839
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->resumeSuspendedAutoHide()V

    :goto_3
    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    .line 2843
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    iget p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/NavigationBarController;->touchAutoDim(I)V

    .line 2844
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissVolumeDialog()V

    .line 2846
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    return-void
.end method

.method public setKeyguardFadingAway(JJJZ)V
    .locals 17

    move-object/from16 v0, p0

    .line 3884
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    add-long v3, p1, p5

    const-wide/16 v8, 0x78

    sub-long/2addr v3, v8

    const-wide/16 v5, 0x78

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionStarting(IJJZ)V

    .line 3887
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    const-wide/16 v3, 0x0

    cmp-long v3, p5, v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    .line 3888
    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v11, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    sub-long v12, p1, v8

    const-wide/16 v14, 0x78

    const/16 v16, 0x1

    invoke-virtual/range {v10 .. v16}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionStarting(IJJZ)V

    .line 3891
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    move/from16 v5, p7

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->notifyKeyguardFadingAway(JJZ)V

    return-void
.end method

.method public setLockscreenUser(I)V
    .locals 1

    .line 3314
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    if-eqz v0, :cond_0

    .line 3315
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->setCurrentUser(I)V

    .line 3317
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setCurrentUser(I)V

    .line 3318
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperSupported:Z

    if-eqz p1, :cond_1

    .line 3319
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public setNotificationSnoozed(Landroid/service/notification/StatusBarNotification;I)V
    .locals 0

    .line 4686
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->setNotificationSnoozed(Landroid/service/notification/StatusBarNotification;I)V

    return-void
.end method

.method public setNotificationSnoozed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
    .locals 0

    .line 4682
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->setNotificationSnoozed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    return-void
.end method

.method public setOccluded(Z)V
    .locals 1

    .line 2149
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsOccluded:Z

    .line 2150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setKeyguardOccluded(Z)V

    const/4 p1, 0x0

    .line 2151
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateHideIconsForBouncer(Z)V

    return-void
.end method

.method public setPanelExpanded(Z)V
    .locals 3

    .line 2094
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPanelExpanded:Z

    if-eq v0, p1, :cond_0

    .line 2095
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->onPanelExpandedChanged(Z)V

    .line 2098
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setPanelExpanded isExpanded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mPanelExpanded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPanelExpanded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPanelExpanded:Z

    const/4 v0, 0x0

    .line 2101
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateHideIconsForBouncer(Z)V

    .line 2102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setPanelExpanded(Z)V

    .line 2103
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->setPanelExpanded(Z)V

    if-eqz p1, :cond_2

    .line 2104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 2105
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "clearing notification effects from setExpandedHeight"

    .line 2106
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearNotificationEffects()V

    :cond_2
    if-nez p1, :cond_3

    .line 2112
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->onPanelCollapsed()V

    :cond_3
    return-void
.end method

.method public setPanelViewAlpha(FZI)V
    .locals 3

    const-string v0, "StatusBar"

    if-nez p2, :cond_0

    .line 5110
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/plugin/OpLsState;->getPreventModeCtrl()Lcom/oneplus/plugin/OpPreventModeCtrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/plugin/OpPreventModeCtrl;->isPreventModeNoBackground()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "not set alpha when prevent"

    .line 5111
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5116
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isLaunchTransitionFadingAway()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "Launch transition fadingAway, skip set panel alpha"

    .line 5117
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_2

    if-eqz p2, :cond_2

    .line 5123
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-eqz v1, :cond_2

    .line 5124
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    .line 5133
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPanelViewAlpha to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", overlayLayout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", currentType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5144
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_7

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_5

    .line 5146
    sget v0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    if-eq p3, v0, :cond_4

    if-eqz p2, :cond_3

    goto :goto_0

    .line 5149
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setUnlockAlpha(F)V

    goto :goto_1

    .line 5147
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setAlpha(F)V

    goto :goto_1

    .line 5153
    :cond_5
    const-class p2, Lcom/oneplus/battery/OpChargingAnimationController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oneplus/battery/OpChargingAnimationController;

    invoke-interface {p2}, Lcom/oneplus/battery/OpChargingAnimationController;->isAnimationStarted()Z

    move-result p2

    if-eqz p2, :cond_6

    sget p2, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_FINGERPRINT:I

    if-ne p3, p2, :cond_6

    const-string p0, "not set alpha when warp"

    .line 5155
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5159
    :cond_6
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setAlpha(F)V

    .line 5160
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setUnlockAlpha(F)V

    goto :goto_1

    .line 5163
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setAlpha(F)V

    :goto_1
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1

    .line 1979
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setQsExpanded(Z)V

    .line 1980
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setStatusAccessibilityImportance(I)V

    .line 1983
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1984
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onStatusBarPanelStateChanged()V

    :cond_1
    return-void
.end method

.method setQsScrimEnabled(Z)V
    .locals 0

    .line 2803
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsScrimEnabled(Z)V

    return-void
.end method

.method public setTopAppHidesStatusBar(Z)V
    .locals 2

    .line 4734
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTopHidesStatusBar:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 4735
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWereIconsJustHidden:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4738
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWereIconsJustHidden:Z

    .line 4739
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    .line 4741
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateHideIconsForBouncer(Z)V

    return-void
.end method

.method protected setUpDisableFlags(II)V
    .locals 2

    .line 1530
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/android/systemui/statusbar/CommandQueue;->disable(IIIZ)V

    return-void
.end method

.method setUserSetupForTest(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2245
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    return-void
.end method

.method public setWallpaperAlpha(F)V
    .locals 7

    .line 5172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPhoneStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-nez v0, :cond_0

    return-void

    .line 5175
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    sget v1, Lcom/android/systemui/R$id;->backdrop:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/BackDropView;

    .line 5177
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    cmpl-float v1, p1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_2

    .line 5179
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockUnlocking()Z

    move-result v1

    .line 5181
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isHomeApp()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v1, :cond_1

    goto :goto_0

    .line 5184
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/ScrimController;->forceHideScrims(ZZ)V

    goto :goto_0

    .line 5188
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->isShowingWallpaper()Z

    move-result v1

    .line 5189
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setWallpaperAlpha isShowingWallpaper:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "StatusBar"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_3

    .line 5191
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getState()Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object v1

    sget-object v5, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v1, v5, :cond_3

    .line 5192
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->forceHideScrims(ZZ)V

    goto :goto_0

    .line 5194
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0, v4, v4}, Lcom/android/systemui/statusbar/phone/ScrimController;->forceHideScrims(ZZ)V

    :cond_4
    :goto_0
    cmpl-float p0, p1, v2

    if-nez p0, :cond_5

    .line 5204
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const p1, 0x3b03126f    # 0.002f

    .line 5211
    :cond_5
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public setWindowState(III)V
    .locals 3

    .line 2611
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_1

    move v1, p1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 2615
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    if-eqz v2, :cond_5

    if-ne p2, p1, :cond_5

    iget p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    if-eq p2, p3, :cond_5

    .line 2618
    iput p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    .line 2619
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status bar "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "StatusBar"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_3

    .line 2620
    iget p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez p2, :cond_3

    .line 2622
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz p2, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2624
    invoke-virtual {p2, v0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->collapsePanel(ZZF)V

    .line 2628
    :cond_2
    iget-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mStatusBarCollapseListener:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$StatusBarCollapseListener;

    if-eqz p2, :cond_3

    .line 2629
    invoke-interface {p2}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$StatusBarCollapseListener;->statusBarCollapse()V

    .line 2635
    :cond_3
    const-class p2, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p2}, Lcom/android/systemui/recents/OverviewProxyService;->updateSystemUiStateFlags()V

    .line 2638
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz p2, :cond_5

    const/4 p2, 0x2

    if-ne p3, p2, :cond_4

    goto :goto_1

    :cond_4
    move p1, v0

    .line 2639
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowHidden:Z

    .line 2640
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateHideIconsForBouncer(Z)V

    .line 2644
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateBubblesVisibility()V

    return-void
.end method

.method public shouldIgnoreTouch()Z
    .locals 1

    .line 4598
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 4599
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->getIgnoreTouchWhilePulsing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected shouldUnlockOnMenuPressed()Z
    .locals 1

    .line 3945
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 3946
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->shouldDismissOnMenuPressed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showAssistDisclosure()V
    .locals 0

    .line 4946
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->showDisclosure()V

    return-void
.end method

.method public showKeyguard()V
    .locals 2

    .line 3630
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setKeyguardRequested(Z)V

    .line 3631
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    .line 3633
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateIsKeyguard()Z

    .line 3634
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->onLockscreenShown()V

    return-void
.end method

.method public showKeyguardImpl()V
    .locals 3

    const/4 v0, 0x1

    .line 3679
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsKeyguard:Z

    .line 3680
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isLaunchTransitionFadingAway()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3681
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->cancelAnimation()V

    .line 3682
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLaunchTransitionFadingEnded()V

    .line 3684
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3685
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->useFullscreenUserSwitcher()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3686
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(I)Z

    goto :goto_0

    .line 3687
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isWakingToShadeLocked()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3688
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(I)Z

    .line 3692
    :cond_2
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_3

    .line 3693
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->resetViews(Z)V

    .line 3696
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updatePanelExpansionForKeyguard()V

    .line 3697
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_4

    .line 3698
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setUserLocked(Z)V

    .line 3699
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notifyHeightChanged(Z)V

    const/4 v0, 0x0

    .line 3700
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    :cond_4
    return-void
.end method

.method public showNavigationBarGuide()V
    .locals 0

    .line 5222
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarGuide:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    if-eqz p0, :cond_0

    .line 5223
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->show()V

    :cond_0
    return-void
.end method

.method public showPinningEnterExitToast(Z)V
    .locals 1

    .line 2367
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2368
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->showPinningEnterExitToast(Z)V

    :cond_0
    return-void
.end method

.method public showPinningEscapeToast()V
    .locals 1

    .line 2374
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2375
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->showPinningEscapeToast()V

    :cond_0
    return-void
.end method

.method public showScreenPinningRequest(I)V
    .locals 1

    .line 4416
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4421
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showScreenPinningRequest(IZ)V

    return-void
.end method

.method public showScreenPinningRequest(IZ)V
    .locals 0

    .line 4425
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/ScreenPinningRequest;->showPrompt(IZ)V

    return-void
.end method

.method public showTransient(I[I)V
    .locals 1

    .line 2675
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2678
    invoke-static {p2, p1}, Landroid/view/InsetsState;->containsType([II)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2681
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showTransientUnchecked()V

    return-void
.end method

.method public showWirelessChargingAnimation(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0xed

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2756
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2762
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2778
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0, v1, p1, v1, v2}, Lcom/android/systemui/charging/WirelessChargingAnimation;->makeWirelessChargingAnimation(Landroid/content/Context;Landroid/os/Looper;ILcom/android/systemui/charging/WirelessChargingAnimation$Callback;Z)Lcom/android/systemui/charging/WirelessChargingAnimation;

    move-result-object p0

    .line 2779
    invoke-virtual {p0}, Lcom/android/systemui/charging/WirelessChargingAnimation;->show()V

    goto :goto_1

    .line 2764
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$9;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-static {v0, v1, p1, v2, p0}, Lcom/android/systemui/charging/WirelessChargingAnimation;->makeWirelessChargingAnimation(Landroid/content/Context;Landroid/os/Looper;ILcom/android/systemui/charging/WirelessChargingAnimation$Callback;Z)Lcom/android/systemui/charging/WirelessChargingAnimation;

    move-result-object p0

    .line 2775
    invoke-virtual {p0}, Lcom/android/systemui/charging/WirelessChargingAnimation;->show()V

    :goto_1
    return-void
.end method

.method public start()V
    .locals 14

    .line 920
    invoke-super {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->start()V

    .line 922
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 923
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 924
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/UiModeManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiModeManager:Landroid/app/UiModeManager;

    .line 925
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBypassHeadsUpNotifier:Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->setUp()V

    .line 926
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubbleExpandListener:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleController;->setExpandListener(Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;)V

    .line 927
    new-instance v0, Lcom/android/systemui/ActivityIntentHelper;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/ActivityIntentHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    .line 929
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0, p0}, Lcom/android/internal/colorextraction/ColorExtractor;->addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 930
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    .line 933
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManager:Landroid/view/WindowManager;

    const-string v0, "dreams"

    .line 935
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 934
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 937
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    .line 938
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    .line 939
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDisplaySize()V

    .line 941
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$bool;->config_vibrateOnIconAnimation:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibrateOnOpening:Z

    .line 945
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 946
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 949
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "accessibility"

    .line 950
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 952
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardBypassController(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    const-string/jumbo v0, "statusbar"

    .line 954
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 953
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 956
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 957
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/WallpaperManager;

    .line 958
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperSupported:Z

    .line 961
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 965
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    const/4 v0, 0x0

    .line 969
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-interface {v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;)Lcom/android/internal/statusbar/RegisterStatusBarResult;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 971
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-object v2, v0

    .line 974
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->createAndAddWindows(Lcom/android/internal/statusbar/RegisterStatusBarResult;)V

    .line 976
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperSupported:Z

    const-string v4, "StatusBar"

    if-eqz v3, :cond_0

    .line 978
    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 979
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v3, v0, v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 981
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 982
    :cond_0
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "start(): no wallpaper service "

    .line 983
    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setUpPresenter()V

    .line 989
    iget-object v3, v2, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mTransientBarTypes:[I

    invoke-static {v3, v1}, Landroid/view/InsetsState;->containsType([II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 990
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showTransientUnchecked()V

    .line 992
    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    iget v5, v2, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mAppearance:I

    iget-object v6, v2, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    iget-boolean v7, v2, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mNavbarColorManagedByIme:Z

    invoke-virtual {p0, v3, v5, v6, v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->onSystemBarAppearanceChanged(II[Lcom/android/internal/view/AppearanceRegion;Z)V

    .line 994
    iget-boolean v3, v2, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mAppFullscreen:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAppFullscreen:Z

    .line 995
    iget-boolean v3, v2, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mAppImmersive:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAppImmersive:Z

    .line 998
    iget v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    iget-object v7, v2, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeToken:Landroid/os/IBinder;

    iget v8, v2, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeWindowVis:I

    iget v9, v2, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeBackDisposition:I

    iget-boolean v10, v2, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mShowImeSwitcher:Z

    move-object v5, p0

    invoke-interface/range {v5 .. v10}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V

    .line 1002
    iget-object v3, v2, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move v5, v1

    :goto_2
    if-ge v5, v3, :cond_3

    .line 1004
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v7, v2, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, v2, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/statusbar/CommandQueue;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1008
    :cond_3
    sget-boolean v5, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 1011
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    iget v3, v2, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mDisabledFlags1:I

    .line 1012
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x2

    iget v7, v2, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mAppearance:I

    .line 1013
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v3

    const/4 v3, 0x3

    iget v7, v2, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeWindowVis:I

    .line 1014
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v3, "init: icons=%d disabled=0x%08x lights=0x%08x imeButton=0x%08x"

    .line 1009
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_4
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "com.android.systemui.statusbar.banner_action_cancel"

    .line 1018
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.android.systemui.statusbar.banner_action_setup"

    .line 1019
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1020
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBannerActionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v7, "com.android.systemui.permission.SELF"

    invoke-virtual {v4, v5, v3, v7, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1023
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperSupported:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "wallpaper"

    .line 1025
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1024
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v0

    const-wide/16 v3, 0x0

    .line 1027
    :try_start_1
    invoke-interface {v0, v1, v3, v4}, Landroid/app/IWallpaperManager;->setInAmbientMode(ZJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1036
    :catch_1
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->init()V

    .line 1037
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V

    .line 1039
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 1040
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startKeyguard()V

    .line 1042
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 1043
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    move-object v8, p0

    invoke-virtual/range {v7 .. v13}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->initialize(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/View;)V

    .line 1048
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 1051
    iget v0, v2, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mDisabledFlags1:I

    .line 1052
    iget v1, v2, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mDisabledFlags2:I

    .line 1053
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInitController:Lcom/android/systemui/InitController;

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$JvvAhae-7rLxiigih01CvipegIM;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$JvvAhae-7rLxiigih01CvipegIM;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;II)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/InitController;->addPostInitTask(Ljava/lang/Runnable;)V

    .line 1056
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$5;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    const-class v2, Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-interface {v0, v1, v2, v6}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 1103
    const-class v0, Lcom/oneplus/notification/OpNotificationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/notification/OpNotificationController;

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpNotificationController:Lcom/oneplus/notification/OpNotificationController;

    if-eqz v0, :cond_6

    .line 1105
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {v0, v1}, Lcom/oneplus/notification/OpNotificationController;->setBubbleController(Lcom/android/systemui/bubbles/BubbleController;)V

    .line 1109
    :cond_6
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarGuide:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1964
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v5, p3

    .line 1974
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;I)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZZ)V
    .locals 0

    .line 1969
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZZI)V
    .locals 0

    .line 1959
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZI)V

    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 3078
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZI)V

    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;ZZI)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    .line 3071
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;I)V

    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;I)V
    .locals 8

    if-eqz p2, :cond_0

    .line 3084
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3086
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 3087
    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v1

    .line 3086
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/ActivityIntentHelper;->wouldLaunchResolverActivity(Landroid/content/Intent;I)Z

    move-result v6

    .line 3088
    new-instance v7, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$cYI_U_ShQVlsmm6P5qEeF15rkKQ;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p6

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$cYI_U_ShQVlsmm6P5qEeF15rkKQ;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;IZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    .line 3136
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$GXuArppP3Gxe5JvIROZsOAy5v74;

    invoke-direct {v2, p5}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$GXuArppP3Gxe5JvIROZsOAy5v74;-><init>(Lcom/android/systemui/plugins/ActivityStarter$Callback;)V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v7

    move v3, p3

    move v4, v6

    .line 3141
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 0

    .line 4955
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    return-void
.end method

.method public startDozing()V
    .locals 0

    .line 4996
    invoke-super {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->startDozing()V

    return-void
.end method

.method protected startKeyguard()V
    .locals 11

    const-string v0, "StatusBar#startKeyguard"

    .line 1676
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1677
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 1678
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 1679
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBouncerContainer()Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    sget v2, Lcom/android/systemui/R$id;->lock_icon_container:I

    .line 1682
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object v2, p0

    .line 1678
    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->registerStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;)V

    .line 1684
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 1685
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 1686
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->setKeyguardViewController(Lcom/android/keyguard/KeyguardViewController;)V

    .line 1687
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/RemoteInputController;->addCallback(Lcom/android/systemui/statusbar/RemoteInputController$Callback;)V

    .line 1688
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 1690
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LightBarController;->setBiometricUnlockController(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 1691
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->setBiometricUnlockController(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 1692
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$SBKxeejWdiPVIq--MxMI8pU8ipA;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$SBKxeejWdiPVIq--MxMI8pU8ipA;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->setDismissHandler(Lcom/android/systemui/statusbar/phone/KeyguardDismissHandler;)V

    .line 1695
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0, v1}, Lcom/oneplus/plugin/OpLsState;->setBiometricUnlockController(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 1696
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/plugin/OpLsState;->setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 1698
    const-class v0, Lcom/oneplus/battery/OpChargingAnimationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/battery/OpChargingAnimationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-interface {v0, v1}, Lcom/oneplus/battery/OpChargingAnimationController;->init(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1702
    new-instance v0, Lcom/oneplus/faceunlock/OpFacelockController;

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-object v2, v0

    move-object v5, p0

    invoke-direct/range {v2 .. v8}, Lcom/oneplus/faceunlock/OpFacelockController;-><init>(Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpFacelockController:Lcom/oneplus/faceunlock/OpFacelockController;

    if-eqz v0, :cond_0

    .line 1705
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, p0}, Lcom/oneplus/faceunlock/OpFacelockController;->setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 1709
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public startLaunchTransitionTimeout()V
    .locals 3

    .line 3785
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v0, 0x3eb

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 1

    const/4 v0, 0x0

    .line 4793
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 4799
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 3

    .line 4806
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    .line 4807
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 4808
    invoke-interface {v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v2

    .line 4807
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/ActivityIntentHelper;->wouldLaunchResolverActivity(Landroid/content/Intent;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4810
    :goto_0
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$wuklJrCUlK7DbWeo55YyS_9Cv4o;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$wuklJrCUlK7DbWeo55YyS_9Cv4o;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeActionDismissingKeyguard(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public stopDozing()V
    .locals 0

    .line 5000
    invoke-super {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->stopDozing()V

    return-void
.end method

.method public suppressAmbientDisplay(Z)V
    .locals 0

    .line 4969
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->setDozeSuppressed(Z)V

    return-void
.end method

.method protected toggleKeyboardShortcuts(I)V
    .locals 0

    .line 4745
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->toggle(Landroid/content/Context;I)V

    return-void
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .locals 2

    .line 4728
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x402

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4729
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public togglePanel()V
    .locals 1

    .line 2418
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPanelExpanded:Z

    if-eqz v0, :cond_0

    .line 2419
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels()V

    goto :goto_0

    .line 2421
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateExpandNotificationsPanel()V

    :goto_0
    return-void
.end method

.method public toggleSplitScreen()V
    .locals 1

    const/4 v0, -0x1

    .line 4691
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->toggleSplitScreenMode(II)Z

    return-void
.end method

.method protected toggleSplitScreenMode(II)Z
    .locals 6

    .line 1742
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRecentsOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1746
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDividerOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1747
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDividerOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/Divider;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    .line 1749
    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->isDividerVisible()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 1769
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->isMinimized()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->isHomeStackResizable()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 1773
    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->onUndockingTask()V

    if-eq p2, v3, :cond_4

    .line 1775
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, p2}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    :cond_4
    return v4

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 1752
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCTSAdded()Z

    move-result p2

    if-nez p2, :cond_6

    .line 1753
    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->onDockedFirstAnimationFrame()V

    .line 1757
    :cond_6
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    invoke-virtual {p2, v0}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getNavBarPosition(I)I

    move-result p2

    if-ne p2, v3, :cond_7

    return v1

    :cond_7
    if-ne p2, v4, :cond_8

    move v1, v4

    .line 1765
    :cond_8
    sput-boolean v4, Lcom/oneplus/util/OpUtils;->mEnterFromToggleSplitScreenMode:Z

    .line 1766
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRecentsOptional:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/recents/Recents;

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/systemui/recents/Recents;->splitPrimaryTask(ILandroid/graphics/Rect;I)Z

    move-result p0

    return p0
.end method

.method public toggleWxBus()V
    .locals 14

    .line 5296
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$array;->op_wbus_config_value:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5300
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "StatusBar"

    const/16 v3, 0x8

    if-ge v1, v3, :cond_0

    .line 5301
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toggleWxBus, not suitable config size:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5304
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    .line 5305
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x2

    .line 5306
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x3

    .line 5307
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x4

    .line 5308
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x5

    .line 5309
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x6

    .line 5310
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/4 v12, 0x7

    .line 5311
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5313
    sget-boolean v12, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v12, :cond_1

    .line 5314
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "toggleWxBus, array string:, op_appId:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", op_wlmp_class_name:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", op_wlmp_username:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", op_wlmp_path:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", op_wlmp_mpType:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", op_wapif_class_name:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", op_wapif_method_create:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", op_iwapi_class_name:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v12, "toggleWxBus"

    .line 5325
    invoke-static {v2, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5329
    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 5330
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v12

    const-string/jumbo v13, "userName"

    .line 5331
    invoke-static {v5, v12, v13, v7}, Lcom/oneplus/util/OpReflectionUtils;->setValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "path"

    .line 5332
    invoke-static {v5, v12, v7, v8}, Lcom/oneplus/util/OpReflectionUtils;->setValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5333
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v12, v9, v7}, Lcom/oneplus/util/OpReflectionUtils;->setValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5334
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/Class;

    .line 5335
    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v1

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v4

    invoke-static {v5, v11, v7}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v7, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    .line 5336
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    aput-object p0, v6, v1

    aput-object v3, v6, v4

    invoke-static {v7, v5, v6}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 5337
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "sendReq"

    new-array v5, v4, [Ljava/lang/Class;

    .line 5338
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v3, v5}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v12, v3, v1

    .line 5339
    invoke-static {p0, v0, v3}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5349
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 5347
    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 5345
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 5343
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 5351
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "toggleWxBus, isSuccessGetJarAndCall:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public topAppWindowChanged(IZZ)V
    .locals 1

    .line 2745
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayId:I

    if-eq p1, v0, :cond_0

    return-void

    .line 2748
    :cond_0
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAppFullscreen:Z

    .line 2749
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAppImmersive:Z

    .line 2750
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p0, p2, p3}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setFullscreenState(ZZ)V

    return-void
.end method

.method public updateDisplayPowerStatus(I)V
    .locals 2

    .line 5535
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 5536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDisplayPowerStatus status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keyguardUpdateMonitor= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5539
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p0, :cond_1

    .line 5540
    invoke-virtual {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->notifyDisplayPowerStatusChanged(I)V

    :cond_1
    return-void
.end method

.method updateDisplaySize()V
    .locals 4

    .line 3045
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3046
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3047
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_GESTURES:Z

    if-eqz v0, :cond_0

    .line 3048
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3049
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%dx%d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "display"

    .line 3048
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/GestureRecorder;->tag(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method updateIsKeyguard()Z
    .locals 5

    .line 3651
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3658
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->getDozingRequested()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz v3, :cond_1

    .line 3659
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isGoingToSleep()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isScreenFullyOff()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsKeyguard:Z

    if-eqz v3, :cond_2

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 3660
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->isKeyguardRequested()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    if-eqz v3, :cond_5

    .line 3663
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updatePanelExpansionForKeyguard()V

    :cond_5
    if-eqz v2, :cond_7

    .line 3666
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isGoingToSleep()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 3667
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    goto :goto_3

    .line 3670
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showKeyguardImpl()V

    :goto_3
    return v1

    .line 3673
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguardImpl()Z

    move-result p0

    return p0
.end method

.method public updateKeyguardMaxNotifications()V
    .locals 3

    .line 4760
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4763
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->getMaxNotificationsWhileLocked(Z)I

    move-result v0

    .line 4764
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->getMaxNotificationsWhileLocked(Z)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 4766
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateRowStates()V

    :cond_0
    return-void
.end method

.method updateNotificationPanelTouchState()V
    .locals 5

    .line 4342
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isGoingToSleep()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 4343
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4344
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->isPulsing()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    .line 4347
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateNotificationPanelTouchState, goingToSleepWithoutAnimation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isGoingToSleep():"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4349
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isGoingToSleep()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mDozeParameters.shouldControlScreenOff():"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 4350
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", disabled:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mDeviceInteractive:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mDozeServiceHost.isPulsing():"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 4353
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->isPulsing()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", stack:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x7

    .line 4354
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "StatusBar"

    .line 4347
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4356
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setTouchAndAnimationDisabled(Z)V

    .line 4357
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    xor-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setAnimationsEnabled(Z)V

    return-void
.end method

.method updateResources()V
    .locals 5

    .line 3332
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    .line 3333
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3336
    :goto_0
    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_1

    .line 3337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Config-change: Update resources of QS & Notif panels ...  currOrientation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  hasPinnedHeadsUp: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "  mExpandedVisible: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3345
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    const-wide/16 v3, 0x1f4

    if-eqz v0, :cond_3

    .line 3348
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 3349
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    goto :goto_1

    .line 3351
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$fcrT-UusC4i1yC1KiqgWiBzUx2U;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$fcrT-UusC4i1yC1KiqgWiBzUx2U;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3356
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    if-eqz v0, :cond_4

    .line 3357
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->refreshStatusBarHeight()V

    .line 3360
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_5

    .line 3361
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateResources()V

    .line 3363
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz v0, :cond_7

    .line 3366
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    .line 3367
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateResources()V

    goto :goto_2

    .line 3369
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$85niBIXQt9h5MB2_-O0jciKKEuA;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$85niBIXQt9h5MB2_-O0jciKKEuA;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3373
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_8

    .line 3374
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateResources()V

    .line 3378
    :cond_8
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->opUpdateResources()V

    return-void
.end method

.method updateScrimController()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4536
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->opUpdateScrimController()V

    return-void
.end method

.method protected updateTheme()V
    .locals 2

    .line 3909
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3910
    sget v0, Lcom/android/systemui/R$style;->Theme_SystemUI_Light:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/R$style;->Theme_SystemUI:I

    .line 3911
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 3912
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->setTheme(I)V

    .line 3913
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->notifyThemeChanged()V

    :cond_1
    return-void
.end method

.method protected updateVisibleToUser()V
    .locals 2

    .line 4865
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisibleToUser:Z

    .line 4866
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisible:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisibleToUser:Z

    if-eq v0, v1, :cond_1

    .line 4869
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleVisibleToUserChanged(Z)V

    :cond_1
    return-void
.end method

.method public userActivity()V
    .locals 2

    .line 3934
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3935
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    :cond_0
    return-void
.end method

.method vibrate()V
    .locals 3

    .line 3502
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    .line 3504
    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBar;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v1, v2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    return-void
.end method

.method visibilityChanged(Z)V
    .locals 8

    .line 4854
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 4855
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisible:Z

    if-nez p1, :cond_0

    .line 4857
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    .line 4861
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateVisibleToUser()V

    return-void
.end method

.method public wakeUpIfDozing(JLandroid/view/View;Ljava/lang/String;)V
    .locals 4

    .line 1541
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-eqz v0, :cond_0

    .line 1542
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.android.systemui:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p1, p2, v1, p4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    const/4 p1, 0x1

    .line 1544
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpComingFromTouch:Z

    .line 1545
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    invoke-virtual {p3, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1546
    new-instance p2, Landroid/graphics/PointF;

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    const/4 v0, 0x0

    aget p4, p4, v0

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p4, v0

    int-to-float p4, p4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    aget p1, v0, p1

    .line 1547
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    int-to-float p1, p1

    invoke-direct {p2, p4, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpTouchLocation:Landroid/graphics/PointF;

    .line 1548
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onScreenOnFromTouch()V

    :cond_0
    return-void
.end method
