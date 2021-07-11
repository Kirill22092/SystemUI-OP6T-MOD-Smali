.class Lcom/oneplus/battery/OpCBWarpChargingView$7;
.super Ljava/lang/Object;
.source "OpCBWarpChargingView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/battery/OpCBWarpChargingView;->getChargeAnimation()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/battery/OpCBWarpChargingView;


# direct methods
.method constructor <init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$7;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 647
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView$7;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    const-string p1, "ANIM_P2_P3"

    invoke-static {p0, p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$1700(Lcom/oneplus/battery/OpCBWarpChargingView;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 627
    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$7;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$202(Lcom/oneplus/battery/OpCBWarpChargingView;I)I

    .line 628
    sget-boolean p1, Lcom/oneplus/battery/OpCBWarpChargingView;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "OpCBWarpChargingView"

    const-string v0, "P2 P3 set onAnimationStart()"

    .line 629
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_0
    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$7;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$1000(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/oneplus/battery/OpCBWarpChargingView$7$1;

    invoke-direct {v0, p0}, Lcom/oneplus/battery/OpCBWarpChargingView$7$1;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView$7;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
