.class Lcom/oneplus/battery/OpCBWarpChargingView$12;
.super Ljava/lang/Object;
.source "OpCBWarpChargingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 781
    iput-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$12;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 784
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v0, 0x3f19999a    # 0.6f

    sub-float v0, p1, v0

    const v1, 0x3ecccccc    # 0.39999998f

    div-float/2addr v0, v1

    .line 786
    iget-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$12;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {v1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$2000(Lcom/oneplus/battery/OpCBWarpChargingView;)F

    move-result v1

    mul-float/2addr v1, v0

    .line 787
    iget-object v2, p0, Lcom/oneplus/battery/OpCBWarpChargingView$12;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {v2}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$2600(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/widget/TextView;

    move-result-object v2

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 788
    iget-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$12;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {v1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$300(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 789
    iget-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$12;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {v1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$300(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 790
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView$12;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$300(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
