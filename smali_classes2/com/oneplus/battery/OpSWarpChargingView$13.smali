.class Lcom/oneplus/battery/OpSWarpChargingView$13;
.super Ljava/lang/Object;
.source "OpSWarpChargingView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/battery/OpSWarpChargingView;->getChargeAnimation()Landroid/animation/AnimatorSet;
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

    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$13;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$13;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$800(Lcom/oneplus/battery/OpSWarpChargingView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$13;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1400(Lcom/oneplus/battery/OpSWarpChargingView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$13;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1500(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$13;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1800(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/oneplus/battery/OpSWarpChargingView$13$1;

    invoke-direct {v0, p0}, Lcom/oneplus/battery/OpSWarpChargingView$13$1;-><init>(Lcom/oneplus/battery/OpSWarpChargingView$13;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$13;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    iget-object v0, p1, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$200(Lcom/oneplus/battery/OpSWarpChargingView;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView$13;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1900(Lcom/oneplus/battery/OpSWarpChargingView;)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/battery/OpSWarpChargingView$13;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    iget-object v2, v2, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    invoke-static {p1, v0, v1, v2}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1200(Lcom/oneplus/battery/OpSWarpChargingView;II[Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$13;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$2000(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$13;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1800(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/oneplus/battery/OpSWarpChargingView$13$2;

    invoke-direct {v0, p0}, Lcom/oneplus/battery/OpSWarpChargingView$13$2;-><init>(Lcom/oneplus/battery/OpSWarpChargingView$13;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$13;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    iget-object v0, p1, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationSWarpAssets:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v1, v2, v0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1200(Lcom/oneplus/battery/OpSWarpChargingView;II[Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$13;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    iget-object v0, p1, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$2200(Lcom/oneplus/battery/OpSWarpChargingView;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView$13;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$200(Lcom/oneplus/battery/OpSWarpChargingView;)I

    move-result v1

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$13;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    invoke-static {p1, v0, v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1200(Lcom/oneplus/battery/OpSWarpChargingView;II[Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$13;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    const-string p1, "chargingAnimP2"

    invoke-static {p0, p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1000(Lcom/oneplus/battery/OpSWarpChargingView;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$13;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$702(Lcom/oneplus/battery/OpSWarpChargingView;I)I

    sget-boolean p0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "OpSWarpChargingView"

    const-string p1, "P2 onAnimationStart()"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
