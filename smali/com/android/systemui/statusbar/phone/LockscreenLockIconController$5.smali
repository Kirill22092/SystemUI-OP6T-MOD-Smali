.class Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "LockscreenLockIconController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1200(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    return-void
.end method

.method public onFacelockStateChanged(I)V
    .locals 2

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFacelockStateChanged, type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LockIcon"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1800(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)V

    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->opSetDeviceInteractive(Z)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    .line 272
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1200(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$2102(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)Z

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->opSetScreenOn(Z)V

    .line 260
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1200(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$2102(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)Z

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->opSetScreenOn(Z)V

    .line 249
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1200(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    return-void
.end method

.method public onSimStateChanged(III)V
    .locals 0

    .line 266
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$700(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1102(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)Z

    .line 267
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1200(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 1

    .line 290
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->opSetDeviceInteractive(Z)V

    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1200(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    return-void
.end method
