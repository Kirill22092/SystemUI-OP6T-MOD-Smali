.class Lcom/oneplus/battery/OpSWarpChargingView$9;
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

.field final synthetic val$chargingAnimWarpP4:Landroid/animation/ValueAnimator;

.field final synthetic val$infoViewScaleUpFadeOut:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/oneplus/battery/OpSWarpChargingView;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$9;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    iput-object p2, p0, Lcom/oneplus/battery/OpSWarpChargingView$9;->val$chargingAnimWarpP4:Landroid/animation/ValueAnimator;

    iput-object p3, p0, Lcom/oneplus/battery/OpSWarpChargingView$9;->val$infoViewScaleUpFadeOut:Landroid/animation/ValueAnimator;

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

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "P3 onAnimationEnd() mIsWarpAnimRunning "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView$9;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$400(Lcom/oneplus/battery/OpSWarpChargingView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mIsAnimationPlaying "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView$9;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$800(Lcom/oneplus/battery/OpSWarpChargingView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpSWarpChargingView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$9;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$800(Lcom/oneplus/battery/OpSWarpChargingView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$9;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {p1, v0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$902(Lcom/oneplus/battery/OpSWarpChargingView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$9;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$900(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/Animator;

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView$9;->val$chargingAnimWarpP4:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView$9;->val$infoViewScaleUpFadeOut:Landroid/animation/ValueAnimator;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$9;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$900(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance v0, Lcom/oneplus/battery/OpSWarpChargingView$9$1;

    invoke-direct {v0, p0}, Lcom/oneplus/battery/OpSWarpChargingView$9$1;-><init>(Lcom/oneplus/battery/OpSWarpChargingView$9;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$9;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$900(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$9;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    iget-object v0, p1, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationSWarpAssets:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1300(Lcom/oneplus/battery/OpSWarpChargingView;)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView$9;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$200(Lcom/oneplus/battery/OpSWarpChargingView;)I

    move-result v1

    add-int/2addr v1, v3

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$9;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationSWarpAssets:[Landroid/graphics/Bitmap;

    invoke-static {p1, v2, v0, p0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1200(Lcom/oneplus/battery/OpSWarpChargingView;II[Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$9;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$800(Lcom/oneplus/battery/OpSWarpChargingView;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$9;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    const-string p1, "chargingAnimP3"

    invoke-static {p0, p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1000(Lcom/oneplus/battery/OpSWarpChargingView;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$9;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$702(Lcom/oneplus/battery/OpSWarpChargingView;I)I

    sget-boolean p0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "OpSWarpChargingView"

    const-string p1, "P3 onAnimationStart()"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
