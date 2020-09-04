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

.field private static final IS_SUPPORT_CUSTOM_FINGERPRINT:Z

.field public static final IS_SUPPORT_FACE_UNLOCK:Z

.field private static final IS_SUPPORT_FINGERPRINT_POCKET:Z

.field public static final IS_SUPPORT_MOTOR_CAMERA:Z


# instance fields
.field private FOD_UI_DEBUG:Ljava/lang/String;

.field private mAutoFacelockEnabled:Z

.field private mBouncerRecognizeEnabled:Z

.field protected mCameraLaunched:Z

.field private mClockCtrl:Lcom/oneplus/keyguard/clock/OpClockCtrl;

.field private final mContext:Landroid/content/Context;

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

.field private mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

.field private mFpm:Landroid/hardware/fingerprint/FingerprintManager;

.field private mGoingToSleepReason:I

.field private mImeShow:Z

.field private mIsFaceAdded:Z

.field protected mIsInBrickMode:Z

.field private mIsKeyguardDone:Z

.field private mIsUserUnlocked:Z

.field private mLastHangupTimeMillis:J

.field private mLaunchingCamera:Z

.field private mLaunchingLeftAffordance:Z

.field private mLidOpen:Z

.field protected mLockoutState:Z

.field protected mPendingSubInfoChange:Z

.field mPocketListener:Landroid/hardware/SensorEventListener;

.field private mPocketSensor:Landroid/hardware/Sensor;

.field private mPocketSensorEnabled:Z

.field private mPocketState:I

.field private mPreventModeActive:Z

.field private mQSExpanded:Z

.field private mScreenTurningOn:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShutingDown:Z

.field protected mSimUnlockSlot0:Z

.field protected mSimUnlockSlot1:Z

.field private mSkipBouncerByFacelock:Z

.field private mTimeTickListener:Lcom/oneplus/keyguard/clock/OpClockCtrl$OnTimeUpdatedListener;

.field private mWakingUpReason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 81
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->DEBUG:Z

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x2e

    aput v3, v1, v2

    .line 107
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_BOOT_TO_ENTER_BOUNCER:Z

    new-array v1, v0, [I

    const/16 v3, 0x2d

    aput v3, v1, v2

    .line 147
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_FACE_UNLOCK:Z

    new-array v1, v0, [I

    const/16 v3, 0x4f

    aput v3, v1, v2

    .line 190
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v0, [I

    const/16 v3, 0x8d

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_FINGERPRINT_POCKET:Z

    new-array v0, v0, [I

    const/16 v1, 0x6f

    aput v1, v0, v2

    .line 193
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_MOTOR_CAMERA:Z

    .line 195
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sys.prop.fod_ui_test"

    .line 87
    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->FOD_UI_DEBUG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    .line 103
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 106
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsUserUnlocked:Z

    const/4 v1, 0x0

    .line 111
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mImeShow:Z

    .line 112
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mQSExpanded:Z

    .line 113
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mScreenTurningOn:Z

    .line 118
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    .line 120
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    .line 125
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintFailedAttempts:Landroid/util/SparseIntArray;

    .line 131
    iput v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    .line 136
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mDuringAcquired:Z

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpReason:Ljava/lang/String;

    .line 149
    iput v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    .line 150
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsFaceAdded:Z

    .line 151
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockEnabled:Z

    .line 152
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAutoFacelockEnabled:Z

    .line 153
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBouncerRecognizeEnabled:Z

    .line 155
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockLightingEnabled:Z

    .line 156
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSkipBouncerByFacelock:Z

    .line 159
    iput v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    .line 197
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShutingDown:Z

    const/4 v0, -0x1

    .line 199
    iput v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mGoingToSleepReason:I

    .line 220
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot0:Z

    .line 221
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot1:Z

    .line 222
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPendingSubInfoChange:Z

    const-wide/16 v2, 0x0

    .line 226
    iput-wide v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLastHangupTimeMillis:J

    .line 235
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsInBrickMode:Z

    .line 302
    invoke-static {}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->getInstance()Lcom/oneplus/keyguard/clock/OpClockCtrl;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mClockCtrl:Lcom/oneplus/keyguard/clock/OpClockCtrl;

    .line 303
    new-instance v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$1;

    invoke-direct {v0, p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$1;-><init>(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mTimeTickListener:Lcom/oneplus/keyguard/clock/OpClockCtrl$OnTimeUpdatedListener;

    .line 536
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPreventModeActive:Z

    .line 748
    new-instance v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$2;

    invoke-direct {v0, p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$2;-><init>(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketListener:Landroid/hardware/SensorEventListener;

    .line 290
    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 292
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "fingerprint"

    .line 293
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 297
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->startClockCtrl()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleFingerprintTimeout()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockEnabled:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAutoFacelockEnabled:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockLightingEnabled:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBouncerRecognizeEnabled:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)I
    .locals 0

    .line 78
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    return p0
.end method

.method static synthetic access$1500(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Ljava/util/ArrayList;
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Z)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFacelockTrustState(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Z)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handlePreventModeChanged(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Z)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleLidSwitchChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Landroid/hardware/Sensor;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)I
    .locals 0

    .line 78
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    return p0
.end method

.method static synthetic access$700(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    return p0
.end method

.method static synthetic access$800(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;IZ)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFPStateBySensor(IZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFacelockSettings()V

    return-void
.end method

.method private clearFailedFacelockAttempts()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1369
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1370
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_0

    .line 1372
    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onClearFailedFacelockAttempts()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1375
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->notifyFacelockStateChanged(I)V

    return-void
.end method

.method private clearFingerprintFailedUnlockAttempts()V
    .locals 1

    .line 1073
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintFailedAttempts:Landroid/util/SparseIntArray;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->delete(I)V

    return-void
.end method

.method private getBatteryStatus()Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;
    .locals 2

    .line 1737
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mBatteryStatus"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

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

    .line 1645
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mCallbacks"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method private getCurrentUser()I
    .locals 2

    .line 1691
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

    .line 1635
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mHandler"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    return-object p0
.end method

.method private getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 2

    .line 1697
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

    .line 1774
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mServiceStates"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    return-object p0
.end method

.method private getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;
    .locals 2

    .line 1702
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mStrongAuthTracker"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    return-object p0
.end method

.method private getUpdateBiometricListeningStateRunnable()Ljava/lang/Runnable;
    .locals 2

    .line 1640
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mUpdateBiometricListeningState"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method private getUserCanSkipBouncer(I)Z
    .locals 5

    .line 1757
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

    .line 1758
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

.method private handleFingerprintTimeout()V
    .locals 2

    .line 1082
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpKeyguardUpdateMonitor"

    const-string v1, "handleFingerprintTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 1084
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1085
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_1

    .line 1087
    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onFingerprintTimeout()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleLidSwitchChanged(Z)V
    .locals 1

    .line 857
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    if-eq p1, v0, :cond_0

    .line 858
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFPStateBySensor(IZ)V

    :cond_0
    return-void
.end method

.method private handlePreventModeChanged(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 940
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 941
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 943
    invoke-virtual {v1, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onPreventModeChanged(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 948
    :cond_1
    sget-boolean p1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mQSExpanded:Z

    if-eqz p1, :cond_2

    .line 949
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_2
    return-void
.end method

.method private handleSimStateChange(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 7

    .line 1767
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "handleSimStateChange"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1769
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    aput-object p3, v1, v6

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private handleSimSubscriptionInfoChanged()V
    .locals 3

    .line 1762
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "handleSimSubscriptionInfoChanged"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isBootCompleted()Z
    .locals 2

    .line 1747
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mBootCompleted"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isBouncer()Z
    .locals 2

    .line 1722
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

    .line 1655
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

    .line 1752
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

    .line 1660
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

    .line 1707
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

    .line 1525
    :cond_0
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 1526
    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    .line 1527
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

    .line 1685
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

    .line 1742
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mKeyguardIsVisible"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isKeyguardVisible()Z
    .locals 3

    .line 1650
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

    .line 1396
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_MOTOR_CAMERA:Z

    return v0
.end method

.method private isScreenOn()Z
    .locals 3

    .line 1717
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

.method private isUnlockWithFingerprintPossible(I)Z
    .locals 5

    .line 1727
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "isUnlockWithFingerprintPossible"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1728
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

.method private onScreenStatusChanged(Z)V
    .locals 0

    .line 321
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mClockCtrl:Lcom/oneplus/keyguard/clock/OpClockCtrl;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->onScreenTurnedOn()V

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->onScreenTurnedOff()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setPocketSensorEnabled(Z)V
    .locals 6

    .line 807
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isPreventModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 810
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    const-string v1, "OpKeyguardUpdateMonitor"

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const-string p0, "not register when Lid closed"

    .line 811
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 815
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 818
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

    .line 820
    :goto_0
    sget-boolean v2, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v2, :cond_3

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

    .line 823
    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    if-nez p1, :cond_8

    .line 824
    iput-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    .line 825
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketListener:Landroid/hardware/SensorEventListener;

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensor:Landroid/hardware/Sensor;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, p0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_1

    .line 829
    :cond_4
    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    if-eqz p1, :cond_7

    .line 830
    iput-boolean v4, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    .line 831
    iget p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    invoke-direct {p0, p1, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSensorNear(IZ)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 832
    iput v4, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    .line 835
    iput-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    .line 837
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 839
    :cond_5
    iput v4, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    .line 841
    iput-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    .line 844
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v4}, Landroid/hardware/fingerprint/FingerprintManager;->updateStatus(I)I

    .line 846
    :cond_6
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_1

    .line 849
    :cond_7
    invoke-direct {p0, v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleLidSwitchChanged(Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method private setSwitchingUser(Z)V
    .locals 5

    .line 1732
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

    .line 1733
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private showFPDialogWhenNoWindow()V
    .locals 4

    const-string v0, "OpKeyguardUpdateMonitor"

    .line 611
    sget-boolean v1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "showFPDialogWhenNoWindow"

    .line 614
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_fingerprint_package_name"

    const-string v3, "forceShow-keyguard"

    .line 617
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz v2, :cond_1

    .line 619
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->showFingerprintDialog(Landroid/os/Bundle;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "error: "

    .line 623
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private startClockCtrl()V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mClockCtrl:Lcom/oneplus/keyguard/clock/OpClockCtrl;

    if-eqz v0, :cond_0

    .line 316
    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mTimeTickListener:Lcom/oneplus/keyguard/clock/OpClockCtrl$OnTimeUpdatedListener;

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->onStartCtrl(Lcom/oneplus/keyguard/clock/OpClockCtrl$OnTimeUpdatedListener;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private updateFPStateBySensor(IZ)V
    .locals 4

    .line 774
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    .line 775
    iget-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    .line 777
    iput p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    .line 778
    iput-boolean p2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    if-nez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, p1

    .line 785
    :goto_0
    iget-object v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Landroid/hardware/fingerprint/FingerprintManager;->updateStatus(I)I

    .line 788
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSensorNear(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 790
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    goto :goto_1

    .line 791
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSensorNear(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSensorNear(IZ)Z

    move-result p1

    if-nez p1, :cond_3

    .line 793
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateFacelockSettings()V
    .locals 6

    .line 1242
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "oneplus_face_unlock_enable"

    invoke-static {v0, v2, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockEnabled:Z

    .line 1243
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "oneplus_auto_face_unlock_enable"

    invoke-static {v0, v3, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAutoFacelockEnabled:Z

    .line 1245
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "oneplus_face_unlock_assistive_lighting_enable"

    invoke-static {v0, v3, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 1246
    :goto_2
    iget-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockLightingEnabled:Z

    if-eq v0, v3, :cond_4

    .line 1247
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockLightingEnabled:Z

    .line 1248
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :goto_3
    if-ge v4, v3, :cond_4

    .line 1250
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v5, :cond_3

    .line 1252
    invoke-virtual {v5, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onFacelockLightingChanged(Z)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1258
    :cond_4
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "oneplus_face_unlock_powerkey_recognize_enable"

    invoke-static {v0, v3, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    move v2, v1

    :goto_4
    iput-boolean v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBouncerRecognizeEnabled:Z

    .line 1261
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oneplus_face_unlock_success_times"

    invoke-static {v0, v2, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    return-void
.end method

.method private updateFacelockTrustState(Z)V
    .locals 2

    .line 1298
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSkipBouncerByFacelock:Z

    .line 1299
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

    .line 1300
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1301
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    .line 1303
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

    .line 1630
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "updateFingerprintListeningState"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public allowShowingLock()Z
    .locals 2

    .line 1509
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1512
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncer()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardGoingAway()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.oneplus.camera"

    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isForegroundApp(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public canSkipBouncerByFacelock()Z
    .locals 0

    .line 1472
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSkipBouncerByFacelock:Z

    return p0
.end method

.method public checkIfHangup(ILjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 587
    sget-object p1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 588
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 591
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLastHangupTimeMillis:J

    :cond_1
    :goto_0
    return-void
.end method

.method public clearFailedUnlockAttempts()V
    .locals 2

    .line 1046
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1048
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->clearFingerprintFailedUnlockAttempts()V

    .line 1052
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->clearFailedFacelockAttempts()V

    return-void
.end method

.method public dispatchAuthenticateChanged(ZIII)V
    .locals 3

    .line 543
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 545
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_0

    .line 547
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onAuthenticateChanged(ZIII)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchSystemReady()V
    .locals 1

    .line 712
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

    .line 529
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->hideFODDim()V

    const/4 v0, 0x1

    .line 531
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setSwitchingUser(Z)V

    return-void
.end method

.method public getFacelockNoticeEnabled()Z
    .locals 2

    .line 1542
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncerRecognizeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1545
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

    .line 1450
    :pswitch_0
    sget p0, Lcom/android/systemui/R$string;->face_unlock_retry_other:I

    goto :goto_0

    .line 1447
    :pswitch_1
    sget p0, Lcom/android/systemui/R$string;->face_unlock_retry_other:I

    goto :goto_0

    .line 1444
    :pswitch_2
    sget p0, Lcom/android/systemui/R$string;->face_unlock_no_permission:I

    goto :goto_0

    .line 1441
    :pswitch_3
    sget p0, Lcom/android/systemui/R$string;->face_unlock_camera_error:I

    goto :goto_0

    .line 1438
    :pswitch_4
    sget p0, Lcom/android/systemui/R$string;->face_unlock_fail:I

    goto :goto_0

    .line 1435
    :pswitch_5
    sget p0, Lcom/android/systemui/R$string;->face_unlock_no_face:I

    goto :goto_0

    .line 1432
    :pswitch_6
    sget p0, Lcom/android/systemui/R$string;->face_unlock_tap_to_retry:I

    goto :goto_0

    .line 1428
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

    .line 1309
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    return p0
.end method

.method public getFailedUnlockAttempts(I)I
    .locals 1

    .line 1059
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public getFingerprintFailedUnlockAttempts()I
    .locals 2

    .line 1077
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

    .line 569
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mGoingToSleepReason:I

    return p0
.end method

.method public getWakingUpReason()Ljava/lang/String;
    .locals 0

    .line 1554
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpReason:Ljava/lang/String;

    return-object p0
.end method

.method public handleScreenTurningOn()V
    .locals 3

    .line 499
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_0

    .line 500
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 502
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDisplayAodMode(I)V

    .line 508
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 510
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_1

    .line 512
    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onScreenTurningOn()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 518
    :cond_2
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_3

    .line 519
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 520
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintEnrolled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 521
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->showFPDialogWhenNoWindow()V

    :cond_3
    return-void
.end method

.method protected handleStartedWakingUp()V
    .locals 1

    .line 332
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 333
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setPocketSensorEnabled(Z)V

    :cond_0
    const/4 v0, 0x1

    .line 337
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->onScreenStatusChanged(Z)V

    return-void
.end method

.method public handleSystemReady()V
    .locals 2

    const/4 v0, 0x0

    .line 717
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 718
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 720
    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onSystemReady()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public hideFODDim()V
    .locals 1

    .line 553
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateDimViewVisibility(Z)V

    return-void
.end method

.method protected init()V
    .locals 3

    .line 344
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 345
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1fa2651

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method public isAutoCheckPinEnabled()Z
    .locals 0

    .line 742
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

    .line 1383
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_MOTOR_CAMERA:Z

    if-eqz v0, :cond_0

    .line 1384
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBouncerRecognizeEnabled:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 1387
    :cond_0
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAutoFacelockEnabled:Z

    return p0
.end method

.method public isBouncerRecognizeEnabled()Z
    .locals 0

    .line 1392
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBouncerRecognizeEnabled:Z

    return p0
.end method

.method public isCameraErrorState()Z
    .locals 1

    .line 1358
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

    .line 644
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mCameraLaunched:Z

    return p0
.end method

.method public isFaceAdded()Z
    .locals 0

    .line 1494
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsFaceAdded:Z

    return p0
.end method

.method public isFacelockAllowed()Z
    .locals 2

    .line 1405
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

    .line 1406
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

    .line 1407
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

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardUpdateMonitor"

    .line 1405
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->allowShowingLock()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1414
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockWithFacelockPossible()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public isFacelockAvailable()Z
    .locals 1

    .line 1322
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

    .line 1332
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

    .line 1379
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockEnabled:Z

    return p0
.end method

.method public isFacelockLightingEnabled()Z
    .locals 0

    .line 1401
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockLightingEnabled:Z

    return p0
.end method

.method public isFacelockRecognizing()Z
    .locals 1

    .line 1339
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

    .line 1480
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockUnlocking:Z

    return p0
.end method

.method public isFacelockWaitingTap()Z
    .locals 1

    .line 1314
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

    .line 1106
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    return p0
.end method

.method public isFingerprintEnrolled(I)Z
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 606
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

    .line 1117
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    return p0
.end method

.method public isFirstUnlock()Z
    .locals 0

    .line 934
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isGoingToSleep()Z
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public isHangupRecently()Z
    .locals 6

    .line 595
    iget-wide v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLastHangupTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 598
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 599
    iget-wide v4, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLastHangupTimeMillis:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long p0, v2, v4

    if-gez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isImeShow()Z
    .locals 0

    .line 451
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mImeShow:Z

    return p0
.end method

.method public isKeyguardDone()Z
    .locals 0

    .line 678
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    return p0
.end method

.method public isLaunchingCamera()Z
    .locals 0

    .line 649
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCamera:Z

    return p0
.end method

.method public isLaunchingLeftAffordance()Z
    .locals 0

    .line 1100
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingLeftAffordance:Z

    return p0
.end method

.method public isPreventModeActivte()Z
    .locals 0

    .line 539
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPreventModeActive:Z

    return p0
.end method

.method public isPreventModeEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 920
    sget-boolean p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_FINGERPRINT_POCKET:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 925
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

    .line 475
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mQSExpanded:Z

    return p0
.end method

.method public isSimPinSecure()Z
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public isSwitchingUser()Z
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public isUnlockWithFacelockPossible()Z
    .locals 2

    .line 1485
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsFaceAdded:Z

    if-eqz v0, :cond_0

    .line 1486
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

    .line 1487
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
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public isUserUnlocked()Z
    .locals 2

    .line 412
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

    .line 415
    :cond_0
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsUserUnlocked:Z

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public keyguardPinPasswordLength()I
    .locals 5

    const/4 v0, 0x0

    .line 729
    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const-string v2, "lockscreen.pin_password_length"

    const-wide/16 v3, 0x0

    .line 730
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    .line 729
    invoke-interface {v1, v2, v3, v4, p0}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, v1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 732
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

    .line 581
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->notifyBrightnessChange()V

    return-void
.end method

.method public notifyFacelockStateChanged(I)V
    .locals 3

    .line 1265
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    .line 1266
    iput p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    .line 1267
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyFacelockStateChanged, type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpKeyguardUpdateMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 1269
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1271
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v1

    const/16 v2, 0x150

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1275
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v1

    new-instance v2, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$4;-><init>(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyFakeLocking(Z)V
    .locals 0

    .line 559
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFakeLocking:Z

    return-void
.end method

.method public notifyKeyguardDone(Z)V
    .locals 4

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyKeyguardDone isKeyguardDone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->setKeyguardDone(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :goto_0
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    .line 666
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {v0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->notifyKeyguardDone(Z)V

    .line 671
    :cond_0
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    if-eqz p0, :cond_1

    .line 672
    const-class p0, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->notifyKeyguardDone()V

    :cond_1
    return-void
.end method

.method public notifyLidSwitchChanged(Z)V
    .locals 3

    xor-int/lit8 v0, p1, 0x1

    .line 868
    sget-boolean v1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_FINGERPRINT_POCKET:Z

    if-nez v1, :cond_0

    return-void

    .line 870
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LidOpen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", pocket enabled:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OpKeyguardUpdateMonitor"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p1

    const/16 v1, 0x1f6

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 872
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 873
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyPasswordLockout()V
    .locals 2

    const/4 v0, 0x0

    .line 1499
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1500
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 1502
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

    .line 958
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPreventModeActive:Z

    .line 959
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p1

    const/16 v1, 0x1f8

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 960
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 961
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyScreenTurningOn()V
    .locals 2

    const-string v0, "OpKeyguardUpdateMonitor"

    const-string v1, "notifyScreenTurningOn"

    .line 488
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    monitor-enter p0

    const/4 v0, 0x1

    .line 490
    :try_start_0
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mScreenTurningOn:Z

    .line 491
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p0

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception v0

    .line 491
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public notifyShutDownOrReboot()V
    .locals 1

    const/4 v0, 0x1

    .line 481
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShutingDown:Z

    .line 482
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    return-void
.end method

.method public onBrickModeChanged(Z)V
    .locals 0

    .line 1558
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsInBrickMode:Z

    return-void
.end method

.method public onFacelockUnlocking(Z)V
    .locals 0

    .line 1476
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockUnlocking:Z

    return-void
.end method

.method public onImeShow(Z)V
    .locals 3

    .line 435
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_3

    .line 436
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mImeShow:Z

    .line 438
    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    if-eqz p1, :cond_1

    .line 439
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 440
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    goto :goto_1

    .line 442
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p1

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getUpdateBiometricListeningStateRunnable()Ljava/lang/Runnable;

    move-result-object v0

    .line 443
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result p0

    if-eqz p0, :cond_2

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0xfa

    .line 442
    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void
.end method

.method protected opDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1564
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    .line 1565
    iget-object p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1567
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    .line 1568
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

    .line 1569
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mPocketSensorEnabled="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1570
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mPocketState="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1571
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mLaunchingCamera="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCamera:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1572
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mDuringAcquired="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mDuringAcquired:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1573
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mLockoutState="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1574
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mFingerprintAlreadyAuthenticated="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1575
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

    .line 1578
    :cond_0
    iget-object p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz p3, :cond_1

    .line 1579
    invoke-virtual {p3, p2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->dump(Ljava/io/PrintWriter;)V

    .line 1582
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mBatteryStatus="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getBatteryStatus()Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    move-result-object v0

    iget v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", level="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getBatteryStatus()Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    move-result-object v0

    iget v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", plugged="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getBatteryStatus()Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    move-result-object v0

    iget v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", health="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getBatteryStatus()Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    move-result-object v1

    iget v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->health:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fastCharge="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getBatteryStatus()Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    move-result-object v1

    iget v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->fastCharge:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1584
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getBatteryStatus()Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    move-result-object v0

    iget v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->health:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", maxChargingWattage="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getBatteryStatus()Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    move-result-object v0

    iget v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1582
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1585
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

    .line 1586
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mBootCompleted="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1587
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

    .line 1588
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

    .line 1589
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mPreventModeActive="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPreventModeActive:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1590
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

    .line 1591
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

    .line 1592
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    isBootCompleted()="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1593
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

    .line 1594
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

    .line 1595
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mIsKeyguardDone="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1597
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    IS_SUPPORT_BOOT_TO_ENTER_BOUNCER="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p3, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_BOOT_TO_ENTER_BOUNCER:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1598
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

    .line 1600
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mSimUnlockSlot0="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot0:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1601
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mSimUnlockSlot1="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot1:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1602
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mPendingSubInfoChange="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPendingSubInfoChange:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1606
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    IS_SUPPORT_FACE_UNLOCK="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p3, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_FACE_UNLOCK:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1607
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mIsFaceAdded="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsFaceAdded:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1608
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mFacelockRunningType="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1609
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

    .line 1610
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

    .line 1611
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mSkipBouncerByFacelock="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSkipBouncerByFacelock:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1612
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mFacelockUnlocking="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockUnlocking:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1613
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mBouncerRecognizeEnabled="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBouncerRecognizeEnabled:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1614
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mFacelockTimes="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1615
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    IS_SUPPORT_FINGERPRINT_POCKET="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p3, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_FINGERPRINT_POCKET:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1616
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    IS_SUPPORT_MOTOR_CAMERA="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p3, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_MOTOR_CAMERA:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string p3, "sys.debug.systemui.pin"

    .line 1618
    invoke-static {p3, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/16 p3, 0x38

    if-ne p1, p3, :cond_2

    .line 1619
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

    .line 1624
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

    .line 357
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mDuringAcquired:Z

    .line 358
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v0

    const/16 v1, 0x1f5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 359
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

    .line 362
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 363
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_2

    .line 366
    invoke-virtual {v1, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onFingerprintAcquired(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected opHandleFingerprintError1(I)V
    .locals 1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 880
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x9

    if-ne p1, v0, :cond_3

    :cond_0
    const/4 p1, 0x1

    .line 881
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    .line 883
    sget-boolean p1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz p1, :cond_3

    .line 884
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz p1, :cond_1

    const/4 v0, 0x6

    .line 885
    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 889
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 890
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isDialogShowing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 891
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->showFPDialogWhenNoWindow()V

    :cond_3
    return-void
.end method

.method protected opHandleFingerprintLockoutReset()V
    .locals 3

    .line 993
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintFailedAttempts:Landroid/util/SparseIntArray;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    const-string p0, "OpKeyguardUpdateMonitor"

    const-string v0, "Not reset lockout state because failed attempts bigger than max failed attepmts"

    .line 994
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 996
    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    :goto_0
    return-void
.end method

.method protected opHandlePendingSubInfoChange(I)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 375
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot0:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 377
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot1:Z

    .line 379
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot0:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot1:Z

    if-nez p1, :cond_3

    .line 380
    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPendingSubInfoChange:Z

    if-eqz p1, :cond_2

    const-string p1, "OpKeyguardUpdateMonitor"

    const-string v1, "handle pending subinfo change"

    .line 381
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleSimSubscriptionInfoChanged()V

    .line 384
    :cond_2
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPendingSubInfoChange:Z

    :cond_3
    return-void
.end method

.method protected opHandleScreenTurnedOff()V
    .locals 2

    const/4 v0, 0x0

    .line 1023
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mScreenTurningOn:Z

    .line 1026
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 1027
    invoke-direct {p0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setPocketSensorEnabled(Z)V

    goto :goto_0

    .line 1029
    :cond_0
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setPocketSensorEnabled(Z)V

    .line 1034
    :goto_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1035
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1039
    :cond_1
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->onScreenStatusChanged(Z)V

    return-void
.end method

.method protected opHandleScreenTurnedOn()V
    .locals 3

    const/4 v0, 0x0

    .line 1001
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mScreenTurningOn:Z

    .line 1004
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1005
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setPocketSensorEnabled(Z)V

    goto :goto_0

    .line 1006
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1007
    invoke-direct {p0, v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setPocketSensorEnabled(Z)V

    .line 1012
    :cond_1
    :goto_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1013
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1018
    :cond_2
    invoke-direct {p0, v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->onScreenStatusChanged(Z)V

    return-void
.end method

.method protected opHandleStartedGoingToSleep()V
    .locals 2

    const/4 v0, 0x0

    .line 684
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    .line 690
    sget-boolean v1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintEnrolled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->showFPDialogWhenNoWindow()V

    .line 696
    :cond_0
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->onScreenStatusChanged(Z)V

    return-void
.end method

.method protected opOnFingerprintAuthenticated(I)V
    .locals 1

    .line 967
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    .line 971
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p1

    if-nez p1, :cond_0

    .line 972
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.oneplus.systemui.aod_unlock"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.oneplus.wallpaper"

    .line 973
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 974
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 980
    :cond_0
    sget-boolean p1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    if-eqz p0, :cond_1

    .line 981
    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->notifyFingerprintAuthenticated()V

    .line 985
    :cond_1
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 986
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->onFingerprintAuthenticated()V

    :cond_2
    return-void
.end method

.method public opOnKeyguardVisibilityChanged(Z)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 703
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    goto :goto_0

    .line 704
    :cond_0
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->FOD_UI_DEBUG:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 705
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->showFPDialogWhenNoWindow()V

    :cond_1
    :goto_0
    return-void
.end method

.method public opReportSimUnlocked(I)V
    .locals 5

    .line 391
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 392
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

    .line 397
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot0:Z

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 399
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot1:Z

    .line 401
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v1

    .line 402
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v2

    const/16 v3, 0x2bd

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    .line 401
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 404
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleSimStateChange(IILcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method protected opShouldListenForFingerprint()Z
    .locals 5

    .line 1123
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    const/4 v1, 0x1

    const-string v2, "OpKeyguardUpdateMonitor"

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    .line 1124
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

    .line 1125
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mScreenTurningOn:Z

    if-nez v0, :cond_1

    const-string p0, "opShouldListenForFingerprint false: screen off"

    .line 1126
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1132
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncer()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPreventModeActive:Z

    if-nez v0, :cond_2

    .line 1133
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mQSExpanded:Z

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    const-string p0, "opShouldListenForFingerprint false: disableByQSExpanded"

    .line 1136
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1142
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-nez v0, :cond_4

    const-string p0, "opShouldListenForFingerprint false: dreaming"

    .line 1143
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1147
    :cond_4
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShutingDown:Z

    if-eqz v0, :cond_5

    const-string p0, "opShouldListenForFingerprint false: Shuting Down"

    .line 1148
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1152
    :cond_5
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_6

    const-string p0, "opShouldListenForFingerprint false: Facelock RECOGNIZED_OK"

    .line 1153
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1157
    :cond_6
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFakeLocking:Z

    if-nez v0, :cond_7

    const-string p0, "opShouldListenForFingerprint false: Keyguard Done and not fake locking"

    .line 1158
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1162
    :cond_7
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockUnlocking:Z

    if-eqz v0, :cond_8

    const-string p0, "opShouldListenForFingerprint false: FacelockUnlocking"

    .line 1163
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1168
    :cond_8
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncer()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mImeShow:Z

    if-eqz v0, :cond_9

    const-string p0, "opShouldListenForFingerprint false: IME show"

    .line 1169
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1174
    :cond_9
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    if-eqz v0, :cond_a

    const-string p0, "opShouldListenForFingerprint false: FingerprintAlreadyAuthenticated"

    .line 1175
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1180
    :cond_a
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    iget-boolean v4, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    invoke-direct {p0, v0, v4}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSensorNear(IZ)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isPreventModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "opShouldListenForFingerprint false: prevent mode"

    .line 1181
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1186
    :cond_b
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1187
    :cond_c
    iput-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCamera:Z

    .line 1190
    :cond_d
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCamera:Z

    if-eqz v0, :cond_e

    const-string p0, "opShouldListenForFingerprint false: Launching Camera"

    .line 1191
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1196
    :cond_e
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingLeftAffordance:Z

    if-eqz v0, :cond_f

    const-string p0, "opShouldListenForFingerprint false: LaunchingLeftAffordance"

    .line 1197
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1201
    :cond_f
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsInBrickMode:Z

    if-eqz p0, :cond_10

    const-string p0, "opShouldListenForFingerprint false: Brick Mode"

    .line 1202
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_10
    return v1
.end method

.method public reportFaceUnlock()V
    .locals 4

    .line 1533
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    return-void

    .line 1536
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

    .line 1537
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    return-void
.end method

.method public reportFailedStrongAuthUnlockAttempt(I)V
    .locals 3

    .line 1063
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1065
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const-string v1, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 1066
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

    .line 1110
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    return-void
.end method

.method public setFodDialogView(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    return-void
.end method

.method public setGoingToSleepReason(I)V
    .locals 0

    .line 565
    iput p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mGoingToSleepReason:I

    return-void
.end method

.method public setIsFaceAdded(Z)V
    .locals 0

    .line 1421
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsFaceAdded:Z

    return-void
.end method

.method public setQSExpanded(Z)V
    .locals 2

    .line 457
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-nez v0, :cond_0

    return-void

    .line 459
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mQSExpanded:Z

    if-eq p1, v0, :cond_2

    .line 460
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setQSExpanded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_1
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mQSExpanded:Z

    .line 463
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 464
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 465
    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    if-eqz p1, :cond_2

    .line 466
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    .line 467
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    :cond_2
    return-void
.end method

.method public setUserUnlocked(Z)V
    .locals 1

    .line 420
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsUserUnlocked:Z

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    .line 421
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAodDisplayViewManager()Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->handleUserUnlocked()V

    .line 424
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsUserUnlocked:Z

    return-void
.end method

.method public setWakingUpReason(Ljava/lang/String;)V
    .locals 0

    .line 1550
    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpReason:Ljava/lang/String;

    return-void
.end method

.method public shouldHideDismissButton()Z
    .locals 0

    .line 575
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->shouldHideDismissButton()Z

    move-result p0

    return p0
.end method

.method public shouldPlayFacelockFailAnim()Z
    .locals 2

    .line 1459
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

    .line 1346
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

.method public updateLaunchingCameraState(Z)V
    .locals 2

    .line 630
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCamera:Z

    if-eq v0, p1, :cond_0

    .line 631
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCamera:Z

    .line 632
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 634
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    .line 637
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mCameraLaunched:Z

    .line 638
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " updateLaunchingCameraState:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mCameraLaunched:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpKeyguardUpdateMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateLaunchingLeftAffordance(Z)V
    .locals 0

    .line 1094
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingLeftAffordance:Z

    .line 1095
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1096
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    :cond_0
    return-void
.end method

.method protected watchForFacelockSettings()V
    .locals 4

    .line 1211
    new-instance v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$3;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$3;-><init>(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSettingsObserver:Landroid/database/ContentObserver;

    .line 1220
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_enable"

    .line 1221
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 1220
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1223
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_auto_face_unlock_enable"

    .line 1224
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSettingsObserver:Landroid/database/ContentObserver;

    .line 1223
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1227
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_assistive_lighting_enable"

    .line 1228
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSettingsObserver:Landroid/database/ContentObserver;

    .line 1227
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1231
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_powerkey_recognize_enable"

    .line 1232
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSettingsObserver:Landroid/database/ContentObserver;

    .line 1231
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1235
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_success_times"

    .line 1236
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSettingsObserver:Landroid/database/ContentObserver;

    .line 1235
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1238
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFacelockSettings()V

    return-void
.end method
