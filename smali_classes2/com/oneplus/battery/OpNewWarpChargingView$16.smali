.class Lcom/oneplus/battery/OpNewWarpChargingView$16;
.super Ljava/lang/Object;
.source "OpNewWarpChargingView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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


# direct methods
.method constructor <init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$16;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

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

    const-string p1, "OpNewWarpChargingView"

    const-string v0, "warp animation end"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$16;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$2600(Lcom/oneplus/battery/OpNewWarpChargingView;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$16;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpAnimationAssets:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$1500(Lcom/oneplus/battery/OpNewWarpChargingView;II[Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$16;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$602(Lcom/oneplus/battery/OpNewWarpChargingView;Z)Z

    const-string p0, "OpNewWarpChargingView"

    const-string p1, "warp animation start"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
