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

    .line 718
    iput-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 1

    .line 786
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onFinishedGoingToSleep"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 788
    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 789
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 790
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/battery/OpWarpChargingView;->stopAnimation()V

    .line 794
    :cond_0
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 795
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->stopAnimation()V

    .line 800
    :cond_1
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 801
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->stopAnimation()V

    .line 806
    :cond_2
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 807
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->stopAnimation()V

    :cond_3
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 3

    .line 816
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0, p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1202(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z

    .line 817
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

    if-eqz p1, :cond_3

    .line 822
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportREDCharging()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 824
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 825
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->stopAnimation()V

    goto :goto_0

    .line 827
    :cond_0
    sget-boolean p1, Lcom/oneplus/util/OpUtils;->SUPPORT_CHARGING_ANIM_V2:Z

    if-eqz p1, :cond_1

    .line 828
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 829
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->stopAnimation()V

    goto :goto_0

    .line 831
    :cond_1
    sget-boolean p1, Lcom/oneplus/util/OpUtils;->SUPPORT_CHARGING_ANIM_V1:Z

    if-eqz p1, :cond_2

    .line 834
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 835
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->stopAnimation()V

    goto :goto_0

    .line 839
    :cond_2
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 840
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpWarpChargingView;->stopAnimation()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 3

    .line 721
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

    .line 722
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0, p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1102(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z

    .line 725
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 728
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportREDCharging()Z

    move-result p1

    const-string v0, "stop animation when keyguard not showing.  keyguardShowing:"

    if-eqz p1, :cond_0

    .line 730
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 731
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

    .line 732
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->stopAnimation()V

    goto/16 :goto_0

    .line 734
    :cond_0
    sget-boolean p1, Lcom/oneplus/util/OpUtils;->SUPPORT_CHARGING_ANIM_V2:Z

    if-eqz p1, :cond_1

    .line 735
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 736
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

    .line 737
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->stopAnimation()V

    goto :goto_0

    .line 739
    :cond_1
    sget-boolean p1, Lcom/oneplus/util/OpUtils;->SUPPORT_CHARGING_ANIM_V1:Z

    if-eqz p1, :cond_2

    .line 742
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 743
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

    .line 744
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->stopAnimation()V

    goto :goto_0

    .line 748
    :cond_2
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 749
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpWarpChargingView;->stopAnimation()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPreventModeChanged(Z)V
    .locals 1

    .line 850
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0, p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1302(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z

    if-eqz p1, :cond_3

    .line 855
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportREDCharging()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 857
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 858
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->stopAnimation()V

    goto :goto_0

    .line 860
    :cond_0
    sget-boolean p1, Lcom/oneplus/util/OpUtils;->SUPPORT_CHARGING_ANIM_V2:Z

    if-eqz p1, :cond_1

    .line 861
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 862
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->stopAnimation()V

    goto :goto_0

    .line 864
    :cond_1
    sget-boolean p1, Lcom/oneplus/util/OpUtils;->SUPPORT_CHARGING_ANIM_V1:Z

    if-eqz p1, :cond_2

    .line 867
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 868
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->stopAnimation()V

    goto :goto_0

    .line 872
    :cond_2
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 873
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpWarpChargingView;->stopAnimation()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/oneplus/battery/OpBatteryStatus;)V
    .locals 9

    .line 885
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0, p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1402(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Lcom/oneplus/battery/OpBatteryStatus;)Lcom/oneplus/battery/OpBatteryStatus;

    .line 887
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

    .line 890
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

    .line 893
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

    .line 896
    :goto_3
    invoke-virtual {p1}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isPluggedIn()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    move v4, v3

    goto :goto_4

    :cond_4
    move v4, v2

    .line 900
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

    .line 905
    :goto_5
    iget-object v6, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v6}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1600(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    .line 906
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

    .line 907
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

    .line 906
    :goto_7
    invoke-static {v6, v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1602(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z

    .line 911
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

    .line 912
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

    .line 913
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

    .line 912
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget-object v6, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v6}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    move-result v6

    if-ne v6, v4, :cond_a

    if-eqz v5, :cond_18

    :cond_a
    if-eqz v4, :cond_18

    .line 919
    iget-object v6, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v6}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 920
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Only play charging sound when keyguard not showing."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-virtual {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->playChargingSound()V

    .line 922
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0, v4}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1802(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z

    .line 923
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    iget p1, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    invoke-static {p0, p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1502(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;I)I

    goto/16 :goto_d

    .line 924
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

    .line 925
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$600(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)V

    goto/16 :goto_d

    .line 926
    :cond_c
    iget-object v6, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v6}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    move-result v6

    if-ne v6, v4, :cond_d

    if-eqz v5, :cond_1d

    :cond_d
    if-eqz v4, :cond_1d

    if-eqz v0, :cond_1d

    .line 929
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0, v4}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1802(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z

    .line 932
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    iget v4, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    invoke-static {v0, v4}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1502(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;I)I

    if-eqz v5, :cond_10

    .line 934
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 935
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/battery/OpCBWarpChargingView;->stopAnimation()V

    goto :goto_9

    .line 936
    :cond_e
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 937
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/battery/OpSWarpChargingView;->stopAnimation()V

    goto :goto_9

    .line 938
    :cond_f
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 939
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/battery/OpNewWarpChargingView;->stopAnimation()V

    .line 945
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

    .line 947
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "startAnimation"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 949
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/oneplus/battery/OpCBWarpChargingView;->startAnimation(I)V

    goto/16 :goto_d

    .line 950
    :cond_11
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 951
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object p0

    .line 953
    iget p1, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    if-eq p1, v3, :cond_13

    if-ne p1, v1, :cond_12

    goto :goto_a

    :cond_12
    move v2, v3

    .line 951
    :cond_13
    :goto_a
    invoke-virtual {p0, v2}, Lcom/oneplus/battery/OpSWarpChargingView;->startAnimation(I)V

    goto/16 :goto_d

    .line 958
    :cond_14
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 959
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object p0

    .line 961
    iget p1, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    if-eq p1, v3, :cond_16

    if-ne p1, v1, :cond_15

    goto :goto_b

    :cond_15
    move v2, v3

    .line 959
    :cond_16
    :goto_b
    invoke-virtual {p0, v2}, Lcom/oneplus/battery/OpNewWarpChargingView;->startAnimation(I)V

    goto :goto_d

    .line 968
    :cond_17
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-virtual {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->playChargingSound()V

    goto :goto_d

    .line 971
    :cond_18
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    move-result v0

    if-eq v0, v4, :cond_1d

    if-nez v4, :cond_1d

    .line 974
    invoke-virtual {p1}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isPluggedIn()Z

    move-result p1

    if-nez p1, :cond_1d

    .line 977
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "stopAnimation by unplug the charging"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 980
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->stopAnimation()V

    goto :goto_c

    .line 981
    :cond_19
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 982
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->stopAnimation()V

    goto :goto_c

    .line 983
    :cond_1a
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 984
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->stopAnimation()V

    goto :goto_c

    .line 985
    :cond_1b
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 986
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/battery/OpWarpChargingView;->stopAnimation()V

    .line 990
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

    .line 757
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "onStartedGoingToSleep"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
