.class public Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;
.super Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;
.source "ExpandedAnimationController.java"


# instance fields
.field private mAfterCollapse:Ljava/lang/Runnable;

.field private mAfterExpand:Ljava/lang/Runnable;

.field private final mAnimateOutSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

.field private mAnimatingCollapse:Z

.field private mAnimatingExpand:Z

.field private mBubbleDraggedOutEnough:Z

.field private mBubblePaddingTop:F

.field private mBubbleSizePx:F

.field private mBubblesMaxRendered:I

.field private mCollapsePoint:Landroid/graphics/PointF;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mExpandedViewPadding:I

.field private mLeadBubbleEndAction:Ljava/lang/Runnable;

.field private mMagnetizedBubbleDraggingOut:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/util/magnetictarget/MagnetizedObject<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOnBubbleAnimatedOutAction:Ljava/lang/Runnable;

.field private mPreparingToCollapse:Z

.field private mScreenOrientation:I

.field private mSpaceBetweenBubbles:F

.field private mSpringToTouchOnNextMotionEvent:Z

.field private mSpringingBubbleToTouch:Z

.field private mStackOffsetPx:F

.field private mStatusBarHeight:F


# direct methods
.method public constructor <init>(Landroid/graphics/Point;IILjava/lang/Runnable;)V
    .locals 3

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;-><init>()V

    .line 73
    new-instance v0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    const/high16 v1, 0x447a0000    # 1000.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimateOutSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    .line 101
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mPreparingToCollapse:Z

    .line 103
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    .line 117
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    .line 125
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpringToTouchOnNextMotionEvent:Z

    .line 149
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggedOutEnough:Z

    .line 140
    invoke-virtual {p0, p3, p1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateResources(ILandroid/graphics/Point;)V

    .line 141
    iput p2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mExpandedViewPadding:I

    .line 142
    iput-object p4, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mOnBubbleAnimatedOutAction:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;)F
    .locals 0

    .line 49
    iget p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    return p0
.end method

.method private getAvailableScreenWidth(Z)F
    .locals 5

    .line 636
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    .line 637
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_4

    .line 641
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 643
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v3

    .line 644
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    move v3, v1

    :goto_1
    if-eqz p1, :cond_2

    .line 646
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v4

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    if-eqz p1, :cond_3

    .line 647
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    .line 648
    :cond_3
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    .line 649
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    :cond_4
    return v0
.end method

.method private getRowLeft()F
    .locals 3

    .line 655
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 658
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    .line 659
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpaceBetweenBubbles:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x0

    .line 664
    invoke-direct {p0, v1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getAvailableScreenWidth(Z)F

    move-result p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    div-float/2addr v0, v1

    sub-float/2addr p0, v0

    return p0
.end method

.method static synthetic lambda$onActiveControllerForLayout$6(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .locals 2

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Runnable;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 487
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

    .line 434
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationZ(F)V

    return-void
.end method

.method private synthetic lambda$startOrUpdatePathAnimation$0()V
    .locals 1

    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    .line 235
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAfterExpand:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 236
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v0, 0x0

    .line 239
    iput-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAfterExpand:Ljava/lang/Runnable;

    .line 243
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    return-void
.end method

.method private synthetic lambda$startOrUpdatePathAnimation$1()V
    .locals 1

    const/4 v0, 0x0

    .line 247
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    .line 249
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAfterCollapse:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 250
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAfterCollapse:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$startOrUpdatePathAnimation$2()V
    .locals 1

    const/4 v0, 0x0

    .line 310
    iput-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mLeadBubbleEndAction:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$startOrUpdatePathAnimation$3(ZILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .locals 6

    .line 259
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 262
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 263
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 265
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result v2

    if-eqz p1, :cond_0

    .line 269
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 272
    invoke-virtual {p0, p2}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getBubbleLeft(I)F

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 275
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object v4, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v3, v4}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->isFirstChildXLeftOfCenter(F)Z

    move-result v3

    if-eqz v3, :cond_1

    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_0

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    .line 276
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    int-to-float v5, p2

    mul-float/2addr v3, v5

    iget v5, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mStackOffsetPx:F

    mul-float/2addr v3, v5

    add-float/2addr v4, v3

    .line 280
    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 283
    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 293
    iget-object v4, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    .line 294
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->isFirstChildXLeftOfCenter(F)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 295
    invoke-virtual {p1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->isFirstChildXLeftOfCenter(F)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    move p1, v3

    goto :goto_2

    :cond_4
    move p1, v2

    :goto_2
    if-eqz p1, :cond_5

    mul-int/lit8 v0, p2, 0xa

    goto :goto_3

    .line 298
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    sub-int/2addr v0, p2

    mul-int/lit8 v0, v0, 0xa

    :goto_3
    if-eqz p1, :cond_6

    if-eqz p2, :cond_7

    :cond_6
    if-nez p1, :cond_8

    .line 300
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    .line 302
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v3

    if-ne p2, p1, :cond_8

    :cond_7
    move p1, v3

    goto :goto_4

    :cond_8
    move p1, v2

    :goto_4
    const/16 p2, 0xaf

    .line 304
    sget-object v4, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Runnable;

    if-eqz p1, :cond_9

    .line 309
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mLeadBubbleEndAction:Ljava/lang/Runnable;

    goto :goto_5

    :cond_9
    const/4 p1, 0x0

    :goto_5
    aput-object p1, v5, v2

    new-instance p1, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$71IW3TyCGOR-3wOoLqSba1HjVpM;

    invoke-direct {p1, p0}, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$71IW3TyCGOR-3wOoLqSba1HjVpM;-><init>(Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;)V

    aput-object p1, v5, v3

    .line 305
    invoke-virtual {p3, v1, p2, v4, v5}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->followAnimatedTargetAlongPath(Landroid/graphics/Path;ILandroid/animation/TimeInterpolator;[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    int-to-long p0, v0

    .line 311
    invoke-virtual {p3, p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStartDelay(J)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const/high16 p0, 0x447a0000    # 1000.0f

    .line 312
    invoke-virtual {p3, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStiffness(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    return-void
.end method

.method private synthetic lambda$updateYPosition$5(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .locals 0

    .line 454
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Runnable;

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    return-void
.end method

.method private springBubbleTo(Landroid/view/View;FF)V
    .locals 1

    .line 358
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Runnable;

    .line 359
    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p2, p1, [Ljava/lang/Runnable;

    .line 360
    invoke-virtual {p0, p3, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const p2, 0x461c4000    # 10000.0f

    .line 361
    invoke-virtual {p0, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStiffness(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p1, p1, [Ljava/lang/Runnable;

    .line 362
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    return-void
.end method

.method private startOrUpdatePathAnimation(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 232
    new-instance v0, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$gE2Cl95ubR0Pg2NTtDLGoNhSLoM;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$gE2Cl95ubR0Pg2NTtDLGoNhSLoM;-><init>(Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;)V

    goto :goto_0

    .line 246
    :cond_0
    new-instance v0, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$WjMaDVcvCcyW4ns9Ixw4Q7pkHT4;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$WjMaDVcvCcyW4ns9Ixw4Q7pkHT4;-><init>(Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;)V

    .line 258
    :goto_0
    new-instance v1, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$BqKaoXwLUpmgmPFnP5DT1MILnec;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$BqKaoXwLUpmgmPFnP5DT1MILnec;-><init>(Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationsForChildrenFromIndex(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Runnable;

    aput-object v0, v1, p1

    .line 313
    invoke-interface {p0, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;->startAll([Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateBubblePositions()V
    .locals 5

    .line 582
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 586
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 587
    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 591
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getDraggedOutBubble()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 595
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object v2

    .line 596
    invoke-virtual {p0, v1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getBubbleLeft(I)F

    move-result v3

    new-array v4, v0, [Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array v3, v0, [Ljava/lang/Runnable;

    .line 597
    invoke-virtual {v2, v3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public collapseBackToStack(Landroid/graphics/PointF;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    .line 190
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mPreparingToCollapse:Z

    const/4 v1, 0x1

    .line 191
    iput-boolean v1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    .line 192
    iput-object p2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAfterCollapse:Ljava/lang/Runnable;

    .line 193
    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    .line 195
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->startOrUpdatePathAnimation(Z)V

    return-void
.end method

.method public dismissDraggedOutBubble(Landroid/view/View;FLjava/lang/Runnable;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 402
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object v0

    const v1, 0x461c4000    # 10000.0f

    .line 403
    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStiffness(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Runnable;

    const/4 v3, 0x0

    .line 404
    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array v2, v1, [Ljava/lang/Runnable;

    .line 405
    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 406
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    add-float/2addr p1, p2

    new-array p2, v1, [Ljava/lang/Runnable;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Runnable;

    aput-object p3, p1, v1

    .line 407
    invoke-virtual {v0, v3, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->alpha(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p1, v1, [Ljava/lang/Runnable;

    .line 408
    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    .line 410
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    return-void
.end method

.method public dragBubbleOut(Landroid/view/View;FF)V
    .locals 5

    .line 371
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpringToTouchOnNextMotionEvent:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    invoke-virtual {v0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->getUnderlyingObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->springBubbleTo(Landroid/view/View;FF)V

    .line 373
    iput-boolean v2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpringToTouchOnNextMotionEvent:Z

    .line 374
    iput-boolean v1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    goto :goto_0

    .line 375
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    const/4 v3, 0x2

    new-array v3, v3, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    aput-object v4, v3, v2

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    aput-object v4, v3, v1

    invoke-virtual {v0, p1, v3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->arePropertiesAnimatingOnView(Landroid/view/View;[Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    invoke-virtual {v0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->getUnderlyingObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->springBubbleTo(Landroid/view/View;FF)V

    goto :goto_0

    .line 380
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    .line 384
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    invoke-virtual {v0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->getObjectStuckToTarget()Z

    move-result v0

    if-nez v0, :cond_3

    .line 385
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 386
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 390
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result p1

    iget p2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    add-float/2addr p1, p2

    cmpl-float p1, p3, p1

    if-gtz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result p1

    iget p2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    sub-float/2addr p1, p2

    cmpg-float p1, p3, p1

    if-gez p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    .line 391
    :cond_5
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggedOutEnough:Z

    if-eq v1, p1, :cond_6

    .line 392
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    .line 393
    iput-boolean v1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggedOutEnough:Z

    :cond_6
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "ExpandedAnimationController state:"

    .line 472
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  isActive:          "

    .line 473
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->isActiveController()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  animatingExpand:   "

    .line 474
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  animatingCollapse: "

    .line 475
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  springingBubble:   "

    .line 476
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public expandFromStack(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 174
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->expandFromStack(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public expandFromStack(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mPreparingToCollapse:Z

    .line 162
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    .line 164
    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAfterExpand:Ljava/lang/Runnable;

    .line 165
    iput-object p2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mLeadBubbleEndAction:Ljava/lang/Runnable;

    .line 167
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->startOrUpdatePathAnimation(Z)V

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

    .line 492
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

    .line 606
    iget v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    iget v1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpaceBetweenBubbles:F

    add-float/2addr v0, v1

    mul-float/2addr p1, v0

    .line 607
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getRowLeft()F

    move-result p0

    add-float/2addr p0, p1

    return p0
.end method

.method public getDraggedOutBubble()Landroid/view/View;
    .locals 0

    .line 414
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->getUnderlyingObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    :goto_0
    return-object p0
.end method

.method public getExpandedY()F
    .locals 4

    .line 459
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 463
    iget v2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubblePaddingTop:F

    iget p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mStatusBarHeight:F

    .line 465
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 466
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    int-to-float v1, v0

    .line 463
    :cond_1
    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    add-float/2addr v2, p0

    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method public getMagnetizedBubbleDraggingOut()Lcom/android/systemui/util/magnetictarget/MagnetizedObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/systemui/util/magnetictarget/MagnetizedObject<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 421
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    return-object p0
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

    .line 512
    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 p1, 0x3f400000    # 0.75f

    .line 513
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 p1, 0x43480000    # 200.0f

    .line 514
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-object p0
.end method

.method public getWidthForDisplayingBubbles()F
    .locals 3

    const/4 v0, 0x1

    .line 618
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getAvailableScreenWidth(Z)F

    move-result v0

    .line 619
    iget v1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mScreenOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 621
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mDisplaySize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    const v1, 0x3f28f5c3    # 0.66f

    mul-float/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public synthetic lambda$startOrUpdatePathAnimation$0$ExpandedAnimationController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->lambda$startOrUpdatePathAnimation$0()V

    return-void
.end method

.method public synthetic lambda$startOrUpdatePathAnimation$1$ExpandedAnimationController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->lambda$startOrUpdatePathAnimation$1()V

    return-void
.end method

.method public synthetic lambda$startOrUpdatePathAnimation$2$ExpandedAnimationController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->lambda$startOrUpdatePathAnimation$2()V

    return-void
.end method

.method public synthetic lambda$startOrUpdatePathAnimation$3$ExpandedAnimationController(ZILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->lambda$startOrUpdatePathAnimation$3(ZILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V

    return-void
.end method

.method public synthetic lambda$updateYPosition$5$ExpandedAnimationController(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->lambda$updateYPosition$5(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V

    return-void
.end method

.method public notifyPreparingToCollapse()V
    .locals 1

    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mPreparingToCollapse:Z

    return-void
.end method

.method onActiveControllerForLayout(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;)V
    .locals 1

    .line 481
    iget p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mScreenOrientation:I

    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateResources(ILandroid/graphics/Point;)V

    .line 485
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 486
    sget-object p1, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$Vk91Jd6az5rovel1WWKGAGxBq24;->INSTANCE:Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$Vk91Jd6az5rovel1WWKGAGxBq24;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationsForChildrenFromIndex(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Runnable;

    .line 487
    invoke-interface {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;->startAll([Ljava/lang/Runnable;)V

    return-void
.end method

.method onChildAdded(Landroid/view/View;I)V
    .locals 3

    .line 521
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 522
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->startOrUpdatePathAnimation(Z)V

    goto :goto_0

    .line 523
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 524
    invoke-direct {p0, v1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->startOrUpdatePathAnimation(Z)V

    goto :goto_0

    .line 526
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getBubbleLeft(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 530
    iget-boolean p2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mPreparingToCollapse:Z

    if-nez p2, :cond_2

    .line 531
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p1

    .line 533
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result p2

    iget v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v0, v2

    sub-float/2addr p2, v0

    .line 535
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result v0

    new-array v2, v1, [Ljava/lang/Runnable;

    .line 532
    invoke-virtual {p1, p2, v0, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(FF[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p2, v1, [Ljava/lang/Runnable;

    .line 536
    invoke-virtual {p1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    .line 537
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    :cond_2
    :goto_0
    return-void
.end method

.method onChildRemoved(Landroid/view/View;ILjava/lang/Runnable;)V
    .locals 2

    .line 545
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getDraggedOutBubble()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 546
    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    .line 547
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 548
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mOnBubbleAnimatedOutAction:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 550
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    move-result-object p1

    sget-object p2, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v0, 0x0

    .line 551
    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object p2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimateOutSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    .line 552
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object p2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimateOutSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    .line 553
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Runnable;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const/4 p3, 0x1

    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mOnBubbleAnimatedOutAction:Ljava/lang/Runnable;

    aput-object v0, p2, p3

    .line 554
    invoke-virtual {p1, p2}, Lcom/android/systemui/util/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    .line 555
    invoke-virtual {p1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->start()V

    .line 559
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    return-void
.end method

.method onChildReordered(Landroid/view/View;II)V
    .locals 0

    .line 564
    iget-boolean p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mPreparingToCollapse:Z

    if-eqz p1, :cond_0

    return-void

    .line 571
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 574
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->startOrUpdatePathAnimation(Z)V

    goto :goto_0

    .line 577
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    :goto_0
    return-void
.end method

.method public onGestureFinished()V
    .locals 1

    const/4 v0, 0x0

    .line 443
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggedOutEnough:Z

    const/4 v0, 0x0

    .line 444
    iput-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    .line 445
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    return-void
.end method

.method public onUnstuckFromTarget()V
    .locals 1

    const/4 v0, 0x1

    .line 318
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpringToTouchOnNextMotionEvent:Z

    return-void
.end method

.method public prepareForBubbleDrag(Landroid/view/View;Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;)V
    .locals 8

    .line 329
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->cancelAnimationsOnView(Landroid/view/View;)V

    const v0, 0x46fffe00    # 32767.0f

    .line 331
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationZ(F)V

    .line 332
    new-instance v0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController$1;

    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    .line 333
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v5, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    sget-object v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController$1;-><init>(Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;Landroid/content/Context;Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    .line 351
    invoke-virtual {v0, p2}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->addTarget(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;)V

    .line 352
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    invoke-virtual {p1, p3}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->setMagnetListener(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;)V

    .line 353
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->setHapticsEnabled(Z)V

    .line 354
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    const p1, 0x45bb8000    # 6000.0f

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->setFlingToTargetMinVelocity(F)V

    return-void
.end method

.method public snapBubbleBack(Landroid/view/View;FF)V
    .locals 5

    .line 429
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 431
    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChildAtIndex(I)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object v1

    .line 432
    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getBubbleLeft(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Runnable;

    invoke-virtual {v1, v0, v2, v4}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->position(FF[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 433
    invoke-virtual {v1, p2, p3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withPositionStartVelocities(FF)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Runnable;

    new-instance p3, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$N9wvaPtVhtSOeiJ2KFEP39-mzf4;

    invoke-direct {p3, p1}, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$N9wvaPtVhtSOeiJ2KFEP39-mzf4;-><init>(Landroid/view/View;)V

    aput-object p3, p2, v3

    .line 434
    invoke-virtual {v1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 436
    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    .line 438
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    return-void
.end method

.method public updateResources(ILandroid/graphics/Point;)V
    .locals 2

    .line 204
    iput p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mScreenOrientation:I

    .line 205
    iput-object p2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mDisplaySize:Landroid/graphics/Point;

    .line 206
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    if-nez p1, :cond_0

    return-void

    .line 209
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 210
    sget p2, Lcom/android/systemui/R$dimen;->bubble_padding_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubblePaddingTop:F

    const p2, 0x1050249

    .line 211
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mStatusBarHeight:F

    .line 213
    sget p2, Lcom/android/systemui/R$dimen;->bubble_stack_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mStackOffsetPx:F

    .line 214
    sget p2, Lcom/android/systemui/R$dimen;->bubble_padding_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubblePaddingTop:F

    .line 215
    sget p2, Lcom/android/systemui/R$dimen;->individual_bubble_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    .line 216
    sget p2, Lcom/android/systemui/R$integer;->bubbles_max_rendered:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubblesMaxRendered:I

    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getWidthForDisplayingBubbles()F

    move-result p1

    iget p2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mExpandedViewPadding:I

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubblesMaxRendered:I

    add-int/lit8 v0, p2, 0x1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    mul-float/2addr v0, v1

    sub-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 221
    iput p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpaceBetweenBubbles:F

    return-void
.end method

.method public updateYPosition(Ljava/lang/Runnable;)V
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    if-nez v0, :cond_0

    return-void

    .line 453
    :cond_0
    new-instance v0, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$RA0iBFdMEc39RMWMbXuhyZvsHZo;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$RA0iBFdMEc39RMWMbXuhyZvsHZo;-><init>(Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationsForChildrenFromIndex(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Runnable;

    aput-object p1, v0, v1

    .line 454
    invoke-interface {p0, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;->startAll([Ljava/lang/Runnable;)V

    return-void
.end method
