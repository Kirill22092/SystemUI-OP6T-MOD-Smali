.class Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OpChargingAnimationControllerImpl.java"


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

    iput-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 1

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onFinishedGoingToSleep"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/battery/OpWarpChargingView;->stopAnimation()V

    :cond_0
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->stopAnimation()V

    :cond_1
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->stopAnimation()V

    :cond_2
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->stopAnimation()V

    :cond_3
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0, p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1202(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardBouncerChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v2}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportREDCharging()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->stopAnimation()V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportWarpCharging()Z

    move-result p1

    if-nez p1, :cond_3

    sget-boolean p1, Lcom/oneplus/util/OpUtils;->SUPPORT_CHARGING_ANIM_V2:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean p1, Lcom/oneplus/util/OpUtils;->SUPPORT_CHARGING_ANIM_V1:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->stopAnimation()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpWarpChargingView;->stopAnimation()V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->stopAnimation()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardVisibilityChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0, p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1102(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportREDCharging()Z

    move-result p1

    const-string v0, "stop animation when keyguard not showing.  keyguardShowing:"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->stopAnimation()V

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportWarpCharging()Z

    move-result p1

    if-nez p1, :cond_3

    sget-boolean p1, Lcom/oneplus/util/OpUtils;->SUPPORT_CHARGING_ANIM_V2:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean p1, Lcom/oneplus/util/OpUtils;->SUPPORT_CHARGING_ANIM_V1:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->stopAnimation()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpWarpChargingView;->stopAnimation()V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->stopAnimation()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onPreventModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0, p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1302(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportREDCharging()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->stopAnimation()V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportWarpCharging()Z

    move-result p1

    if-nez p1, :cond_3

    sget-boolean p1, Lcom/oneplus/util/OpUtils;->SUPPORT_CHARGING_ANIM_V2:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean p1, Lcom/oneplus/util/OpUtils;->SUPPORT_CHARGING_ANIM_V1:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->stopAnimation()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpWarpChargingView;->stopAnimation()V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->stopAnimation()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/oneplus/battery/OpBatteryStatus;)V
    .locals 9

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0, p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1402(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Lcom/oneplus/battery/OpBatteryStatus;)Lcom/oneplus/battery/OpBatteryStatus;

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    iget v1, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    invoke-static {v0, v1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$502(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRefreshBatteryInfo / mPluggedButNotUsb:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v4}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$500(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " / status:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " / chargingType: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / oldChargingType:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v4}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1500(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v4, 0x5

    if-ne v0, v4, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v3

    :goto_3
    invoke-virtual {p1}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isPluggedIn()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    move v4, v3

    goto :goto_4

    :cond_4
    move v4, v2

    :goto_4
    iget-object v5, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v5}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1500(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)I

    move-result v5

    iget v6, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    if-eq v5, v6, :cond_5

    move v5, v3

    goto :goto_5

    :cond_5
    move v5, v2

    :goto_5
    iget-object v6, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v6}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1600(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    iget-object v6, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-virtual {p1}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isPluggedInWired()Z

    move-result v7

    if-nez v7, :cond_6

    iget-boolean v7, p1, Lcom/oneplus/battery/OpBatteryStatus;->wirelessCharging:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    iget-boolean v7, v7, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mDockOnWireless:Z

    if-eqz v7, :cond_7

    :cond_6
    iget-object v7, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v7}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1600(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    move-result v7

    if-nez v7, :cond_8

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    move v0, v2

    goto :goto_7

    :cond_8
    :goto_6
    move v0, v3

    :goto_7
    invoke-static {v6, v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1602(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result v0

    if-ne v0, v1, :cond_9

    move v0, v3

    goto :goto_8

    :cond_9
    move v0, v2

    :goto_8
    iget-object v6, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v6}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onRefreshBatteryInfo / mOldPluggedInAndCharging:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v8}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " / isPluggedInAndCharging:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " / isKeyguardShowing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v8}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " / isScreenTurnedOn "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " / isChargingTypeChange "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v6}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    move-result v6

    if-ne v6, v4, :cond_a

    if-eqz v5, :cond_18

    :cond_a
    if-eqz v4, :cond_18

    iget-object v6, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v6}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Only play charging sound when keyguard not showing."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-virtual {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->playChargingSound()V

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0, v4}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1802(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    iget p1, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    invoke-static {p0, p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1502(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;I)I

    goto/16 :goto_d

    :cond_b
    iget-object v6, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v6}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v6}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$400(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v6}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$500(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$600(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)V

    goto/16 :goto_d

    :cond_c
    iget-object v6, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v6}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    move-result v6

    if-ne v6, v4, :cond_d

    if-eqz v5, :cond_1d

    :cond_d
    if-eqz v4, :cond_1d

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0, v4}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1802(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    iget v4, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    invoke-static {v0, v4}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1502(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;I)I

    if-eqz v5, :cond_10

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/battery/OpCBWarpChargingView;->stopAnimation()V

    goto :goto_9

    :cond_e
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/battery/OpSWarpChargingView;->stopAnimation()V

    goto :goto_9

    :cond_f
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/battery/OpNewWarpChargingView;->stopAnimation()V

    :cond_10
    :goto_9
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1300(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "startAnimation"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/oneplus/battery/OpCBWarpChargingView;->startAnimation(I)V

    goto/16 :goto_d

    :cond_11
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object p0

    iget p1, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    if-eq p1, v3, :cond_13

    if-ne p1, v1, :cond_12

    goto :goto_a

    :cond_12
    move v2, v3

    :cond_13
    :goto_a
    invoke-virtual {p0, v2}, Lcom/oneplus/battery/OpSWarpChargingView;->startAnimation(I)V

    goto/16 :goto_d

    :cond_14
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object p0

    iget p1, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    if-eq p1, v3, :cond_16

    if-ne p1, v1, :cond_15

    goto :goto_b

    :cond_15
    move v2, v3

    :cond_16
    :goto_b
    invoke-virtual {p0, v2}, Lcom/oneplus/battery/OpNewWarpChargingView;->startAnimation(I)V

    goto :goto_d

    :cond_17
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-virtual {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->playChargingSound()V

    goto :goto_d

    :cond_18
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    move-result v0

    if-eq v0, v4, :cond_1d

    if-nez v4, :cond_1d

    invoke-virtual {p1}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isPluggedIn()Z

    move-result p1

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "stopAnimation by unplug the charging"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->stopAnimation()V

    goto :goto_c

    :cond_19
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->stopAnimation()V

    goto :goto_c

    :cond_1a
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->stopAnimation()V

    goto :goto_c

    :cond_1b
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/battery/OpWarpChargingView;->stopAnimation()V

    :cond_1c
    :goto_c
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)V

    :cond_1d
    :goto_d
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "onStartedGoingToSleep"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
