.class Lcom/oneplus/faceunlock/OpFacelockController$14;
.super Lcom/oneplus/faceunlock/internal/IOPFacelockCallback$Stub;
.source "OpFacelockController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/OpFacelockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/OpFacelockController;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    .line 1780
    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-direct {p0}, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginRecognize(I)V
    .locals 0

    .line 1784
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$400(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1788
    :cond_0
    invoke-static {}, Lcom/oneplus/faceunlock/OpFacelockController;->access$200()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "OpFacelockController"

    const-string p1, "onBeginRecognize"

    .line 1789
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onCompared(IIIII)V
    .locals 0

    const/4 p1, 0x2

    if-ne p3, p1, :cond_1

    .line 1796
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1800(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1798
    invoke-static {}, Lcom/oneplus/faceunlock/OpFacelockController;->access$200()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OpFacelockController"

    const-string p2, "onCompared 2 to remove timeout"

    .line 1799
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    :cond_0
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4000(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3900(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1802
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    const/4 p1, 0x1

    invoke-static {p0, p1, p1, p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1900(Lcom/oneplus/faceunlock/OpFacelockController;IZZ)V

    :cond_1
    return-void
.end method

.method public onEndRecognize(III)V
    .locals 11

    .line 1809
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$400(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x0

    if-nez p3, :cond_1

    .line 1815
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0, p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2802(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z

    goto :goto_0

    .line 1817
    :cond_1
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0, p2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2802(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z

    .line 1822
    :goto_0
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1800(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 1823
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$100(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3000(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1824
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2900(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    sget v1, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    invoke-virtual {v0, p2, v1}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->notifyScreenOffAuthenticate(ZI)V

    .line 1827
    :cond_2
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$100(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1828
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0, p2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4102(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z

    .line 1830
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2300(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    .line 1832
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEndRecognize, result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", keyguardShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2200(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", bouncer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    .line 1833
    invoke-static {v2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4200(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", allowed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isSleep:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4300(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", simpin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    .line 1834
    invoke-static {v2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2300(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pending:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4400(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    move v2, p1

    goto :goto_1

    :cond_3
    move v2, p2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", auto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    .line 1835
    invoke-static {v2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2300(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAutoFacelockEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpFacelockController"

    .line 1832
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2900(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    const-string v1, "face_bright"

    const-string v3, "face"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const-string v6, "1"

    if-nez p3, :cond_10

    .line 1840
    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p3}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2300(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->allowShowingLock()Z

    move-result p3

    if-eqz p3, :cond_e

    if-eqz v0, :cond_e

    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p3}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4300(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p3

    if-nez p3, :cond_e

    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p3}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2300(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p3

    if-eqz p3, :cond_4

    goto/16 :goto_7

    .line 1854
    :cond_4
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-virtual {p3}, Lcom/oneplus/faceunlock/OpFacelockController;->getFpFailTimeStamp()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x7d0

    cmp-long p3, v7, v9

    if-gtz p3, :cond_5

    move p3, p1

    goto :goto_2

    :cond_5
    move p3, p2

    :goto_2
    if-eqz p3, :cond_6

    goto :goto_3

    :cond_6
    const-string v6, "0"

    .line 1856
    :goto_3
    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p3}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4500(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "lock_unlock_success"

    if-eqz p3, :cond_7

    .line 1857
    :try_start_1
    invoke-static {v0, v1, v6}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1859
    :cond_7
    invoke-static {v0, v3, v6}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    :goto_4
    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p3}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2300(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 1863
    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p3}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2300(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->reportFaceUnlock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p3

    .line 1867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    :cond_8
    :goto_5
    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p3}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2300(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAutoFacelockEnabled()Z

    move-result p3

    if-nez p3, :cond_b

    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p3}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1700(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result p3

    if-nez p3, :cond_b

    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    .line 1880
    invoke-static {p3}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2300(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result p3

    if-eqz p3, :cond_9

    goto/16 :goto_6

    .line 1904
    :cond_9
    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p3}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4400(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_a

    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p3}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2300(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAutoFacelockEnabled()Z

    move-result p3

    if-nez p3, :cond_a

    const-string p1, "onEndRecognize, result ok to unlock and camera"

    .line 1905
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4000(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3900(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1907
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$100(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_a

    :cond_a
    const-string p3, "onEndRecognize, result ok to skip bouncer"

    .line 1909
    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p3}, Lcom/oneplus/faceunlock/OpFacelockController;->access$100(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p3

    const/4 v0, 0x7

    invoke-virtual {p3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1911
    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p3}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1800(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p3

    if-eqz p3, :cond_19

    .line 1912
    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p3}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4000(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p3

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3900(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1913
    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p3, p1, p2, p2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1900(Lcom/oneplus/faceunlock/OpFacelockController;IZZ)V

    .line 1914
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$100(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p3}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3000(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1915
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2900(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    sget p1, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    invoke-virtual {p0, p2, p1}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->notifyScreenOffAuthenticate(ZI)V

    goto/16 :goto_a

    :cond_b
    :goto_6
    const-string p1, "onEndRecognize, result ok to unlock"

    .line 1881
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isChargingAnimP3RepeatCOUNT_4()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2700(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/util/OpUtils;->isTargetProduct(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 1891
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isBillie8Product()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isBillie2Product()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isFajitaProduct()Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_c
    const-string p1, "set Alpha to 0"

    .line 1895
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4000(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4600(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1897
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4000(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4600(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1901
    :cond_d
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4000(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3900(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1902
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$100(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_a

    :cond_e
    :goto_7
    const-string p1, "not handle recognize"

    .line 1841
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$100(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1843
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$100(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1844
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1800(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1845
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$100(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p3}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3000(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1846
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2900(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    sget p1, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    invoke-virtual {p0, p2, p1}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->notifyScreenOffAuthenticate(ZI)V

    :cond_f
    return-void

    :cond_10
    const-string v0, "lock_unlock_failed"

    if-ne p3, v5, :cond_11

    const-string p1, "face_timeout"

    .line 1920
    invoke-static {v0, p1, v6}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "onEndRecognize: no face"

    .line 1921
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$100(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_a

    :cond_11
    if-ne p3, v4, :cond_13

    const-string p3, "onEndRecognize: camera error"

    .line 1925
    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p3}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1800(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 1927
    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p3}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4000(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p3

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3900(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1928
    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p3, p1, p2, p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1900(Lcom/oneplus/faceunlock/OpFacelockController;IZZ)V

    .line 1930
    :cond_12
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$100(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_a

    :cond_13
    const/4 v4, 0x4

    if-ne p3, v4, :cond_15

    const-string p3, "onEndRecognize: no permission"

    .line 1933
    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p3}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1800(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p3

    if-eqz p3, :cond_14

    .line 1935
    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p3}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4000(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p3

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3900(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1936
    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p3, p1, p2, p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1900(Lcom/oneplus/faceunlock/OpFacelockController;IZZ)V

    .line 1938
    :cond_14
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$100(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a

    .line 1942
    :cond_15
    iget-object p2, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4500(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 1943
    invoke-static {v0, v1, v6}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1945
    :cond_16
    invoke-static {v0, v3, v6}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1953
    :goto_8
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportLinearVibration()Z

    move-result p2

    if-eqz p2, :cond_17

    .line 1954
    iget-object p2, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2700(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/content/Context;

    move-result-object p2

    const/16 p3, 0x3f6

    invoke-static {p2, p3}, Lcom/oneplus/util/VibratorSceneUtils;->isVibratorSceneSupported(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 1955
    iget-object p2, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2700(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/content/Context;

    move-result-object v5

    iget-object p2, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4700(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Vibrator;

    move-result-object v6

    const/16 v7, 0x3fb

    const/4 v8, 0x0

    const/16 v9, 0x32

    const/4 v10, 0x3

    invoke-static/range {v5 .. v10}, Lcom/oneplus/util/VibratorSceneUtils;->doVibrateWithSceneMultipleTimes(Landroid/content/Context;Landroid/os/Vibrator;IIII)Z

    goto :goto_9

    .line 1958
    :cond_17
    iget-object p2, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4700(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Vibrator;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1962
    :cond_18
    :goto_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onEndRecognize: fail "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p3}, Lcom/oneplus/faceunlock/OpFacelockController;->access$4800(Lcom/oneplus/faceunlock/OpFacelockController;)I

    move-result p3

    add-int/2addr p3, p1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " times"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$14;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$100(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_19
    :goto_a
    return-void
.end method
