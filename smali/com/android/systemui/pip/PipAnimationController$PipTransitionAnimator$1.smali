.class Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator$1;
.super Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;
.source "PipAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->ofAlpha(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FF)Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/view/SurfaceControl;ILandroid/graphics/Rect;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;-><init>(Landroid/view/SurfaceControl;ILandroid/graphics/Rect;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/systemui/pip/PipAnimationController$1;)V

    return-void
.end method


# virtual methods
.method applySurfaceControlTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;F)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getStartValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p3

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getEndValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->setCurrentValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getSurfaceTransactionHelper()Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    move-result-object p0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->alpha(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method onStartTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getSurfaceTransactionHelper()Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getDestinationBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->resetScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    invoke-virtual {p0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getDestinationBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->crop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    invoke-virtual {p0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->shouldApplyCornerRadius()Z

    move-result p0

    invoke-virtual {v0, p2, p1, p0}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    invoke-virtual {p2, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method updateEndValue(Ljava/lang/Float;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->updateEndValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->mCurrentValue:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->mStartValue:Ljava/lang/Object;

    return-void
.end method

.method bridge synthetic updateEndValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator$1;->updateEndValue(Ljava/lang/Float;)V

    return-void
.end method
