.class public Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OpBiometricUnlockController.java"


# static fields
.field private static final DEBUG:Z

.field private static FP_FAILED_ATTEMPTS_TO_WAKEUP:I

.field private static FP_FAILED_ATTEMPTS_TO_WAKEUP_IN_DOZE:I


# instance fields
.field private final IS_SUPPORT_CUSTOM_FINGERPRINT:Z

.field public isNoAodScreenOffUnlock:Z

.field private mFaceLockMode:I

.field private mForceShowBouncer:Z

.field private mIsFingerprintAuthenticating:Z

.field protected mIsScreenOffUnlock:Z

.field private final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mNoBouncerAnim:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mSlowAnimateCollapsePanels:Z

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->DEBUG:Z

    const/4 v0, 0x3

    .line 89
    sput v0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->FP_FAILED_ATTEMPTS_TO_WAKEUP:I

    const/4 v0, 0x1

    .line 91
    sput v0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->FP_FAILED_ATTEMPTS_TO_WAKEUP_IN_DOZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 65
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mForceShowBouncer:Z

    .line 69
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mNoBouncerAnim:Z

    .line 97
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsFingerprintAuthenticating:Z

    .line 108
    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mFaceLockMode:I

    .line 112
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mSlowAnimateCollapsePanels:Z

    .line 117
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 118
    iput-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 119
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    .line 120
    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 121
    iput-object p3, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method private animateCollapsePanels(F)V
    .locals 2

    .line 692
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getShadeController()Lcom/android/systemui/statusbar/phone/ShadeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getShadeController()Lcom/android/systemui/statusbar/phone/ShadeController;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels(IZZF)V

    goto :goto_0

    :cond_0
    const-string p0, "OpBiometricUnlockController"

    const-string p1, "animateCollapsePanels: ShadeController is null"

    .line 696
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private calculateMode(Landroid/hardware/biometrics/BiometricSourceType;Z)I
    .locals 6

    .line 629
    const-class v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "calculateMode"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 630
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private cleanup()V
    .locals 3

    .line 648
    const-class v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "cleanup"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getKeyguardViewController()Lcom/android/keyguard/KeyguardViewController;
    .locals 2

    .line 643
    const-class v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const-string v1, "mKeyguardViewController"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    return-object p0
.end method

.method private getMode()I
    .locals 2

    .line 678
    const-class v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const-string v1, "mMode"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private isLauncherOnTop()Z
    .locals 5

    const-string p0, "OpBiometricUnlockController"

    const/4 v0, 0x0

    .line 601
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

    .line 602
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

    .line 607
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

    .line 683
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
    .locals 8

    .line 192
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_0

    .line 193
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->isFinishedScreenTuredOn()Z

    move-result v0

    goto :goto_0

    .line 195
    :cond_0
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->isActualScreenTurnedOn()Z

    move-result v0

    .line 199
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getKeyguardViewController()Lcom/android/keyguard/KeyguardViewController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/keyguard/KeyguardViewController;->isShowingLiveWallpaper(Z)Z

    move-result v1

    .line 200
    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v3

    .line 201
    iget-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    .line 203
    sget-boolean v5, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->DEBUG:Z

    const-string v6, "OpBiometricUnlockController"

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onFingerprintUnlockStart, screenOn:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " , dream:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , live:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", interactive: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x0

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 207
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    invoke-virtual {p0, v3, v3}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->changePanelVisibilityByAlpha(IZ)V

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "com.android.systemui:UnlockStart"

    invoke-virtual {v0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setWakingUpReason(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 214
    iput-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsScreenOffUnlock:Z

    .line 216
    iput-boolean v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->isNoAodScreenOffUnlock:Z

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_6

    if-nez v4, :cond_6

    .line 221
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v1, :cond_4

    .line 224
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-nez v0, :cond_5

    .line 225
    :cond_4
    invoke-virtual {p0, v3, v3}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->changePanelVisibilityByAlpha(IZ)V

    .line 231
    :cond_5
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUserUnlocked()Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "onFingerprintUnlockStart, screenOn && !interactive, forceHideBouncer"

    .line 232
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 234
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->forceHideBouncer()V

    :cond_6
    :goto_1
    return-void
.end method

.method private releaseBiometricWakeLock()V
    .locals 3

    .line 658
    const-class v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "releaseBiometricWakeLock"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private resetMode()V
    .locals 3

    .line 653
    const-class v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "resetMode"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setPendingShowBouncer(Z)V
    .locals 2

    .line 639
    const-class v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "mPendingShowBouncer"

    invoke-static {v0, p0, v1, p1}, Lcom/oneplus/util/OpReflectionUtils;->setValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected changePanelVisibilityByAlpha(IZ)V
    .locals 3

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changePanelVisibilityByAlpha: alpha= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reset= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBiometricUnlockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_1

    const-class v0, Lcom/oneplus/battery/OpChargingAnimationController;

    .line 499
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/battery/OpChargingAnimationController;

    invoke-interface {v0}, Lcom/oneplus/battery/OpChargingAnimationController;->isAnimationStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_0

    const-string p0, "changePanelVisibilityByAlpha: charging animation is not yet finished."

    .line 501
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_3

    if-ne p1, v2, :cond_3

    .line 509
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_2

    const-string p0, "keyguard not showing and alpha == 1, return"

    .line 510
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    if-eqz p2, :cond_4

    .line 517
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget p2, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_IGNORE:I

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->changePanelAlpha(II)V

    goto :goto_0

    .line 519
    :cond_4
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget p2, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_FINGERPRINT:I

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->changePanelAlpha(II)V

    :goto_0
    return-void
.end method

.method public getFaceLockMode()I
    .locals 0

    .line 558
    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mFaceLockMode:I

    return p0
.end method

.method protected abstract getShadeController()Lcom/android/systemui/statusbar/phone/ShadeController;
.end method

.method public isFingerprintAuthenticating()Z
    .locals 0

    .line 489
    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsFingerprintAuthenticating:Z

    return p0
.end method

.method public onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 437
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, v0, :cond_0

    .line 438
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

    .line 440
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->onFingerprintUnlockCancel(I)V

    .line 443
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->cleanup()V

    return-void
.end method

.method public onFingerprintAcquired(I)V
    .locals 6

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFingerprintAcquired: accquireInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBiometricUnlockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->releaseBiometricWakeLock()V

    .line 359
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 360
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/plugin/OpLsState;->isActualScreenTurnedOn()Z

    move-result v2

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCustomFingerprint = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , acquireInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , isInteractive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , isHomeApp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isHomeApp()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , screenOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , mUpdateMonitor.isUnlockingWithBiometricAllowed() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 368
    invoke-virtual {v4}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , OpLsState.getInstance().isFinishedScreenTuredOn() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/plugin/OpLsState;->isFinishedScreenTuredOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , mUpdateMonitor.isDeviceInteractive() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 370
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 363
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 374
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/plugin/OpLsState;->isFinishedScreenTuredOn()Z

    move-result v3

    if-nez v3, :cond_0

    const-string p0, "don\'t deal with event if screen does not turned on"

    .line 375
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v3, 0x6

    if-ne p1, v3, :cond_6

    .line 383
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "not allow unlock with biometric"

    .line 384
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v0, "com.android.systemui:onAcquired"

    invoke-virtual {p1, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setWakingUpReason(Ljava/lang/String;)V

    .line 386
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v0}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    return-void

    .line 391
    :cond_1
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result p1

    const/4 v1, 0x7

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    if-eqz v0, :cond_2

    .line 393
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v2, 0x0

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_0

    .line 396
    :cond_2
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->onFingerprintPoke()V

    :goto_0
    if-nez v0, :cond_3

    .line 400
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isHomeApp()Z

    move-result p1

    if-nez p1, :cond_3

    .line 401
    invoke-virtual {p0, v3, v3}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setFingerprintState(ZI)V

    goto :goto_1

    .line 403
    :cond_3
    invoke-virtual {p0, v3, v1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setFingerprintState(ZI)V

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    .line 410
    invoke-virtual {p0, v3, v3}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setFingerprintState(ZI)V

    goto :goto_1

    .line 412
    :cond_5
    invoke-virtual {p0, v3, v1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setFingerprintState(ZI)V

    .line 417
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->onFingerprintUnlockStart()V

    return-void

    .line 422
    :cond_6
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p0

    if-nez p0, :cond_7

    .line 430
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->acquireWakeLock()V

    :cond_7
    return-void
.end method

.method protected onFingerprintAuthFailed()V
    .locals 3

    .line 447
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

    .line 448
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->isFingerprintAuthenticating()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/plugin/OpLsState;->isFinishedScreenTuredOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBiometricUnlockController"

    .line 447
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    const-string v1, "finger"

    const-string v2, "lock_unlock_failed"

    if-eqz v0, :cond_0

    const-string v0, "1"

    .line 453
    invoke-static {v2, v1, v0}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "0"

    .line 455
    invoke-static {v2, v1, v0}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 459
    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->onFingerprintUnlockCancel(I)V

    return-void
.end method

.method public onFingerprintTimeout()V
    .locals 1

    const/4 v0, 0x3

    .line 464
    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->onFingerprintUnlockCancel(I)V

    .line 465
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->cleanup()V

    return-void
.end method

.method protected onFingerprintUnlockCancel(I)V
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    .line 248
    sget v1, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->FP_FAILED_ATTEMPTS_TO_WAKEUP:I

    .line 249
    iget-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v2, :cond_1

    .line 250
    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-boolean v3, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_MOTOR_CAMERA:Z

    if-eqz v3, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 253
    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockWithFacelockPossible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    sget v1, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->FP_FAILED_ATTEMPTS_TO_WAKEUP_IN_DOZE:I

    .line 260
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

    .line 262
    invoke-virtual {v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFingerprintFailedUnlockAttempts()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Authenticating:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->isFingerprintAuthenticating()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", prevent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
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

    .line 265
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", interactive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 266
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", bouncer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getKeyguardViewController()Lcom/android/keyguard/KeyguardViewController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

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

    .line 260
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 272
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v2

    if-nez v2, :cond_2

    .line 273
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getKeyguardViewController()Lcom/android/keyguard/KeyguardViewController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardViewController;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 274
    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardTimeout(Landroid/os/Bundle;)V

    .line 278
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->isFingerprintAuthenticating()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    .line 279
    invoke-virtual {p0, v2, v3}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->changePanelVisibilityByAlpha(IZ)V

    if-nez p1, :cond_a

    .line 281
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 282
    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFingerprintFailedUnlockAttempts()I

    move-result p1

    if-lt p1, v1, :cond_a

    if-nez v0, :cond_8

    .line 284
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getPreventModeCtrl()Lcom/oneplus/plugin/OpPreventModeCtrl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpPreventModeCtrl;->isPreventModeActive()Z

    move-result p1

    if-nez p1, :cond_8

    .line 287
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_MOTOR_CAMERA:Z

    const v1, 0x3f8ccccd    # 1.1f

    if-eqz v0, :cond_4

    .line 288
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 289
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getKeyguardViewController()Lcom/android/keyguard/KeyguardViewController;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/android/keyguard/KeyguardViewController;->showBouncer(Z)V

    .line 291
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result p1

    if-nez p1, :cond_8

    .line 292
    invoke-direct {p0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->animateCollapsePanels(F)V

    goto :goto_1

    .line 295
    :cond_3
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p1

    if-nez p1, :cond_8

    .line 296
    iput-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mForceShowBouncer:Z

    .line 297
    invoke-direct {p0, v2}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setPendingShowBouncer(Z)V

    goto :goto_1

    .line 300
    :cond_4
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p1

    if-nez p1, :cond_6

    .line 302
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 303
    iput-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mSlowAnimateCollapsePanels:Z

    .line 306
    :cond_5
    iput-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mForceShowBouncer:Z

    .line 307
    invoke-direct {p0, v2}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setPendingShowBouncer(Z)V

    goto :goto_1

    .line 310
    :cond_6
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result p1

    if-nez p1, :cond_7

    .line 311
    invoke-direct {p0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->animateCollapsePanels(F)V

    .line 315
    :cond_7
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getKeyguardViewController()Lcom/android/keyguard/KeyguardViewController;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/android/keyguard/KeyguardViewController;->showBouncer(Z)V

    .line 321
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v0, "com.android.systemui:FailedAttempts"

    invoke-virtual {p1, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setWakingUpReason(Ljava/lang/String;)V

    .line 322
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2, v0}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 324
    iget-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-nez p1, :cond_9

    .line 325
    iget-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsScreenOffUnlock:Z

    if-eqz p1, :cond_c

    .line 326
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->tryToStartFaceLockAfterScreenOn()V

    goto :goto_2

    .line 330
    :cond_9
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getKeyguardViewController()Lcom/android/keyguard/KeyguardViewController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

    move-result p1

    if-nez p1, :cond_c

    .line 331
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->tryToStartFaceLockAfterScreenOn()V

    goto :goto_2

    .line 336
    :cond_a
    iget-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsScreenOffUnlock:Z

    if-eqz p1, :cond_c

    .line 338
    iget-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz p1, :cond_b

    .line 339
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0xb

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 341
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->onPreStartedGoingToSleep()V

    .line 347
    :cond_b
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->onFingerprintStartedGoingToSleep()V

    :cond_c
    :goto_2
    const/4 p1, 0x5

    .line 351
    invoke-virtual {p0, v3, p1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setFingerprintState(ZI)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    .line 471
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

    .line 473
    iget-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsFingerprintAuthenticating:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 474
    invoke-virtual {p0, p1, p1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->changePanelVisibilityByAlpha(IZ)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 477
    invoke-virtual {p0, p1, p1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->changePanelVisibilityByAlpha(IZ)V

    :goto_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .line 174
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setWakingUpReason(Ljava/lang/String;)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsScreenOffUnlock:Z

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .line 180
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->isFingerprintAuthenticating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsScreenOffUnlock:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OpBiometricUnlockController"

    const-string v1, "reset panel and fp state due to waking up during fingerprint authenticating"

    .line 181
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 182
    invoke-virtual {p0, v0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->changePanelVisibilityByAlpha(IZ)V

    const/4 v0, 0x0

    .line 183
    invoke-virtual {p0, v0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setFingerprintState(ZI)V

    :cond_0
    return-void
.end method

.method protected opIsBiometricUnlock()Z
    .locals 2

    .line 621
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 622
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getMode()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p0, :cond_0

    .line 624
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

    .line 545
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->resetMode()V

    return-void
.end method

.method protected opShowBouncer()V
    .locals 4

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mNoBouncerAnim:Z

    .line 127
    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mForceShowBouncer:Z

    if-eqz v1, :cond_0

    .line 128
    iput-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mNoBouncerAnim:Z

    .line 133
    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mNoBouncerAnim:Z

    .line 136
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-direct {p0, v1, v2}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->calculateMode(Landroid/hardware/biometrics/BiometricSourceType;Z)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 138
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getKeyguardViewController()Lcom/android/keyguard/KeyguardViewController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/keyguard/KeyguardViewController;->showBouncer(Z)V

    .line 142
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getKeyguardViewController()Lcom/android/keyguard/KeyguardViewController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

    move-result v1

    if-nez v1, :cond_4

    const v1, 0x3f8ccccd    # 1.1f

    .line 144
    iget-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mSlowAnimateCollapsePanels:Z

    if-eqz v2, :cond_2

    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_0

    .line 146
    :cond_2
    iget-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mNoBouncerAnim:Z

    if-eqz v2, :cond_3

    const v1, 0x4479c000    # 999.0f

    .line 149
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "opShowBouncer, speedUpFactor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpBiometricUnlockController"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->animateCollapsePanels(F)V

    .line 152
    :cond_4
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mSlowAnimateCollapsePanels:Z

    .line 153
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mNoBouncerAnim:Z

    .line 156
    invoke-direct {p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setPendingShowBouncer(Z)V

    .line 158
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mForceShowBouncer:Z

    return-void
.end method

.method public resetSpeedUpPolicy()V
    .locals 0

    return-void
.end method

.method public setFaceLockMode(I)V
    .locals 0

    .line 554
    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mFaceLockMode:I

    return-void
.end method

.method protected setFingerprintState(ZI)V
    .locals 2

    .line 483
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

    .line 484
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsFingerprintAuthenticating:Z

    .line 485
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget v0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_FINGERPRINT:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->notifyScreenOffAuthenticate(ZII)V

    return-void
.end method

.method public shouldApplySpeedUpPolicy()Z
    .locals 2

    .line 525
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getKeyguardViewController()Lcom/android/keyguard/KeyguardViewController;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/keyguard/KeyguardViewController;->isShowingLiveWallpaper(Z)Z

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

    .line 565
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setFaceLockMode(I)V

    .line 567
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 568
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

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 571
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getKeyguardViewController()Lcom/android/keyguard/KeyguardViewController;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/android/keyguard/KeyguardViewController;->notifyKeyguardAuthenticated(Z)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 575
    invoke-direct {p0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setPendingShowBouncer(Z)V

    goto :goto_0

    .line 577
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->opShowBouncer()V

    goto :goto_0

    .line 586
    :cond_3
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->isLauncherOnTop()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->onWakeAndUnlocking(Z)V

    .line 590
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 591
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    .line 593
    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 596
    :goto_0
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyBiometricAuthModeChanged()V

    return-void
.end method
