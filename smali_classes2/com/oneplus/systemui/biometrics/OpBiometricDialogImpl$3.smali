.class Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;
.super Ljava/lang/Object;
.source "OpBiometricDialogImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 415
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object p1, p1, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v0, 0x0

    const-string v1, "OpBiometricDialogImpl"

    if-nez p1, :cond_0

    const-string p0, "mTransparentIconView onTouch mFodDialogView doesn\'t init yet"

    .line 416
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 421
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    .line 423
    sget-boolean v2, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v3, :cond_1

    if-eqz p1, :cond_1

    if-ne p1, v2, :cond_5

    :cond_1
    const/4 v4, 0x0

    if-ne p1, v3, :cond_2

    const-string v4, "finger up"

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    const-string v4, "finger down"

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_4

    const-string v4, "finger cancel"

    .line 434
    :cond_4
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouchTransparent: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mDialogShowing = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v4}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isDialogShowing()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    .line 435
    invoke-static {v4}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$1100(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFingerprintBlockTouchView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpFingerprintBlockTouchView;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isPendingHideDialog = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object v4, v4, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {v4}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isPendingHideDialog()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isDreaming = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 436
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", getAodDisplayViewState():"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAodDisplayViewManager()Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/aod/OpAodDisplayViewManager;->getAodDisplayViewState()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", authenticated = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    .line 438
    invoke-static {v4}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$1200(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", pressState = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object v4, v4, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    .line 439
    invoke-virtual {v4}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 434
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_5
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isEnableWakingupAnimation()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$1200(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez p1, :cond_6

    .line 445
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAodDisplayViewManager()Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/aod/OpAodDisplayViewManager;->getAodDisplayViewState()I

    move-result v2

    if-nez v2, :cond_6

    return v0

    .line 452
    :cond_6
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object v2, v2, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLController:Lcom/oneplus/systemui/biometrics/OpQLController;

    invoke-virtual {v2}, Lcom/oneplus/systemui/biometrics/OpQLController;->isQLShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 455
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mQLController:Lcom/oneplus/systemui/biometrics/OpQLController;

    invoke-virtual {p0, p2}, Lcom/oneplus/systemui/biometrics/OpQLController;->handleQLTouchEvent(Landroid/view/MotionEvent;)V

    return v3

    .line 460
    :cond_7
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object p2, p2, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    invoke-virtual {p2, p1}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->validateFingerAction(I)Z

    move-result p2

    .line 461
    sget-boolean v2, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    if-eqz v2, :cond_9

    if-eq p1, v3, :cond_8

    if-nez p1, :cond_9

    .line 462
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchTransparent: validate= "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pressState= "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object v2, v2, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    invoke-virtual {v2}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-eqz p2, :cond_c

    .line 467
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object p1, p1, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->isFingerDown()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 469
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isDialogShowing()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$1200(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "onTouchTransparent: touch on view before authenticated success"

    .line 471
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->doFingerprintPressDown(I)V

    goto :goto_1

    .line 474
    :cond_a
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$1200(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "onTouchTransparent: touch on view after authenticated success"

    .line 475
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$1300(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z

    goto :goto_1

    .line 483
    :cond_b
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$1400(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    :cond_c
    :goto_1
    return v3
.end method
