.class Lcom/oneplus/battery/OpSWarpChargingView$4;
.super Ljava/lang/Object;
.source "OpSWarpChargingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 494
    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 498
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$200(Lcom/oneplus/battery/OpSWarpChargingView;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr p1, v0

    .line 499
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationSWarpAssets:[Landroid/graphics/Bitmap;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    .line 501
    invoke-static {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$000(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
