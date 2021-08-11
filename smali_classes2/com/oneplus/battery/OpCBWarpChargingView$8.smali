.class Lcom/oneplus/battery/OpCBWarpChargingView$8;
.super Ljava/lang/Object;
.source "OpCBWarpChargingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    iput-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$8;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$8;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {v1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$500(Lcom/oneplus/battery/OpCBWarpChargingView;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$8;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    iget-object v3, v1, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimationSWarpAssets:[Landroid/graphics/Bitmap;

    aget-object v0, v3, v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$000(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView$8;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$1800(Lcom/oneplus/battery/OpCBWarpChargingView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView$8;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$1900(Lcom/oneplus/battery/OpCBWarpChargingView;)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x4d

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$8;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$300(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$2002(Lcom/oneplus/battery/OpCBWarpChargingView;F)F

    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$8;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$2100(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$8;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$2300(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView$8;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$2200(Lcom/oneplus/battery/OpCBWarpChargingView;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$8;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$2300(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView$8;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {v3}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$1900(Lcom/oneplus/battery/OpCBWarpChargingView;)F

    move-result v3

    aput v3, v0, v1

    iget-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$8;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {v1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$2400(Lcom/oneplus/battery/OpCBWarpChargingView;)F

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSwarpLevelAnimation : startLevel["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView$8;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$1900(Lcom/oneplus/battery/OpCBWarpChargingView;)F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "], endLevel["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView$8;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$2400(Lcom/oneplus/battery/OpCBWarpChargingView;)F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpCBWarpChargingView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView$8;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$2300(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method
