.class Lcom/oneplus/battery/OpNewWarpChargingView$12;
.super Ljava/lang/Object;
.source "OpNewWarpChargingView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    iput-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$12;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$12;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$1100(Lcom/oneplus/battery/OpNewWarpChargingView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$12;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$2500(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$12;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$1900(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/oneplus/battery/OpNewWarpChargingView$12$1;

    invoke-direct {v0, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$12$1;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView$12;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$12;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$2000(Lcom/oneplus/battery/OpNewWarpChargingView;)I

    move-result v1

    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$12;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    invoke-static {p1, v0, v1, p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$1500(Lcom/oneplus/battery/OpNewWarpChargingView;II[Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$12;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    const-string p1, "chargingAnimP1"

    invoke-static {p0, p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$300(Lcom/oneplus/battery/OpNewWarpChargingView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    sget-boolean p1, Lcom/oneplus/battery/OpNewWarpChargingView;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "OpNewWarpChargingView"

    const-string v0, "P1 onAnimationStart()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$12;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$202(Lcom/oneplus/battery/OpNewWarpChargingView;I)I

    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$12;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$100(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$12;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$100(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$12;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$100(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$12;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-static {}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$2100()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->op_warp_charging_wireless_anim_info_view_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result p1

    invoke-static {}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$2100()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->op_warp_charging_wireless_anim_info_battery_level_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$12;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {v1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$2200(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/widget/TextView;

    move-result-object v1

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$12;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$2300(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$12;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$2300(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$12;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$2400(Lcom/oneplus/battery/OpNewWarpChargingView;)Lcom/oneplus/battery/OpChargingAnimationController;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$12;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$2400(Lcom/oneplus/battery/OpNewWarpChargingView;)Lcom/oneplus/battery/OpChargingAnimationController;

    move-result-object p0

    const/16 p1, 0x67

    invoke-interface {p0, p1}, Lcom/oneplus/battery/OpChargingAnimationController;->animationStart(I)V

    :cond_1
    return-void
.end method
