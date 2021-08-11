.class Lcom/oneplus/battery/OpNewWarpChargingView$15;
.super Ljava/lang/Object;
.source "OpNewWarpChargingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/battery/OpNewWarpChargingView;->getWarpAnimation()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

.field final synthetic val$batteryLevelTransY:F

.field final synthetic val$warpViewTransY:F


# direct methods
.method constructor <init>(Lcom/oneplus/battery/OpNewWarpChargingView;FF)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$15;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    iput p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView$15;->val$batteryLevelTransY:F

    iput p3, p0, Lcom/oneplus/battery/OpNewWarpChargingView$15;->val$warpViewTransY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$15;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$2200(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$15;->val$batteryLevelTransY:F

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$15;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$2300(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/widget/ImageView;

    move-result-object v0

    iget p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$15;->val$warpViewTransY:F

    sub-float/2addr p0, p1

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method
