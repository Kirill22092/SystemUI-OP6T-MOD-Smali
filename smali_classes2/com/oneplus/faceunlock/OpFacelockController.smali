.class public Lcom/oneplus/faceunlock/OpFacelockController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OpFacelockController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/faceunlock/OpFacelockController$KeyguardStateCallback;,
        Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final FAILED_ATTEMPTS_TO_TIMEOUT:I

.field private static mFaceUnlockNoticeDelay:I

.field private static mMaxMotorUpDuration:I

.field private static mMaxMotorUpTimes:I


# instance fields
.field private final isLod:Z

.field private mBinding:Z

.field private mBindingSetting:Z

.field private mBouncer:Z

.field private mBoundToService:Z

.field private mBoundToSettingService:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCameraLaunching:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mEnterBouncerAfterScreenOn:Z

.field mFPC:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field private mFaceLockActive:Z

.field private mFacelockThread:Landroid/os/HandlerThread;

.field private mFailAttempts:I

.field private mFirst:Z

.field private mFpFailTimeStamp:J

.field private mFpm:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mIndicator:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private mIsGoingToSleep:Z

.field private mIsKeyguardShowing:Z

.field private mIsScreenOffUnlock:Z

.field private mIsScreenTurnedOn:Z

.field private mIsScreenTurningOn:Z

.field private mIsSleep:Z

.field private mKeyguardStateCallback:Lcom/oneplus/faceunlock/OpFacelockController$KeyguardStateCallback;

.field private mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mLastFaceUnlockResultIsOK:Z

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightingModeBrightness:I

.field private mLightingModeEnabled:Z

.field private mLightingModeSensorThreshold:I

.field private mLockout:Z

.field private mMotorManager:Lcom/oneplus/os/OpMotorManager;

.field private mMotorQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedToPendingStopFacelock:Z

.field private final mOPFacelockCallback:Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

.field private final mOffAuthenticateRunnable:Ljava/lang/Runnable;

.field private mPendingFacelockWhenBouncer:Z

.field private mPendingLaunchCameraSource:Ljava/lang/String;

.field private mPendingStopFacelock:Z

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field mPowerManager:Landroid/os/IPowerManager;

.field private final mResetScreenOnRunnable:Ljava/lang/Runnable;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorRate:I

.field private mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

.field private final mSetLockScreenToTransparentRunnable:Ljava/lang/Runnable;

.field private final mSettingConnection:Landroid/content/ServiceConnection;

.field private mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

.field private mSimSecure:Z

.field mSleepTime:J

.field private mStartFacelockWhenScreenOn:Z

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mUIHandler:Landroid/os/Handler;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isWeakFaceUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    sput v0, Lcom/oneplus/faceunlock/OpFacelockController;->FAILED_ATTEMPTS_TO_TIMEOUT:I

    const/4 v0, 0x6

    sput v0, Lcom/oneplus/faceunlock/OpFacelockController;->mMaxMotorUpTimes:I

    const/16 v0, 0x4650

    sput v0, Lcom/oneplus/faceunlock/OpFacelockController;->mMaxMotorUpDuration:I

    const/16 v0, 0xbb8

    sput v0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceUnlockNoticeDelay:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    const/4 p5, 0x0

    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBouncer:Z

    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenTurningOn:Z

    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenTurnedOn:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFirst:Z

    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBinding:Z

    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBindingSetting:Z

    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceLockActive:Z

    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToSettingService:Z

    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mCameraLaunching:Z

    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLockout:Z

    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsGoingToSleep:Z

    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsSleep:Z

    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mNeedToPendingStopFacelock:Z

    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingStopFacelock:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenOffUnlock:Z

    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStartFacelockWhenScreenOn:Z

    new-array v2, v0, [I

    const/16 v3, 0xa2

    aput v3, v2, p5

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->isLod:Z

    const/4 v3, 0x5

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, p5

    :goto_0
    iput v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightingModeSensorThreshold:I

    const/16 v2, 0x12c

    iput v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightingModeBrightness:I

    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightingModeEnabled:Z

    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingFacelockWhenBouncer:Z

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSleepTime:J

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mEnterBouncerAfterScreenOn:Z

    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSimSecure:Z

    iput-wide v4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFpFailTimeStamp:J

    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLastFaceUnlockResultIsOK:Z

    new-instance v2, Lcom/oneplus/faceunlock/OpFacelockController$1;

    invoke-direct {v2, p0}, Lcom/oneplus/faceunlock/OpFacelockController$1;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;)V

    iput-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/oneplus/faceunlock/OpFacelockController$3;

    invoke-direct {v2, p0}, Lcom/oneplus/faceunlock/OpFacelockController$3;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;)V

    iput-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mResetScreenOnRunnable:Ljava/lang/Runnable;

    new-instance v2, Lcom/oneplus/faceunlock/OpFacelockController$9;

    invoke-direct {v2, p0}, Lcom/oneplus/faceunlock/OpFacelockController$9;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;)V

    iput-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    new-instance v2, Lcom/oneplus/faceunlock/OpFacelockController$12;

    invoke-direct {v2, p0}, Lcom/oneplus/faceunlock/OpFacelockController$12;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;)V

    iput-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mConnection:Landroid/content/ServiceConnection;

    new-instance v2, Lcom/oneplus/faceunlock/OpFacelockController$13;

    invoke-direct {v2, p0}, Lcom/oneplus/faceunlock/OpFacelockController$13;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;)V

    iput-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSettingConnection:Landroid/content/ServiceConnection;

    new-instance v2, Lcom/oneplus/faceunlock/OpFacelockController$14;

    invoke-direct {v2, p0}, Lcom/oneplus/faceunlock/OpFacelockController$14;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;)V

    iput-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mOPFacelockCallback:Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    new-instance v2, Lcom/oneplus/faceunlock/OpFacelockController$15;

    invoke-direct {v2, p0}, Lcom/oneplus/faceunlock/OpFacelockController$15;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;)V

    iput-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    new-instance v2, Lcom/oneplus/faceunlock/OpFacelockController$16;

    invoke-direct {v2, p0}, Lcom/oneplus/faceunlock/OpFacelockController$16;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;)V

    iput-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSetLockScreenToTransparentRunnable:Ljava/lang/Runnable;

    const-string v2, "OpFacelockController"

    const-string v4, "new facelock"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iput-object p2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    iput-object p4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    new-instance p3, Landroid/os/HandlerThread;

    const-string p4, "FacelockThread"

    invoke-direct {p3, p4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFacelockThread:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->start()V

    new-instance p3, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;

    iget-object p4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFacelockThread:Landroid/os/HandlerThread;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p0, p4}, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUIHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    new-instance p3, Landroid/hardware/SystemSensorManager;

    iget-object p4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p3, p4, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p3, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p3

    iput-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightSensor:Landroid/hardware/Sensor;

    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x10e0016

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSensorRate:I

    const-string p3, "power"

    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object p4

    iput-object p4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPowerManager:Landroid/os/IPowerManager;

    iget-object p4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mContext:Landroid/content/Context;

    invoke-virtual {p4, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/PowerManager;

    new-array p4, v0, [I

    const/16 v0, 0xeb

    aput v0, p4, p5

    invoke-static {p4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0xc8

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result p3

    :goto_1
    iput p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightingModeBrightness:I

    iput-object p6, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFPC:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    const-string p4, "com.oneplus.faceunlock.action.FACE_SETTING_CHANGED"

    invoke-virtual {p3, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p4, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mContext:Landroid/content/Context;

    const-string p3, "vibrator"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mVibrator:Landroid/os/Vibrator;

    new-instance p1, Lcom/oneplus/faceunlock/OpFacelockController$KeyguardStateCallback;

    invoke-direct {p1, p0, v1}, Lcom/oneplus/faceunlock/OpFacelockController$KeyguardStateCallback;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;Lcom/oneplus/faceunlock/OpFacelockController$1;)V

    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mKeyguardStateCallback:Lcom/oneplus/faceunlock/OpFacelockController$KeyguardStateCallback;

    invoke-virtual {p2, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mContext:Landroid/content/Context;

    const-string p2, "fingerprint"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->playFacelockIndicationTextAnim()V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->handleResetLockout()V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->handleSkipBouncer()V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->handleResetFacelockPending()V

    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->updateIsFaceAdded()V

    return-void
.end method

.method static synthetic access$1500(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->enterBouncer()V

    return-void
.end method

.method static synthetic access$1600(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->handleFaceUnlockNotice()V

    return-void
.end method

.method static synthetic access$1700(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/oneplus/faceunlock/OpFacelockController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenOffUnlock:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/oneplus/faceunlock/OpFacelockController;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/faceunlock/OpFacelockController;->updateKeyguardAlpha(IZZ)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/oneplus/faceunlock/OpFacelockController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSimSecure:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSimSecure:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/oneplus/faceunlock/OpFacelockController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$2300(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingFacelockWhenBouncer:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->stopFacelock()V

    return-void
.end method

.method static synthetic access$2600(Lcom/oneplus/faceunlock/OpFacelockController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/faceunlock/OpFacelockController;->launchCamera(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/oneplus/faceunlock/OpFacelockController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLastFaceUnlockResultIsOK:Z

    return p0
.end method

.method static synthetic access$2802(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLastFaceUnlockResultIsOK:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/faceunlock/OpFacelockController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$302(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->resetFPTimeout()V

    return-void
.end method

.method static synthetic access$3200(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIndicator:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/oneplus/faceunlock/OpFacelockController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsGoingToSleep:Z

    return p0
.end method

.method static synthetic access$3402(Lcom/oneplus/faceunlock/OpFacelockController;Lcom/oneplus/faceunlock/internal/IOPFacelockService;)Lcom/oneplus/faceunlock/internal/IOPFacelockService;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBinding:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-object p0
.end method

.method static synthetic access$3602(Lcom/oneplus/faceunlock/OpFacelockController;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToSettingService:Z

    return p1
.end method

.method static synthetic access$3802(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBindingSetting:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mResetScreenOnRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/faceunlock/OpFacelockController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceLockActive:Z

    return p0
.end method

.method static synthetic access$4000(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4102(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mNeedToPendingStopFacelock:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/oneplus/faceunlock/OpFacelockController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBouncer:Z

    return p0
.end method

.method static synthetic access$4300(Lcom/oneplus/faceunlock/OpFacelockController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsSleep:Z

    return p0
.end method

.method static synthetic access$4400(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/oneplus/faceunlock/OpFacelockController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightingModeEnabled:Z

    return p0
.end method

.method static synthetic access$4600(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSetLockScreenToTransparentRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Vibrator;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mVibrator:Landroid/os/Vibrator;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/oneplus/faceunlock/OpFacelockController;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFailAttempts:I

    return p0
.end method

.method static synthetic access$4900(Lcom/oneplus/faceunlock/OpFacelockController;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightingModeSensorThreshold:I

    return p0
.end method

.method static synthetic access$500(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->handleStartFacelock()V

    return-void
.end method

.method static synthetic access$5000(Lcom/oneplus/faceunlock/OpFacelockController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/faceunlock/OpFacelockController;->updateFacelockLightMode(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/faceunlock/OpFacelockController;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/faceunlock/OpFacelockController;->updateRecognizedState(IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->handleStopFacelock()V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->unlockKeyguard()V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->handleRecognizeFail()V

    return-void
.end method

.method private bindFacelock()V
    .locals 6

    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBinding:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFaceAdded()Z

    move-result v0

    const-string v1, "OpFacelockController"

    if-nez v0, :cond_1

    const-string p0, "no face added"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.oneplus.faceunlock"

    const-string v4, "com.oneplus.faceunlock.FaceUnlockService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mConnection:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Binding ok"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBinding:Z

    goto :goto_0

    :cond_2
    const-string p0, "Binding fail"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindFacelock fail, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private bindFacelockSetting()V
    .locals 6

    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBindingSetting:Z

    const-string v1, "OpFacelockController"

    if-eqz v0, :cond_0

    const-string p0, "return Binding"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.oneplus.faceunlock"

    const-string v4, "com.oneplus.faceunlock.FaceSettingService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSettingConnection:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Binding setting ok"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBindingSetting:Z

    goto :goto_0

    :cond_1
    const-string p0, "Binding setting fail"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind setting fail, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private checkReachUpTimes(J)Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    sget v1, Lcom/oneplus/faceunlock/OpFacelockController;->mMaxMotorUpTimes:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p1, v0

    sget p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMaxMotorUpDuration:I

    int-to-long v0, p0

    cmp-long p0, p1, v0

    if-gtz p0, :cond_3

    return v2

    :cond_0
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    sget v1, Lcom/oneplus/faceunlock/OpFacelockController;->mMaxMotorUpTimes:I

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p1, v0

    sget p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMaxMotorUpDuration:I

    int-to-long v0, p0

    cmp-long p0, p1, v0

    if-gtz p0, :cond_3

    return v2

    :cond_1
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    sget v1, Lcom/oneplus/faceunlock/OpFacelockController;->mMaxMotorUpTimes:I

    add-int/lit8 v1, v1, -0x2

    if-gt v0, v1, :cond_2

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string p0, "OpFacelockController"

    const-string p1, "error queue state"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private downMotorBySystemApp()I
    .locals 4

    const-string v0, "OpFacelockController"

    const/16 v1, -0x3e7

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMotorManager:Lcom/oneplus/os/OpMotorManager;

    const-string v2, "systemui_faceunlock"

    invoke-virtual {p0, v2}, Lcom/oneplus/os/OpMotorManager;->downMotorBySystemApp(Ljava/lang/String;)I

    move-result v1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downMotor "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downMotor fail, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private enterBouncer()V
    .locals 2

    const-string v0, "OpFacelockController"

    const-string v1, "handle enter Bouncer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mEnterBouncerAfterScreenOn:Z

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/faceunlock/OpFacelockController$5;

    invoke-direct {v1, p0}, Lcom/oneplus/faceunlock/OpFacelockController$5;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleFaceUnlockNotice()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBouncer:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIndicator:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isShowingText()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNotice, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpFacelockController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/faceunlock/OpFacelockController$2;

    invoke-direct {v1, p0}, Lcom/oneplus/faceunlock/OpFacelockController$2;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private handleRecognizeFail()V
    .locals 4

    iget v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFailAttempts:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFailAttempts:I

    sget v2, Lcom/oneplus/faceunlock/OpFacelockController;->FAILED_ATTEMPTS_TO_TIMEOUT:I

    rem-int/2addr v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFailAttempts:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_3

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "OpFacelockController"

    const-string v3, "enter Bouncer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->enterBouncer()V

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->playFacelockIndicationTextAnim()V

    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/oneplus/faceunlock/OpFacelockController;->updateRecognizedState(IZ)V

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->handleStopFacelock()V

    return-void
.end method

.method private handleResetFacelockPending()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mNeedToPendingStopFacelock:Z

    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleResetFacelockPending, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingStopFacelock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFacelockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingStopFacelock:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->handleStopFacelock()V

    :cond_1
    return-void
.end method

.method private handleResetLockout()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLockout:Z

    iget-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->canLaunchFacelock()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/oneplus/faceunlock/OpFacelockController;->updateRecognizedState(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleSkipBouncer()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpFacelockController"

    const-string v1, "handleSkipBouncer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFailAttempts:I

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/oneplus/faceunlock/OpFacelockController;->updateRecognizedState(IZ)V

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->handleStopFacelock()V

    return-void
.end method

.method private handleStartFacelock()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isCameraErrorState()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle startFacelock, active:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceLockActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pendingStop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingStopFacelock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", live wp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowingLiveWallpaper(Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", cameraError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", showing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pending:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingFacelockWhenBouncer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", intOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenTurningOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", on:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenTurnedOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpFacelockController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    if-nez v1, :cond_0

    const-string p0, "OpFacelockController"

    const-string v0, "not start Facelock"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const-string p0, "OpFacelockController"

    const-string v0, "not start when camera error"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingFacelockWhenBouncer:Z

    if-eqz v0, :cond_2

    const-string p0, "OpFacelockController"

    const-string v0, "pending in bouncer"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceLockActive:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingStopFacelock:Z

    invoke-direct {p0, v1, v3}, Lcom/oneplus/faceunlock/OpFacelockController;->updateRecognizedState(IZ)V

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenTurnedOn:Z

    const/4 v2, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->isScreenOffAuthenticating()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStartFacelockWhenScreenOn:Z

    const-string p0, "OpFacelockController"

    const-string v0, "pending start to screen on"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-static {}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->upMotorBySystemApp()I

    move-result v0

    const/16 v4, -0x3e7

    if-ne v0, v4, :cond_6

    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenTurnedOn:Z

    if-nez v0, :cond_5

    iput-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mEnterBouncerAfterScreenOn:Z

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->enterBouncer()V

    :goto_0
    const/16 v0, 0xa

    invoke-direct {p0, v0, v2}, Lcom/oneplus/faceunlock/OpFacelockController;->updateRecognizedState(IZ)V

    const-string v0, "OpFacelockController"

    const-string v1, "not start motor for up limited"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    return-void

    :cond_6
    iput-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStartFacelockWhenScreenOn:Z

    invoke-direct {p0, v1, v3}, Lcom/oneplus/faceunlock/OpFacelockController;->updateRecognizedState(IZ)V

    iput-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceLockActive:Z

    iput-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mNeedToPendingStopFacelock:Z

    invoke-static {}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenTurningOn:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenTurnedOn:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->isScreenOffAuthenticating()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAutoFacelockEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenOffUnlock:Z

    invoke-direct {p0, v3, v2, v3}, Lcom/oneplus/faceunlock/OpFacelockController;->updateKeyguardAlpha(IZZ)V

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mResetScreenOnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mResetScreenOnRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x258

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    iget-object v4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mOPFacelockCallback:Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    invoke-interface {v1, v4}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->registerCallback(Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;)V

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    invoke-interface {v1}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->prepare()V

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    invoke-interface {v1, v3}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->startFaceUnlock(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0, v2}, Lcom/oneplus/faceunlock/OpFacelockController;->registerLightSensor(Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "OpFacelockController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startFacelock mService null, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mNeedToPendingStopFacelock:Z

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit p0

    return-void

    :catch_1
    move-exception v1

    const-string v2, "OpFacelockController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startFacelock fail, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mNeedToPendingStopFacelock:Z

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private handleStopFacelock()V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceLockActive:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not stop facelock, active:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceLockActive:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpFacelockController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mNeedToPendingStopFacelock:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingStopFacelock:Z

    sget-boolean p0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "OpFacelockController"

    const-string v0, "pending stop facelock"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle stopFacelock, pending camera:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFacelockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingStopFacelock:Z

    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceLockActive:Z

    invoke-virtual {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->stopFacelockLightMode()V

    invoke-static {}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->downMotorBySystemApp()I

    :cond_3
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mOPFacelockCallback:Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    invoke-interface {v1, v2}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->unregisterCallback(Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;)V

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    invoke-interface {v1, v0}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->stopFaceUnlock(I)V

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    invoke-interface {v0}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "OpFacelockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopFacelock mService null, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "OpFacelockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopFacelock fail, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/faceunlock/OpFacelockController$7;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/faceunlock/OpFacelockController$7;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    :cond_4
    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private isWakingUpReasonSupported(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "com.android.systemui:CAMERA_GESTURE_CIRCLE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isFaceUnlockSupportPassiveWakeup()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "wakeUp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockWaitingTap()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBouncer:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "android.policy:POWER"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "android.policy:DOUBLE_TAP"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    return v1
.end method

.method private launchCamera(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private playFacelockIndicationTextAnim()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/faceunlock/OpFacelockController$4;

    invoke-direct {v1, p0}, Lcom/oneplus/faceunlock/OpFacelockController$4;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private registerLightSensor(Z)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockLightingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightSensor:Landroid/hardware/Sensor;

    iget v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSensorRate:I

    mul-int/lit16 v2, v2, 0x3e8

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :goto_0
    return-void
.end method

.method private resetFPTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/biometrics/BiometricManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/hardware/biometrics/BiometricManager;->resetLockout([B)V

    :cond_0
    return-void
.end method

.method private stopFacelock()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private unbindFacelockSetting()V
    .locals 6

    const-string v0, "OpFacelockController"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbindFacelockSetting, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToSettingService:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToSettingService:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSettingConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBindingSetting:Z

    iput-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    iput-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToSettingService:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unbind face setting fail, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbind facelock, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    iput-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBinding:Z

    iput-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbind facelock fail, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private unlockKeyguard()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowingLiveWallpaper(Z)Z

    move-result v0

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v2

    iget-object v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unlockKeyguard, bouncer:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", live wp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", interactive = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", offUnlock:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenOffUnlock:Z

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OpFacelockController"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFailAttempts:I

    iget-object v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->setRecentUnlockBiometricFace(Z)V

    iget-object v4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->hideFODDim()V

    iget-object v4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->onFacelockUnlocking(Z)V

    iget-object v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->notifyFacelockStateChanged(I)V

    iget-object v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v4, Lcom/oneplus/faceunlock/OpFacelockController$10;

    invoke-direct {v4, p0, v0, v2}, Lcom/oneplus/faceunlock/OpFacelockController$10;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;ZZ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget v2, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->notifyScreenOffAuthenticate(ZII)V

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->notifyFacelockStateChanged(I)V

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->stopFacelock()V

    return-void
.end method

.method private upMotorBySystemApp()I
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMotorManager:Lcom/oneplus/os/OpMotorManager;

    invoke-virtual {v2}, Lcom/oneplus/os/OpMotorManager;->getMotorStateBySystemApp()I

    move-result v2

    const/16 v3, -0x3e7

    const-string v4, "OpFacelockController"

    if-gtz v2, :cond_0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/oneplus/faceunlock/OpFacelockController;->checkReachUpTimes(J)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queue size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "::::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMotorManager:Lcom/oneplus/os/OpMotorManager;

    const-string v5, "systemui_faceunlock"

    invoke-virtual {p0, v5}, Lcom/oneplus/os/OpMotorManager;->upMotorBySystemApp(Ljava/lang/String;)I

    move-result v3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upMotor "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", time:"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", state:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upMotor fail, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private updateFacelockLightMode(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPowerManager:Landroid/os/IPowerManager;

    iget v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightingModeBrightness:I

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->overrideScreenBrightnessRangeMinimum(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPowerManager:Landroid/os/IPowerManager;

    invoke-interface {v1, v0}, Landroid/os/IPowerManager;->overrideScreenBrightnessRangeMinimum(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFacelockLightMode, overrideScreenBrightness:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpFacelockController"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightingModeEnabled:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/oneplus/faceunlock/OpFacelockController;->registerLightSensor(Z)V

    :cond_1
    return-void
.end method

.method private updateIsFaceAdded()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIsFaceAdded, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFacelockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setIsFaceAdded(Z)V

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->bindFacelockSetting()V

    return-void

    :cond_0
    const/4 v3, 0x1

    :try_start_0
    invoke-interface {v0, v2}, Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;->checkState(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateIsFaceAdded fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    :goto_0
    iget-object v4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFaceAdded()Z

    move-result v4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFaceAdded:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", pre:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFaceAdded()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getBouncer()Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setIsFaceAdded(Z)V

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getBouncer()Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->updateBouncerPromptReason()V

    const-string v0, "face is added and not allowed, update Prompt reason"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setIsFaceAdded(Z)V

    if-eq v3, v4, :cond_5

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->bindFacelock()V

    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0, v2}, Lcom/oneplus/faceunlock/OpFacelockController;->tryToStartFaceLock(Z)Z

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->stopFacelock()V

    :cond_5
    :goto_2
    if-nez v3, :cond_6

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->unbindFacelockSetting()V

    :cond_6
    iput-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFirst:Z

    return-void
.end method

.method private updateKeyguardAlpha(IZZ)V
    .locals 12

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowingLiveWallpaper(Z)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update alpha:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenOffUnlock:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", live wp:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "OpFacelockController"

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget v3, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    invoke-virtual {v2, v9, v3, v9}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->notifyScreenOffAuthenticate(ZII)V

    :cond_0
    iget-object v10, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v11, Lcom/oneplus/faceunlock/OpFacelockController$8;

    move-object v2, v11

    move-object v3, p0

    move v4, v0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/faceunlock/OpFacelockController$8;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;ZIZZ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-ne p1, v9, :cond_6

    iput-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenOffUnlock:Z

    if-eqz p2, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSleepTime:J

    sub-long/2addr p1, v2

    const-wide/16 v2, 0x1388

    cmp-long p1, p1, v2

    if-lez p1, :cond_1

    const/16 p1, 0xa

    goto :goto_0

    :cond_1
    const/16 p1, 0x64

    :goto_0
    if-nez v0, :cond_2

    const/16 p1, 0x12c

    :cond_2
    sget-boolean p2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateKeyguardAlpha: delay= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result p2

    if-nez p2, :cond_5

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget p1, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    invoke-virtual {p0, v1, p1}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->notifyScreenOffAuthenticate(ZI)V

    goto :goto_2

    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    int-to-long v0, p1

    invoke-virtual {p2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_2
    return-void
.end method

.method private updateNotifyMessage(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFacelockNotifyMsgId(I)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/faceunlock/OpFacelockController$11;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/oneplus/faceunlock/OpFacelockController$11;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;IZI)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateRecognizedState(IZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLockout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->notifyFacelockStateChanged(I)V

    invoke-direct {p0, p1, p2}, Lcom/oneplus/faceunlock/OpFacelockController;->updateNotifyMessage(IZ)V

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockDisabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLockout:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public canLaunchFacelock()Z
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mCameraLaunching:Z

    const/4 v1, 0x0

    const-string v2, "OpFacelockController"

    if-eqz v0, :cond_0

    const-string p0, "not start when camera launching"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean p0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "not allow to facelock"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->isFacelockTimeout()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "timeout, not allow to facelock"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "  OpFacelockController: \n"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mFailAttempts: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFailAttempts:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mLockout: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLockout:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mBinding: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBinding:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mCameraLaunching: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mCameraLaunching:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mBoundToService: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mBoundToSettingService: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToSettingService:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mFaceLockActive: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceLockActive:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mService: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mFirst: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFirst:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  isFacelockEnabled: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockEnabled()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  isAutoFacelockEnabled: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAutoFacelockEnabled()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  isFacelockLightingEnabled: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockLightingEnabled()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  FacelockRunningType: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFacelockRunningType()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  isFacelockTimeout: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->isFacelockTimeout()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  isFacelockAllowed: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockAllowed()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mIsKeyguardShowing: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mBouncer: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBouncer:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mIsScreenTurnedOn: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenTurnedOn:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mNeedToPendingStopFacelock: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mNeedToPendingStopFacelock:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mPendingStopFacelock: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingStopFacelock:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mPendingLaunchCameraSource: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mIsScreenOffUnlock: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenOffUnlock:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mStartFacelockWhenScreenOn: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStartFacelockWhenScreenOn:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mIsSleep: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsSleep:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mLightingModeEnabled: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightingModeEnabled:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mLightingModeSensorThreshold: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightingModeSensorThreshold:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mLightingModeBrightness: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightingModeBrightness:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  FAILED_ATTEMPTS_TO_TIMEOUT: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/oneplus/faceunlock/OpFacelockController;->FAILED_ATTEMPTS_TO_TIMEOUT:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mMotorQueue: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "  passive: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isFaceUnlockSupportPassiveWakeup()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public getFpFailTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFpFailTimeStamp:J

    return-wide v0
.end method

.method public isFacelockRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceLockActive:Z

    return p0
.end method

.method public isFacelockTimeout()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    iget-boolean p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLockout:Z

    if-nez p0, :cond_1

    if-nez v0, :cond_0

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

.method public isScreenOffUnlock()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenOffUnlock:Z

    return p0
.end method

.method public notifyCameraLaunching(ZLjava/lang/String;Z)Z
    .locals 3

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportDoubleTapAlexa()Z

    move-result v0

    const-string v1, "OpFacelockController"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->isDoubleTapCamera()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "return notifyCameraLaunching"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    if-eqz v0, :cond_1

    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mCameraLaunching:Z

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyCameraLaunching, source:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", facelockActive:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceLockActive:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", keyguard:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isDoubleTap:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceLockActive:Z

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    iput-object p2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    const/4 p1, 0x1

    move v2, p1

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->stopFacelock()V

    :cond_3
    return v2
.end method

.method public onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFpFailTimeStamp:J

    return-void
.end method

.method public onClearFailedFacelockAttempts()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClearFailedFacelockAttempts, failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFailAttempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lockout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLockout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFacelockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFailAttempts:I

    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLockout:Z

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeviceProvisioned, bound:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFacelockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->bindFacelock()V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onDreamingStateChanged(Z)V
    .locals 1

    sget-boolean p0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDreamingStateChanged, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpFacelockController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onFacelockEnableChanged(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onFacelockEnableChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFacelockController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenOffUnlock:Z

    :cond_0
    return-void
.end method

.method public onFacelockLightingChanged(Z)V
    .locals 1

    sget-boolean p0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLightChanged "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpFacelockController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinishedGoingToSleep, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpFacelockController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsGoingToSleep:Z

    iget v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightingModeBrightness:I

    const-string v1, "persist.sys.facelock.bright"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightingModeBrightness:I

    const-string v0, "persist.sys.facelock.lsensor"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_1

    iput p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightingModeSensorThreshold:I

    :cond_1
    const/4 p0, 0x6

    const-string p1, "persist.sys.facelock.uptimes"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMaxMotorUpTimes:I

    const/16 p0, 0x4650

    const-string p1, "persist.sys.facelock.updura"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMaxMotorUpDuration:I

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 3

    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    const-string v1, "OpFacelockController"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardBouncerChanged , bouncer:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", show:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", skip:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->canSkipBouncerByFacelock()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", unlocking:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockUnlocking()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", bouncerRec:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncerRecognizeEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", active: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceLockActive:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", interactive: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFacelockRunningType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    iput-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLastFaceUnlockResultIsOK:Z

    :cond_1
    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBouncer:Z

    invoke-static {}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockUnlocking()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncerRecognizeEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->tryToStartFaceLockInBouncer()Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFacelockRunningType()I

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->tryToStartFaceLockInBouncer()Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    if-nez v0, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p0, v2}, Lcom/oneplus/faceunlock/OpFacelockController;->tryToStartFaceLock(Z)Z

    return-void

    :cond_5
    invoke-static {}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isFaceUnlockSupportPassiveWakeup()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockWaitingTap()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v2}, Lcom/oneplus/faceunlock/OpFacelockController;->tryToStartFaceLock(Z)Z

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAutoFacelockEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceLockActive:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    invoke-direct {p0, v0, v2}, Lcom/oneplus/faceunlock/OpFacelockController;->updateRecognizedState(IZ)V

    :cond_7
    :goto_1
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->canSkipBouncerByFacelock()Z

    move-result p1

    if-eqz p1, :cond_8

    const/16 p1, 0x8

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFPC:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->startWakeAndUnlockForFace(I)V

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockUnlocking()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "just keyguardDone"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone()V

    :cond_9
    :goto_2
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 5

    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyguardVisibilityChanged, show:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bound:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", first:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFirst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFacelockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->bindFacelock()V

    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFirst:Z

    const/16 v1, 0xc

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    iget-boolean v4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->canLaunchFacelock()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isFaceUnlockSupportPassiveWakeup()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1, v3}, Lcom/oneplus/faceunlock/OpFacelockController;->updateRecognizedState(IZ)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStartFacelockWhenScreenOn:Z

    iput-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mCameraLaunching:Z

    iput-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mNeedToPendingStopFacelock:Z

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    :goto_0
    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    if-nez p1, :cond_7

    iput-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingFacelockWhenBouncer:Z

    :cond_7
    return-void
.end method

.method public onMotorStateChanged(I)V
    .locals 2

    const/16 v0, 0xd

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const/16 v1, -0xa

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onPasswordLockout()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpFacelockController"

    const-string v1, "onPasswordLockout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->stopFacelock()V

    return-void
.end method

.method public onPreStartedGoingToSleep()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpFacelockController"

    const-string v1, "onPreStartedGoingToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsSleep:Z

    return-void
.end method

.method public onPreStartedWakingUp()V
    .locals 4

    const-string v0, "OpFacelockController"

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPowerManager:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->getWakingUpReason()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWakingUpReason,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.policy:POWER"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreStartedWakingUp, bound:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", pending:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingFacelockWhenBouncer:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", bouncerRec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncerRecognizeEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", fp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFPC:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsSleep:Z

    iget-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->canLaunchFacelock()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncerRecognizeEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFPC:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, v1}, Lcom/oneplus/faceunlock/OpFacelockController;->isWakingUpReasonSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0xc

    invoke-direct {p0, v1, v0}, Lcom/oneplus/faceunlock/OpFacelockController;->updateRecognizedState(IZ)V

    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingFacelockWhenBouncer:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/oneplus/faceunlock/OpFacelockController;->updateRecognizedState(IZ)V

    :cond_4
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpFacelockController"

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenTurnedOn:Z

    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenTurningOn:Z

    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mEnterBouncerAfterScreenOn:Z

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScreenTurnedOn, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStartFacelockWhenScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsSleep:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mEnterBouncerAfterScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFacelockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenTurnedOn:Z

    iget-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mEnterBouncerAfterScreenOn:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->enterBouncer()V

    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStartFacelockWhenScreenOn:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStartFacelockWhenScreenOn:Z

    invoke-virtual {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->canLaunchFacelock()Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsSleep:Z

    iget-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpFacelockController"

    const-string v1, "onScreenTurningOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenTurningOn:Z

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 3

    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartedGoingToSleep, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", bound:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpFacelockController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsGoingToSleep:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStartFacelockWhenScreenOn:Z

    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mCameraLaunching:Z

    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsSleep:Z

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingFacelockWhenBouncer:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSleepTime:J

    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenOffUnlock:Z

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 4

    const-string v0, "OpFacelockController"

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPowerManager:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->getWakingUpReason()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWakingUpReason,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.policy:POWER"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartedWakingUp, bound:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", lockout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLockout:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", bouncerRec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncerRecognizeEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", fp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFPC:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFacelockRunningType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", bouncer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBouncer:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", notice:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFacelockNoticeEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsSleep:Z

    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->canLaunchFacelock()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncerRecognizeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFPC:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFacelockNoticeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    sget v0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceUnlockNoticeDelay:I

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0, v1}, Lcom/oneplus/faceunlock/OpFacelockController;->isWakingUpReasonSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 1

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->canLaunchFacelock()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockRecognizing()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "OpFacelockController"

    const-string v0, "onStrongAuthStateChanged to stop"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->stopFacelock()V

    :cond_1
    return-void
.end method

.method public onSystemReady()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpFacelockController"

    const-string v1, "onSystemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/oneplus/os/OpMotorManager;

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/os/OpMotorManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMotorManager:Lcom/oneplus/os/OpMotorManager;

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->bindFacelock()V

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->bindFacelockSetting()V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->stopFacelock()V

    goto :goto_0

    :cond_0
    const-string p1, "OpFacelockController"

    const-string v0, "user switch to owner"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/faceunlock/OpFacelockController;->tryToStartFaceLock(Z)Z

    :goto_0
    return-void
.end method

.method public setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIndicator:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    return-void
.end method

.method public stopFacelockLightMode()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/faceunlock/OpFacelockController;->registerLightSensor(Z)V

    invoke-direct {p0, v0}, Lcom/oneplus/faceunlock/OpFacelockController;->updateFacelockLightMode(Z)V

    return-void
.end method

.method public tryToStartFaceLock(Z)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tryToStartFaceLock, bound:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", motor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFacelockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->canLaunchFacelock()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return v0
.end method

.method public tryToStartFaceLockAfterScreenOn()V
    .locals 4

    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tryToStartFaceLockAfterScreenOn,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncerRecognizeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFacelockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStartFacelockWhenScreenOn:Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iput-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingFacelockWhenBouncer:Z

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/faceunlock/OpFacelockController$6;

    invoke-direct {v1, p0}, Lcom/oneplus/faceunlock/OpFacelockController$6;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public tryToStartFaceLockInBouncer()Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startInBouncer, bound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->canLaunchFacelock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", skip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpFacelockController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->canLaunchFacelock()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
