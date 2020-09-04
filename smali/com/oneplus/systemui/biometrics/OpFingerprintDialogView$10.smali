.class Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;
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

    .line 1153
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticateChanged(ZIII)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1299
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$5002(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z

    :goto_0
    return-void
.end method

.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 1315
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V

    .line 1316
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onBiometricAuthenticated, "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpFingerprintDialogView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    .line 1322
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1323
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1324
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 1325
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1326
    iput-object p2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1327
    iput-object p3, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1328
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1329
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onFacelockStateChanged(I)V
    .locals 3

    .line 1258
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->isScreenOffUnlock()Z

    move-result v0

    .line 1260
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

    if-ne p1, v0, :cond_2

    .line 1262
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$4302(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z

    .line 1264
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$3800(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$3800(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$4900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1265
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 1269
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$3700(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$3700(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->onFaceUnlocked()V

    .line 1273
    :cond_2
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1274
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1275
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1276
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 2

    .line 1175
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFinishedGoingToSleep(I)V

    .line 1176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinishedGoingToSleep : why = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$4302(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z

    .line 1178
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$4202(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z

    .line 1179
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$3602(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z

    .line 1181
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1182
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1183
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1184
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 2

    .line 1250
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1251
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1252
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1253
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 3

    .line 1231
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    .line 1232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyguardVisibilityChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$4702(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z

    if-eqz p1, :cond_0

    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "live wallpaper: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isShowingWallpaper()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$4800(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V

    .line 1239
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 1242
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1243
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1244
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1245
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .line 1156
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOff()V

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScreenTurnedOff : fp client = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$3800(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", showOnWindow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$3900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$4002(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z

    .line 1159
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$4102(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z

    .line 1161
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDisplayAodMode(I)V

    .line 1163
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1164
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .line 1206
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOn()V

    .line 1207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScreenTurnedOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2800(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$4002(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z

    .line 1210
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$4102(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z

    .line 1212
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 1214
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1215
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onScreenTurningOn()V
    .locals 2

    .line 1220
    invoke-super {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onScreenTurningOn()V

    .line 1221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScreenTurningOn: interactive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$4600(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$4102(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z

    .line 1224
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$4600(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1225
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDisplayAodMode(I)V

    :cond_0
    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 2

    .line 1335
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1336
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1337
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 1338
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1339
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1340
    iput-object p3, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1341
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1342
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 0

    .line 1169
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedGoingToSleep(I)V

    .line 1170
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$4202(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .line 1189
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedWakingUp()V

    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartedWakingUp, owner:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$4400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$3602(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z

    .line 1194
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$4502(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z

    .line 1197
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDisplayAodMode(I)V

    .line 1198
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 1200
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1201
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 2

    .line 1306
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStrongAuthStateChanged(I)V

    .line 1307
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x83

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1308
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1309
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1310
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 2

    .line 1349
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitching(I)V

    .line 1350
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1351
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1352
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1353
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
