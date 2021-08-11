.class Lcom/oneplus/battery/OpCBWarpChargingView$3;
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

    iput-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$1100(Lcom/oneplus/battery/OpCBWarpChargingView;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$1200(Lcom/oneplus/battery/OpCBWarpChargingView;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$1300(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$500(Lcom/oneplus/battery/OpCBWarpChargingView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {v2}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$1400(Lcom/oneplus/battery/OpCBWarpChargingView;)I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    iget-object v3, v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    invoke-static {p1, v1, v2, v3}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$1500(Lcom/oneplus/battery/OpCBWarpChargingView;II[Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$1600(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    iget-object v1, p1, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimationSWarpAssets:[Landroid/graphics/Bitmap;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v0, v2, v1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$1500(Lcom/oneplus/battery/OpCBWarpChargingView;II[Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$500(Lcom/oneplus/battery/OpCBWarpChargingView;)I

    move-result v1

    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    invoke-static {p1, v0, v1, p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$1500(Lcom/oneplus/battery/OpCBWarpChargingView;II[Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    const-string p1, "chargingAnimP1"

    invoke-static {p0, p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$1700(Lcom/oneplus/battery/OpCBWarpChargingView;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    sget-boolean p1, Lcom/oneplus/battery/OpCBWarpChargingView;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "OpCBWarpChargingView"

    const-string v0, "P1 onAnimationStart()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$202(Lcom/oneplus/battery/OpCBWarpChargingView;I)I

    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$100(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$300(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$400(Lcom/oneplus/battery/OpCBWarpChargingView;)Lcom/oneplus/battery/OpChargingAnimationController;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$400(Lcom/oneplus/battery/OpCBWarpChargingView;)Lcom/oneplus/battery/OpChargingAnimationController;

    move-result-object p1

    const/16 v0, 0x67

    invoke-interface {p1, v0}, Lcom/oneplus/battery/OpChargingAnimationController;->animationStart(I)V

    :cond_1
    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$1000(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/oneplus/battery/OpCBWarpChargingView$3$1;

    invoke-direct {v0, p0}, Lcom/oneplus/battery/OpCBWarpChargingView$3$1;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView$3;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
