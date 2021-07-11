.class Lcom/oneplus/battery/OpNewWarpChargingView$8;
.super Ljava/lang/Object;
.source "OpNewWarpChargingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/battery/OpNewWarpChargingView;->getChargeAnimation()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/battery/OpNewWarpChargingView;


# direct methods
.method constructor <init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$8;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 600
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v0, 0x3e75c28f    # 0.24f

    sub-float v0, p1, v0

    const v1, 0x3f5c28f6    # 0.86f

    div-float/2addr v0, v1

    .line 602
    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$8;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {v1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$100(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleX(F)V

    .line 603
    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$8;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {v1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$100(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleY(F)V

    .line 604
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$8;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$100(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
