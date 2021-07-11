.class Lcom/oneplus/battery/OpNewWarpChargingView$5;
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

.field final synthetic val$frameTime25fps:I


# direct methods
.method constructor <init>(Lcom/oneplus/battery/OpNewWarpChargingView;I)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    iput p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->val$frameTime25fps:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    .line 489
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 490
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    iget-object v1, v0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    aget-object p1, v1, p1

    if-eqz p1, :cond_0

    .line 492
    invoke-static {v0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$000(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 497
    :cond_0
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    .line 498
    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$400(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getTotalDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    .line 499
    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$400(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    .line 500
    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$400(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getTotalDuration()J

    move-result-wide v4

    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$500(Lcom/oneplus/battery/OpNewWarpChargingView;)I

    move-result p1

    int-to-long v6, p1

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    sub-long/2addr v0, v2

    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    iget-object p1, p1, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpAnimationAssets:[Landroid/graphics/Bitmap;

    array-length p1, p1

    iget v2, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->val$frameTime25fps:I

    mul-int/2addr p1, v2

    int-to-long v2, p1

    cmp-long p1, v0, v2

    const/4 v0, 0x1

    if-lez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 503
    :goto_0
    sget-boolean v1, Lcom/oneplus/battery/OpNewWarpChargingView;->DEBUG:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {v1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$600(Lcom/oneplus/battery/OpNewWarpChargingView;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 504
    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {v1, v0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$602(Lcom/oneplus/battery/OpNewWarpChargingView;Z)Z

    const-string v0, "OpNewWarpChargingView"

    const-string v1, "Not enough time to play the warp animation."

    .line 505
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_2
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$700(Lcom/oneplus/battery/OpNewWarpChargingView;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 510
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$800(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-nez p1, :cond_3

    .line 511
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$900(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$802(Lcom/oneplus/battery/OpNewWarpChargingView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 514
    :cond_3
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$600(Lcom/oneplus/battery/OpNewWarpChargingView;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$400(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 515
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$800(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 516
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$800(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_4
    return-void
.end method
