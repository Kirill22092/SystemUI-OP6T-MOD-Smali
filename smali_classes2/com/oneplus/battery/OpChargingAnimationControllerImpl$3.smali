.class Lcom/oneplus/battery/OpChargingAnimationControllerImpl$3;
.super Ljava/lang/Object;
.source "OpChargingAnimationControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/battery/OpChargingAnimationControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)V
    .locals 0

    .line 1001
    iput-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$3;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 2

    .line 1013
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$3;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1017
    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$3;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "onScreenTurnedOff: return because of always-on enabled"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1028
    :cond_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportREDCharging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1030
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$3;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1031
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$3;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->stopAnimation()V

    goto :goto_0

    .line 1033
    :cond_1
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->SUPPORT_CHARGING_ANIM_V2:Z

    if-eqz v0, :cond_2

    .line 1034
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$3;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1035
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$3;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->stopAnimation()V

    goto :goto_0

    .line 1037
    :cond_2
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->SUPPORT_CHARGING_ANIM_V1:Z

    if-eqz v0, :cond_3

    .line 1041
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$3;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1042
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$3;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->stopAnimation()V

    goto :goto_0

    .line 1047
    :cond_3
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$3;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1048
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$3;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpWarpChargingView;->stopAnimation()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .line 1005
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$3;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScreenTurnedOn onRefreshBatteryInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$3;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$000(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$3;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$2000(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1007
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$3;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$000(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$3;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$2000(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
