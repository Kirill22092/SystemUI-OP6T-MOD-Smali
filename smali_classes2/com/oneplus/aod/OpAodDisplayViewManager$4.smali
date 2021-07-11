.class Lcom/oneplus/aod/OpAodDisplayViewManager$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OpAodDisplayViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/OpAodDisplayViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodDisplayViewManager;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method

.method private synthetic lambda$onEnvironmentLightChanged$0()V
    .locals 0

    .line 766
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$1700(Lcom/oneplus/aod/OpAodDisplayViewManager;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onEnvironmentLightChanged$0$OpAodDisplayViewManager$4()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->lambda$onEnvironmentLightChanged$0()V

    return-void
.end method

.method public onAlwaysOnEnableChanged(Z)V
    .locals 1

    .line 744
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$400(Lcom/oneplus/aod/OpAodDisplayViewManager;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "AodDisplayViewManager"

    const-string p1, "onAlwaysOnEnableChanged: view not init yet."

    .line 745
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 750
    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$200(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$7;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpAodDisplayViewManager$4$7;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager$4;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    .line 694
    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    .line 696
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isCustomFingerprint()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, p1, :cond_0

    .line 699
    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$000(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpFpAodIndicationText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/aod/OpFpAodIndicationText;->resetState()V

    .line 703
    :cond_0
    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$900(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 704
    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$200(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p2}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$1600(Lcom/oneplus/aod/OpAodDisplayViewManager;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 705
    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$200(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p2}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$1600(Lcom/oneplus/aod/OpAodDisplayViewManager;)Ljava/lang/Runnable;

    move-result-object p2

    const-class p3, Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/phone/DozeParameters;

    const/16 v0, 0xd

    invoke-virtual {p3, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseVisibleDuration(I)I

    move-result p3

    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 706
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    const-string p1, "fingerprint error"

    invoke-static {p0, p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$1500(Lcom/oneplus/aod/OpAodDisplayViewManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 671
    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    .line 673
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isCustomFingerprint()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, p1, :cond_0

    .line 676
    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$000(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpFpAodIndicationText;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/oneplus/aod/OpFpAodIndicationText;->updateFPIndicationText(ZLjava/lang/String;)V

    .line 679
    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    const-string p2, "fingerprint help"

    invoke-static {p1, p2}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$1500(Lcom/oneplus/aod/OpAodDisplayViewManager;Ljava/lang/String;)V

    .line 684
    :cond_0
    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$900(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 685
    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$200(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p2}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$1600(Lcom/oneplus/aod/OpAodDisplayViewManager;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 686
    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$200(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$1600(Lcom/oneplus/aod/OpAodDisplayViewManager;)Ljava/lang/Runnable;

    move-result-object p0

    const-class p2, Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/DozeParameters;

    const/16 p3, 0xd

    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseVisibleDuration(I)I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onDreamingStateChanged(Z)V
    .locals 0

    .line 599
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDreamingStateChanged(Z)V

    .line 600
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$500(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/OpClockViewCtrl;->onDreamingStateChanged(Z)V

    return-void
.end method

.method public onEnvironmentLightChanged(Z)V
    .locals 1

    .line 765
    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$200(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/oneplus/aod/-$$Lambda$OpAodDisplayViewManager$4$BggSDkm-mfbo83_VKT1pTdKL1ac;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/-$$Lambda$OpAodDisplayViewManager$4$BggSDkm-mfbo83_VKT1pTdKL1ac;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager$4;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFingerprintAcquired(I)V
    .locals 1

    .line 714
    invoke-super {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onFingerprintAcquired(I)V

    .line 716
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 719
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$000(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpFpAodIndicationText;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/OpFpAodIndicationText;->resetState()V

    :cond_0
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 1

    .line 660
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFinishedGoingToSleep(I)V

    .line 662
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isCustomFingerprint()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 664
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$000(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpFpAodIndicationText;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/aod/OpFpAodIndicationText;->updateFPIndicationText(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .line 625
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOff()V

    .line 627
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$1202(Lcom/oneplus/aod/OpAodDisplayViewManager;Z)Z

    .line 630
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->setAlpha(F)V

    .line 633
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$1400(Lcom/oneplus/aod/OpAodDisplayViewManager;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AodDisplayViewManager"

    const-string v1, "updateView in screen turned off"

    .line 634
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$1402(Lcom/oneplus/aod/OpAodDisplayViewManager;Z)Z

    .line 636
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$1300(Lcom/oneplus/aod/OpAodDisplayViewManager;)V

    .line 640
    :cond_0
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$000(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpFpAodIndicationText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/OpFpAodIndicationText;->resetState()V

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$200(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/aod/OpAodDisplayViewManager$4$6;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/OpAodDisplayViewManager$4$6;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .line 605
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOn()V

    .line 607
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$1202(Lcom/oneplus/aod/OpAodDisplayViewManager;Z)Z

    .line 610
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$900(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$1300(Lcom/oneplus/aod/OpAodDisplayViewManager;)V

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$200(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/aod/OpAodDisplayViewManager$4$5;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/OpAodDisplayViewManager$4$5;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 0

    .line 730
    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$1200(Lcom/oneplus/aod/OpAodDisplayViewManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 732
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$1402(Lcom/oneplus/aod/OpAodDisplayViewManager;Z)Z

    :cond_0
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 1

    .line 738
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$1402(Lcom/oneplus/aod/OpAodDisplayViewManager;Z)Z

    return-void
.end method

.method public onTimeChanged()V
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$400(Lcom/oneplus/aod/OpAodDisplayViewManager;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "AodDisplayViewManager"

    const-string v0, "onTimeChanged: view not init yet."

    .line 536
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$200(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/aod/OpAodDisplayViewManager$4$1;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/OpAodDisplayViewManager$4$1;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$400(Lcom/oneplus/aod/OpAodDisplayViewManager;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "AodDisplayViewManager"

    const-string p1, "onTimeZoneChanged: view not init yet."

    .line 557
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$200(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/aod/OpAodDisplayViewManager$4$2;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/aod/OpAodDisplayViewManager$4$2;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager$4;Ljava/util/TimeZone;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserInfoChanged(I)V
    .locals 2

    .line 588
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserInfoChanged(I)V

    .line 589
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$200(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/aod/OpAodDisplayViewManager$4$4;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/aod/OpAodDisplayViewManager$4$4;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager$4;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 2

    .line 571
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$200(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/aod/OpAodDisplayViewManager$4$3;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/aod/OpAodDisplayViewManager$4$3;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager$4;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
