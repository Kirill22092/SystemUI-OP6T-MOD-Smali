.class public Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;
.super Ljava/lang/Object;
.source "OpFodBurnInProtectionHelper.java"

# interfaces
.implements Lcom/oneplus/systemui/biometrics/OpFodHelper$OnFingerprintStateChangeListener;


# instance fields
.field private mCheckRunnable:Ljava/lang/Runnable;

.field private mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mShouldHiddenFod:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mShouldHiddenFod:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 202
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$2;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$2;-><init>(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 227
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$3;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$3;-><init>(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mCheckRunnable:Ljava/lang/Runnable;

    .line 54
    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 56
    new-instance p2, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$1;-><init>(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mHandler:Landroid/os/Handler;

    .line 72
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mPowerManager:Landroid/os/PowerManager;

    const/4 p2, 0x1

    const-string v0, "OpFodBurnInProtectionHelper#protect"

    .line 75
    invoke-virtual {p1, p2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mShouldHiddenFod:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->updateUI()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;)Z
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->isAodMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;)Z
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->needProtection()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method private getDelayTime()I
    .locals 2

    const-string p0, "sys.fod.burnin.delay"

    const/4 v0, 0x0

    .line 153
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDelayTime: override to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFodBurnInProtectionHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    const/16 p0, 0xbb8

    return p0
.end method

.method private isAodMode()Z
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 163
    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isScreenTurningOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

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

.method private needProtection()Z
    .locals 6

    .line 167
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 171
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result p0

    .line 172
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v0

    .line 173
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isFingerprintStopped()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 175
    sget-boolean v4, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_1

    .line 176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needProtection: isAlwaysOnEnabled= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isKeyguardClient= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", fodOnScreen= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OpFodBurnInProtectionHelper"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    move v1, v3

    :cond_2
    return v1
.end method

.method private releaseWakeLock()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private updateUI()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 142
    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    .line 146
    :cond_0
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAodDisplayViewManager()Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mShouldHiddenFod:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->onFodShowOrHideOnAod(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public handleStartSchedule(Ljava/lang/String;)V
    .locals 4

    .line 108
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->isAodMode()Z

    move-result v0

    .line 109
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->needProtection()Z

    move-result v1

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleStartSchedule: reason= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isAodMode= "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", needProtection= "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "OpFodBurnInProtectionHelper"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->releaseWakeLock()V

    .line 118
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mShouldHiddenFod:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 126
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mShouldHiddenFod:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 127
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->updateUI()V

    .line 131
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->acquireWakeLock()V

    .line 133
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mCheckRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->getDelayTime()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "startSchedule: not needed"

    .line 120
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isFodHiddenOnAod()Z
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mShouldHiddenFod:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public onFingerprintStateChanged()V
    .locals 1

    .line 82
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "fingerprint state changed"

    .line 86
    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->startSchedule(Ljava/lang/String;)V

    return-void
.end method

.method public setFodDialogView(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 1

    .line 90
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->addFingerprintStateChangeListener(Lcom/oneplus/systemui/biometrics/OpFodHelper$OnFingerprintStateChangeListener;)V

    .line 91
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    .line 92
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public startSchedule(Ljava/lang/String;)V
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startSchedule: reason= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFodBurnInProtectionHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    .line 98
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 99
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 100
    iput v1, v0, Landroid/os/Message;->what:I

    .line 101
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 102
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
