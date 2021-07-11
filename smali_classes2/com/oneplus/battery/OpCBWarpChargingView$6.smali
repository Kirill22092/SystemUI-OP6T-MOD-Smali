.class Lcom/oneplus/battery/OpCBWarpChargingView$6;
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

    .line 609
    iput-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 613
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 614
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimationAssets:[Landroid/graphics/Bitmap;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    .line 616
    invoke-static {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$000(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
