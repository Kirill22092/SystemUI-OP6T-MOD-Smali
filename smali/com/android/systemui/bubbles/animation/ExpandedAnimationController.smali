.class public Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;
.super Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;
.source "ExpandedAnimationController.java"


# instance fields
.field private mAfterCollapse:Ljava/lang/Runnable;

.field private mAfterExpand:Ljava/lang/Runnable;

.field private mAnimatingCollapse:Z

.field private mAnimatingExpand:Z

.field private mBubbleDraggedOutEnough:Z

.field private mBubbleDraggingOut:Landroid/view/View;

.field private mBubblePaddingPx:F

.field private mBubbleSizePx:F

.field private mCollapsePoint:Landroid/graphics/PointF;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mExpandedViewPadding:I

.field private mIndividualBubbleWithinDismissTarget:Z

.field private mPipDismissHeight:F

.field private mSpringingBubbleToTouch:Z

.field private mStackOffsetPx:F

.field private mStatusBarHeight:F


# direct methods
.method public constructor <init>(Landroid/graphics/Point;I)V
    .locals 1

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mIndividualBubbleWithinDismissTarget:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    .line 72
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    .line 99
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggedOutEnough:Z

    .line 91
    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mDisplaySize:Landroid/graphics/Point;

    .line 92
    iput p2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mExpandedViewPadding:I

    return-void
.end method

.method private getRowLeft()F
    .locals 4

    .line 429
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 432
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    int-to-float v1, v0

    .line 435
    iget v2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    mul-float/2addr v1, v2

    float-to-double v1, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    .line 436
    iget v3, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubblePaddingPx:F

    mul-float/2addr v0, v3

    double-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 440
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mDisplaySize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    sub-float/2addr p0, v0

    return p0
.end method

.method private getXForChildAtIndex(I)F
    .locals 1

    .line 416
    iget v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubblePaddingPx:F

    iget p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    add-float/2addr p0, v0

    int-to-float p1, p1

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method static synthetic lambda$onActiveControllerForLayout$7(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .locals 2

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Runnable;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 319
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array v0, p0, [Ljava/lang/Runnable;

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p0, p0, [Ljava/lang/Runnable;

    invoke-virtual {p1, v1, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->alpha(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    return-void
.end method

.method static synthetic lambda$snapBubbleBack$4(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 259
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationZ(F)V

    return-void
.end method

.method private startOrUpdateCollapseAnimation()V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->isFirstChildXLeftOfCenter(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 143
    :goto_0
    new-instance v1, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$ptlDXRKES6qHH1g5Lesavl1BSOo;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$ptlDXRKES6qHH1g5Lesavl1BSOo;-><init>(Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationsForChildrenFromIndex(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Runnable;

    new-instance v3, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$JwqN2wkWyA41gYXti2vwoLMs7Gw;

    invoke-direct {v3, p0}, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$JwqN2wkWyA41gYXti2vwoLMs7Gw;-><init>(Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;)V

    aput-object v3, v2, v0

    .line 150
    invoke-interface {v1, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;->startAll([Ljava/lang/Runnable;)V

    return-void
.end method

.method private startOrUpdateExpandAnimation()V
    .locals 4

    .line 126
    new-instance v0, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$_bAKyIb2jwklYUuYKNOzMyBbmlQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$_bAKyIb2jwklYUuYKNOzMyBbmlQ;-><init>(Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationsForChildrenFromIndex(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Runnable;

    new-instance v3, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$-EZFn_NvDV71tFTo7Iiwoss1HYE;

    invoke-direct {v3, p0}, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$-EZFn_NvDV71tFTo7Iiwoss1HYE;-><init>(Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;)V

    aput-object v3, v2, v1

    .line 129
    invoke-interface {v0, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;->startAll([Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateBubblePositions()V
    .locals 5

    .line 395
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 399
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 400
    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 404
    iget-object v3, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggingOut:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 408
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object v2

    .line 409
    invoke-virtual {p0, v1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getBubbleLeft(I)F

    move-result v3

    new-array v4, v0, [Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array v3, v0, [Ljava/lang/Runnable;

    .line 410
    invoke-virtual {v2, v3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public collapseBackToStack(Landroid/graphics/PointF;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    .line 119
    iput-object p2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAfterCollapse:Ljava/lang/Runnable;

    .line 120
    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->startOrUpdateCollapseAnimation()V

    return-void
.end method

.method public demagnetizeBubbleTo(FFFF)V
    .locals 2

    const/4 v0, 0x0

    .line 238
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mIndividualBubbleWithinDismissTarget:Z

    const/4 v1, 0x1

    .line 239
    iput-boolean v1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    .line 241
    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggingOut:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p0

    new-array v1, v0, [Ljava/lang/Runnable;

    .line 242
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p1, v0, [Ljava/lang/Runnable;

    .line 243
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 244
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withPositionStartVelocities(FF)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const p1, 0x461c4000    # 10000.0f

    .line 245
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStiffness(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p1, v0, [Ljava/lang/Runnable;

    .line 246
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismissDraggedOutBubble(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x0

    .line 203
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mIndividualBubbleWithinDismissTarget:Z

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p1

    const v1, 0x461c4000    # 10000.0f

    .line 206
    invoke-virtual {p1, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStiffness(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array v1, v0, [Ljava/lang/Runnable;

    const v2, 0x3f8ccccd    # 1.1f

    .line 207
    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array v1, v0, [Ljava/lang/Runnable;

    .line 208
    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Runnable;

    aput-object p2, v1, v0

    const/4 p2, 0x0

    .line 209
    invoke-virtual {p1, p2, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->alpha(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p2, v0, [Ljava/lang/Runnable;

    .line 210
    invoke-virtual {p1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    .line 212
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    return-void
.end method

.method public dragBubbleOut(Landroid/view/View;FF)V
    .locals 5

    .line 175
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    const/4 v3, 0x2

    new-array v3, v3, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    aput-object v4, v3, v2

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    aput-object v4, v3, v1

    invoke-virtual {v0, p1, v3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->arePropertiesAnimatingOnView(Landroid/view/View;[Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggingOut:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Runnable;

    .line 179
    invoke-virtual {v0, p2, v3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array v3, v2, [Ljava/lang/Runnable;

    .line 180
    invoke-virtual {v0, p3, v3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const v3, 0x461c4000    # 10000.0f

    .line 181
    invoke-virtual {v0, v3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStiffness(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array v3, v2, [Ljava/lang/Runnable;

    .line 182
    invoke-virtual {v0, v3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    goto :goto_0

    .line 184
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    .line 188
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mIndividualBubbleWithinDismissTarget:Z

    if-nez v0, :cond_2

    .line 189
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 190
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 194
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result p1

    iget p2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    add-float/2addr p1, p2

    cmpl-float p1, p3, p1

    if-gtz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result p1

    iget p2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    sub-float/2addr p1, p2

    cmpg-float p1, p3, p1

    if-gez p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    .line 195
    :cond_4
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggedOutEnough:Z

    if-eq v1, p1, :cond_5

    .line 196
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    .line 197
    iput-boolean v1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggedOutEnough:Z

    :cond_5
    return-void
.end method

.method public expandFromStack(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    .line 110
    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAfterExpand:Ljava/lang/Runnable;

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->startOrUpdateExpandAnimation()V

    return-void
.end method

.method getAnimatedProperties()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x5

    new-array p0, p0, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 324
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x1

    aput-object v0, p0, v1

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x2

    aput-object v0, p0, v1

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x3

    aput-object v0, p0, v1

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x4

    aput-object v0, p0, v1

    invoke-static {p0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public getBubbleLeft(I)F
    .locals 2

    int-to-float p1, p1

    .line 424
    iget v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    iget v1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubblePaddingPx:F

    add-float/2addr v0, v1

    mul-float/2addr p1, v0

    .line 425
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getRowLeft()F

    move-result p0

    add-float/2addr p0, p1

    return p0
.end method

.method public getDraggedOutBubble()Landroid/view/View;
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggingOut:Landroid/view/View;

    return-object p0
.end method

.method public getExpandedY()F
    .locals 4

    .line 294
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 298
    iget v2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubblePaddingPx:F

    iget p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mStatusBarHeight:F

    .line 300
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 301
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    int-to-float v1, v0

    .line 298
    :cond_1
    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    add-float/2addr v2, p0

    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method getNextAnimationInChain(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method getOffsetForChainedPropertyAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method getSpringForce(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringForce;
    .locals 0

    .line 344
    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 p1, 0x3f400000    # 0.75f

    .line 345
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 p1, 0x43480000    # 200.0f

    .line 346
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-object p0
.end method

.method public synthetic lambda$startOrUpdateCollapseAnimation$2$ExpandedAnimationController(FILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    int-to-float p2, p2

    mul-float/2addr p1, p2

    iget p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mStackOffsetPx:F

    mul-float/2addr p1, p0

    add-float/2addr v1, p1

    iget p0, v0, Landroid/graphics/PointF;->y:F

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Runnable;

    invoke-virtual {p3, v1, p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->position(FF[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    return-void
.end method

.method public synthetic lambda$startOrUpdateCollapseAnimation$3$ExpandedAnimationController()V
    .locals 1

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    .line 153
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAfterCollapse:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 154
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAfterCollapse:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic lambda$startOrUpdateExpandAnimation$0$ExpandedAnimationController(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .locals 1

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getBubbleLeft(I)F

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Runnable;

    invoke-virtual {p2, p1, p0, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->position(FF[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    return-void
.end method

.method public synthetic lambda$startOrUpdateExpandAnimation$1$ExpandedAnimationController()V
    .locals 1

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    .line 132
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAfterExpand:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAfterExpand:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic lambda$updateYPosition$5$ExpandedAnimationController(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .locals 0

    .line 276
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Runnable;

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    return-void
.end method

.method public magnetBubbleToDismiss(Landroid/view/View;FFFLjava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mIndividualBubbleWithinDismissTarget:Z

    const/4 v1, 0x0

    .line 223
    iput-boolean v1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    .line 224
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p1

    const v2, 0x44bb8000    # 1500.0f

    .line 225
    invoke-virtual {p1, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStiffness(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const/high16 v2, 0x3f400000    # 0.75f

    .line 226
    invoke-virtual {p1, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withDampingRatio(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 227
    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withPositionStartVelocities(FF)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    iget-object p2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    .line 228
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    iget p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    div-float/2addr p0, p3

    sub-float/2addr p2, p0

    new-array p0, v1, [Ljava/lang/Runnable;

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p0, v0, [Ljava/lang/Runnable;

    aput-object p5, p0, v1

    .line 229
    invoke-virtual {p1, p4, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p0, v1, [Ljava/lang/Runnable;

    .line 230
    invoke-virtual {p1, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    return-void
.end method

.method onActiveControllerForLayout(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;)V
    .locals 1

    .line 307
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 308
    sget v0, Lcom/android/systemui/R$dimen;->bubble_stack_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mStackOffsetPx:F

    .line 309
    sget v0, Lcom/android/systemui/R$dimen;->bubble_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubblePaddingPx:F

    .line 310
    sget v0, Lcom/android/systemui/R$dimen;->individual_bubble_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    const v0, 0x105020e

    .line 312
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mStatusBarHeight:F

    .line 313
    sget v0, Lcom/android/systemui/R$dimen;->pip_dismiss_gradient_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mPipDismissHeight:F

    .line 317
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 318
    sget-object p1, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$2WcTtI3gu7zcaAxtSsEqApMIf2s;->INSTANCE:Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$2WcTtI3gu7zcaAxtSsEqApMIf2s;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationsForChildrenFromIndex(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Runnable;

    .line 319
    invoke-interface {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;->startAll([Ljava/lang/Runnable;)V

    return-void
.end method

.method onChildAdded(Landroid/view/View;I)V
    .locals 3

    .line 353
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    if-eqz v0, :cond_0

    .line 354
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->startOrUpdateExpandAnimation()V

    goto :goto_0

    .line 355
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    if-eqz v0, :cond_1

    .line 356
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->startOrUpdateCollapseAnimation()V

    goto :goto_0

    .line 358
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getXForChildAtIndex(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 359
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p1

    .line 361
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result p2

    iget v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    sub-float/2addr p2, v0

    .line 362
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Runnable;

    .line 360
    invoke-virtual {p1, p2, v0, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(FF[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p2, v1, [Ljava/lang/Runnable;

    .line 363
    invoke-virtual {p1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    .line 364
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    :goto_0
    return-void
.end method

.method onChildRemoved(Landroid/view/View;ILjava/lang/Runnable;)V
    .locals 2

    .line 370
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p2

    .line 373
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggingOut:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 374
    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggingOut:Landroid/view/View;

    .line 375
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Runnable;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 377
    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->alpha(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const p1, 0x461c4000    # 10000.0f

    .line 378
    invoke-virtual {p2, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStiffness(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 379
    invoke-virtual {p2, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withDampingRatio(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p1, v1, [Ljava/lang/Runnable;

    const p3, 0x3f8ccccd    # 1.1f

    .line 380
    invoke-virtual {p2, p3, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p1, v1, [Ljava/lang/Runnable;

    .line 381
    invoke-virtual {p2, p3, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p1, v1, [Ljava/lang/Runnable;

    .line 382
    invoke-virtual {p2, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    .line 386
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    return-void
.end method

.method onChildReordered(Landroid/view/View;II)V
    .locals 0

    .line 391
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    return-void
.end method

.method public onGestureFinished()V
    .locals 1

    const/4 v0, 0x0

    .line 266
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggedOutEnough:Z

    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggingOut:Landroid/view/View;

    return-void
.end method

.method public prepareForBubbleDrag(Landroid/view/View;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->cancelAnimationsOnView(Landroid/view/View;)V

    .line 165
    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggingOut:Landroid/view/View;

    .line 166
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggingOut:Landroid/view/View;

    const p1, 0x46fffe00    # 32767.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationZ(F)V

    return-void
.end method

.method public snapBubbleBack(Landroid/view/View;FF)V
    .locals 5

    .line 254
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 256
    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChildAtIndex(I)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object v1

    .line 257
    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getBubbleLeft(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Runnable;

    invoke-virtual {v1, v0, v2, v4}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->position(FF[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 258
    invoke-virtual {v1, p2, p3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withPositionStartVelocities(FF)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Runnable;

    new-instance p3, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$N9wvaPtVhtSOeiJ2KFEP39-mzf4;

    invoke-direct {p3, p1}, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$N9wvaPtVhtSOeiJ2KFEP39-mzf4;-><init>(Landroid/view/View;)V

    aput-object p3, p2, v3

    .line 259
    invoke-virtual {v1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    .line 261
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    return-void
.end method

.method public updateYPosition(Ljava/lang/Runnable;)V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    if-nez v0, :cond_0

    return-void

    .line 275
    :cond_0
    new-instance v0, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$RA0iBFdMEc39RMWMbXuhyZvsHZo;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$RA0iBFdMEc39RMWMbXuhyZvsHZo;-><init>(Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationsForChildrenFromIndex(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Runnable;

    aput-object p1, v0, v1

    .line 276
    invoke-interface {p0, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;->startAll([Ljava/lang/Runnable;)V

    return-void
.end method
