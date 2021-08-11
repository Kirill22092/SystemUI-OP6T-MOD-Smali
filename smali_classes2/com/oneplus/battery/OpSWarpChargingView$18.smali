.class Lcom/oneplus/battery/OpSWarpChargingView$18;
.super Ljava/lang/Object;
.source "OpSWarpChargingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/battery/OpSWarpChargingView;->genWarpAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/battery/OpSWarpChargingView;


# direct methods
.method constructor <init>(Lcom/oneplus/battery/OpSWarpChargingView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$18;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v0, 0x3f19999a    # 0.6f

    sub-float v0, p1, v0

    const v1, 0x3ecccccc    # 0.39999998f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView$18;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$2400(Lcom/oneplus/battery/OpSWarpChargingView;)F

    move-result v1

    mul-float/2addr v1, v0

    iget-object v2, p0, Lcom/oneplus/battery/OpSWarpChargingView$18;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v2}, Lcom/oneplus/battery/OpSWarpChargingView;->access$3100(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/TextView;

    move-result-object v2

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView$18;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$2500(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView$18;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$2500(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setScaleY(F)V

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$18;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$2500(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
