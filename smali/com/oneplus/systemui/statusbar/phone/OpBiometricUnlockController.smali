.class public Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OpBiometricUnlockController.java"


# static fields
.field private static final DEBUG:Z

.field private static FP_FAILED_ATTEMPTS_TO_WAKEUP:I

.field private static FP_FAILED_ATTEMPTS_TO_WAKEUP_IN_DOZE:I


# instance fields
.field private final IS_SUPPORT_CUSTOM_FINGERPRINT:Z

.field private mApplySpeedUpPolicy:Z

.field private mFaceLockMode:I

.field private mForceShowBouncer:Z

.field private mIsFingerprintAuthenticating:Z

.field private mIsPlaying:Z

.field protected mIsScreenOffUnlock:Z

.field private final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mNoBouncerAnim:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->DEBUG:Z

    const/4 v0, 0x3

    .line 81
    sput v0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->FP_FAILED_ATTEMPTS_TO_WAKEUP:I

    const/4 v0, 0x1

    .line 83
    sput v0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->FP_FAILED_ATTEMPTS_TO_WAKEUP_IN_DOZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 57
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mForceShowBouncer:Z

    .line 61
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mNoBouncerAnim:Z

    .line 86
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsFingerprintAuthenticating:Z

    .line 87
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mApplySpeedUpPolicy:Z

    .line 97
    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mFaceLockMode:I

    .line 102
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 103
    iput-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 104
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    .line 105
    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 106
    iput-object p3, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method private calculateMode(Landroid/hardware/biometrics/BiometricSourceType;)I
    .locals 5

    .line 530
    const-class v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "calculateMode"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 531
    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private cleanup()V
    .locals 3

    .line 549
    const-class v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "cleanup"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getMode()I
    .locals 2

    .line 579
    const-class v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const-string v1, "mMode"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 2

    .line 544
    const-class v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const-string v1, "mStatusBarKeyguardViewManager"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object p0
.end method

.method private isLauncherOnTop()Z
    .locals 5

    const-string p0, "OpBiometricUnlockController"

    const/4 v0, 0x0

    .line 503
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v1

    .line 504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLauncherOnTop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x2

    if-ne v1, p0, :cond_0

    return v2

    :catch_0
    move-exception v1

    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private isWakeAndUnlock()Z
    .locals 3

    .line 584
    const-class v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isWakeAndUnlock"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private onFingerprintUnlockStart()V
    .locals 7

    .line 159
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->isFinishedScreenTuredOn()Z

    move-result v0

    .line 160
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->isShowingLiveWallpaper(Z)Z

    move-result v1

    .line 161
    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v3

    .line 162
    iget-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    .line 164
    sget-boolean v5, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->DEBUG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onFingerprintUnlockStart, screenOn:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , dream:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , live:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", interactive: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "OpBiometricUnlockController"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 168
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p0, v3, v3}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->changePanelVisibilityByAlpha(IZ)V

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "com.android.systemui:UnlockStart"

    invoke-virtual {v0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setWakingUpReason(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 175
    iput-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsScreenOffUnlock:Z

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    if-nez v4, :cond_3

    .line 179
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 182
    invoke-virtual {p0, v3, v3}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->changePanelVisibilityByAlpha(IZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method private releaseBiometricWakeLock()V
    .locals 3

    .line 559
    const-class v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "releaseBiometricWakeLock"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private resetMode()V
    .locals 3

    .line 554
    const-class v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "resetMode"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setPendingShowBouncer(Z)V
    .locals 2

    .line 540
    const-class v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "mPendingShowBouncer"

    invoke-static {v0, p0, v1, p1}, Lcom/oneplus/util/OpReflectionUtils;->setValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected changePanelVisibilityByAlpha(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 421
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget p2, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_IGNORE:I

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->changePanelAlpha(II)V

    goto :goto_0

    .line 423
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget p2, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_FINGERPRINT:I

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->changePanelAlpha(II)V

    :goto_0
    return-void
.end method

.method public getFaceLockMode()I
    .locals 0

    .line 462
    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mFaceLockMode:I

    return p0
.end method

.method public isBouncerAnimNeeded()Z
    .locals 0

    .line 143
    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mNoBouncerAnim:Z

    return p0
.end method

.method public isFingerprintAuthenticating()Z
    .locals 0

    .line 415
    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsFingerprintAuthenticating:Z

    return p0
.end method

.method public isPlayingScrimAnimation()Z
    .locals 0

    .line 445
    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsPlaying:Z

    return p0
.end method

.method public onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 363
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, v0, :cond_0

    .line 364
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFingerprintHelp: msgId = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", helpString = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OpBiometricUnlockController"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    .line 366
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->onFingerprintUnlockCancel(I)V

    .line 369
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->cleanup()V

    return-void
.end method

.method public onFingerprintAcquired(I)V
    .locals 3

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFingerprintAcquired: accquireInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBiometricUnlockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->releaseBiometricWakeLock()V

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCustomFingerprint = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , acquireInfo = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , mUpdateMonitor.isUnlockingWithBiometricAllowed() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 303
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , OpLsState.getInstance().isFinishedScreenTuredOn() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/plugin/OpLsState;->isFinishedScreenTuredOn()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mUpdateMonitor.isDeviceInteractive() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 305
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->isFinishedScreenTuredOn()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "don\'t deal with event if screen does not turne on"

    .line 310
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 318
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "not allow unlock with biometric"

    .line 319
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v0, "com.android.systemui:onAcquired"

    invoke-virtual {p1, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setWakingUpReason(Ljava/lang/String;)V

    .line 321
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v0}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    return-void

    .line 326
    :cond_1
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 327
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 328
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_0

    .line 331
    :cond_2
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->onFingerprintPoke()V

    .line 337
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isHomeApp()Z

    move-result p1

    if-nez p1, :cond_4

    .line 338
    invoke-virtual {p0, v0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setFingerprintState(ZI)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x7

    .line 340
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setFingerprintState(ZI)V

    .line 343
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->onFingerprintUnlockStart()V

    return-void

    .line 348
    :cond_5
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p0

    if-nez p0, :cond_6

    .line 356
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->acquireWakeLock()V

    :cond_6
    return-void
.end method

.method protected onFingerprintAuthFailed()V
    .locals 3

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFingerprintAuthFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFingerprintFailedUnlockAttempts()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->isFingerprintAuthenticating()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/plugin/OpLsState;->isFinishedScreenTuredOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBiometricUnlockController"

    .line 373
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    const-string v1, "finger"

    const-string v2, "lock_unlock_failed"

    if-eqz v0, :cond_0

    const-string v0, "1"

    .line 379
    invoke-static {v2, v1, v0}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "0"

    .line 381
    invoke-static {v2, v1, v0}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 385
    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->onFingerprintUnlockCancel(I)V

    return-void
.end method

.method public onFingerprintTimeout()V
    .locals 1

    const/4 v0, 0x3

    .line 390
    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->onFingerprintUnlockCancel(I)V

    .line 391
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->cleanup()V

    return-void
.end method

.method protected onFingerprintUnlockCancel(I)V
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    .line 195
    sget v1, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->FP_FAILED_ATTEMPTS_TO_WAKEUP:I

    .line 196
    iget-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v2, :cond_1

    .line 197
    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-boolean v3, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_MOTOR_CAMERA:Z

    if-eqz v3, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockWithFacelockPossible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    sget v1, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->FP_FAILED_ATTEMPTS_TO_WAKEUP_IN_DOZE:I

    .line 207
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFingerprintUnlockCancel: Reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", OffUnlock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsScreenOffUnlock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", attemps:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 209
    invoke-virtual {v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFingerprintFailedUnlockAttempts()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Authenticating:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->isFingerprintAuthenticating()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", prevent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/plugin/OpLsState;->getPreventModeCtrl()Lcom/oneplus/plugin/OpPreventModeCtrl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/plugin/OpPreventModeCtrl;->isPreventModeActive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", skip:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", ScreenOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 212
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", interactive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 213
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", bouncer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", threshold:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", motor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_MOTOR_CAMERA:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpBiometricUnlockController"

    .line 207
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 219
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v2

    if-nez v2, :cond_2

    .line 220
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 221
    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardTimeout(Landroid/os/Bundle;)V

    .line 225
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->isFingerprintAuthenticating()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    .line 226
    invoke-virtual {p0, v2, v3}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->changePanelVisibilityByAlpha(IZ)V

    if-nez p1, :cond_8

    .line 228
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 229
    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFingerprintFailedUnlockAttempts()I

    move-result p1

    if-lt p1, v1, :cond_8

    if-nez v0, :cond_6

    .line 231
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getPreventModeCtrl()Lcom/oneplus/plugin/OpPreventModeCtrl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpPreventModeCtrl;->isPreventModeActive()Z

    move-result p1

    if-nez p1, :cond_6

    .line 234
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_MOTOR_CAMERA:Z

    const v1, 0x3f8ccccd    # 1.1f

    if-eqz v0, :cond_4

    .line 235
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 236
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    .line 238
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result p1

    if-nez p1, :cond_6

    .line 239
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateCollapsePanels(F)V

    goto :goto_1

    .line 243
    :cond_3
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p1

    if-nez p1, :cond_6

    .line 244
    iput-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mForceShowBouncer:Z

    .line 245
    invoke-direct {p0, v2}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setPendingShowBouncer(Z)V

    goto :goto_1

    .line 248
    :cond_4
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p1

    if-nez p1, :cond_5

    .line 249
    iput-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mForceShowBouncer:Z

    .line 250
    invoke-direct {p0, v2}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setPendingShowBouncer(Z)V

    goto :goto_1

    .line 253
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    .line 255
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result p1

    if-nez p1, :cond_6

    .line 256
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateCollapsePanels(F)V

    .line 264
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v0, "com.android.systemui:FailedAttempts"

    invoke-virtual {p1, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setWakingUpReason(Ljava/lang/String;)V

    .line 265
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2, v0}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 267
    iget-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-nez p1, :cond_7

    .line 268
    iget-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsScreenOffUnlock:Z

    goto :goto_2

    .line 273
    :cond_7
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result p1

    goto :goto_2

    .line 279
    :cond_8
    iget-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsScreenOffUnlock:Z

    if-eqz p1, :cond_9

    .line 289
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->onFingerprintStartedGoingToSleep()V

    :cond_9
    :goto_2
    const/4 p1, 0x5

    .line 293
    invoke-virtual {p0, v3, p1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setFingerprintState(ZI)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyguardVisibilityChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsFingerprintAuthenticating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBiometricUnlockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 399
    iget-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsFingerprintAuthenticating:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 400
    invoke-virtual {p0, p1, p1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->changePanelVisibilityByAlpha(IZ)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 403
    invoke-virtual {p0, p1, p1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->changePanelVisibilityByAlpha(IZ)V

    :goto_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .line 154
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setWakingUpReason(Ljava/lang/String;)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsScreenOffUnlock:Z

    return-void
.end method

.method protected opIsBiometricUnlock()Z
    .locals 2

    .line 523
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p0, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockUnlocking()Z

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

.method public opResetMode()V
    .locals 0

    .line 449
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->resetMode()V

    return-void
.end method

.method protected opShowBouncer()V
    .locals 3

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mNoBouncerAnim:Z

    .line 112
    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mForceShowBouncer:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 113
    iput-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mNoBouncerAnim:Z

    .line 118
    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mNoBouncerAnim:Z

    .line 121
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-direct {p0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->calculateMode(Landroid/hardware/biometrics/BiometricSourceType;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 122
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    .line 126
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 127
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    .line 129
    iget-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mNoBouncerAnim:Z

    if-eqz v2, :cond_2

    const v2, 0x4479c000    # 999.0f

    goto :goto_0

    :cond_2
    const v2, 0x3f8ccccd    # 1.1f

    .line 127
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateCollapsePanels(F)V

    .line 133
    :cond_3
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mNoBouncerAnim:Z

    .line 136
    invoke-direct {p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setPendingShowBouncer(Z)V

    .line 138
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mForceShowBouncer:Z

    return-void
.end method

.method public resetSpeedUpPolicy()V
    .locals 1

    const/4 v0, 0x0

    .line 433
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mApplySpeedUpPolicy:Z

    return-void
.end method

.method public setFaceLockMode(I)V
    .locals 0

    .line 458
    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mFaceLockMode:I

    return-void
.end method

.method protected setFingerprintState(ZI)V
    .locals 2

    .line 409
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsFingerprintAuthenticating:Z

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFingerprintState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBiometricUnlockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsFingerprintAuthenticating:Z

    .line 411
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsFingerprintAuthenticating:Z

    sget v0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_FINGERPRINT:I

    invoke-virtual {p1, p0, v0, p2}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->notifyScreenOffAuthenticate(ZII)V

    return-void
.end method

.method public shouldApplySpeedUpPolicy()Z
    .locals 2

    .line 429
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->isShowingLiveWallpaper(Z)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public startWakeAndUnlockForFace(I)V
    .locals 3

    .line 469
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setFaceLockMode(I)V

    .line 471
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startWakeAndUnlockForFace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpBiometricUnlockController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 475
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated(Z)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 479
    invoke-direct {p0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setPendingShowBouncer(Z)V

    goto :goto_0

    .line 481
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->opShowBouncer()V

    goto :goto_0

    .line 486
    :cond_3
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setStatusBarFocusable(Z)V

    .line 488
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->isLauncherOnTop()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->onWakeAndUnlocking(Z)V

    .line 492
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 493
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    .line 495
    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 498
    :goto_0
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyBiometricAuthModeChanged()V

    return-void
.end method
