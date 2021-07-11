.class public Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "OpKeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z

.field public static final IS_SUPPORT_BOOT_TO_ENTER_BOUNCER:Z

.field protected static final IS_SUPPORT_CUSTOM_FINGERPRINT:Z

.field public static final IS_SUPPORT_FACE_UNLOCK:Z

.field private static final IS_SUPPORT_FINGERPRINT_POCKET:Z

.field public static final IS_SUPPORT_MOTOR_CAMERA:Z


# instance fields
.field private FOD_UI_DEBUG:Ljava/lang/String;

.field protected mAodAlwaysOnController:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

.field private mAutoFacelockEnabled:Z

.field private mBootCompleted:Z

.field private mBouncerRecognizeEnabled:Z

.field protected mCameraLaunched:Z

.field private mClockCtrl:Lcom/oneplus/keyguard/clock/OpClockCtrl;

.field private final mContext:Landroid/content/Context;

.field private mCurDisplayPoweStatus:I

.field protected mDuringAcquired:Z

.field private mFacelockEnabled:Z

.field private mFacelockLightingEnabled:Z

.field private mFacelockRunningType:I

.field private mFacelockSettingsObserver:Landroid/database/ContentObserver;

.field private mFacelockSuccessTimes:I

.field private mFacelockUnlocking:Z

.field private mFailedAttempts:Landroid/util/SparseIntArray;

.field private mFakeLocking:Z

.field private mFingerprintAlreadyAuthenticated:Z

.field protected mFingerprintFailedAttempts:Landroid/util/SparseIntArray;

.field protected mFodBurnInProtectionHelper:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;

.field private mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

.field private mFodOnAodStateObserver:Landroid/database/ContentObserver;

.field private mFpm:Landroid/hardware/fingerprint/FingerprintManager;

.field private mGoingToSleepReason:I

.field private mImeShow:Z

.field protected mIsEmergencyPanelExpand:Z

.field private mIsFaceAdded:Z

.field protected mIsInBrickMode:Z

.field private mIsKeyguardDone:Z

.field private mIsLowLightEnv:Z

.field private mIsUserUnlocked:Z

.field private mKeyguardShowing:Z

.field private mLaunchingCamera:Z

.field private mLaunchingCameraEvenSleep:Z

.field private mLaunchingLeftAffordance:Z

.field private mLidOpen:Z

.field protected mLockoutState:Z

.field private mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

.field protected mPendingSubInfoChange:Z

.field mPocketListener:Landroid/hardware/SensorEventListener;

.field private mPocketSensor:Landroid/hardware/Sensor;

.field private mPocketSensorEnabled:Z

.field private mPocketState:I

.field protected mPowerManager:Landroid/os/PowerManager;

.field private mPreventModeActive:Z

.field private mQSExpanded:Z

.field private mResetAttempsTimeInMillis:J

.field private mScreenTurningOn:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShowFodOnAodEnabled:Z

.field private mShutdownDialogShow:Z

.field private mShutingDown:Z

.field protected mSimUnlockSlot0:Z

.field protected mSimUnlockSlot1:Z

.field private mSkipBouncerByFacelock:Z

.field private mTimeTickListener:Lcom/oneplus/keyguard/clock/OpClockCtrl$OnTimeUpdatedListener;

.field private mWakingUpReason:Ljava/lang/String;

.field private mWakingUpTime:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 120
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->DEBUG:Z

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x23

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 161
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_BOOT_TO_ENTER_BOUNCER:Z

    new-array v1, v0, [I

    const/16 v2, 0x22

    aput v2, v1, v3

    .line 218
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_FACE_UNLOCK:Z

    new-array v1, v0, [I

    const/16 v2, 0x3d

    aput v2, v1, v3

    .line 261
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v0, [I

    const/16 v2, 0x74

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    sput-boolean v1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_FINGERPRINT_POCKET:Z

    new-array v0, v0, [I

    const/16 v1, 0x5b

    aput v1, v0, v3

    .line 264
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_MOTOR_CAMERA:Z

    .line 266
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sys.prop.fod_ui_test"

    .line 126
    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->FOD_UI_DEBUG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    .line 157
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 160
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsUserUnlocked:Z

    const/4 v1, 0x0

    .line 165
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mImeShow:Z

    .line 166
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mQSExpanded:Z

    .line 167
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 168
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mScreenTurningOn:Z

    .line 171
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShutdownDialogShow:Z

    .line 176
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    .line 178
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    .line 183
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintFailedAttempts:Landroid/util/SparseIntArray;

    .line 189
    iput v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    .line 194
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mDuringAcquired:Z

    .line 198
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCameraEvenSleep:Z

    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpReason:Ljava/lang/String;

    .line 204
    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpTime:Ljava/util/Calendar;

    const-wide/16 v2, 0x0

    .line 209
    iput-wide v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mResetAttempsTimeInMillis:J

    .line 220
    iput v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    .line 221
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsFaceAdded:Z

    .line 222
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockEnabled:Z

    .line 223
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAutoFacelockEnabled:Z

    .line 224
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBouncerRecognizeEnabled:Z

    .line 226
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockLightingEnabled:Z

    .line 227
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSkipBouncerByFacelock:Z

    .line 230
    iput v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    .line 268
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShutingDown:Z

    const/4 v2, -0x1

    .line 270
    iput v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mGoingToSleepReason:I

    .line 291
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot0:Z

    .line 292
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot1:Z

    .line 293
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPendingSubInfoChange:Z

    .line 306
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsInBrickMode:Z

    .line 315
    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodAlwaysOnController:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    .line 324
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShowFodOnAodEnabled:Z

    const/4 v0, 0x2

    .line 337
    iput v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mCurDisplayPoweStatus:I

    .line 342
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsEmergencyPanelExpand:Z

    .line 345
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBootCompleted:Z

    .line 469
    invoke-static {}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->getInstance()Lcom/oneplus/keyguard/clock/OpClockCtrl;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mClockCtrl:Lcom/oneplus/keyguard/clock/OpClockCtrl;

    .line 470
    new-instance v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$2;

    invoke-direct {v0, p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$2;-><init>(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mTimeTickListener:Lcom/oneplus/keyguard/clock/OpClockCtrl$OnTimeUpdatedListener;

    .line 799
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPreventModeActive:Z

    .line 1066
    new-instance v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$3;

    invoke-direct {v0, p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$3;-><init>(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketListener:Landroid/hardware/SensorEventListener;

    .line 425
    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 427
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "fingerprint"

    .line 428
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_0
    const-string v0, "power"

    .line 430
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    .line 433
    sget-boolean p1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz p1, :cond_1

    .line 434
    sget-object p1, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_COLORDISPLAY_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {p1}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/display/IOneplusColorDisplayManager;

    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    .line 440
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->startClockCtrl()V

    .line 444
    new-instance p1, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodAlwaysOnController:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    .line 446
    sget-boolean p1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz p1, :cond_2

    .line 447
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->watchForFodOnAodSettings()V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleFingerprintTimeout()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Landroid/content/Context;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Landroid/hardware/Sensor;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)I
    .locals 0

    .line 117
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    return p0
.end method

.method static synthetic access$1400(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;IZ)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFPStateBySensor(IZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFacelockSettings()V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockEnabled:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAutoFacelockEnabled:Z

    return p0
.end method

.method static synthetic access$200(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Z)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handlePreventModeChanged(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockLightingEnabled:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBouncerRecognizeEnabled:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)I
    .locals 0

    .line 117
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    return p0
.end method

.method static synthetic access$2300(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Ljava/util/ArrayList;
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Z)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFacelockTrustState(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Z)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleLidSwitchChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Z)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleAlwaysOnChanged(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Z)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleEnvironmentLightChanged(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;I)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleDisplayPowerStatusChanged(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleFinishedWakingUp()V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$902(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Z)Z
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShowFodOnAodEnabled:Z

    return p1
.end method

.method private checkDozeSettings()V
    .locals 4

    .line 2361
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isSupportAlwaysOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2362
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_always_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 2364
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_1
    return-void
.end method

.method private clearFailedFacelockAttempts()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1815
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1816
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_0

    .line 1818
    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onClearFailedFacelockAttempts()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1821
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->notifyFacelockStateChanged(I)V

    return-void
.end method

.method private clearFingerprintFailedUnlockAttempts()V
    .locals 1

    .line 1422
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintFailedAttempts:Landroid/util/SparseIntArray;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->delete(I)V

    return-void
.end method

.method private getBatteryStatus()Lcom/android/settingslib/fuelgauge/BatteryStatus;
    .locals 2

    .line 2263
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mBatteryStatus"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;

    return-object p0
.end method

.method private getCallbacks()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/keyguard/KeyguardUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation

    .line 2145
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mCallbacks"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method private getCurrentUser()I
    .locals 2

    .line 2217
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "sCurrentUser"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;
    .locals 2

    .line 2135
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mHandler"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    return-object p0
.end method

.method private getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 2

    .line 2223
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mLockPatternUtils"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method private getServiceStates()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ServiceState;",
            ">;"
        }
    .end annotation

    .line 2302
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mServiceStates"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    return-object p0
.end method

.method private getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;
    .locals 2

    .line 2228
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mStrongAuthTracker"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    return-object p0
.end method

.method private getUpdateBiometricListeningStateRunnable()Ljava/lang/Runnable;
    .locals 2

    .line 2140
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mUpdateBiometricListeningState"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method private getUserCanSkipBouncer(I)Z
    .locals 5

    .line 2285
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "getUserCanSkipBouncer"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2286
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private handleAlwaysOnChanged(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 2415
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2416
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2418
    invoke-virtual {v1, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onAlwaysOnEnableChanged(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleBootCompleted()V
    .locals 2

    .line 2560
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBootCompleted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2561
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBootCompleted:Z

    const/4 v0, 0x0

    .line 2562
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2563
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_1

    .line 2565
    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onBootCompleted()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleDisplayPowerStatusChanged(I)V
    .locals 2

    const/4 v0, 0x0

    .line 2476
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2477
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2479
    invoke-virtual {v1, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onDisplayPowerStatusChanged(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleEnvironmentLightChanged(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 2452
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2453
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2455
    invoke-virtual {v1, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onEnvironmentLightChanged(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleFingerprintTimeout()V
    .locals 2

    .line 1431
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpKeyguardUpdateMonitor"

    const-string v1, "handleFingerprintTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 1433
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1434
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_1

    .line 1436
    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onFingerprintTimeout()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleFinishedWakingUp()V
    .locals 3

    .line 2495
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2497
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_0

    .line 2499
    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onFinishedWakingUp()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleLidSwitchChanged(Z)V
    .locals 1

    .line 1185
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    if-eq p1, v0, :cond_0

    .line 1186
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFPStateBySensor(IZ)V

    :cond_0
    return-void
.end method

.method private handlePreventModeChanged(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1269
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1270
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 1272
    invoke-virtual {v1, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onPreventModeChanged(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1277
    :cond_1
    sget-boolean p1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mQSExpanded:Z

    if-eqz p1, :cond_2

    .line 1278
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_2
    return-void
.end method

.method private handleSimStateChange(III)V
    .locals 7

    .line 2295
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "handleSimStateChange"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2297
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private handleSimSubscriptionInfoChanged()V
    .locals 3

    .line 2290
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "handleSimSubscriptionInfoChanged"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isBouncer()Z
    .locals 2

    .line 2248
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mBouncer"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isDeviceInteractive()Z
    .locals 2

    .line 2155
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mDeviceInteractive"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isDeviceProvisioned()Z
    .locals 3

    .line 2273
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isDeviceProvisioned"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isDreaming()Z
    .locals 2

    .line 2160
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mIsDreaming"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isFingerprintDetectionRunning()Z
    .locals 3

    .line 2233
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isFingerprintDetectionRunning"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isForegroundApp(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1975
    :cond_0
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 1976
    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    .line 1977
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method private isKeyguardGoingAway()Z
    .locals 2

    .line 2211
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mKeyguardGoingAway"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isKeyguardIsVisible()Z
    .locals 2

    .line 2268
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mKeyguardIsVisible"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isKeyguardOccluded()Z
    .locals 2

    .line 2166
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mKeyguardOccluded"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isKeyguardVisible()Z
    .locals 3

    .line 2150
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isKeyguardVisible"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isMotorCameraSupported()Z
    .locals 1

    .line 1842
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_MOTOR_CAMERA:Z

    return v0
.end method

.method private isScreenOn()Z
    .locals 3

    .line 2243
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isScreenOn"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isScreenSaverActivatedOnDock()Z
    .locals 3

    .line 2114
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2116
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, -0x2

    const-string v2, "screensaver_activate_on_dock"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isScreenSaverEnabled()Z
    .locals 3

    .line 2106
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2108
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, -0x2

    const-string v2, "screensaver_enabled"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSensorNear(IZ)Z
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method private onScreenStatusChanged(Z)V
    .locals 0

    .line 488
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mClockCtrl:Lcom/oneplus/keyguard/clock/OpClockCtrl;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->onScreenTurnedOn()V

    goto :goto_0

    .line 492
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->onScreenTurnedOff()V

    :cond_1
    :goto_0
    return-void
.end method

.method private reportMDMEvent()V
    .locals 4

    .line 2309
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportMDMEvent: mWakingUpTime is null = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpTime:Ljava/util/Calendar;

    if-nez v1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    :cond_1
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpTime:Ljava/util/Calendar;

    if-eqz v0, :cond_2

    .line 2313
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2316
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2318
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpTime:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 2319
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 2320
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string v0, "keyguard_temp"

    const-string v1, "X9HFK50WT7"

    invoke-static {v0, v0, p0, v1}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private setPocketSensorEnabled(Z)V
    .locals 6

    .line 1132
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isPreventModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1135
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    const-string v1, "OpKeyguardUpdateMonitor"

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const-string p0, "not register when Lid closed"

    .line 1136
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1140
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 1143
    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v4

    .line 1145
    :goto_0
    sget-boolean v2, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "listen pocket-sensor: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", current="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", FP enabled="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 1149
    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    if-nez p1, :cond_8

    .line 1150
    iput-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    .line 1151
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketListener:Landroid/hardware/SensorEventListener;

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensor:Landroid/hardware/Sensor;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, p0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_1

    .line 1155
    :cond_4
    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    if-eqz p1, :cond_7

    .line 1156
    iput-boolean v4, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    .line 1157
    iget p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    invoke-direct {p0, p1, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSensorNear(IZ)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1158
    iput v4, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    .line 1161
    iput-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    .line 1163
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1165
    :cond_5
    iput v4, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    .line 1167
    iput-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    .line 1170
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p1, :cond_6

    .line 1171
    invoke-virtual {p1, v4}, Landroid/hardware/fingerprint/FingerprintManager;->updateStatus(I)I

    .line 1174
    :cond_6
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_1

    .line 1177
    :cond_7
    invoke-direct {p0, v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleLidSwitchChanged(Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method private setSwitchingUser(Z)V
    .locals 5

    .line 2258
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "setSwitchingUser"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2259
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private startClockCtrl()V
    .locals 2

    .line 482
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mClockCtrl:Lcom/oneplus/keyguard/clock/OpClockCtrl;

    if-eqz v0, :cond_0

    .line 483
    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mTimeTickListener:Lcom/oneplus/keyguard/clock/OpClockCtrl$OnTimeUpdatedListener;

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->onStartCtrl(Lcom/oneplus/keyguard/clock/OpClockCtrl$OnTimeUpdatedListener;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private updateFPStateBySensor(IZ)V
    .locals 4

    .line 1097
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    .line 1098
    iget-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    .line 1100
    iput p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    .line 1101
    iput-boolean p2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    if-nez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, p1

    .line 1108
    :goto_0
    iget-object v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_1

    .line 1109
    invoke-virtual {v3, v2}, Landroid/hardware/fingerprint/FingerprintManager;->updateStatus(I)I

    .line 1113
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSensorNear(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1115
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    goto :goto_1

    .line 1116
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSensorNear(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSensorNear(IZ)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1118
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateFacelockSettings()V
    .locals 6

    .line 1671
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockEnabled:Z

    .line 1673
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1674
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;

    move-result-object v0

    iget-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockEnabled:Z

    invoke-virtual {v0, v3}, Lcom/oneplus/faceunlock/OpFacelockController;->onFacelockEnableChanged(Z)V

    .line 1678
    :cond_1
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "oneplus_auto_face_unlock_enable"

    invoke-static {v0, v3, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAutoFacelockEnabled:Z

    .line 1680
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "oneplus_face_unlock_assistive_lighting_enable"

    invoke-static {v0, v3, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    .line 1681
    :goto_2
    iget-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockLightingEnabled:Z

    if-eq v0, v3, :cond_5

    .line 1682
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockLightingEnabled:Z

    .line 1683
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_3
    if-ge v4, v3, :cond_5

    .line 1685
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v5, :cond_4

    .line 1687
    invoke-virtual {v5, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onFacelockLightingChanged(Z)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1693
    :cond_5
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "oneplus_face_unlock_powerkey_recognize_enable"

    invoke-static {v0, v3, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBouncerRecognizeEnabled:Z

    .line 1696
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_success_times"

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    return-void
.end method

.method private updateFacelockTrustState(Z)V
    .locals 2

    .line 1744
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSkipBouncerByFacelock:Z

    .line 1745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FacelockTrust,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpKeyguardUpdateMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1746
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1747
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    .line 1749
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustChanged(I)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateFingerprintListeningState()V
    .locals 3

    .line 2130
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "updateFingerprintListeningState"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private watchForFodOnAodSettings()V
    .locals 5

    .line 454
    new-instance v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$1;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$1;-><init>(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodOnAodStateObserver:Landroid/database/ContentObserver;

    .line 462
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_fod_on_aod_enabled"

    .line 463
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodOnAodStateObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 462
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 464
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodOnAodStateObserver:Landroid/database/ContentObserver;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method


# virtual methods
.method public allowShowingLock()Z
    .locals 3

    .line 1958
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1961
    :cond_0
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->op_camera_package_name:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1962
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncer()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardGoingAway()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "com.oneplus.camera"

    :cond_1
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isForegroundApp(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public canSkipBouncerByFacelock()Z
    .locals 0

    .line 1918
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSkipBouncerByFacelock:Z

    return p0
.end method

.method public clearFailedUnlockAttempts(Z)V
    .locals 4

    const-string v0, "OpKeyguardUpdateMonitor"

    if-eqz p1, :cond_0

    .line 1382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResetAttempsTimeInMillis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mResetAttempsTimeInMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mResetAttempsTimeInMillis:J

    .line 1387
    :cond_0
    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1389
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->clearFingerprintFailedUnlockAttempts()V

    .line 1393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockDisabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isWeakFaceUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 1396
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockDisabled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1397
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->clearFailedFacelockAttempts()V

    goto :goto_0

    .line 1400
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->clearFailedFacelockAttempts()V

    :cond_3
    :goto_0
    return-void
.end method

.method public dispatchAlwaysOnEnableChanged(Z)V
    .locals 3

    xor-int/lit8 p1, p1, 0x1

    .line 2409
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v0

    const/16 v1, 0x1f9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2410
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 2411
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchAuthenticateChanged(ZIII)V
    .locals 3

    .line 806
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 808
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_0

    .line 810
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onAuthenticateChanged(ZIII)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchBootCompleted()V
    .locals 1

    .line 2553
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p0

    const/16 v0, 0x1fd

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dispatchFinishedWakingUp()V
    .locals 1

    .line 2491
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p0

    const/16 v0, 0x1fc

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dispatchSystemReady()V
    .locals 1

    .line 1030
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p0

    const/16 v0, 0x1f7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public earlyNotifySwitchingUser()V
    .locals 2

    const-string v0, "OpKeyguardUpdateMonitor"

    const-string v1, "earlyNotifySwitchingUser"

    .line 792
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->hideFODDim()V

    const/4 v0, 0x1

    .line 794
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setSwitchingUser(Z)V

    return-void
.end method

.method public getAodAlwaysOnController()Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;
    .locals 0

    .line 2342
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodAlwaysOnController:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    return-object p0
.end method

.method public getDisplayPowerStatus()I
    .locals 0

    .line 2485
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mCurDisplayPoweStatus:I

    return p0
.end method

.method public getFacelockNoticeEnabled()Z
    .locals 2

    .line 1992
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncerRecognizeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1995
    :cond_0
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    const/4 v0, 0x3

    if-ge p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getFacelockNotifyMsgId(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 1896
    :pswitch_0
    sget p0, Lcom/android/systemui/R$string;->face_unlock_retry_other:I

    goto :goto_0

    .line 1893
    :pswitch_1
    sget p0, Lcom/android/systemui/R$string;->face_unlock_retry_other:I

    goto :goto_0

    .line 1890
    :pswitch_2
    sget p0, Lcom/android/systemui/R$string;->face_unlock_no_permission:I

    goto :goto_0

    .line 1887
    :pswitch_3
    sget p0, Lcom/android/systemui/R$string;->face_unlock_camera_error:I

    goto :goto_0

    .line 1884
    :pswitch_4
    sget p0, Lcom/android/systemui/R$string;->face_unlock_fail:I

    goto :goto_0

    .line 1881
    :pswitch_5
    sget p0, Lcom/android/systemui/R$string;->face_unlock_no_face:I

    goto :goto_0

    .line 1878
    :pswitch_6
    sget p0, Lcom/android/systemui/R$string;->face_unlock_tap_to_retry:I

    goto :goto_0

    .line 1874
    :cond_0
    sget p0, Lcom/android/systemui/R$string;->face_unlock_timeout:I

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public getFacelockRunningType()I
    .locals 0

    .line 1755
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    return p0
.end method

.method public getFailedUnlockAttempts(I)I
    .locals 1

    .line 1408
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public getFingerprintFailedUnlockAttempts()I
    .locals 2

    .line 1426
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintFailedAttempts:Landroid/util/SparseIntArray;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public getGoingToSleepReason()I
    .locals 0

    .line 834
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mGoingToSleepReason:I

    return p0
.end method

.method public getWakingUpReason()Ljava/lang/String;
    .locals 0

    .line 2004
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpReason:Ljava/lang/String;

    return-object p0
.end method

.method public handleScreenTurningOn()V
    .locals 3

    .line 760
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 762
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_0

    .line 764
    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onScreenTurningOn()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 770
    :cond_1
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_2

    .line 771
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 772
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintEnrolled(I)Z

    .line 779
    :cond_2
    invoke-static {}, Lcom/oneplus/common/SeekBarVibratorHelper;->getInstance()Lcom/oneplus/common/SeekBarVibratorHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/oneplus/common/SeekBarVibratorHelper;->init(Landroid/content/Context;)V

    const-string p0, "OpKeyguardUpdateMonitor"

    const-string v0, " SeekBarVibratorHelper init"

    .line 780
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected handleStartedWakingUp()V
    .locals 2

    const/4 v0, 0x0

    .line 500
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsLowLightEnv:Z

    .line 503
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setPocketSensorEnabled(Z)V

    :cond_0
    const/4 v0, 0x1

    .line 508
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->onScreenStatusChanged(Z)V

    .line 512
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    if-nez v0, :cond_1

    .line 513
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpTime:Ljava/util/Calendar;

    .line 520
    :cond_1
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mClockCtrl:Lcom/oneplus/keyguard/clock/OpClockCtrl;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->onStartedWakingUp()V

    return-void
.end method

.method public handleSystemReady()V
    .locals 2

    const/4 v0, 0x0

    .line 1035
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1036
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 1038
    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onSystemReady()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public hasBootCompleted()Z
    .locals 0

    .line 2575
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBootCompleted:Z

    return p0
.end method

.method public hideFODDim()V
    .locals 0

    .line 816
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz p0, :cond_0

    .line 817
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->hideFODDim()V

    :cond_0
    return-void
.end method

.method protected init()V
    .locals 3

    .line 527
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1fa2651

    const/4 v2, 0x1

    .line 528
    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensor:Landroid/hardware/Sensor;

    .line 530
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->checkDozeSettings()V

    return-void
.end method

.method public isAlwaysOnEnabled()Z
    .locals 0

    .line 2338
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodAlwaysOnController:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    invoke-virtual {p0}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->isAlwaysOnEnabled()Z

    move-result p0

    return p0
.end method

.method public isAutoCheckPinEnabled()Z
    .locals 0

    .line 1060
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->keyguardPinPasswordLength()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAutoFacelockEnabled()Z
    .locals 1

    .line 1829
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_MOTOR_CAMERA:Z

    if-eqz v0, :cond_0

    .line 1830
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBouncerRecognizeEnabled:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 1833
    :cond_0
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAutoFacelockEnabled:Z

    return p0
.end method

.method public isBouncerRecognizeEnabled()Z
    .locals 0

    .line 1838
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBouncerRecognizeEnabled:Z

    return p0
.end method

.method public isCameraErrorState()Z
    .locals 1

    .line 1804
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isCameraLaunched()Z
    .locals 0

    .line 922
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mCameraLaunched:Z

    return p0
.end method

.method public isEmergencyPanelExpand()Z
    .locals 0

    .line 2532
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsEmergencyPanelExpand:Z

    return p0
.end method

.method public isFaceAdded()Z
    .locals 0

    .line 1943
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsFaceAdded:Z

    return p0
.end method

.method public isFacelockAllowed()Z
    .locals 2

    .line 1851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFacelockAllowed, visible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", inter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bouncer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncer()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", done:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", switching:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1852
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", added:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsFaceAdded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", simpin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1853
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fp authenticated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", on:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isScreenOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isWeakFaceTimeout()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardUpdateMonitor"

    .line 1851
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->allowShowingLock()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isWeakFaceTimeout()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1860
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockWithFacelockPossible()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public isFacelockAvailable()Z
    .locals 1

    .line 1768
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isFacelockDisabled()Z
    .locals 1

    .line 1778
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFacelockEnabled()Z
    .locals 0

    .line 1825
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockEnabled:Z

    return p0
.end method

.method public isFacelockLightingEnabled()Z
    .locals 0

    .line 1847
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockLightingEnabled:Z

    return p0
.end method

.method public isFacelockRecognizing()Z
    .locals 1

    .line 1785
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFacelockUnlocking()Z
    .locals 0

    .line 1929
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockUnlocking:Z

    return p0
.end method

.method public isFacelockWaitingTap()Z
    .locals 1

    .line 1760
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    const/16 v0, 0xc

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFingerprintAlreadyAuthenticated()Z
    .locals 0

    .line 1457
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    return p0
.end method

.method public isFingerprintEnrolled(I)Z
    .locals 1

    .line 875
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 876
    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFingerprintLockout()Z
    .locals 0

    .line 1468
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    return p0
.end method

.method public isFirstUnlock()Z
    .locals 0

    .line 1263
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isFodHintShowing()Z
    .locals 0

    .line 2384
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2385
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAodDisplayViewManager()Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->hasHintText()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFodShouldHiddenOnAod()Z
    .locals 1

    .line 2352
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodBurnInProtectionHelper:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->isFodHiddenOnAod()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShowFodOnAodEnabled:Z

    if-nez p0, :cond_0

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

.method public isFodSupportOnAod()Z
    .locals 0

    .line 2372
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShowFodOnAodEnabled:Z

    return p0
.end method

.method public isGoingToSleep()Z
    .locals 3

    .line 2196
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isGoingToSleep"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isImeShow()Z
    .locals 0

    .line 658
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mImeShow:Z

    return p0
.end method

.method public isKeyguardDone()Z
    .locals 0

    .line 967
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    return p0
.end method

.method public isLaunchingCamera()Z
    .locals 0

    .line 927
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCamera:Z

    return p0
.end method

.method public isLaunchingLeftAffordance()Z
    .locals 0

    .line 1451
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingLeftAffordance:Z

    return p0
.end method

.method public isLowLightEnv()Z
    .locals 0

    .line 2434
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsLowLightEnv:Z

    return p0
.end method

.method public isOpFingerprintDisabled(I)Z
    .locals 5

    .line 2376
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "isFingerprintDisabled"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2378
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isPreventModeActivte()Z
    .locals 0

    .line 802
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPreventModeActive:Z

    return p0
.end method

.method public isPreventModeEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 1249
    sget-boolean p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_FINGERPRINT_POCKET:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1254
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "oem_acc_anti_misoperation_screen"

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method public isQSExpanded()Z
    .locals 0

    .line 686
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mQSExpanded:Z

    return p0
.end method

.method public isScreenTurningOn()Z
    .locals 0

    .line 786
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mScreenTurningOn:Z

    return p0
.end method

.method public isSensorDetectedNear()Z
    .locals 2

    .line 2013
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    iget-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    invoke-direct {p0, v0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSensorNear(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isPreventModeEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShutdownDialogVisible()Z
    .locals 0

    .line 714
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShutdownDialogShow:Z

    return p0
.end method

.method public isShuttingDown()Z
    .locals 0

    .line 735
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShutingDown:Z

    return p0
.end method

.method public isSimPinSecure()Z
    .locals 3

    .line 2206
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isSimPinSecure"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSwitchingUser()Z
    .locals 3

    .line 2201
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isSwitchingUser"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isUnlockWithFacelockPossible()Z
    .locals 2

    .line 1934
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsFaceAdded:Z

    if-eqz v0, :cond_0

    .line 1935
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1936
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isUnlockingWithBiometricAllowed()Z
    .locals 6

    const/4 v0, 0x0

    .line 2176
    :try_start_0
    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v2, "isUnlockingWithBiometricAllowed"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-static {v1, v2, v4}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 2178
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v0

    invoke-static {p0, v1, v2}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v1, "OpKeyguardUpdateMonitor"

    const-string v2, "isUnlockingWithBiometricAllowed occur error"

    .line 2180
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public isUserUnlocked()Z
    .locals 2

    .line 598
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_BOOT_TO_ENTER_BOUNCER:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 601
    :cond_0
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsUserUnlocked:Z

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isWeakFaceTimeout()Z
    .locals 4

    .line 2187
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "isWeakFaceTimeout"

    invoke-static {v0, p0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2190
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public keyguardPinPasswordLength()I
    .locals 5

    const/4 v0, 0x0

    .line 1047
    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const-string v2, "lockscreen.pin_password_length"

    const-wide/16 v3, 0x0

    .line 1048
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    .line 1047
    invoke-interface {v1, v2, v3, v4, p0}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, v1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1050
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLong error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "OpKeyguardUpdateMonitor"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v0

    :goto_0
    const/4 v1, 0x4

    if-lt p0, v1, :cond_0

    return p0

    :cond_0
    return v0
.end method

.method public notifyBrightnessChange()V
    .locals 0

    .line 849
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz p0, :cond_0

    .line 850
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->notifyBrightnessChange()V

    :cond_0
    return-void
.end method

.method public notifyDisplayKeyguardUnlockSuccess()V
    .locals 2

    .line 2019
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_1

    .line 2020
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    if-eqz v0, :cond_1

    .line 2022
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpKeyguardUpdateMonitor"

    const-string v1, "unlock keyguard and notify display"

    .line 2023
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    :cond_0
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/oneplus/display/IOneplusColorDisplayManager;->setExitFingerPrintModeWay(Z)V

    :cond_1
    return-void
.end method

.method public notifyDisplayPowerStatusChanged(I)V
    .locals 3

    .line 2463
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDisplayPowerStatusChanged= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callstack= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    :cond_0
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mCurDisplayPoweStatus:I

    if-eq v0, p1, :cond_1

    .line 2468
    iput p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mCurDisplayPoweStatus:I

    .line 2470
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v0

    const/16 v1, 0x1fb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 2471
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public notifyEnvironmentLightChanged(Z)V
    .locals 3

    xor-int/lit8 v0, p1, 0x1

    .line 2443
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsLowLightEnv:Z

    .line 2446
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p1

    const/16 v1, 0x1fa

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2447
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 2448
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyFacelockStateChanged(I)V
    .locals 4

    .line 1700
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    .line 1701
    iput p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    .line 1703
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v2, "OpKeyguardUpdateMonitor"

    if-eqz v1, :cond_0

    .line 1704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyFacelockStateChanged, type:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isWeak:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isWeakFaceTimeout()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockWaitingTap()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isWeakFaceTimeout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1709
    iput v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    const-string p1, "[WeakFace] change to not running"

    .line 1710
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v3

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1715
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1717
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v1

    const/16 v2, 0x150

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1721
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v1

    new-instance v2, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$5;-><init>(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyFakeLocking(Z)V
    .locals 0

    .line 824
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFakeLocking:Z

    return-void
.end method

.method public notifyInsetsChanged()V
    .locals 2

    const/4 v0, 0x0

    .line 2536
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2537
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2539
    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onInsetsChanged()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyKeyguardDone(Z)V
    .locals 3

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyKeyguardDone isKeyguardDone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mDuringAcquired:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 937
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v0

    const/16 v2, 0x1f5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 938
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mDuringAcquired:Z

    .line 942
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    .line 945
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpTime:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 946
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->reportMDMEvent()V

    const/4 v0, 0x0

    .line 947
    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpTime:Ljava/util/Calendar;

    .line 951
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 953
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_2

    .line 955
    invoke-virtual {v2, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onKeyguardDoneChanged(Z)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 960
    :cond_3
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    if-eqz p0, :cond_4

    .line 961
    const-class p0, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->notifyKeyguardDone()V

    :cond_4
    return-void
.end method

.method public notifyKeyguardFadedAway()V
    .locals 2

    const/4 v0, 0x0

    .line 2327
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2328
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2330
    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onKeyguardFadedAway()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyPasswordLockout()V
    .locals 2

    const/4 v0, 0x0

    .line 1948
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1949
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 1951
    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onPasswordLockout()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyPreventModeChange(Z)V
    .locals 3

    xor-int/lit8 v0, p1, 0x1

    .line 1287
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPreventModeActive:Z

    .line 1288
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p1

    const/16 v1, 0x1f8

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1289
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1290
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyScreenTurningOn()V
    .locals 2

    const-string v0, "OpKeyguardUpdateMonitor"

    const-string v1, "notifyScreenTurningOn"

    .line 741
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    monitor-enter p0

    const/4 v0, 0x1

    .line 743
    :try_start_0
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mScreenTurningOn:Z

    .line 744
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p0

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception v0

    .line 744
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public notifyShutDownOrReboot()V
    .locals 2

    const/4 v0, 0x1

    .line 720
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShutingDown:Z

    .line 721
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    const/4 v0, 0x0

    .line 723
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 724
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 726
    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onShuttingDown()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected notifyWallpaperAodUnlock()V
    .locals 2

    .line 2425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyWallpaperAodUnlock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.systemui.aod_unlock"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oneplus.wallpaper"

    .line 2427
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2428
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onBrickModeChanged(Z)V
    .locals 0

    .line 2008
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsInBrickMode:Z

    return-void
.end method

.method public onEmergencyPanelExpandChanged(Z)V
    .locals 3

    .line 2507
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    .line 2508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEmergencyPanelExpandChanged: show:( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsEmergencyPanelExpand:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ), mLockoutState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isUnlockingWithBiometricAllowed= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpKeyguardUpdateMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    iget-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsEmergencyPanelExpand:Z

    if-eq v1, p1, :cond_3

    .line 2512
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsEmergencyPanelExpand:Z

    .line 2513
    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    if-nez p1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "onEmergencyPanelExpandChanged: update fingerprint listening state"

    .line 2520
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p1

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getUpdateBiometricListeningStateRunnable()Ljava/lang/Runnable;

    move-result-object v0

    .line 2522
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0xfa

    .line 2521
    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_2
    :goto_1
    const-string p1, "onEmergencyPanelExpandChanged: in lockout state, just update ui."

    .line 2518
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    :goto_2
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2526
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    :cond_3
    return-void
.end method

.method public onFacelockUnlocking(Z)V
    .locals 0

    .line 1922
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockUnlocking:Z

    .line 1924
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockUnlocking:Z

    invoke-virtual {p1, p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->onFacelockUnlocking(Z)V

    return-void
.end method

.method public onImeShow(Z)V
    .locals 3

    .line 627
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_3

    .line 628
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImeShow: show:( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mImeShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ), mLockoutState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isUnlockingWithBiometricAllowed= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpKeyguardUpdateMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mImeShow:Z

    if-eq v1, p1, :cond_3

    .line 634
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mImeShow:Z

    .line 636
    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    if-nez p1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "onImeShow: update fingerprint listening state"

    .line 643
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p1

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getUpdateBiometricListeningStateRunnable()Ljava/lang/Runnable;

    move-result-object v0

    .line 645
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0xfa

    .line 644
    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_2
    :goto_1
    const-string p1, "onImeShow: in lockout state, just update ui."

    .line 641
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :goto_2
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 650
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    :cond_3
    return-void
.end method

.method protected opDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 2034
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    .line 2035
    iget-object p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2037
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    .line 2039
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    FingerprintFailedAttempts="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFingerprintFailedUnlockAttempts()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2040
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mPocketSensorEnabled="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2041
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mPocketState="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2042
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mLaunchingCamera="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCamera:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2043
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mDuringAcquired="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mDuringAcquired:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2044
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mLockoutState="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2045
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mFingerprintAlreadyAuthenticated="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2046
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    EnrollSize="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2051
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mBatteryStatus="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getBatteryStatus()Lcom/android/settingslib/fuelgauge/BatteryStatus;

    move-result-object v0

    iget v0, v0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", level="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getBatteryStatus()Lcom/android/settingslib/fuelgauge/BatteryStatus;

    move-result-object v0

    iget v0, v0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", health="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2055
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getBatteryStatus()Lcom/android/settingslib/fuelgauge/BatteryStatus;

    move-result-object v0

    iget v0, v0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->health:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", maxChargingWattage="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getBatteryStatus()Lcom/android/settingslib/fuelgauge/BatteryStatus;

    move-result-object v0

    iget v0, v0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2051
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2056
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mKeyguardIsVisible="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardIsVisible()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2057
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mGoingToSleep="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2058
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    isPreventModeEnabled="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isPreventModeEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2059
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mPreventModeActive="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPreventModeActive:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2060
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mDeviceProvisioned="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2061
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    getFailedUnlockAttempts="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2062
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    getUserCanSkipBouncer="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2063
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mDeviceInteractive="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2064
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mScreenOn="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isScreenOn()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2065
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mIsKeyguardDone="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2067
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    IS_SUPPORT_BOOT_TO_ENTER_BOUNCER="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p3, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_BOOT_TO_ENTER_BOUNCER:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2068
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mIsUserUnlocked="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUserUnlocked()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2070
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mSimUnlockSlot0="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot0:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2071
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mSimUnlockSlot1="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot1:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2072
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mPendingSubInfoChange="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPendingSubInfoChange:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2076
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    IS_SUPPORT_FACE_UNLOCK="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p3, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_FACE_UNLOCK:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2077
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mIsFaceAdded="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsFaceAdded:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2078
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mIsWeakFaceTimeout="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isWeakFaceTimeout()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2079
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mFacelockRunningType="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2080
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    isSecure="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p3

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2081
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    getCurrentUser="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2082
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mSkipBouncerByFacelock="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSkipBouncerByFacelock:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2083
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mFacelockUnlocking="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockUnlocking:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2084
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mBouncerRecognizeEnabled="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBouncerRecognizeEnabled:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2085
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mFacelockTimes="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2086
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    IS_SUPPORT_FINGERPRINT_POCKET="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p3, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_FINGERPRINT_POCKET:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2087
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    IS_SUPPORT_MOTOR_CAMERA="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p3, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_MOTOR_CAMERA:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2088
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    isFacelockDisabled="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockDisabled()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2089
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    isUnlockWithFacelockPossible="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockWithFacelockPossible()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2090
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    isWeakFaceUnlockEnabled="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isWeakFaceUnlockEnabled()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2093
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    isFodShouldHiddenOnAod= "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFodShouldHiddenOnAod()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2094
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodAlwaysOnController:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2096
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mBootCompleted="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBootCompleted:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2098
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mCurDisplayPoweStatus= "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mCurDisplayPoweStatus:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string p3, "sys.debug.systemui.pin"

    .line 2100
    invoke-static {p3, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/16 p3, 0x38

    if-ne p1, p3, :cond_2

    .line 2101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    length="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->keyguardPinPasswordLength()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public opGetServiceStates()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ServiceState;",
            ">;"
        }
    .end annotation

    .line 2124
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getServiceStates()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method protected opHandleFingerprintAcquired(I)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 542
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mDuringAcquired:Z

    .line 543
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v0

    const/16 v1, 0x1f5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 544
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v0

    sget-boolean v2, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0xbb8

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x5dc

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x0

    .line 547
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 548
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_2

    .line 551
    invoke-virtual {v1, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onFingerprintAcquired(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected opHandleFingerprintError1(I)V
    .locals 4

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 1208
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 1210
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mResetAttempsTimeInMillis:J

    sub-long/2addr v0, v2

    .line 1211
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "diff = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "OpKeyguardUpdateMonitor"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x7d0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    .line 1214
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    .line 1218
    :cond_1
    sget-boolean p1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz p1, :cond_2

    const-string p1, "fingerprint on error"

    .line 1220
    invoke-virtual {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->showFodAndCountdownToHide(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected opHandleFingerprintLockoutReset()V
    .locals 1

    const/4 v0, 0x0

    .line 1317
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    return-void
.end method

.method protected opHandlePendingSubInfoChange(I)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 560
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot0:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 562
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot1:Z

    .line 564
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot0:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot1:Z

    if-nez p1, :cond_3

    .line 565
    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPendingSubInfoChange:Z

    if-eqz p1, :cond_2

    const-string p1, "OpKeyguardUpdateMonitor"

    const-string v1, "handle pending subinfo change"

    .line 566
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleSimSubscriptionInfoChanged()V

    .line 569
    :cond_2
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPendingSubInfoChange:Z

    :cond_3
    return-void
.end method

.method protected opHandleScreenTurnedOff()V
    .locals 3

    const/4 v0, 0x0

    .line 1343
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mScreenTurningOn:Z

    .line 1346
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1347
    invoke-direct {p0, v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setPocketSensorEnabled(Z)V

    goto :goto_0

    .line 1350
    :cond_0
    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodAlwaysOnController:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    invoke-virtual {v1}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->isAlwaysOnEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1351
    invoke-direct {p0, v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setPocketSensorEnabled(Z)V

    goto :goto_0

    .line 1353
    :cond_1
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setPocketSensorEnabled(Z)V

    .line 1363
    :goto_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1364
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1368
    :cond_2
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->onScreenStatusChanged(Z)V

    .line 1372
    invoke-static {}, Lcom/oneplus/common/SeekBarVibratorHelper;->getInstance()Lcom/oneplus/common/SeekBarVibratorHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/common/SeekBarVibratorHelper;->quit()V

    const-string p0, "OpKeyguardUpdateMonitor"

    const-string v0, " SeekBarVibratorHelper quit"

    .line 1373
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected opHandleScreenTurnedOn()V
    .locals 3

    const/4 v0, 0x0

    .line 1321
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mScreenTurningOn:Z

    .line 1324
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1325
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setPocketSensorEnabled(Z)V

    goto :goto_0

    .line 1326
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1327
    invoke-direct {p0, v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setPocketSensorEnabled(Z)V

    .line 1332
    :cond_1
    :goto_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1333
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1338
    :cond_2
    invoke-direct {p0, v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->onScreenStatusChanged(Z)V

    return-void
.end method

.method protected opHandleStartedGoingToSleep()V
    .locals 2

    const/4 v0, 0x0

    .line 973
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    .line 979
    sget-boolean v1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintEnrolled(I)Z

    .line 985
    :cond_0
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->onScreenStatusChanged(Z)V

    .line 989
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpTime:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    if-nez v0, :cond_1

    .line 990
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->reportMDMEvent()V

    const/4 v0, 0x0

    .line 991
    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpTime:Ljava/util/Calendar;

    :cond_1
    return-void
.end method

.method protected opHandleUserSwitch(I)V
    .locals 3

    const-string v0, "OpKeyguardUpdateMonitor"

    const-string v1, "opHandleUserSwitch"

    .line 2399
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_fod_on_aod_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShowFodOnAodEnabled:Z

    return-void
.end method

.method protected opOnFingerprintAuthenticated(I)V
    .locals 0

    .line 1296
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    .line 1309
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1310
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->onFingerprintAuthenticated()V

    :cond_0
    return-void
.end method

.method public opOnKeyguardVisibilityChanged(Z)V
    .locals 4

    .line 998
    const-class v0, Lcom/android/systemui/recents/OverviewProxyService;

    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mKeyguardShowing:Z

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1002
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    goto :goto_0

    .line 1003
    :cond_0
    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->FOD_UI_DEBUG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 1010
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyguard showing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isOnePlusHomeApp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isOnePlusHomeApp()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isBouncer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncer()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mLaunchingCamera="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCamera:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mLaunchingLeftAffordance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingLeftAffordance:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpKeyguardUpdateMonitor"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 1012
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/recents/OverviewProxyService;->notifyNavBarButtonAlphaChanged(FZ)V

    .line 1015
    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->setRecentUnlockBiometricFace(Z)V

    .line 1016
    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->setRecentUnlockBiometricFinger(Z)V

    goto :goto_1

    .line 1019
    :cond_1
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isOnePlusHomeApp()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncer()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCamera:Z

    if-nez p1, :cond_2

    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingLeftAffordance:Z

    if-eqz p0, :cond_3

    .line 1021
    :cond_2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/recents/OverviewProxyService;->notifyNavBarButtonAlphaChanged(FZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method public opReportSimUnlocked(I)V
    .locals 5

    .line 576
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportSimUnlocked(subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpKeyguardUpdateMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 583
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot0:Z

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 585
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot1:Z

    .line 587
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v1

    .line 588
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v2

    const/16 v3, 0x2bd

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    .line 587
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v1, 0x5

    .line 590
    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleSimStateChange(III)V

    return-void
.end method

.method protected opShouldListenForFingerprint()Z
    .locals 5

    .line 1474
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    const/4 v1, 0x1

    const-string v2, "OpKeyguardUpdateMonitor"

    const/4 v3, 0x0

    if-eqz v0, :cond_f

    .line 1475
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 1476
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mScreenTurningOn:Z

    if-nez v0, :cond_1

    const-string p0, "opShouldListenForFingerprint false: screen off"

    .line 1477
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1483
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncer()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPreventModeActive:Z

    if-nez v0, :cond_2

    .line 1484
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mQSExpanded:Z

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    const-string p0, "opShouldListenForFingerprint false: disableByQSExpanded"

    .line 1487
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1491
    :cond_3
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    .line 1492
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyExpanded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1494
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncer()Z

    move-result v0

    if-nez v0, :cond_4

    const-string p0, "opShouldListenForFingerprint false: disableByPanelExpanded"

    .line 1496
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1503
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v0

    if-nez v0, :cond_5

    const-string p0, "opShouldListenForFingerprint false: biometric not allowed"

    .line 1504
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1508
    :cond_5
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShutingDown:Z

    if-eqz v0, :cond_6

    const-string p0, "opShouldListenForFingerprint false: Shuting Down"

    .line 1509
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1514
    :cond_6
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShutdownDialogShow:Z

    if-eqz v0, :cond_7

    const-string p0, "opShouldListenForFingerprint false: Shutdown Dialog showing"

    .line 1515
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1520
    :cond_7
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_8

    const-string p0, "opShouldListenForFingerprint false: Facelock RECOGNIZED_OK"

    .line 1521
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1525
    :cond_8
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFakeLocking:Z

    if-nez v0, :cond_9

    const-string p0, "opShouldListenForFingerprint false: Keyguard Done and not fake locking"

    .line 1526
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1530
    :cond_9
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockUnlocking:Z

    if-eqz v0, :cond_a

    const-string p0, "opShouldListenForFingerprint false: FacelockUnlocking"

    .line 1531
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1536
    :cond_a
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardOccluded()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1537
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isScreenSaverEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isScreenSaverActivatedOnDock()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    const-string p0, "opShouldListenForFingerprint false: screen saver is enabled"

    .line 1538
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1543
    :cond_c
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1545
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardOccluded()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncer()Z

    move-result v0

    if-nez v0, :cond_d

    const-string p0, "opShouldListenForFingerprint false: start to wake up and keyguard is occluded."

    .line 1547
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1549
    :cond_d
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    if-eqz v0, :cond_e

    const-string p0, "opShouldListenForFingerprint false: start to wake up and keyguard is done."

    .line 1551
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1557
    :cond_e
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    .line 1558
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getBouncer()Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    move-result-object v0

    .line 1559
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncer()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardBouncer;->isSecurityModePassword()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1560
    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardBouncer;->isKeyguardPasswordInputMethodPickerShow()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, "opShouldListenForFingerprint false: bouncer password input method picker is showing"

    .line 1561
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1567
    :cond_f
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncer()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mImeShow:Z

    if-eqz v0, :cond_10

    const-string p0, "opShouldListenForFingerprint false: IME show"

    .line 1568
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1573
    :cond_10
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    if-eqz v0, :cond_11

    const-string p0, "opShouldListenForFingerprint false: FingerprintAlreadyAuthenticated"

    .line 1574
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1579
    :cond_11
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    iget-boolean v4, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    invoke-direct {p0, v0, v4}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSensorNear(IZ)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isPreventModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "opShouldListenForFingerprint false: prevent mode"

    .line 1580
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1585
    :cond_12
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string p0, "opShouldListenForFingerprint false: going to sleep"

    .line 1586
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1594
    :cond_13
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v0

    if-nez v0, :cond_14

    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    .line 1596
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardIsVisible()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1599
    :cond_14
    iput-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCamera:Z

    .line 1601
    iput-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCameraEvenSleep:Z

    .line 1605
    :cond_15
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCamera:Z

    if-eqz v0, :cond_16

    const-string p0, "opShouldListenForFingerprint false: Launching Camera"

    .line 1606
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1612
    :cond_16
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCameraEvenSleep:Z

    if-eqz v0, :cond_17

    const-string p0, "opShouldListenForFingerprint false: Launching Camera Even Sleep"

    .line 1613
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1618
    :cond_17
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingLeftAffordance:Z

    if-eqz v0, :cond_18

    const-string p0, "opShouldListenForFingerprint false: LaunchingLeftAffordance"

    .line 1619
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1623
    :cond_18
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsInBrickMode:Z

    if-eqz v0, :cond_19

    const-string p0, "opShouldListenForFingerprint false: Brick Mode"

    .line 1624
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1629
    :cond_19
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsEmergencyPanelExpand:Z

    if-eqz p0, :cond_1a

    const-string p0, "opShouldListenForFingerprint false: EmergencyPanelExpand"

    .line 1630
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1a
    return v1
.end method

.method public reportFaceUnlock()V
    .locals 4

    .line 1983
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    return-void

    .line 1986
    :cond_0
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    const-string v3, "oneplus_face_unlock_success_times"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1987
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    return-void
.end method

.method public reportFailedStrongAuthUnlockAttempt(I)V
    .locals 3

    .line 1412
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1414
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const-string v1, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 1415
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public resetFingerprintAlreadyAuthenticated()V
    .locals 1

    const/4 v0, 0x0

    .line 1461
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    return-void
.end method

.method public setFodDialogView(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 619
    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    .line 621
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodBurnInProtectionHelper:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->setFodDialogView(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    return-void
.end method

.method public setGoingToSleepReason(I)V
    .locals 0

    .line 830
    iput p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mGoingToSleepReason:I

    return-void
.end method

.method public setIsFaceAdded(Z)V
    .locals 0

    .line 1867
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsFaceAdded:Z

    return-void
.end method

.method public setQSExpanded(Z)V
    .locals 2

    .line 664
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-nez v0, :cond_0

    return-void

    .line 668
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mQSExpanded:Z

    if-eq p1, v0, :cond_3

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setQSExpanded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callers= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 670
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardUpdateMonitor"

    .line 669
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mQSExpanded:Z

    .line 673
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 674
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_1
    const/4 v0, 0x0

    .line 676
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 677
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_2

    .line 679
    invoke-virtual {v1, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onQSExpendChanged(Z)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setShutdownDialogVisible(Z)V
    .locals 2

    .line 692
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-nez v0, :cond_0

    return-void

    .line 696
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShutdownDialogShow:Z

    if-eq p1, v0, :cond_3

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShutdownDialogVisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callers= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 698
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardUpdateMonitor"

    .line 697
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShutdownDialogShow:Z

    .line 701
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 702
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_1
    const/4 v0, 0x0

    .line 704
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 705
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_2

    .line 707
    invoke-virtual {v1, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onShutdownDialogVisibilityChanged(Z)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setUserUnlocked(Z)V
    .locals 2

    .line 606
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsUserUnlocked:Z

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    .line 607
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAodDisplayViewManager()Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->handleUserUnlocked()V

    .line 609
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/aod/OpAodUtils;->forceTurnOnFpBlackGesture(Landroid/content/Context;I)V

    .line 613
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsUserUnlocked:Z

    return-void
.end method

.method public setWakingUpReason(Ljava/lang/String;)V
    .locals 0

    .line 2000
    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpReason:Ljava/lang/String;

    return-void
.end method

.method public shouldPlayFacelockFailAnim()Z
    .locals 2

    .line 1905
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    const/16 v1, 0xa

    if-eq p0, v1, :cond_1

    const/16 v1, 0xb

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public shouldShowFacelockIcon()Z
    .locals 1

    .line 1792
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public showFodAndCountdownToHide(Ljava/lang/String;)V
    .locals 0

    .line 2348
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodBurnInProtectionHelper:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->startSchedule(Ljava/lang/String;)V

    return-void
.end method

.method public updateFodIconVisibility()V
    .locals 1

    .line 2391
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 2392
    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    :cond_0
    return-void
.end method

.method public updateLaunchingCameraState(Z)V
    .locals 2

    .line 900
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCamera:Z

    if-eq v0, p1, :cond_0

    .line 901
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCamera:Z

    .line 902
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 904
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 905
    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    .line 909
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mCameraLaunched:Z

    .line 910
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateLaunchingCameraState:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mCameraLaunched:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpKeyguardUpdateMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateLaunchingCameraStateEvenSleep(Z)V
    .locals 0

    .line 916
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCameraEvenSleep:Z

    return-void
.end method

.method public updateLaunchingLeftAffordance(Z)V
    .locals 0

    .line 1443
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingLeftAffordance:Z

    .line 1444
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1445
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 1446
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    :cond_0
    return-void
.end method

.method protected watchForFacelockSettings()V
    .locals 4

    .line 1640
    new-instance v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$4;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$4;-><init>(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSettingsObserver:Landroid/database/ContentObserver;

    .line 1649
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_enable"

    .line 1650
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 1649
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1652
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_auto_face_unlock_enable"

    .line 1653
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSettingsObserver:Landroid/database/ContentObserver;

    .line 1652
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1656
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_assistive_lighting_enable"

    .line 1657
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSettingsObserver:Landroid/database/ContentObserver;

    .line 1656
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1660
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_powerkey_recognize_enable"

    .line 1661
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSettingsObserver:Landroid/database/ContentObserver;

    .line 1660
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1664
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_success_times"

    .line 1665
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSettingsObserver:Landroid/database/ContentObserver;

    .line 1664
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1667
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFacelockSettings()V

    return-void
.end method
