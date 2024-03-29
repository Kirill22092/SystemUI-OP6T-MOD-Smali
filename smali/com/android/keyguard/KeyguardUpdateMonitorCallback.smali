.class public Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.super Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;
.source "KeyguardUpdateMonitorCallback.java"


# instance fields
.field private mShowing:Z

.field private mVisibilityChangedCalled:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    return-void
.end method

.method public onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    return-void
.end method

.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    return-void
.end method

.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    return-void
.end method

.method public onBiometricsCleared()V
    .locals 0

    return-void
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .locals 0

    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    return-void
.end method

.method public onDreamingStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onEmergencyCallAction()V
    .locals 0

    return-void
.end method

.method public onFaceUnlockStateChanged(ZI)V
    .locals 0

    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onHasLockscreenWallpaperChanged(Z)V
    .locals 0

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public onKeyguardVisibilityChangedRaw(Z)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    if-ne p1, v2, :cond_0

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    return-void
.end method

.method public onLogoutEnabledChanged()V
    .locals 0

    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/oneplus/battery/OpBatteryStatus;)V
    .locals 0

    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 0

    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onSecondaryLockscreenRequirementChanged(I)V
    .locals 0

    return-void
.end method

.method public onServiceStateChanged(ILandroid/telephony/ServiceState;)V
    .locals 0

    return-void
.end method

.method public onSimStateChanged(III)V
    .locals 0

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onTelephonyCapable(Z)V
    .locals 0

    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    return-void
.end method

.method public onTrustAgentErrorMessage(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onTrustChanged(I)V
    .locals 0

    return-void
.end method

.method public onTrustGrantedWithFlags(II)V
    .locals 0

    return-void
.end method

.method public onTrustManagedChanged(I)V
    .locals 0

    return-void
.end method

.method public onUserInfoChanged(I)V
    .locals 0

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 0

    return-void
.end method

.method public onUserUnlocked()V
    .locals 0

    return-void
.end method
