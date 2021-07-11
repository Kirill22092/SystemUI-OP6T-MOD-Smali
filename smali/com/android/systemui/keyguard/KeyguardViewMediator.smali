.class public Lcom/android/systemui/keyguard/KeyguardViewMediator;
.super Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;
    }
.end annotation


# static fields
.field private static final USER_PRESENT_INTENT:Landroid/content/Intent;

.field private static mUnlockTrackSimStates:Landroid/util/SparseIntArray;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAodShowing:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBootCompleted:Z

.field private mBootSendUserPresent:Z

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCustomMessage:Ljava/lang/CharSequence;

.field private final mDelayedLockBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDelayedProfileShowingSequence:I

.field private mDelayedShowingSequence:I

.field private mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

.field private mDeviceInteractive:Z

.field private final mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

.field private mDozing:Z

.field private mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

.field private mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

.field private mExternallyEnabled:Z

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mGoingToSleep:Z

.field private mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private final mHideAnimationFinishedRunnable:Ljava/lang/Runnable;

.field private mHideAnimationRun:Z

.field private mHideAnimationRunning:Z

.field private mHiding:Z

.field private mInGestureNavigationMode:Z

.field private mInputRestricted:Z

.field private mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

.field private mKeyguardDonePending:Z

.field private final mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

.field private final mKeyguardStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/policy/IKeyguardStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyguardViewControllerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/keyguard/KeyguardViewController;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastSimStates:Landroid/util/SparseIntArray;

.field private mLockLater:Z

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSoundId:I

.field private mLockSoundStreamId:I

.field private mLockSoundVolume:F

.field private mLockSounds:Landroid/media/SoundPool;

.field private mNeedToReshowWhenReenabled:Z

.field private mOccluded:Z

.field private final mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final mPM:Landroid/os/PowerManager;

.field private mPendingLock:Z

.field private mPendingReset:Z

.field private mPendingSetKeyguardDone:Z

.field private mPhoneState:Ljava/lang/String;

.field private mPowerKeyCameraLaunching:Z

.field private mPulsing:Z

.field private mShowHomeOverLockscreen:Z

.field private mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowing:Z

.field private mShuttingDown:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSystemReady:Z

.field private final mTrustManager:Landroid/app/trust/TrustManager;

.field private mTrustedSoundId:I

.field private final mUiBgExecutor:Ljava/util/concurrent/Executor;

.field private mUiSoundsStreamType:I

.field private mUnlockSoundId:I

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mWaitingUntilKeyguardVisible:Z

.field private mWakeAndUnlocking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 320
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockTrackSimStates:Landroid/util/SparseIntArray;

    .line 337
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x24200000

    .line 338
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ldagger/Lazy;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dump/DumpManager;Ljava/util/concurrent/Executor;Landroid/os/PowerManager;Landroid/app/trust/TrustManager;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/statusbar/phone/NavigationModeController;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Ldagger/Lazy<",
            "Lcom/android/keyguard/KeyguardViewController;",
            ">;",
            "Lcom/android/systemui/keyguard/DismissCallbackRegistry;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/PowerManager;",
            "Landroid/app/trust/TrustManager;",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            "Lcom/android/systemui/statusbar/phone/NavigationModeController;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p12

    .line 806
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 270
    iput-boolean v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    const/4 v3, 0x0

    .line 277
    iput-boolean v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 290
    iput-boolean v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 319
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLastSimStates:Landroid/util/SparseIntArray;

    .line 326
    sget-object v4, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    .line 346
    iput-boolean v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 349
    iput-boolean v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 350
    iput-boolean v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 351
    iput-boolean v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    .line 375
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    .line 408
    new-instance v4, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 420
    iput-boolean v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingSetKeyguardDone:Z

    .line 423
    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 625
    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 1786
    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedLockBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1812
    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1845
    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    .line 2219
    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

    invoke-direct {v3, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

    .line 2287
    new-instance v3, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$k6pAp5zgE8i-fpCJKwKX2Ojqibw;

    invoke-direct {v3, p0}, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$k6pAp5zgE8i-fpCJKwKX2Ojqibw;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationFinishedRunnable:Ljava/lang/Runnable;

    move-object v3, p2

    .line 807
    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object v3, p3

    .line 808
    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v3, p4

    .line 809
    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object v3, p5

    .line 810
    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    move-object v3, p6

    .line 811
    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    move-object v3, p9

    .line 812
    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    move-object v3, p7

    .line 813
    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v3, p10

    .line 814
    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    move-object/from16 v3, p11

    .line 815
    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 816
    const-class v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v4, p8

    invoke-virtual {p8, v3, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 817
    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    const-string/jumbo v3, "systemui"

    const-string v4, "nav_bar_handle_show_over_lockscreen"

    .line 818
    invoke-virtual {v1, v3, v4, v2}, Lcom/android/systemui/util/DeviceConfigProxy;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowHomeOverLockscreen:Z

    .line 822
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    .line 824
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/systemui/keyguard/-$$Lambda$eLWs6RgXUxZrGIBRjUxV6jB43VY;

    invoke-direct {v4, v2}, Lcom/android/systemui/keyguard/-$$Lambda$eLWs6RgXUxZrGIBRjUxV6jB43VY;-><init>(Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;)V

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 822
    invoke-virtual {v1, v3, v4, v2}, Lcom/android/systemui/util/DeviceConfigProxy;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 826
    new-instance v1, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$me7csJcL_HvRFR46jFg-Qy6MBGw;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$me7csJcL_HvRFR46jFg-Qy6MBGw;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    move-object/from16 v2, p13

    .line 827
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInGestureNavigationMode:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowHomeOverLockscreen:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/util/SparseIntArray;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLastSimStates:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$1100()Landroid/util/SparseIntArray;
    .locals 1

    .line 171
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockTrackSimStates:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 0

    .line 171
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyTrustedChangedLocked(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyHasLockscreenWallpaperChanged(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->tryKeyguardDone()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ldagger/Lazy;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 0

    .line 171
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/lang/Runnable;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationFinishedRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardDisplayManager;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZ)V
    .locals 0

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked(ZZ)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playTrustedSound()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 0

    .line 171
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/lang/CharSequence;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCustomMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$2702(Lcom/android/systemui/keyguard/KeyguardViewMediator;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCustomMessage:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method static synthetic access$3102(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPowerKeyCameraLaunching:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/view/animation/Animation;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 0

    .line 171
    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    return p0
.end method

.method static synthetic access$3500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 0

    .line 171
    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedProfileShowingSequence:I

    return p0
.end method

.method static synthetic access$3600(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lockProfile(I)V

    return-void
.end method

.method static synthetic access$3702(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShuttingDown:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleShow(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleHide()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleReset()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleVerifyUnlock()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyStartedGoingToSleep()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyFinishedGoingToSleep()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyScreenTurnedOn()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyScreenTurnedOff()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyStartedWakingUp()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDone()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDoneDrawing()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/content/Context;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZ)V
    .locals 0

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleSetOccluded(ZZ)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 0

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleDismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/systemui/keyguard/KeyguardViewMediator;JJ)V
    .locals 0

    .line 171
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleStartKeyguardExitAnimation(JJ)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/plugins/FalsingManager;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleSystemReady()V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 0

    .line 171
    invoke-virtual {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->isSupportAccelerate()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 0

    .line 171
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 0

    .line 171
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPulsing:Z

    return p0
.end method

.method static synthetic access$6100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/util/ArrayList;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method private adjustStatusBarLocked()V
    .locals 1

    const/4 v0, 0x0

    .line 2394
    invoke-direct {p0, v0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked(ZZ)V

    return-void
.end method

.method private adjustStatusBarLocked(ZZ)V
    .locals 3

    .line 2400
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_0

    .line 2401
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "statusbar"

    .line 2402
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 2405
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "KeyguardViewMediator"

    if-nez v0, :cond_1

    const-string p0, "Could not get status bar manager"

    .line 2406
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    if-eqz p2, :cond_2

    .line 2415
    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_2
    if-nez p1, :cond_3

    .line 2418
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 2419
    :cond_3
    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowHomeOverLockscreen:Z

    if-eqz p2, :cond_4

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInGestureNavigationMode:Z

    if-nez p2, :cond_5

    :cond_4
    const/high16 v2, 0x200000

    :cond_5
    const/high16 p2, 0x1000000

    or-int/2addr v2, p2

    .line 2426
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adjustStatusBarLocked: mShowing="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mOccluded="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isSecure="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2427
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " force="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " --> flags=0x"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2428
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2426
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {p0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_0
    return-void
.end method

.method private cancelDoKeyguardForChildProfilesLocked()V
    .locals 1

    .line 1208
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedProfileShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedProfileShowingSequence:I

    return-void
.end method

.method private cancelDoKeyguardLaterLocked()V
    .locals 1

    .line 1204
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    return-void
.end method

.method private doKeyguardForChildProfilesLocked()V
    .locals 5

    .line 1195
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 1196
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 1197
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1198
    invoke-direct {p0, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lockProfile(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private doKeyguardLaterForChildProfilesLocked()V
    .locals 10

    .line 1173
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 1174
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget v4, v0, v3

    .line 1175
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1176
    invoke-direct {p0, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getLockTimeout(I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_0

    .line 1178
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardForChildProfilesLocked()V

    goto :goto_1

    .line 1180
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    add-long/2addr v7, v5

    .line 1181
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_LOCK"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1182
    iget v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedProfileShowingSequence:I

    const-string v9, "seq"

    invoke-virtual {v5, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "android.intent.extra.USER_ID"

    .line 1183
    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    .line 1184
    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1185
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v6, v2, v5, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1187
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v7, v8, v4}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private doKeyguardLaterLocked()V
    .locals 4

    .line 1150
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getLockTimeout(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 1152
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1154
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked(J)V

    :goto_0
    return-void
.end method

.method private doKeyguardLaterLocked(J)V
    .locals 4

    .line 1160
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 1161
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1162
    iget p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    const-string v2, "seq"

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 1163
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1164
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 1166
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    invoke-virtual {p2, v2, v0, v1, p1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 1167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setting alarm to turn off keyguard, seq = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyguardViewMediator"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterForChildProfilesLocked()V

    return-void
.end method

.method private doKeyguardLocked(Landroid/os/Bundle;)V
    .locals 7

    .line 1557
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->CORE_APPS_ONLY:Z

    const-string v1, "KeyguardViewMediator"

    if-eqz v0, :cond_0

    const-string p0, "doKeyguard: not showing because booting to cryptkeeper"

    .line 1559
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1564
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const-string p1, "doKeyguard: not showing because externally disabled"

    .line 1565
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1569
    invoke-virtual {p0, v2}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->updateKeyguardDisable(Z)V

    .line 1572
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->notifyFakeLocking(Z)V

    .line 1575
    invoke-static {v3}, Lcom/oneplus/systemui/OpSystemUIInjector;->setKeyguardDone(Z)V

    return-void

    .line 1581
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "doKeyguard: not showing because it is already showing"

    .line 1582
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    .line 1587
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingSetKeyguardDone:Z

    .line 1588
    invoke-static {v3}, Lcom/oneplus/systemui/OpSystemUIInjector;->setKeyguardDone(Z)V

    .line 1590
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->notifyKeyguardDone(Z)V

    return-void

    .line 1596
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mustNotUnlockCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1597
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_3
    const-string v0, "keyguard.no_require_sim"

    .line 1600
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v2

    .line 1601
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1602
    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    move-result v4

    .line 1601
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    .line 1603
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v6, 0x7

    .line 1604
    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    move-result v5

    .line 1603
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    .line 1605
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v6

    if-nez v6, :cond_6

    if-nez v4, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_1

    :cond_6
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_7

    .line 1608
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string p0, "doKeyguard: not showing because device isn\'t provisioned and the sim is not locked or missing"

    .line 1609
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    if-eqz p1, :cond_8

    const-string v4, "force_show"

    .line 1614
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_2

    :cond_8
    move v2, v3

    .line 1615
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v0, :cond_9

    if-nez v2, :cond_9

    const-string p0, "doKeyguard: not showing because lockscreen is off"

    .line 1617
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1621
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->checkVoldPassword(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p1, "Not showing lock screen since just decrypted"

    .line 1622
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    invoke-direct {p0, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 1625
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideLocked()V

    return-void

    .line 1631
    :cond_a
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingSetKeyguardDone:Z

    .line 1632
    invoke-static {v3}, Lcom/oneplus/systemui/OpSystemUIInjector;->setKeyguardDone(Z)V

    .line 1636
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->notifyKeyguardDone(Z)V

    const-string v0, "doKeyguard: showing the lock screen"

    .line 1639
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->notifyFakeLocking(Z)V

    .line 1645
    invoke-virtual {p0, v3}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->updateKeyguardDisable(Z)V

    .line 1647
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method private getLockTimeout(I)J
    .locals 7

    .line 1121
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    const/16 v2, 0x1388

    .line 1124
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    .line 1129
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    const/4 v3, 0x0

    .line 1130
    invoke-virtual {p0, v3, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide p0

    const-wide/16 v3, 0x0

    cmp-long v5, p0, v3

    if-gtz v5, :cond_0

    goto :goto_0

    :cond_0
    const/16 v5, 0x7530

    const-string v6, "screen_off_timeout"

    .line 1138
    invoke-static {v0, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-long v5, v0

    .line 1142
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    sub-long/2addr p0, v5

    .line 1143
    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    .line 1144
    invoke-static {p0, p1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public static getUnlockTrackSimState(I)I
    .locals 1

    .line 1479
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockTrackSimStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method private handleDismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1664
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1666
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->addCallback(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    .line 1668
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCustomMessage:Ljava/lang/CharSequence;

    .line 1669
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardViewController;->dismissAndCollapse()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 1671
    new-instance p0, Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DismissCallbackWrapper;-><init>(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/DismissCallbackWrapper;->notifyDismissError()V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleHide()V
    .locals 5

    const-string v0, "KeyguardViewMediator#handleHide"

    .line 2298
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2301
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAodShowing:Z

    if-eqz v0, :cond_0

    .line 2302
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2303
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x4

    const-string v4, "com.android.systemui:BOUNCER_DOZING"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 2307
    :cond_0
    monitor-enter p0

    :try_start_0
    const-string v0, "KeyguardViewMediator"

    .line 2308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleHide, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mustNotUnlockCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "KeyguardViewMediator"

    const-string v1, "Split system user, quit unlocking."

    .line 2315
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 2318
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 2320
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-nez v0, :cond_2

    .line 2321
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 2324
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    .line 2325
    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    .line 2323
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleStartKeyguardExitAnimation(JJ)V

    .line 2327
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2328
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    .line 2327
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleKeyguardDone()V
    .locals 6

    const-string v0, "KeyguardViewMediator#handleKeyguardDone"

    .line 1957
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1958
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 1959
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$mFsUTJO27ferqTk7kQw3sOLv8yU;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$mFsUTJO27ferqTk7kQw3sOLv8yU;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1967
    iget-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1968
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1971
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleKeyguardDone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardViewMediator"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    monitor-enter p0

    .line 1973
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 1974
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1978
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->notifyDisplayKeyguardUnlockSuccess()V

    .line 1983
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->clearFailedUnlockAttempts(Z)V

    .line 1986
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGoingToSleep:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 1987
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearBiometricRecognized()V

    const-string p0, "KeyguardViewMediator"

    const-string v0, "Device is going to sleep, aborting keyguardDone"

    .line 1988
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1992
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v1

    :cond_1
    if-eqz p0, :cond_2

    if-eq v1, v3, :cond_2

    const/16 v0, 0x8

    if-eq v1, v0, :cond_2

    const/4 v0, 0x7

    if-eq v1, v0, :cond_2

    const/4 v0, 0x5

    if-eq v1, v0, :cond_2

    .line 1997
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->opResetMode()V

    :cond_2
    return-void

    .line 2003
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v2, :cond_4

    .line 2005
    :try_start_1
    invoke-interface {v2, v3}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v4, "KeyguardViewMediator"

    const-string v5, "Failed to call onKeyguardExitResult()"

    .line 2007
    invoke-static {v4, v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v2, 0x0

    .line 2010
    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 2014
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 2015
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 2017
    invoke-virtual {p0, v1}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->updateKeyguardDisable(Z)V

    .line 2019
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestricted()V

    .line 2025
    :cond_4
    :try_start_2
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    const-string v0, "KeyguardViewMediator"

    const-string v1, "pending setKeyguardDone"

    .line 2026
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingSetKeyguardDone:Z

    goto :goto_2

    .line 2029
    :cond_5
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingSetKeyguardDone:Z

    .line 2031
    invoke-static {v3}, Lcom/oneplus/systemui/OpSystemUIInjector;->setKeyguardDone(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 2034
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardViewMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->notifyKeyguardDone(Z)V

    .line 2042
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setUserUnlocked(Z)V

    .line 2045
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleHide()V

    .line 2046
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearBiometricRecognized()V

    .line 2047
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    .line 1974
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private handleKeyguardDoneDrawing()V
    .locals 2

    const-string v0, "KeyguardViewMediator#handleKeyguardDoneDrawing"

    .line 2074
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2075
    monitor-enter p0

    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleKeyguardDoneDrawing"

    .line 2076
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleKeyguardDoneDrawing: notifying mWaitingUntilKeyguardVisible"

    .line 2078
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2079
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 2080
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2085
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2087
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2088
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    .line 2087
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleNotifyFinishedGoingToSleep()V
    .locals 2

    .line 2472
    monitor-enter p0

    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyFinishedGoingToSleep"

    .line 2473
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->onFinishedGoingToSleep()V

    .line 2475
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleNotifyScreenTurnedOff()V
    .locals 2

    .line 2535
    monitor-enter p0

    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyScreenTurnedOff"

    .line 2536
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2537
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .line 2539
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->onFacelockUnlocking(Z)V

    .line 2542
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isTargetProduct(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2544
    :try_start_1
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getAodWindowManager()Lcom/oneplus/aod/OpAodWindowManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpAodWindowManager;->setScreenOff(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2546
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2550
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private handleNotifyScreenTurnedOn()V
    .locals 2

    const-string v0, "KeyguardViewMediator#handleNotifyScreenTurnedOn"

    .line 2507
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2509
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isTargetProduct(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2511
    :try_start_0
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getAodWindowManager()Lcom/oneplus/aod/OpAodWindowManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpAodWindowManager;->setScreenOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2513
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2517
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2518
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 2520
    :cond_1
    monitor-enter p0

    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyScreenTurnedOn"

    .line 2521
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->onScreenTurnedOn()V

    .line 2529
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->onScreenTurnedOn()V

    .line 2530
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2531
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    .line 2530
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private handleNotifyScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 2

    const-string v0, "KeyguardViewMediator#handleNotifyScreenTurningOn"

    .line 2488
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2489
    monitor-enter p0

    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyScreenTurningOn"

    .line 2490
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->onScreenTurningOn()V

    .line 2493
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->notifyScreenTurningOn()V

    if-eqz p1, :cond_1

    .line 2496
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    if-eqz v0, :cond_0

    .line 2497
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    goto :goto_0

    .line 2499
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 2502
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2503
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    .line 2502
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private handleNotifyStartedGoingToSleep()V
    .locals 2

    .line 2461
    monitor-enter p0

    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyStartedGoingToSleep"

    .line 2462
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->onStartedGoingToSleep()V

    .line 2464
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleNotifyStartedWakingUp()V
    .locals 2

    const-string v0, "KeyguardViewMediator#handleMotifyStartedWakingUp"

    .line 2479
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2480
    monitor-enter p0

    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyWakingUp"

    .line 2481
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->onStartedWakingUp()V

    .line 2483
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2484
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    .line 2483
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleReset()V
    .locals 2

    .line 2440
    monitor-enter p0

    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleReset"

    .line 2441
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardViewController;->reset(Z)V

    .line 2443
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleSetOccluded(ZZ)V
    .locals 2

    const-string v0, "KeyguardViewMediator#handleSetOccluded"

    .line 1489
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1490
    monitor-enter p0

    .line 1491
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    .line 1494
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->startKeyguardExitAnimation(JJ)V

    .line 1497
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-eq v0, p1, :cond_3

    .line 1498
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 1499
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardOccluded(Z)V

    .line 1500
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1501
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x0

    .line 1500
    :goto_1
    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/KeyguardViewController;->setOccluded(ZZ)V

    .line 1503
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1505
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1506
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    .line 1505
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private handleShow(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "KeyguardViewMediator#handleShow"

    .line 2169
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2170
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 2171
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2172
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->reportKeyguardSecured(I)V

    .line 2174
    :cond_0
    monitor-enter p0

    .line 2175
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string p1, "KeyguardViewMediator"

    const-string v0, "ignoring handleShow because system is not ready."

    .line 2176
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    invoke-static {v1}, Lcom/oneplus/systemui/OpSystemUIInjector;->setKeyguardDone(Z)V

    .line 2180
    monitor-exit p0

    return-void

    :cond_1
    const-string v0, "KeyguardViewMediator"

    const-string v2, "handleShow"

    .line 2182
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2185
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 2186
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 2188
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->onFacelockUnlocking(Z)V

    .line 2190
    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 2191
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v2, p1}, Lcom/android/keyguard/KeyguardViewController;->show(Landroid/os/Bundle;)V

    .line 2194
    const-class p1, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->updateMediaMetaData(ZZ)V

    .line 2197
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 2198
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 2199
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 2200
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 2202
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->resetFingerprintAlreadyAuthenticated()V

    .line 2204
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardGoingAway(Z)V

    .line 2205
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p1, v0}, Lcom/android/keyguard/KeyguardViewController;->setKeyguardGoingAwayState(Z)V

    .line 2206
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2207
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2208
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardDisplayManager;->show()V

    .line 2213
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2214
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    .line 2213
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->scheduleNonStrongBiometricIdleTimeout(I)V

    .line 2216
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    .line 2207
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private handleStartKeyguardExitAnimation(JJ)V
    .locals 4

    const-string v0, "KeyguardViewMediator#handleStartKeyguardExitAnimation"

    .line 2332
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartKeyguardExitAnimation startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " fadeoutDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardViewMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x11170

    const/4 v1, 0x2

    .line 2338
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2340
    monitor-enter p0

    .line 2342
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    if-nez v0, :cond_0

    .line 2344
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(ZZ)V

    .line 2345
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2347
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 2349
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    if-eqz v1, :cond_1

    .line 2354
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardViewController;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->setReportNextDraw()V

    .line 2355
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 2356
    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .line 2361
    :cond_1
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2362
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 2365
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 2366
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 2368
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->notifyDismissSucceeded()V

    .line 2369
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardViewController;->hide(JJ)V

    .line 2372
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->onFacelockUnlocking(Z)V

    .line 2375
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 2376
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 2377
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 2378
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 2379
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2382
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "KeyguardViewMediator"

    const-string p2, "doKeyguard again when sim pin is still locked"

    .line 2384
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 2390
    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    .line 2379
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private handleSystemReady()V
    .locals 2

    .line 938
    monitor-enter p0

    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "onSystemReady"

    .line 939
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 940
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    const/4 v0, 0x0

    .line 941
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 942
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 944
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->dispatchSystemReady()V

    .line 946
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 949
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 952
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setUserUnlocked(Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 946
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleVerifyUnlock()V
    .locals 2

    const-string v0, "KeyguardViewMediator#handleVerifyUnlock"

    .line 2451
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2452
    monitor-enter p0

    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleVerifyUnlock"

    .line 2453
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2454
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 2455
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->dismissAndCollapse()V

    .line 2456
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2457
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    .line 2456
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private hideLocked()V
    .locals 2

    const-string v0, "KeyguardViewMediator#hideLocked"

    .line 1750
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "KeyguardViewMediator"

    const-string v1, "hideLocked"

    .line 1751
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1753
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1754
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private synthetic lambda$handleKeyguardDone$3(I)V
    .locals 1

    .line 1960
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1961
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->reportKeyguardDismissed(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(I)V
    .locals 0

    .line 828
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInGestureNavigationMode:Z

    return-void
.end method

.method private synthetic lambda$new$7()V
    .locals 2

    const-string v0, "KeyguardViewMediator"

    const-string v1, "mHideAnimationFinishedRunnable#run"

    .line 2288
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2289
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    .line 2290
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->tryKeyguardDone()V

    return-void
.end method

.method private synthetic lambda$notifyDefaultDisplayCallbacks$8(Z)V
    .locals 5

    .line 2738
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2740
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/IKeyguardStateCallback;

    .line 2742
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onShowingStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "KeyguardViewMediator"

    const-string v4, "Failed to call onShowingStateChanged"

    .line 2744
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2745
    instance-of v2, v2, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_0

    .line 2746
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$notifyDefaultDisplayCallbacks$9()V
    .locals 0

    .line 2753
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {p0}, Landroid/app/trust/TrustManager;->reportKeyguardShowingChanged()V

    return-void
.end method

.method private synthetic lambda$onStartedGoingToSleep$1()V
    .locals 1

    .line 995
    sget-boolean v0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->DEBUG_THREAD:Z

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->enableMessageLogging(ZZ)V

    .line 996
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getMsgDump()V

    return-void
.end method

.method private synthetic lambda$onStartedWakingUp$2()V
    .locals 1

    .line 1221
    sget-boolean v0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->DEBUG_THREAD:Z

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->enableMessageLogging(ZZ)V

    .line 1222
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getMsgDump()V

    return-void
.end method

.method private synthetic lambda$playSound$5(I)V
    .locals 8

    .line 2116
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiSoundsStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2118
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move v2, p1

    move v3, v4

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    .line 2122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play lock soundId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", volume:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", type:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiSoundsStreamType:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KeyguardViewMediator"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    monitor-enter p0

    .line 2126
    :try_start_0
    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    .line 2127
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private synthetic lambda$sendUserPresentBroadcast$4(Landroid/os/UserManager;Landroid/os/UserHandle;I)V
    .locals 4

    .line 2058
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget v1, p1, v0

    .line 2059
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2061
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->userPresent(I)V

    return-void
.end method

.method private synthetic lambda$updateActivityLockScreenState$6(ZZ)V
    .locals 4

    .line 2140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateActivityLockScreenState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KeyguardViewMediator"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLockScreenShown, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingSetKeyguardDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingSetKeyguardDone:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 2151
    invoke-static {v0}, Lcom/oneplus/systemui/OpSystemUIInjector;->setKeyguardDone(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 2153
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingSetKeyguardDone:Z

    .line 2156
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyUnlockCounter(Z)V

    .line 2158
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/app/IActivityTaskManager;->setLockScreenShown(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private lockProfile(I)V
    .locals 1

    .line 1651
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    return-void
.end method

.method private maybeSendUserPresentBroadcast()V
    .locals 2

    .line 1285
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1286
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 1285
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1290
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    goto :goto_0

    .line 1291
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1295
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->userPresent(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyDefaultDisplayCallbacks(Z)V
    .locals 1

    .line 2737
    new-instance v0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$yjVkN_s0X965Oz99BRDYm2QmmVk;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$yjVkN_s0X965Oz99BRDYm2QmmVk;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/lang/Runnable;)V

    .line 2751
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 2752
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$9w77yKhmKyk51EFfW0CD4wjMErQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$9w77yKhmKyk51EFfW0CD4wjMErQ;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 1

    const-string p0, "KeyguardViewMediator#notifyDrawn"

    .line 2554
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2556
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDrawnCallback;->onDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "KeyguardViewMediator"

    const-string v0, "Exception calling onDrawn():"

    .line 2558
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2560
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private notifyFinishedGoingToSleep()V
    .locals 2

    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyFinishedGoingToSleep"

    .line 1704
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private notifyHasLockscreenWallpaperChanged(Z)V
    .locals 4

    .line 2772
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2775
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onHasLockscreenWallpaperChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "KeyguardViewMediator"

    const-string v3, "Failed to call onHasLockscreenWallpaperChanged"

    .line 2778
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2779
    instance-of v1, v1, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_0

    .line 2780
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyScreenOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 2

    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyScreenOn"

    .line 1714
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1716
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private notifyScreenTurnedOff()V
    .locals 2

    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyScreenTurnedOff"

    .line 1726
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1728
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private notifyScreenTurnedOn()V
    .locals 2

    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyScreenTurnedOn"

    .line 1720
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1722
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private notifyStartedGoingToSleep()V
    .locals 2

    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyStartedGoingToSleep"

    .line 1699
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private notifyStartedWakingUp()V
    .locals 2

    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyStartedWakingUp"

    .line 1709
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private notifyTrustedChangedLocked(Z)V
    .locals 4

    .line 2758
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2761
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onTrustedChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "KeyguardViewMediator"

    const-string v3, "Failed to call notifyTrustedChangedLocked"

    .line 2763
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2764
    instance-of v1, v1, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_0

    .line 2765
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private playSound(I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 2097
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2103
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    const-string v2, "lockscreen_sounds_enabled"

    const/4 v3, 0x1

    .line 2102
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 2106
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 2108
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 2109
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    return-void

    .line 2111
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->getUiSoundsStreamType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiSoundsStreamType:I

    .line 2114
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$MwbBHbLGyKB-5Z0qAnOegZyyz6A;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$MwbBHbLGyKB-5Z0qAnOegZyyz6A;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method private playSounds(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2092
    iget p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSound(I)V

    return-void
.end method

.method private playTrustedSound()V
    .locals 1

    .line 2134
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSound(I)V

    return-void
.end method

.method private resetKeyguardDonePendingLocked()V
    .locals 1

    const/4 v0, 0x0

    .line 2564
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 2565
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private resetStateLocked()V
    .locals 2

    const-string v0, "KeyguardViewMediator"

    const-string v1, "resetStateLocked"

    .line 1684
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1686
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendUserPresentBroadcast()V
    .locals 5

    .line 2051
    monitor-enter p0

    .line 2052
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    if-eqz v0, :cond_0

    .line 2053
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 2054
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 2055
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 2057
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$46NCjKcw7zemUffIguiaIbd5NnM;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$46NCjKcw7zemUffIguiaIbd5NnM;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/UserManager;Landroid/os/UserHandle;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2064
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootSendUserPresent:Z

    .line 2066
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setShowingLocked(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2707
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(ZZ)V

    return-void
.end method

.method private setShowingLocked(ZZ)V
    .locals 4

    .line 2715
    iget-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozingCustom()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2716
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDozing:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v1

    .line 2718
    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-ne p1, v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAodShowing:Z

    if-ne v0, v2, :cond_3

    if-eqz p2, :cond_4

    :cond_3
    move v1, v3

    .line 2720
    :cond_4
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 2721
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAodShowing:Z

    .line 2724
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oneplus/plugin/OpLsState;->getPreventModeCtrl()Lcom/oneplus/plugin/OpPreventModeCtrl;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 2725
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oneplus/plugin/OpLsState;->getPreventModeCtrl()Lcom/oneplus/plugin/OpPreventModeCtrl;

    move-result-object p2

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {p2, v2}, Lcom/oneplus/plugin/OpPreventModeCtrl;->setKeyguardShowing(Z)V

    :cond_5
    if-eqz v1, :cond_6

    .line 2730
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyDefaultDisplayCallbacks(Z)V

    .line 2731
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateActivityLockScreenState(ZZ)V

    :cond_6
    return-void
.end method

.method private setupLocked()V
    .locals 7

    .line 842
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string/jumbo v2, "show keyguard"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    .line 843
    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 845
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    .line 846
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 847
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 849
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    .line 850
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_LOCK"

    .line 851
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 852
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedLockBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v5, "com.android.systemui.permission.SELF"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 855
    new-instance v0, Lcom/android/systemui/util/InjectionInflationController;

    .line 856
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/SystemUIFactory;->getRootComponent()Lcom/android/systemui/dagger/SystemUIRootComponent;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/systemui/util/InjectionInflationController;-><init>(Lcom/android/systemui/dagger/SystemUIRootComponent;)V

    .line 857
    new-instance v3, Lcom/android/keyguard/KeyguardDisplayManager;

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/android/keyguard/KeyguardDisplayManager;-><init>(Landroid/content/Context;Lcom/android/systemui/util/InjectionInflationController;)V

    iput-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    .line 860
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    .line 862
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCurrentUser(I)V

    .line 866
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$bool;->config_enableKeyguardService:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 867
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 869
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 868
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v2, v1

    .line 867
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(ZZ)V

    goto :goto_0

    .line 872
    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(ZZ)V

    .line 875
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 877
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    .line 879
    new-instance v2, Landroid/media/SoundPool$Builder;

    invoke-direct {v2}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 880
    invoke-virtual {v2, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v2

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v4, 0xd

    .line 883
    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    const/4 v4, 0x4

    .line 884
    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 885
    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    .line 881
    invoke-virtual {v2, v3}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v2

    .line 886
    invoke-virtual {v2}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    const-string v2, "lock_sound"

    .line 887
    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 889
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v3, v2, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    :cond_2
    const-string v3, "KeyguardViewMediator"

    if-eqz v2, :cond_3

    .line 891
    iget v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    if-nez v4, :cond_4

    .line 892
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to load lock sound from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string/jumbo v2, "unlock_sound"

    .line 894
    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 896
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v4, v2, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    :cond_5
    if-eqz v2, :cond_6

    .line 898
    iget v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    if-nez v4, :cond_7

    .line 899
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to load unlock sound from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string/jumbo v2, "trusted_sound"

    .line 901
    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 903
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v2, v0, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    :cond_8
    if-eqz v0, :cond_9

    .line 905
    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    if-nez v1, :cond_a

    .line 906
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to load trusted sound from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    int-to-float v0, v0

    const/high16 v3, 0x41a00000    # 20.0f

    div-float/2addr v0, v3

    float-to-double v3, v0

    .line 911
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    .line 913
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v1, 0x10a006b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    .line 916
    new-instance v0, Lcom/android/systemui/keyguard/WorkLockActivityController;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/WorkLockActivityController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private shouldWaitForProvisioning()Z
    .locals 1

    .line 1655
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showLocked(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "KeyguardViewMediator#showLocked aqcuiring mShowKeyguardWakeLock"

    .line 1736
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "KeyguardViewMediator"

    const-string/jumbo v1, "showLocked"

    .line 1737
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1740
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1741
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1742
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private tryKeyguardDone()V
    .locals 2

    .line 1938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tryKeyguardDone: pending - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", animRan - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " animRunning - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardViewMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    if-nez v0, :cond_0

    .line 1942
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDone()V

    goto :goto_0

    .line 1943
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "tryKeyguardDone: starting pre-hide animation"

    .line 1944
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1945
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 1946
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    .line 1947
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationFinishedRunnable:Ljava/lang/Runnable;

    .line 1948
    invoke-interface {v0, p0}, Lcom/android/keyguard/KeyguardViewController;->startPreHideAnimation(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateActivityLockScreenState(ZZ)V
    .locals 2

    .line 2138
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$EQ35u3mjdwkLrREGeB01rhox6_0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$EQ35u3mjdwkLrREGeB01rhox6_0;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateInputRestricted()V
    .locals 1

    .line 1529
    monitor-enter p0

    .line 1530
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 1531
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateInputRestrictedLocked()V
    .locals 6

    .line 1535
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    .line 1536
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    if-eq v1, v0, :cond_1

    .line 1537
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    .line 1538
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 1540
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/IKeyguardStateCallback;

    .line 1542
    :try_start_0
    invoke-interface {v2, v0}, Lcom/android/internal/policy/IKeyguardStateCallback;->onInputRestrictedStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "KeyguardViewMediator"

    const-string v5, "Failed to call onDeviceProvisioned"

    .line 1544
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1545
    instance-of v3, v3, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 1546
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    .locals 2

    .line 2787
    monitor-enter p0

    .line 2788
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2790
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/internal/policy/IKeyguardStateCallback;->onSimSecureStateChanged(Z)V

    .line 2791
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-interface {p1, v0}, Lcom/android/internal/policy/IKeyguardStateCallback;->onShowingStateChanged(Z)V

    .line 2792
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    invoke-interface {p1, v0}, Lcom/android/internal/policy/IKeyguardStateCallback;->onInputRestrictedStateChanged(Z)V

    .line 2793
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2794
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 2793
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/internal/policy/IKeyguardStateCallback;->onTrustedChanged(Z)V

    .line 2795
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasLockscreenWallpaper()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/internal/policy/IKeyguardStateCallback;->onHasLockscreenWallpaperChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Failed to call to IKeyguardStateCallback"

    .line 2797
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2799
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1676
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;-><init>(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    const/16 p1, 0xb

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 2

    .line 1514
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1515
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1516
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string p1, "  mSystemReady: "

    .line 2643
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mBootCompleted: "

    .line 2644
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mBootSendUserPresent: "

    .line 2645
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootSendUserPresent:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mExternallyEnabled: "

    .line 2646
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mShuttingDown: "

    .line 2647
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShuttingDown:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mNeedToReshowWhenReenabled: "

    .line 2648
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mShowing: "

    .line 2649
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mInputRestricted: "

    .line 2650
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mOccluded: "

    .line 2651
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mDelayedShowingSequence: "

    .line 2652
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "  mExitSecureCallback: "

    .line 2653
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "  mDeviceInteractive: "

    .line 2654
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mGoingToSleep: "

    .line 2655
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGoingToSleep:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mHiding: "

    .line 2656
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mDozing: "

    .line 2657
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDozing:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mAodShowing: "

    .line 2658
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAodShowing:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mWaitingUntilKeyguardVisible: "

    .line 2659
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mKeyguardDonePending: "

    .line 2660
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mHideAnimationRun: "

    .line 2661
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mPendingReset: "

    .line 2662
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingReset:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mPendingLock: "

    .line 2663
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mWakeAndUnlocking: "

    .line 2664
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mDrawnCallback: "

    .line 2665
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2668
    invoke-virtual {p0, p2, p3}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->opDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2669
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2670
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance p3, Landroid/util/PrintWriterPrinter;

    invoke-direct {p3, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v0, "KeyguardViewMediator "

    invoke-virtual {p1, p3, v0}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 2672
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x11100c9

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    const-string p1, "  config_showNavigationBar: "

    .line 2673
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public enableMessageLogging(ZZ)V
    .locals 3

    .line 1045
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1049
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableMessageLogging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardViewMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SystemUI"

    const/4 v1, 0x3

    if-eqz p1, :cond_1

    .line 1051
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v2, Landroid/util/LogPrinter;

    invoke-direct {v2, v1, v0}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    goto :goto_0

    .line 1053
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    :goto_0
    if-eqz p2, :cond_2

    .line 1057
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    new-instance p1, Landroid/util/LogPrinter;

    invoke-direct {p1, v1, v0}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string p2, "queue_debug_enable"

    invoke-virtual {p0, p1, p2}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_1

    .line 1059
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    new-instance p1, Landroid/util/LogPrinter;

    invoke-direct {p1, v1, v0}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string p2, "queue_debug_disable"

    invoke-virtual {p0, p1, p2}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 2638
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method public getMsgDump()V
    .locals 3

    .line 1064
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1067
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    new-instance v0, Landroid/util/LogPrinter;

    const/4 v1, 0x3

    const-string v2, "SystemUI"

    invoke-direct {v0, v1, v2}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v1, "looper:"

    invoke-virtual {p0, v0, v1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;
    .locals 0

    .line 2634
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    return-object p0
.end method

.method public isHiding()Z
    .locals 0

    .line 1482
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    return p0
.end method

.method public isInputRestricted()Z
    .locals 1

    .line 1525
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

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

.method public isSecure()Z
    .locals 1

    .line 1758
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure(I)Z

    move-result p0

    return p0
.end method

.method public isSecure(I)Z
    .locals 1

    .line 1762
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1763
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

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

.method public isShowingAndNotOccluded()Z
    .locals 1

    .line 1463
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public keyguardDone()V
    .locals 2

    const-string v0, "KeyguardViewMediator#keyguardDone"

    .line 1827
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "KeyguardViewMediator"

    const-string v1, "keyguardDone()"

    .line 1828
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    const v0, 0x11170

    const/4 v1, 0x2

    .line 1830
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1831
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1832
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1833
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public synthetic lambda$handleKeyguardDone$3$KeyguardViewMediator(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lambda$handleKeyguardDone$3(I)V

    return-void
.end method

.method public synthetic lambda$new$0$KeyguardViewMediator(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lambda$new$0(I)V

    return-void
.end method

.method public synthetic lambda$new$7$KeyguardViewMediator()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lambda$new$7()V

    return-void
.end method

.method public synthetic lambda$notifyDefaultDisplayCallbacks$8$KeyguardViewMediator(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lambda$notifyDefaultDisplayCallbacks$8(Z)V

    return-void
.end method

.method public synthetic lambda$notifyDefaultDisplayCallbacks$9$KeyguardViewMediator()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lambda$notifyDefaultDisplayCallbacks$9()V

    return-void
.end method

.method public synthetic lambda$onStartedGoingToSleep$1$KeyguardViewMediator()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lambda$onStartedGoingToSleep$1()V

    return-void
.end method

.method public synthetic lambda$onStartedWakingUp$2$KeyguardViewMediator()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lambda$onStartedWakingUp$2()V

    return-void
.end method

.method public synthetic lambda$playSound$5$KeyguardViewMediator(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lambda$playSound$5(I)V

    return-void
.end method

.method public synthetic lambda$sendUserPresentBroadcast$4$KeyguardViewMediator(Landroid/os/UserManager;Landroid/os/UserHandle;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lambda$sendUserPresentBroadcast$4(Landroid/os/UserManager;Landroid/os/UserHandle;I)V

    return-void
.end method

.method public synthetic lambda$updateActivityLockScreenState$6$KeyguardViewMediator(ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lambda$updateActivityLockScreenState$6(ZZ)V

    return-void
.end method

.method mustNotUnlockCurrentUser()Z
    .locals 0

    .line 837
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 838
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyUnlockCounter(Z)V
    .locals 2

    .line 2804
    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mKeyguardUnlockCounter:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->reportEvent(ZJ)V

    return-void
.end method

.method public onBootCompleted()V
    .locals 2

    .line 2571
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->dispatchBootCompleted()V

    .line 2574
    monitor-enter p0

    const/4 v0, 0x1

    .line 2575
    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    const/4 v1, 0x0

    .line 2576
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked(ZZ)V

    .line 2577
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootSendUserPresent:Z

    if-eqz v0, :cond_0

    .line 2578
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 2580
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2582
    const-class p0, Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/HotspotController;->onBootCompleted()V

    return-void

    :catchall_0
    move-exception v0

    .line 2580
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDreamingStarted()V
    .locals 2

    .line 1304
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchDreamingStarted()V

    .line 1305
    monitor-enter p0

    .line 1306
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1307
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1308
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked()V

    .line 1310
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDreamingStopped()V
    .locals 1

    .line 1317
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchDreamingStopped()V

    .line 1318
    monitor-enter p0

    .line 1319
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    if-eqz v0, :cond_0

    .line 1320
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    .line 1322
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFinishedGoingToSleep(IZ)V
    .locals 6

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinishedGoingToSleep("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardViewMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    monitor-enter p0

    const/4 v0, 0x0

    .line 1074
    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    .line 1075
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGoingToSleep:Z

    .line 1076
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 1078
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 1079
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 1081
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyFinishedGoingToSleep()V

    if-eqz p2, :cond_0

    const-string v1, "KeyguardViewMediator"

    const-string v2, "Camera gesture was triggered, preventing Keyguard locking."

    .line 1084
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x5

    const-string v5, "com.android.systemui:CAMERA_GESTURE_PREVENT_LOCK"

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 1090
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    .line 1091
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingReset:Z

    .line 1094
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingReset:Z

    if-eqz v1, :cond_1

    .line 1095
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    .line 1096
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingReset:Z

    .line 1099
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 1100
    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 1101
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    .line 1107
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockLater:Z

    if-nez v0, :cond_3

    if-nez p2, :cond_3

    .line 1108
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardForChildProfilesLocked()V

    .line 1111
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1112
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchFinishedGoingToSleep(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 1111
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onScreenTurnedOff()V
    .locals 0

    .line 1280
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenTurnedOff()V

    .line 1281
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchScreenTurnedOff()V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    const-string v0, "KeyguardViewMediator#onScreenTurnedOn"

    .line 1273
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1274
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenTurnedOn()V

    .line 1275
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchScreenTurnedOn()V

    .line 1276
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 1

    const-string v0, "KeyguardViewMediator#onScreenTurningOn"

    .line 1267
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1268
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 1269
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onShortPowerPressedGoHome()V
    .locals 0

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 10

    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartedGoingToSleep("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardViewMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    monitor-enter p0

    const/4 v0, 0x0

    .line 964
    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    const/4 v1, 0x1

    .line 965
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGoingToSleep:Z

    .line 971
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchKeyguardGoingAway(Z)V

    .line 976
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 977
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 978
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 979
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    .line 980
    :goto_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getLockTimeout(I)J

    move-result-wide v4

    .line 981
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockLater:Z

    .line 983
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setGoingToSleepReason(I)V

    const-string v6, "KeyguardViewMediator"

    .line 989
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onStartedGoingToSleep: mShowing:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isKeyguardDone:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", lockImmediately:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", timeout:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    sget-boolean v6, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_2

    .line 992
    sget-boolean v6, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->DEBUG_THREAD:Z

    invoke-virtual {p0, v6, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->enableMessageLogging(ZZ)V

    .line 993
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getMsgDump()V

    .line 994
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    new-instance v7, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$ztHdaoAVzQbg94ubKbnuJ2Rm5yM;

    invoke-direct {v7, p0}, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$ztHdaoAVzQbg94ubKbnuJ2Rm5yM;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    const-wide/16 v8, 0x2af8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1001
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1002
    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyUnlockCounter(Z)V

    :cond_3
    const/16 v6, 0xa

    if-ne p1, v6, :cond_4

    .line 1008
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->notifyFakeLocking(Z)V

    goto :goto_3

    .line 1010
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v6, :cond_5

    const-string v2, "KeyguardViewMediator"

    const-string v3, "pending exit secure callback cancelled"

    .line 1012
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1014
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    invoke-interface {v2, v0}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "KeyguardViewMediator"

    const-string v3, "Failed to call onKeyguardExitResult(false)"

    .line 1016
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const/4 v0, 0x0

    .line 1018
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 1019
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v0, :cond_a

    .line 1020
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideLocked()V

    goto :goto_3

    .line 1022
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_6

    .line 1023
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingReset:Z

    goto :goto_3

    :cond_6
    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_8

    :cond_7
    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    if-nez v3, :cond_9

    .line 1026
    :cond_8
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked(J)V

    .line 1027
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockLater:Z

    .line 1029
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->notifyFakeLocking(Z)V

    goto :goto_3

    .line 1031
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1032
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    .line 1035
    :cond_a
    :goto_3
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    if-eqz v0, :cond_b

    .line 1036
    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 1038
    :cond_b
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1039
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchStartedGoingToSleep(I)V

    .line 1040
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyStartedGoingToSleep()V

    return-void

    :catchall_0
    move-exception p1

    .line 1038
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public onStartedWakingUp()V
    .locals 5

    const-string v0, "KeyguardViewMediator#onStartedWakingUp"

    .line 1215
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1217
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1218
    sget-boolean v0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->DEBUG_THREAD:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->enableMessageLogging(ZZ)V

    .line 1219
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getMsgDump()V

    .line 1220
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    new-instance v2, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$0dGSJEb3YAsSlv-UzuxVEX8D0Cw;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$0dGSJEb3YAsSlv-UzuxVEX8D0Cw;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    const-wide/16 v3, 0x2af8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1228
    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyUnlockCounter(Z)V

    .line 1233
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setGoingToSleepReason(I)V

    .line 1236
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->notifyFakeLocking(Z)V

    .line 1240
    monitor-enter p0

    .line 1241
    :try_start_0
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    .line 1242
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    .line 1243
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->cancelDoKeyguardForChildProfilesLocked()V

    const-string v0, "KeyguardViewMediator"

    .line 1244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartedWakingUp, seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyStartedWakingUp()V

    .line 1246
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1247
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchStartedWakingUp()V

    .line 1250
    iget-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_2

    .line 1251
    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->unregisterDozeCustomSensorEarily()V

    .line 1257
    :cond_2
    iget-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1258
    iget-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->onPreStartedWakingUp()V

    .line 1262
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 1263
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    .line 1246
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSystemReady()V
    .locals 1

    .line 934
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onWakeAndUnlocking()V
    .locals 1

    const-string v0, "KeyguardViewMediator#onWakeAndUnlocking"

    .line 2587
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2588
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 2590
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 2592
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone()V

    .line 2593
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public setAodShowing(Z)V
    .locals 0

    .line 2828
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    return-void
.end method

.method public setCurrentUser(I)V
    .locals 1

    .line 1777
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCurrentUser(I)V

    .line 1778
    monitor-enter p0

    .line 1779
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyTrustedChangedLocked(Z)V

    .line 1780
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setDozing(Z)V
    .locals 1

    .line 2681
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDozing:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2684
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDozing:Z

    .line 2685
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    return-void
.end method

.method public setKeyguardEnabled(Z)V
    .locals 3

    .line 1331
    monitor-enter p0

    :try_start_0
    const-string v0, "KeyguardViewMediator"

    .line 1332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setKeyguardEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 1336
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_1

    .line 1337
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz p1, :cond_0

    const-string p1, "KeyguardViewMediator"

    const-string v0, "in process of verifyUnlock request, ignoring"

    .line 1338
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    monitor-exit p0

    return-void

    :cond_0
    const-string p1, "KeyguardViewMediator"

    const-string v1, "remembering to reshow, hiding keyguard, disabling status bar expansion"

    .line 1345
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1349
    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->updateKeyguardDisable(Z)V

    .line 1351
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 1352
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideLocked()V

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_4

    .line 1353
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-eqz p1, :cond_4

    const-string p1, "KeyguardViewMediator"

    const-string v1, "previously hidden, reshowing, reenabling status bar expansion"

    .line 1355
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1357
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1359
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->updateKeyguardDisable(Z)V

    .line 1361
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 1363
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const-string v0, "KeyguardViewMediator"

    const-string v1, "onKeyguardExitResult(false), resetting"

    .line 1364
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1366
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Failed to call onKeyguardExitResult(false)"

    .line 1368
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1370
    :goto_0
    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 1371
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_2

    .line 1374
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->notifyKeyguardDone(Z)V

    .line 1375
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->notifyFakeLocking(Z)V

    .line 1377
    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    .line 1382
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 1383
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    const/16 v0, 0x8

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string p1, "KeyguardViewMediator"

    const-string/jumbo v0, "waiting until mWaitingUntilKeyguardVisible is false"

    .line 1384
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_3

    .line 1387
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1389
    :catch_1
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_3
    const-string p1, "KeyguardViewMediator"

    const-string v0, "done waiting for mWaitingUntilKeyguardVisible"

    .line 1392
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public setOccluded(ZZ)V
    .locals 2

    const-string v0, "KeyguardViewMediator#setOccluded"

    .line 1470
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOccluded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardViewMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1473
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1474
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1475
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public setPulsing(Z)V
    .locals 0

    .line 2692
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPulsing:Z

    return-void
.end method

.method public setSwitchingUser(Z)V
    .locals 0

    .line 1767
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setSwitchingUser(Z)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 922
    invoke-super {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->start()V

    .line 925
    monitor-enter p0

    .line 926
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setupLocked()V

    .line 927
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 8

    const-string v0, "KeyguardViewMediator#startKeyguardExitAnimation"

    .line 2619
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "KeyguardViewMediator"

    const-string/jumbo v1, "startKeyguardExitAnimation"

    .line 2621
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    new-instance v7, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    const/4 v6, 0x0

    move-object v1, v7

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;-><init>(JJLcom/android/systemui/keyguard/KeyguardViewMediator$1;)V

    const/16 p1, 0xc

    invoke-virtual {v0, p1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2625
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2626
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public userActivity()V
    .locals 3

    .line 833
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    return-void
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .locals 3

    const-string v0, "KeyguardViewMediator#verifyUnlock"

    .line 1402
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1403
    monitor-enter p0

    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string/jumbo v1, "verifyUnlock"

    .line 1404
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardViewMediator"

    const-string v2, "ignoring because device isn\'t provisioned"

    .line 1407
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1409
    :try_start_1
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Failed to call onKeyguardExitResult(false)"

    .line 1411
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1413
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v0, :cond_1

    const-string v0, "KeyguardViewMediator"

    const-string/jumbo v2, "verifyUnlock called when not externally disabled"

    .line 1417
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1419
    :try_start_3
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception p1

    :try_start_4
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Failed to call onKeyguardExitResult(false)"

    .line 1421
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1423
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_2

    .line 1426
    :try_start_5
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_2
    move-exception p1

    :try_start_6
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Failed to call onKeyguardExitResult(false)"

    .line 1428
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1430
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 1434
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1435
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1437
    invoke-virtual {p0, v1}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->updateKeyguardDisable(Z)V

    .line 1439
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestricted()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1441
    :try_start_7
    invoke-interface {p1, v0}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catch_3
    move-exception p1

    :try_start_8
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Failed to call onKeyguardExitResult(false)"

    .line 1443
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 1450
    :cond_3
    :try_start_9
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    :catch_4
    move-exception p1

    :try_start_a
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Failed to call onKeyguardExitResult(false)"

    .line 1452
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1455
    :goto_0
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1456
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    .line 1455
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw p1
.end method
