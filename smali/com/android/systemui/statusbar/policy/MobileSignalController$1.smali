.class Lcom/android/systemui/statusbar/policy/MobileSignalController$1;
.super Landroid/os/Handler;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;ZLandroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v0, "start show fake data connected icon type"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$200(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$200(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1b58

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$402(Lcom/android/systemui/statusbar/policy/MobileSignalController;Z)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$000(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$402(Lcom/android/systemui/statusbar/policy/MobileSignalController;Z)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v0, "stop show fake data connected icon type"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$000(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    goto/16 :goto_0

    :pswitch_2
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string v1, "delay update signal strength for VONR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$200(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/SignalStrength;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$200(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$302(Lcom/android/systemui/statusbar/policy/MobileSignalController;J)J

    sget-boolean p1, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update activity activityIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " activityOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$000(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$102(Lcom/android/systemui/statusbar/policy/MobileSignalController;J)J

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    sget-boolean p1, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string p1, "notifyIfNecessary"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
