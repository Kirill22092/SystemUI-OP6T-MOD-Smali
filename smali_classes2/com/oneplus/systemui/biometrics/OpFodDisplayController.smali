.class public Lcom/oneplus/systemui/biometrics/OpFodDisplayController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OpFodDisplayController.java"

# interfaces
.implements Lcom/oneplus/systemui/biometrics/OpFodHelper$OnFingerprintStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;,
        Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControllerHelper;
    }
.end annotation


# instance fields
.field mAodControl:Lcom/oneplus/systemui/biometrics/OpFodAodControl;

.field mContext:Landroid/content/Context;

.field private mDelayAdjustBrightness:Z

.field private mDelayDisAodAtFinishedWake:Z

.field mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

.field mDisplayNotifier:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

.field mFaceUnlocked:Z

.field private mHasRecognizeResult:Z

.field mHighlightControl:Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;

.field mIPowerManager:Landroid/os/IPowerManager;

.field private mIsInRealAodAlwaysOnState:Z

.field private mIsLowLightEnvironment:Z

.field final mIsSupportAodAlwaysOn:Z

.field final mIsSupportRealAod:Z

.field mPm:Landroid/os/PowerManager;

.field mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x12e

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sys.aod.debug_support_real_aod"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mIsSupportRealAod:Z

    new-array v1, v0, [I

    const/16 v2, 0x12c

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "sys.aod.debug_support_always_on"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v3

    :cond_3
    :goto_2
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mIsSupportAodAlwaysOn:Z

    iput-boolean v3, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mIsInRealAodAlwaysOnState:Z

    iput-boolean v3, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mHasRecognizeResult:Z

    iput-boolean v3, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDelayAdjustBrightness:Z

    iput-boolean v3, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mIsLowLightEnvironment:Z

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mContext:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mPm:Landroid/os/PowerManager;

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mIPowerManager:Landroid/os/IPowerManager;

    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    invoke-direct {v0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDisplayNotifier:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    new-instance p1, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;

    invoke-direct {p1, p0}, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;-><init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayController;)V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mHighlightControl:Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;

    new-instance p1, Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    invoke-direct {p1, p0}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;-><init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayController;)V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    new-instance p1, Lcom/oneplus/systemui/biometrics/OpFodAodControl;

    invoke-direct {p1, p0}, Lcom/oneplus/systemui/biometrics/OpFodAodControl;-><init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayController;)V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mAodControl:Lcom/oneplus/systemui/biometrics/OpFodAodControl;

    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->addFingerprintStateChangeListener(Lcom/oneplus/systemui/biometrics/OpFodHelper$OnFingerprintStateChangeListener;)V

    return-void
.end method

.method private getWakingUpReason()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mIPowerManager:Landroid/os/IPowerManager;

    invoke-interface {p0}, Landroid/os/IPowerManager;->getWakingUpReason()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "OpFodDisplayController"

    const-string v0, "can\'t get waking up reason"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private isInRealAodAlwaysOn()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mIsSupportRealAod:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPowerKeyWakeupDeviceInAlwaysOn()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->getWakingUpReason()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.policy:POWER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private needToDisableAod()Z
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->getWakingUpReason()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldDisableAod: wakingUpReason= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpFodDisplayController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.policy:BIOMETRIC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.android.systemui:FailedAttempts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->isPowerKeyWakeupDeviceInAlwaysOn()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const-string v0, "dismiss"

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->disable(Ljava/lang/String;)Z

    return-void
.end method

.method public hideFODDim()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const-string v0, "early hide dim"

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->disable(Ljava/lang/String;)Z

    return-void
.end method

.method public isFodHighlighted()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mHighlightControl:Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->isHighlight()Z

    move-result p0

    return p0
.end method

.method public notifyFingerprintAuthenticated()V
    .locals 0

    return-void
.end method

.method public onAlwaysOnEnableChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mAodControl:Lcom/oneplus/systemui/biometrics/OpFodAodControl;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->onAlwaysOnEnableChanged(Z)V

    return-void
.end method

.method public onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne v0, p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBiometricAuthFailed: mIsAlwaysOnState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mIsInRealAodAlwaysOnState:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", failAttempts = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFingerprintFailedUnlockAttempts()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", unlockWithFacelock = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockWithFacelockPossible()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpFodDisplayController"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mIsInRealAodAlwaysOnState:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mHasRecognizeResult:Z

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFingerprintFailedUnlockAttempts()I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mHighlightControl:Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;

    const-string v0, "finger press up"

    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->disable(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockWithFacelockPossible()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mHighlightControl:Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;

    const-string v0, "onBiometricAuthFailed"

    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->changeToAodMode(Ljava/lang/String;)V

    :cond_0
    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDelayAdjustBrightness:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDelayAdjustBrightness:Z

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mAodControl:Lcom/oneplus/systemui/biometrics/OpFodAodControl;

    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mIsLowLightEnvironment:Z

    invoke-virtual {p1, p0}, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->adjustBrightness(Z)V

    :cond_1
    return-void
.end method

.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 2

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result p1

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBiometricAuthenticated isInteractive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isKeyguardVisible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isStrongBiometric:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isKeyguardDone:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "OpFodDisplayController"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mPm:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mAodControl:Lcom/oneplus/systemui/biometrics/OpFodAodControl;

    const-string p2, "fp authenticated"

    invoke-virtual {p1, p2}, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->disable(Ljava/lang/String;)Z

    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const/4 p1, 0x5

    const-string p2, "fp unlock"

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->setDimState(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, p3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onBiometricAuthHelp: mReceiveRecognizeResult = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mHasRecognizeResult:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mIsAlwaysOnState = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mIsInRealAodAlwaysOnState:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", failAttempts = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFingerprintFailedUnlockAttempts()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpFodDisplayController"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mHasRecognizeResult:Z

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mIsInRealAodAlwaysOnState:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mHighlightControl:Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;

    const-string p3, "onBiometricHelp"

    invoke-virtual {p1, p3}, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->changeToAodMode(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDelayAdjustBrightness:Z

    if-eqz p1, :cond_0

    iput-boolean p2, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDelayAdjustBrightness:Z

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mAodControl:Lcom/oneplus/systemui/biometrics/OpFodAodControl;

    iget-boolean p3, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mIsLowLightEnvironment:Z

    invoke-virtual {p1, p3}, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->adjustBrightness(Z)V

    :cond_0
    iput-boolean p2, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mHasRecognizeResult:Z

    iput-boolean p2, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mIsInRealAodAlwaysOnState:Z

    :cond_1
    return-void
.end method

.method public onDisplayPowerStatusChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisplayPowerStatusChanged: status= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFodDisplayController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const-string p1, "display power status: off"

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->disable(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onEnvironmentLightChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mHighlightControl:Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->isHighlight()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDelayAdjustBrightness:Z

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mIsLowLightEnvironment:Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mAodControl:Lcom/oneplus/systemui/biometrics/OpFodAodControl;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->adjustBrightness(Z)V

    :goto_0
    return-void
.end method

.method public onFacelockStateChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFacelockStateChanged: type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFodDisplayController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mFaceUnlocked:Z

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const-string p1, "face unlocked"

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->disable(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onFingerPressDown()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mHasRecognizeResult:Z

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->isInRealAodAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mIsSupportRealAod:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mIsInRealAodAlwaysOnState:Z

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const/4 v1, 0x2

    const-string v2, "fp press"

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->setDimState(ILjava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mHighlightControl:Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;

    const-string v0, "finger press down"

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->enable(Ljava/lang/String;)Z

    return-void
.end method

.method public onFingerPressUp()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mHighlightControl:Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;

    const-string v0, "finger press up"

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->disable(Ljava/lang/String;)Z

    return-void
.end method

.method public onFingerprintStateChanged()V
    .locals 2

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isFingerprintDetecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mFaceUnlocked:Z

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const-string v0, "fp register or resume"

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->enable(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isFingerprintLockout()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const-string v0, "lockout"

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->disable(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isFingerprintSuspended()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const-string v1, "suspend"

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->disable(Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mHighlightControl:Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;

    invoke-virtual {p0, v1}, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->disable(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->isInRealAodAlwaysOn()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const-string v0, "fp unregister"

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->disable(Ljava/lang/String;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mFaceUnlocked:Z

    return-void
.end method

.method public onFinishedWakingUp()V
    .locals 3

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "finished waking up"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    invoke-virtual {v0, v2}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->disable(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->isPowerKeyWakeupDeviceInAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mAodControl:Lcom/oneplus/systemui/biometrics/OpFodAodControl;

    invoke-virtual {v0, v2}, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->disable(Ljava/lang/String;)Z

    iput-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDelayDisAodAtFinishedWake:Z

    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    invoke-virtual {v0, v2}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->enable(Ljava/lang/String;)Z

    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDelayDisAodAtFinishedWake:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mAodControl:Lcom/oneplus/systemui/biometrics/OpFodAodControl;

    const-string v2, "finished waking up delay"

    invoke-virtual {v0, v2}, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->disable(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    invoke-virtual {v0, v2}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->enable(Ljava/lang/String;)Z

    iput-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDelayDisAodAtFinishedWake:Z

    :cond_2
    return-void
.end method

.method public onKeyguardDoneChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const-string v0, "keyguardDone"

    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->disable(Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mHighlightControl:Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->disable(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onKeyguardFadedAway()V
    .locals 1

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isEmptyClient()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const-string v0, "keyguard faded away"

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->enable(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const-string p1, "keyguard visibility change to show"

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->enable(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mAodControl:Lcom/oneplus/systemui/biometrics/OpFodAodControl;

    const-string v0, "screen turned off"

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->enable(Ljava/lang/String;)Z

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const-string v0, "screen on"

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->enable(Ljava/lang/String;)Z

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 1

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/aod/utils/OpCanvasAodHelper;->isCanvasAodEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const-string v0, "going to sleep"

    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->disable(Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->isInRealAodAlwaysOn()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDisplayNotifier:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->notifyHideAodMode(I)V

    :cond_0
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->isInRealAodAlwaysOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDisplayNotifier:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->notifyHideAodMode(I)V

    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDelayDisAodAtFinishedWake:Z

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->needToDisableAod()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDelayDisAodAtFinishedWake:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mAodControl:Lcom/oneplus/systemui/biometrics/OpFodAodControl;

    const-string v2, "start waking up"

    invoke-virtual {v0, v2}, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->disable(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->isPowerKeyWakeupDeviceInAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mAodControl:Lcom/oneplus/systemui/biometrics/OpFodAodControl;

    const-string v2, "finger recognized with aod always on"

    invoke-virtual {v0, v2}, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->resetState(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isFingerprintLockout()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const-string v2, "lockout"

    invoke-virtual {v0, v2}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->disable(Ljava/lang/String;)Z

    :cond_4
    iput-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mIsInRealAodAlwaysOnState:Z

    iput-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mHasRecognizeResult:Z

    iput-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDelayAdjustBrightness:Z

    iput-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mIsLowLightEnvironment:Z

    return-void
.end method

.method public resetState()V
    .locals 2

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isFingerprintDetecting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const-string v1, "reset state"

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->disable(Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mHighlightControl:Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;

    invoke-virtual {p0, v1}, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->disable(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public setDimForFingerprintAcquired()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const-string v0, "FINGERPRINT_ACQUIRED_SET_DIM_LAYER"

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->disable(Ljava/lang/String;)Z

    return-void
.end method
