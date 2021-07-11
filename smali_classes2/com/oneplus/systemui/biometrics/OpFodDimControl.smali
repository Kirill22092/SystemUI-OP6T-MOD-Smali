.class public Lcom/oneplus/systemui/biometrics/OpFodDimControl;
.super Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;
.source "OpFodDimControl.java"


# instance fields
.field private mDimMode:I

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayController;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;-><init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayController;)V

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->mDimMode:I

    .line 31
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-void
.end method


# virtual methods
.method public canDisable()Z
    .locals 0

    .line 148
    iget p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->mDimMode:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canEnable()Z
    .locals 4

    .line 41
    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->mDimMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 43
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string v0, "don\'t eanble HBM due to already turn on"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 48
    :cond_0
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isEmptyClient()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isForceShowClient()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string v0, "don\'t re-enable HBM due to fingerprint unlocking"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getAodMode()I

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string v0, "aod mode is not turn off yet"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 75
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->isHighlight()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 76
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string v0, "force enable HBM since highlight icon is visible"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 81
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 82
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string v0, "don\'t enable HBM due to going to sleep"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 90
    :cond_5
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-nez v0, :cond_e

    .line 91
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_1

    .line 96
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_7

    .line 97
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 99
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 102
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 104
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string v0, "don\'t enable HBM due to keyguard is occluded and device is interactive"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 109
    :cond_7
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_8

    .line 111
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string v0, "don\'t enable HBM due to device isn\'t interactive"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 115
    :cond_8
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->isFaceUnlocked()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 116
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string v0, "don\'t enable HBM due to already face unlocked"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 121
    :cond_9
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v0

    if-nez v0, :cond_d

    .line 122
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserInLockdown(I)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_0

    .line 129
    :cond_a
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v0

    if-nez v0, :cond_b

    .line 130
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 131
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string v0, "don\'t enable HBM due to boot device or biometrice doesn\'t allow"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 136
    :cond_b
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getDisplayPowerStatus()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_c

    .line 137
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string v0, "don\'t enable HBM due to display power mode not ready"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_c
    return v1

    .line 124
    :cond_d
    :goto_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string v0, "don\'t enable HBM due to lockout"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 92
    :cond_e
    :goto_1
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string v0, "don\'t enable HBM due to duraing fp wake and unlock"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 49
    :cond_f
    :goto_2
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string v0, "don\'t enable HBM due to no one registering fp"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public disableInner(Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x0

    .line 162
    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->mDimMode:I

    .line 164
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getNotifier()Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getAodMode()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->notifyDisplayDimMode(II)V

    return-void
.end method

.method public enableInner(Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x1

    .line 155
    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->mDimMode:I

    .line 157
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getNotifier()Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getAodMode()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->notifyDisplayDimMode(II)V

    return-void
.end method

.method public setDimState(ILjava/lang/String;)V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set dim state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in local, reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->mDimMode:I

    return-void
.end method
