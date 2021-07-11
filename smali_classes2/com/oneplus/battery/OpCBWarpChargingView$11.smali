.class Lcom/oneplus/battery/OpCBWarpChargingView$11;
.super Ljava/lang/Object;
.source "OpCBWarpChargingView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/battery/OpCBWarpChargingView;->genWarpAnimation()V
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

    .line 757
    iput-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$11;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

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

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 760
    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$11;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$1802(Lcom/oneplus/battery/OpCBWarpChargingView;Z)Z

    .line 761
    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$11;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$300(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 762
    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$11;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$300(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleY(F)V

    .line 763
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView$11;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$300(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/widget/TextView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
