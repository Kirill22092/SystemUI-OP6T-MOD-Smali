.class Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator$2;
.super Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;
.source "PipAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->ofBounds(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInsetsEvaluator:Landroid/animation/RectEvaluator;

.field private final mRectEvaluator:Landroid/animation/RectEvaluator;

.field final synthetic val$initialStartValue:Landroid/graphics/Rect;

.field final synthetic val$sourceHintRectInsets:Landroid/graphics/Rect;

.field final synthetic val$sourceInsets:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/view/SurfaceControl;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7

    .line 372
    iput-object p6, p0, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator$2;->val$sourceHintRectInsets:Landroid/graphics/Rect;

    iput-object p7, p0, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator$2;->val$sourceInsets:Landroid/graphics/Rect;

    iput-object p8, p0, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator$2;->val$initialStartValue:Landroid/graphics/Rect;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;-><init>(Landroid/view/SurfaceControl;ILandroid/graphics/Rect;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/systemui/pip/PipAnimationController$1;)V

    .line 373
    new-instance p1, Landroid/animation/RectEvaluator;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p1, p2}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator$2;->mRectEvaluator:Landroid/animation/RectEvaluator;

    .line 374
    new-instance p1, Landroid/animation/RectEvaluator;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p1, p2}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator$2;->mInsetsEvaluator:Landroid/animation/RectEvaluator;

    return-void
.end method


# virtual methods
.method applySurfaceControlTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;F)V
    .locals 9

    .line 379
    invoke-virtual {p0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getStartValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 380
    invoke-virtual {p0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getEndValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 381
    iget-object v2, p0, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator$2;->mRectEvaluator:Landroid/animation/RectEvaluator;

    invoke-virtual {v2, p3, v0, v1}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 382
    invoke-virtual {p0, v7}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->setCurrentValue(Ljava/lang/Object;)V

    .line 383
    invoke-virtual {p0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->inScaleTransition()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 384
    invoke-virtual {p0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    move-result p3

    invoke-static {p3}, Lcom/android/systemui/pip/PipAnimationController;->isOutPipDirection(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getSurfaceTransactionHelper()Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    move-result-object p0

    invoke-virtual {p0, p2, p1, v1, v7}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getSurfaceTransactionHelper()Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    move-result-object p0

    invoke-virtual {p0, p2, p1, v0, v7}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    goto :goto_0

    .line 390
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator$2;->val$sourceHintRectInsets:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    .line 391
    iget-object v0, p0, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator$2;->mInsetsEvaluator:Landroid/animation/RectEvaluator;

    iget-object v2, p0, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator$2;->val$sourceInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p3, v2, v1}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    .line 393
    invoke-virtual {p0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getSurfaceTransactionHelper()Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    move-result-object v3

    iget-object v6, p0, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator$2;->val$initialStartValue:Landroid/graphics/Rect;

    move-object v4, p2

    move-object v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->scaleAndCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    goto :goto_0

    .line 396
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getSurfaceTransactionHelper()Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    move-result-object p0

    invoke-virtual {p0, p2, p1, v0, v7}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    .line 399
    :goto_0
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method onEndTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 416
    invoke-virtual {p0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getSurfaceTransactionHelper()Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    move-result-object v0

    .line 417
    invoke-virtual {p0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getDestinationBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->resetScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    .line 418
    invoke-virtual {p0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getDestinationBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p2, p1, p0}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->crop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    return-void
.end method

.method onStartTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 404
    invoke-virtual {p0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getSurfaceTransactionHelper()Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 405
    invoke-virtual {v0, p2, p1, v1}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->alpha(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    .line 406
    invoke-virtual {p0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->shouldApplyCornerRadius()Z

    move-result p0

    invoke-virtual {v0, p2, p1, p0}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    .line 407
    invoke-virtual {p2, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 408
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method updateEndValue(Landroid/graphics/Rect;)V
    .locals 0

    .line 423
    invoke-super {p0, p1}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->updateEndValue(Ljava/lang/Object;)V

    .line 424
    iget-object p1, p0, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->mStartValue:Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->mCurrentValue:Ljava/lang/Object;

    if-eqz p0, :cond_0

    .line 425
    check-cast p1, Landroid/graphics/Rect;

    check-cast p0, Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method bridge synthetic updateEndValue(Ljava/lang/Object;)V
    .locals 0

    .line 372
    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator$2;->updateEndValue(Landroid/graphics/Rect;)V

    return-void
.end method
