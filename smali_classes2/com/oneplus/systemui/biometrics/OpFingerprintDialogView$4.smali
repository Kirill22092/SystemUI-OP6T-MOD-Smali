.class Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OpFingerprintDialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFacelockStateChanged(I)V
    .locals 3

    .line 681
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->isScreenOffUnlock()Z

    move-result v0

    .line 683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFacelockStateChanged: type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isOffUnlock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 687
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 688
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 689
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 2

    .line 634
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFinishedGoingToSleep(I)V

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinishedGoingToSleep: why= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 637
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 638
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 639
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 2

    .line 673
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 674
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 675
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 676
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onKeyguardDoneChanged(Z)V
    .locals 2

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyguardDoneChanged: isKeyguardDone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPendingHideDialog= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    iget-boolean v1, v1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 742
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    iget-boolean v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    if-eqz v0, :cond_0

    const-string p0, "unlock success skip onKeyguardDoneChanged"

    .line 743
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 748
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 749
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 3

    .line 652
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    .line 653
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v0

    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardVisibilityChanged: showing= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isKeyguardClient= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPendingHideDialog= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    iget-boolean v2, v2, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpFingerprintDialogView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    iget-boolean v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const-string p0, "unlock success skip onKeyguardVisibilityChanged"

    .line 660
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x76

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 666
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 667
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 668
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onQSExpendChanged(Z)V
    .locals 4

    .line 754
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2700(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    .line 756
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    .line 757
    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2700(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2700(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v1

    .line 758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQSExpendChanged: expend= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isUnlockingWithBiometricAllowed= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isUnlockWithFingerprintPossible= "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OpFingerprintDialogView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isEmptyClient()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 766
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    .line 770
    :cond_0
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->handleQSExpandChanged(Z)V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .line 605
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOff()V

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScreenTurnedOff : fp client = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", showOnWindow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 608
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .line 644
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOn()V

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScreenTurnedOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2500(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x74

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 647
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onShutdownDialogVisibilityChanged(Z)V
    .locals 2

    .line 789
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutdownDialogVisibilityChanged: show= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isEmptyClient()Z

    move-result v0

    if-nez v0, :cond_0

    .line 793
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    .line 796
    :cond_0
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->handleShutdownDialogVisibilityChanged(Z)V

    return-void
.end method

.method public onShuttingDown()V
    .locals 2

    .line 777
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OpFingerprintDialogView"

    const-string v1, "onShuttingDown"

    .line 778
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isEmptyClient()Z

    move-result v0

    if-nez v0, :cond_0

    .line 780
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    :cond_0
    return-void
.end method

.method public onSimStateChanged(III)V
    .locals 2

    .line 705
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 706
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 707
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 708
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 709
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 710
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 711
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 712
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 5

    .line 613
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedWakingUp()V

    .line 614
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v0

    .line 615
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    .line 616
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartedWakingUp: owner= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isKeyguardShowing= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mPendingHideDialog= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    iget-boolean v3, v3, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpFingerprintDialogView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    move-result-object v2

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v4}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/PowerManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->updateAnimationDelayTime(Z)V

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 622
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    iget-boolean v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    if-eqz v0, :cond_0

    const-string p0, "unlock success skip onStartedWakingUp"

    .line 623
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 629
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 2

    .line 695
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStrongAuthStateChanged(I)V

    .line 696
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 697
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 698
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 699
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1

    .line 731
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2600()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 732
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onUserSwitchComplete "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpFingerprintDialogView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 2

    .line 719
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitching(I)V

    .line 720
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserSwitching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 724
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 725
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 726
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
