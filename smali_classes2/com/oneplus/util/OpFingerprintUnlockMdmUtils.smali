.class public Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OpFingerprintUnlockMdmUtils.java"


# static fields
.field private static final DEBUG:Z

.field private static final IS_SUPPORT_CUSTOM_FINGERPRINT:Z

.field private static mInstance:Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;


# instance fields
.field private mAodFpAuthTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mAodFpAuthenticatedTime:J

.field private mBSPTotalTime:J

.field private mContext:Landroid/content/Context;

.field private mCurrentClient:Ljava/lang/String;

.field private mFingerprintClientActiveCallback:Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

.field private mIsAodUnlocked:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLastClient:Ljava/lang/String;

.field private mWakingUpScrimStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->DEBUG:Z

    .line 34
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    const/4 v0, 0x0

    .line 39
    sput-object v0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mInstance:Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 58
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mFingerprintClientActiveCallback:Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    const/4 v1, 0x0

    .line 44
    iput-boolean v1, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mIsAodUnlocked:Z

    const-wide/16 v1, 0x0

    .line 46
    iput-wide v1, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mBSPTotalTime:J

    .line 47
    iput-wide v1, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mAodFpAuthenticatedTime:J

    .line 49
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mAodFpAuthTimeMap:Ljava/util/HashMap;

    .line 51
    iput-wide v1, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mWakingUpScrimStartTime:J

    .line 53
    iput-object v0, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 55
    iput-object v0, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mLastClient:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mCurrentClient:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mContext:Landroid/content/Context;

    .line 60
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 62
    invoke-direct {p0}, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->registerFingerprintClient()V

    .line 63
    iget-object p1, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    goto :goto_0

    :cond_0
    const-string p0, "OpFingerprintUnlockMdmUtils"

    const-string p1, "can\'t register callback"

    .line 66
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 28
    sget-boolean v0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mLastClient:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mLastClient:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mCurrentClient:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mCurrentClient:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;Ljava/lang/String;)Z
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->isKeyguard(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getInstance()Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;
    .locals 2

    .line 81
    sget-object v0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mInstance:Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;

    if-nez v0, :cond_0

    const-string v0, "OpFingerprintUnlockMdmUtils"

    const-string v1, "need init first"

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    sget-object v0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mInstance:Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 71
    sget-object v0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mInstance:Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    const-string v0, "OpFingerprintUnlockMdmUtils"

    const-string v1, "Can\'t init object with null parameter"

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    new-instance v0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;

    invoke-direct {v0, p0}, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mInstance:Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;

    :cond_1
    return-void
.end method

.method private isKeyguard(Ljava/lang/String;)Z
    .locals 0

    .line 217
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.android.systemui"

    .line 218
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "forceShow-keyguard"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$recordFpUnlockSpeedOnAod$0()V
    .locals 2

    .line 206
    iget-object p0, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mAodFpAuthTimeMap:Ljava/util/HashMap;

    const-string v0, "lock_unlock_success"

    const-string v1, "X9HFK50WT7"

    invoke-static {v0, p0, v1}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private recordFpUnlockSpeedOnAod(Z)V
    .locals 8

    .line 193
    iget-wide v0, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mAodFpAuthenticatedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mWakingUpScrimStartTime:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mBSPTotalTime:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mAodFpAuthTimeMap:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_2

    move-wide v4, v2

    goto :goto_1

    .line 195
    :cond_2
    iget-wide v4, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mWakingUpScrimStartTime:J

    iget-wide v6, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mAodFpAuthenticatedTime:J

    sub-long/2addr v4, v6

    .line 197
    :goto_1
    iget-object p1, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mAodFpAuthTimeMap:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v6, "finger_time_4"

    invoke-virtual {p1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object p1, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mAodFpAuthTimeMap:Ljava/util/HashMap;

    iget-wide v6, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mBSPTotalTime:J

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v4, "finger_time_0"

    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object p1, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mAodFpAuthTimeMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    .line 202
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "aod unlock mdm recorders incorrect: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mAodFpAuthTimeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpFingerprintUnlockMdmUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 204
    :cond_3
    new-instance p1, Lcom/oneplus/util/-$$Lambda$OpFingerprintUnlockMdmUtils$MrcdcPWP2QhPyP9KYQzyhy5WH3U;

    invoke-direct {p1, p0}, Lcom/oneplus/util/-$$Lambda$OpFingerprintUnlockMdmUtils$MrcdcPWP2QhPyP9KYQzyhy5WH3U;-><init>(Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 210
    :goto_2
    iput-wide v2, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mBSPTotalTime:J

    .line 211
    iput-wide v2, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mWakingUpScrimStartTime:J

    .line 212
    iput-boolean v1, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mIsAodUnlocked:Z

    :cond_4
    return-void
.end method

.method private registerFingerprintClient()V
    .locals 2

    .line 90
    new-instance v0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils$1;

    invoke-direct {v0, p0}, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils$1;-><init>(Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;)V

    iput-object v0, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mFingerprintClientActiveCallback:Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    const-string v0, "fingerprint"

    .line 116
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    :try_start_0
    iget-object p0, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mFingerprintClientActiveCallback:Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    invoke-interface {v0, p0}, Landroid/hardware/fingerprint/IFingerprintService;->addClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "OpFingerprintUnlockMdmUtils"

    const-string v1, "addClientActiveCallback: "

    .line 122
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$recordFpUnlockSpeedOnAod$0$OpFingerprintUnlockMdmUtils()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->lambda$recordFpUnlockSpeedOnAod$0()V

    return-void
.end method

.method public notifyCustFingerprintUnlockInAod(J)V
    .locals 1

    .line 148
    sget-boolean v0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_0

    .line 149
    iput-wide p1, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mAodFpAuthenticatedTime:J

    :cond_0
    return-void
.end method

.method public notifyFpAcquiredInfo(I)V
    .locals 5

    if-eqz p1, :cond_3

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyFpAcquiredInfo info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", result: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "OpFingerprintUnlockMdmUtils"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget-boolean v1, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->DEBUG:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    and-int/lit16 v1, p1, 0x3ff

    shr-int/lit8 v2, p1, 0xa

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 p1, p1, 0x16

    and-int/lit8 p1, p1, 0x3

    if-nez v0, :cond_3

    .line 169
    iget-object v0, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mAodFpAuthTimeMap:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 170
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 172
    iget-object v0, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mAodFpAuthTimeMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "finger_time_1"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mAodFpAuthTimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "finger_time_2"

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object p1, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mAodFpAuthTimeMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "finger_time_3"

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v1, v2

    int-to-long v0, v1

    .line 177
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mBSPTotalTime:J

    .line 178
    iget-object p1, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/aod/utils/OpCanvasAodHelper;->isCanvasAodEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mIsAodUnlocked:Z

    if-nez p1, :cond_2

    .line 179
    :cond_1
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isEnableWakingupAnimation()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 180
    :goto_0
    invoke-direct {p0, p1}, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->recordFpUnlockSpeedOnAod(Z)V

    :cond_3
    return-void
.end method

.method public notifyWakingUpScrimAnimationStart(J)V
    .locals 0

    .line 187
    iput-wide p1, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mWakingUpScrimStartTime:J

    const/4 p1, 0x0

    .line 188
    invoke-direct {p0, p1}, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->recordFpUnlockSpeedOnAod(Z)V

    return-void
.end method

.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 136
    sget-boolean p1, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz p1, :cond_0

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 137
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 138
    iput-boolean p1, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mIsAodUnlocked:Z

    :cond_0
    return-void
.end method

.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 129
    iput-wide v0, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mBSPTotalTime:J

    const/4 p1, 0x0

    .line 130
    iput-boolean p1, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->mIsAodUnlocked:Z

    return-void
.end method
