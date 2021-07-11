.class public Lcom/android/systemui/bubbles/animation/StackAnimationController;
.super Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;
.source "StackAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bubbles/animation/StackAnimationController$StackPositionProperty;
    }
.end annotation


# instance fields
.field private final mAnimateOutSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

.field private mAnimatingToBounds:Landroid/graphics/Rect;

.field private mBubbleBitmapSize:I

.field private mBubbleCountSupplier:Ljava/util/function/IntSupplier;

.field private mBubbleOffscreen:I

.field private mBubblePaddingTop:I

.field private mBubbleSize:I

.field private mFirstBubbleSpringingToTouch:Z

.field private mFloatingContentCoordinator:Lcom/android/systemui/util/FloatingContentCoordinator;

.field private mImeHeight:F

.field private mIsMovingFromFlinging:Z

.field private mMagnetizedStack:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/util/magnetictarget/MagnetizedObject<",
            "Lcom/android/systemui/bubbles/animation/StackAnimationController;",
            ">;"
        }
    .end annotation
.end field

.field private mOnBubbleAnimatedOutAction:Ljava/lang/Runnable;

.field private mPreImeY:F

.field private mRestingStackPosition:Landroid/graphics/PointF;

.field private mSpringToTouchOnNextMotionEvent:Z

.field private final mStackFloatingContent:Lcom/android/systemui/util/FloatingContentCoordinator$FloatingContent;

.field private mStackMovedToStartPosition:Z

.field private mStackOffset:F

.field private mStackPosition:Landroid/graphics/PointF;

.field private mStackPositionAnimations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;",
            "Landroidx/dynamicanimation/animation/DynamicAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mStackStartingVerticalOffset:I

.field private mStatusBarHeight:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/FloatingContentCoordinator;Ljava/util/function/IntSupplier;Ljava/lang/Runnable;)V
    .locals 3

    .line 265
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;-><init>()V

    .line 79
    new-instance v0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    const/high16 v1, 0x447a0000    # 1000.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mAnimateOutSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    .line 114
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mAnimatingToBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackMovedToStartPosition:Z

    const/4 v1, 0x0

    .line 138
    iput v1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mImeHeight:F

    const v1, -0x7fffffff

    .line 144
    iput v1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mPreImeY:F

    .line 152
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPositionAnimations:Ljava/util/HashMap;

    .line 159
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mIsMovingFromFlinging:Z

    .line 173
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mFirstBubbleSpringingToTouch:Z

    .line 181
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mSpringToTouchOnNextMotionEvent:Z

    .line 209
    new-instance v0, Lcom/android/systemui/bubbles/animation/StackAnimationController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController$1;-><init>(Lcom/android/systemui/bubbles/animation/StackAnimationController;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackFloatingContent:Lcom/android/systemui/util/FloatingContentCoordinator$FloatingContent;

    .line 266
    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mFloatingContentCoordinator:Lcom/android/systemui/util/FloatingContentCoordinator;

    .line 267
    iput-object p2, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubbleCountSupplier:Ljava/util/function/IntSupplier;

    .line 268
    iput-object p3, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mOnBubbleAnimatedOutAction:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/bubbles/animation/StackAnimationController;)Landroid/graphics/Rect;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mAnimatingToBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/bubbles/animation/StackAnimationController;)Landroid/graphics/PointF;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/bubbles/animation/StackAnimationController;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubbleSize:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/bubbles/animation/StackAnimationController;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubblePaddingTop:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/bubbles/animation/StackAnimationController;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->moveFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)V

    return-void
.end method

.method private animateInBubble(Landroid/view/View;I)V
    .locals 5

    .line 958
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->isActiveController()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 962
    :cond_0
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 963
    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getOffsetForChainedPropertyAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)F

    move-result v0

    .line 966
    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    int-to-float v2, p2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 967
    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    const/4 v1, 0x0

    .line 968
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 969
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    const/4 v1, 0x1

    add-int/2addr p2, v1

    .line 972
    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    if-ge p2, v2, :cond_1

    .line 973
    invoke-virtual {p0, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChildAtIndex(I)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    int-to-float p2, p2

    mul-float/2addr v0, p2

    add-float/2addr v4, v0

    new-array p2, v3, [Ljava/lang/Runnable;

    .line 974
    invoke-virtual {v2, v4, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const/high16 p2, 0x43480000    # 200.0f

    .line 975
    invoke-virtual {v2, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStiffness(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p2, v3, [Ljava/lang/Runnable;

    .line 976
    invoke-virtual {v2, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    .line 980
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Runnable;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 981
    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p2, v3, [Ljava/lang/Runnable;

    .line 982
    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const/high16 p2, 0x447a0000    # 1000.0f

    .line 983
    invoke-virtual {p1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStiffness(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 984
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    if-le p0, v1, :cond_2

    const-wide/16 v0, 0x19

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStartDelay(J)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p0, v3, [Ljava/lang/Runnable;

    .line 985
    invoke-virtual {p1, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    return-void
.end method

.method private cancelStackPositionAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V
    .locals 1

    .line 995
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPositionAnimations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPositionAnimations:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    :cond_0
    return-void
.end method

.method private getBubbleCount()I
    .locals 0

    .line 1055
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubbleCountSupplier:Ljava/util/function/IntSupplier;

    invoke-interface {p0}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result p0

    return p0
.end method

.method private isStackPositionSet()Z
    .locals 0

    .line 953
    iget-boolean p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackMovedToStartPosition:Z

    return p0
.end method

.method private isStackStuckToTarget()Z
    .locals 0

    .line 862
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mMagnetizedStack:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->getObjectStuckToTarget()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$animateStackDismissal$1(FILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Runnable;

    const/4 v2, 0x0

    .line 681
    invoke-virtual {p3, v2, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array v1, v0, [Ljava/lang/Runnable;

    .line 682
    invoke-virtual {p3, v2, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array v1, v0, [Ljava/lang/Runnable;

    .line 683
    invoke-virtual {p3, v2, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->alpha(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    .line 685
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    add-float/2addr p0, p1

    new-array p1, v0, [Ljava/lang/Runnable;

    .line 684
    invoke-virtual {p3, p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const p0, 0x461c4000    # 10000.0f

    .line 686
    invoke-virtual {p3, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStiffness(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    return-void
.end method

.method private synthetic lambda$flingThenSpringFirstBubbleWithStackFollowing$0(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Float;FFLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 6

    if-nez p7, :cond_1

    .line 508
    iget-object p6, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mRestingStackPosition:Landroid/graphics/PointF;

    iget-object p7, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    invoke-virtual {p6, p7}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    if-eqz p3, :cond_0

    .line 512
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    goto :goto_0

    .line 513
    :cond_0
    invoke-static {p5, p8}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {p4, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    :goto_0
    move v4, p3

    const/4 p3, 0x0

    new-array v5, p3, [Ljava/lang/Runnable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p9

    .line 510
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->springFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;FF[Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$moveStackToStartPosition$3()V
    .locals 3

    .line 870
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mRestingStackPosition:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    .line 871
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getDefaultStartPosition()Landroid/graphics/PointF;

    move-result-object v0

    .line 870
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->setStackPosition(Landroid/graphics/PointF;)V

    const/4 v0, 0x1

    .line 873
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackMovedToStartPosition:Z

    .line 874
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 877
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 880
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mFloatingContentCoordinator:Lcom/android/systemui/util/FloatingContentCoordinator;

    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackFloatingContent:Lcom/android/systemui/util/FloatingContentCoordinator$FloatingContent;

    invoke-virtual {v0, v2}, Lcom/android/systemui/util/FloatingContentCoordinator;->onContentAdded(Lcom/android/systemui/util/FloatingContentCoordinator$FloatingContent;)V

    .line 882
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->animateInBubble(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$springFirstBubbleWithStackFollowing$2(Z[Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    if-nez p1, :cond_0

    .line 719
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mRestingStackPosition:Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    invoke-virtual {p1, p0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 723
    array-length p0, p2

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_1

    aget-object p3, p2, p1

    .line 724
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private moveFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)V
    .locals 3

    .line 895
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iput p2, v0, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 897
    :cond_0
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 898
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iput p2, v0, Landroid/graphics/PointF;->y:F

    .line 901
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 902
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->setValue(Ljava/lang/Object;F)V

    .line 903
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 904
    invoke-virtual {p0, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChildAtIndex(I)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object v0

    .line 905
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getOffsetForChainedPropertyAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)F

    move-result p0

    add-float/2addr p2, p0

    new-array p0, v1, [Ljava/lang/Runnable;

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->property(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p0, v1, [Ljava/lang/Runnable;

    .line 906
    invoke-virtual {v0, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private moveStackToStartPosition()V
    .locals 2

    .line 868
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 869
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    new-instance v1, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$XG5dbVvx6CTopXCQV48uovjmoQo;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$XG5dbVvx6CTopXCQV48uovjmoQo;-><init>(Lcom/android/systemui/bubbles/animation/StackAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyFloatingCoordinatorStackAnimatingTo(FF)V
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackFloatingContent:Lcom/android/systemui/util/FloatingContentCoordinator$FloatingContent;

    invoke-interface {v0}, Lcom/android/systemui/util/FloatingContentCoordinator$FloatingContent;->getFloatingBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object v0

    float-to-int p1, p1

    float-to-int p2, p2

    .line 585
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 586
    iput-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mAnimatingToBounds:Landroid/graphics/Rect;

    .line 587
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mFloatingContentCoordinator:Lcom/android/systemui/util/FloatingContentCoordinator;

    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackFloatingContent:Lcom/android/systemui/util/FloatingContentCoordinator$FloatingContent;

    invoke-virtual {p1, p0}, Lcom/android/systemui/util/FloatingContentCoordinator;->onContentMoved(Lcom/android/systemui/util/FloatingContentCoordinator$FloatingContent;)V

    return-void
.end method


# virtual methods
.method public animateForImeVisibility(Z)F
    .locals 8

    .line 548
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getAllowableStackPositionRegion()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    const v1, -0x7fffffff

    if-eqz p1, :cond_0

    .line 553
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    iget v2, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mPreImeY:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_1

    .line 554
    iput p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mPreImeY:F

    goto :goto_0

    .line 558
    :cond_0
    iget v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mPreImeY:F

    cmpl-float p1, v0, v1

    if-eqz p1, :cond_1

    .line 560
    iput v1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mPreImeY:F

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    cmpl-float p1, v0, v1

    if-eqz p1, :cond_2

    .line 565
    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x0

    .line 567
    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getSpringForce(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v4

    const/high16 v1, 0x43480000    # 200.0f

    .line 568
    invoke-virtual {v4, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/4 v5, 0x0

    const/4 v1, 0x0

    new-array v7, v1, [Ljava/lang/Runnable;

    move-object v2, p0

    move v6, v0

    .line 565
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->springFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;FF[Ljava/lang/Runnable;)V

    .line 572
    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->notifyFloatingCoordinatorStackAnimatingTo(FF)V

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_1

    .line 575
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iget v0, p0, Landroid/graphics/PointF;->y:F

    :goto_1
    return v0
.end method

.method public animateStackDismissal(FLjava/lang/Runnable;)V
    .locals 1

    .line 679
    new-instance v0, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$D-5Qpma319hSMbP8sqDKnJq90JU;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$D-5Qpma319hSMbP8sqDKnJq90JU;-><init>(Lcom/android/systemui/bubbles/animation/StackAnimationController;F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationsForChildrenFromIndex(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Runnable;

    aput-object p2, v0, p1

    .line 687
    invoke-interface {p0, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;->startAll([Ljava/lang/Runnable;)V

    return-void
.end method

.method public cancelStackPositionAnimations()V
    .locals 1

    .line 528
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->cancelStackPositionAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 529
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->cancelStackPositionAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 531
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->removeEndActionForProperty(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 532
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->removeEndActionForProperty(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "StackAnimationController state:"

    .line 451
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  isActive:             "

    .line 452
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->isActiveController()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  restingStackPos:      "

    .line 453
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 454
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mRestingStackPosition:Landroid/graphics/PointF;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/PointF;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "null"

    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  currentStackPos:      "

    .line 455
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/graphics/PointF;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  isMovingFromFlinging: "

    .line 456
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mIsMovingFromFlinging:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  withinDismiss:        "

    .line 457
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackStuckToTarget()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  firstBubbleSpringing: "

    .line 458
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mFirstBubbleSpringingToTouch:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public flingStackThenSpringToEdge(FFF)F
    .locals 14

    move-object v6, p0

    move/from16 v0, p2

    .line 349
    iget v1, v6, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubbleBitmapSize:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, v6, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-gez v1, :cond_0

    move v1, v7

    goto :goto_0

    :cond_0
    move v1, v8

    :goto_0
    const v2, 0x443b8000    # 750.0f

    if-eqz v1, :cond_1

    cmpg-float v1, v0, v2

    if-gez v1, :cond_2

    goto :goto_1

    :cond_1
    const v1, -0x3bc48000    # -750.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    :goto_1
    move v1, v7

    goto :goto_2

    :cond_2
    move v1, v8

    .line 355
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getAllowableStackPositionRegion()Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v1, :cond_3

    .line 359
    iget v4, v3, Landroid/graphics/RectF;->left:F

    goto :goto_3

    :cond_3
    iget v4, v3, Landroid/graphics/RectF;->right:F

    :goto_3
    move v9, v4

    .line 363
    iget-object v4, v6, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_5

    .line 367
    :cond_4
    iget-object v4, v6, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bubble_stiffness"

    .line 368
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v10

    const v2, 0x3f59999a    # 0.85f

    const-string v5, "bubble_damping"

    .line 370
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v11

    const v2, 0x400ccccd    # 2.2f

    const-string v5, "bubble_friction"

    .line 372
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v12

    sub-float v2, v9, p1

    const v4, 0x40866666    # 4.2f

    mul-float/2addr v4, v12

    mul-float/2addr v2, v4

    .line 383
    iget-object v4, v6, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    new-instance v5, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;

    iget v13, v3, Landroid/graphics/RectF;->top:F

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v5, v12, v13, v3}, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;-><init>(FFF)V

    move/from16 v13, p3

    invoke-static {v4, v13, v5}, Lcom/android/systemui/util/animation/PhysicsAnimator;->estimateFlingEndValue(FFLcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;)F

    move-result v3

    .line 388
    invoke-direct {p0, v9, v3}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->notifyFloatingCoordinatorStackAnimatingTo(FF)V

    if-eqz v1, :cond_5

    .line 393
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_4

    .line 394
    :cond_5
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_4
    move v2, v0

    .line 398
    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v4, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 403
    invoke-virtual {v4, v10}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 404
    invoke-virtual {v4, v11}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 405
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v0, p0

    move v3, v12

    .line 398
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->flingThenSpringFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFLandroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Float;)V

    .line 407
    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v4, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 412
    invoke-virtual {v4, v10}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 413
    invoke-virtual {v4, v11}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/4 v5, 0x0

    move/from16 v2, p3

    .line 407
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->flingThenSpringFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFLandroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Float;)V

    .line 417
    iput-boolean v8, v6, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mFirstBubbleSpringingToTouch:Z

    .line 418
    iput-boolean v7, v6, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mIsMovingFromFlinging:Z

    :cond_6
    :goto_5
    return v9
.end method

.method protected flingThenSpringFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFLandroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Float;)V
    .locals 11

    move-object v7, p0

    move-object v8, p1

    .line 473
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->isActiveController()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 478
    invoke-static {p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->getReadablePropertyName(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Flinging %s."

    .line 477
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bubbs.StackCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    new-instance v0, Lcom/android/systemui/bubbles/animation/StackAnimationController$StackPositionProperty;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/bubbles/animation/StackAnimationController$StackPositionProperty;-><init>(Lcom/android/systemui/bubbles/animation/StackAnimationController;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Lcom/android/systemui/bubbles/animation/StackAnimationController$1;)V

    .line 481
    invoke-virtual {v0, p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController$StackPositionProperty;->getValue(Lcom/android/systemui/bubbles/animation/StackAnimationController;)F

    move-result v1

    .line 482
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getAllowableStackPositionRegion()Landroid/graphics/RectF;

    move-result-object v2

    .line 484
    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 485
    iget v3, v2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 486
    :cond_1
    iget v3, v2, Landroid/graphics/RectF;->top:F

    :goto_0
    move v5, v3

    .line 488
    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 489
    iget v2, v2, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 490
    :cond_2
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    :goto_1
    move v6, v2

    .line 492
    new-instance v9, Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-direct {v9, p0, v0}, Landroidx/dynamicanimation/animation/FlingAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    move v0, p3

    .line 493
    invoke-virtual {v9, p3}, Landroidx/dynamicanimation/animation/FlingAnimation;->setFriction(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    move v0, p2

    .line 494
    invoke-virtual {v9, p2}, Landroidx/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    .line 503
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {v9, v0}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    .line 504
    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v9, v0}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    new-instance v10, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$bZgezj9fblRl_isenTD4ApewvoU;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$bZgezj9fblRl_isenTD4ApewvoU;-><init>(Lcom/android/systemui/bubbles/animation/StackAnimationController;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Float;FF)V

    .line 506
    invoke-virtual {v9, v10}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 517
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->cancelStackPositionAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 518
    iget-object v0, v7, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPositionAnimations:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    invoke-virtual {v9}, Landroidx/dynamicanimation/animation/DynamicAnimation;->start()V

    return-void
.end method

.method public getAllowableStackPositionRegion()Landroid/graphics/RectF;
    .locals 7

    .line 597
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 598
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    if-eqz v0, :cond_5

    .line 600
    iget v2, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubbleOffscreen:I

    neg-int v2, v2

    .line 603
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v3

    .line 604
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 605
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v5

    .line 602
    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 607
    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    .line 608
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubbleSize:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubbleOffscreen:I

    add-int/2addr v2, v3

    .line 612
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    .line 613
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 614
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v5

    .line 611
    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 617
    iget v2, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubblePaddingTop:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStatusBarHeight:F

    .line 621
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 622
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v4

    int-to-float v4, v4

    goto :goto_2

    :cond_2
    move v4, v6

    .line 619
    :goto_2
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 624
    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    .line 625
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubbleSize:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubblePaddingTop:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 628
    iget p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mImeHeight:F

    const v4, -0x7fffffff

    cmpl-float v4, p0, v4

    if-eqz v4, :cond_3

    int-to-float v3, v3

    add-float v6, p0, v3

    :cond_3
    sub-float/2addr v2, v6

    .line 630
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result p0

    .line 631
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 632
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v5

    .line 629
    :cond_4
    invoke-static {p0, v5}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v2, p0

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    :cond_5
    return-object v1
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

    .line 737
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x1

    aput-object v0, p0, v1

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x2

    aput-object v0, p0, v1

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x3

    aput-object v0, p0, v1

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x4

    aput-object v0, p0, v1

    invoke-static {p0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultStartPosition()Landroid/graphics/PointF;
    .locals 3

    .line 943
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 944
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 946
    :goto_0
    new-instance v0, Landroid/graphics/PointF;

    if-eqz v1, :cond_1

    .line 947
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getAllowableStackPositionRegion()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 948
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getAllowableStackPositionRegion()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 949
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getAllowableStackPositionRegion()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackStartingVerticalOffset:I

    int-to-float p0, p0

    add-float/2addr v2, p0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getMagnetizedStack(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;)Lcom/android/systemui/util/magnetictarget/MagnetizedObject;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;",
            ")",
            "Lcom/android/systemui/util/magnetictarget/MagnetizedObject<",
            "Lcom/android/systemui/bubbles/animation/StackAnimationController;",
            ">;"
        }
    .end annotation

    .line 1006
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mMagnetizedStack:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    if-nez v0, :cond_0

    .line 1007
    new-instance v0, Lcom/android/systemui/bubbles/animation/StackAnimationController$2;

    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    .line 1008
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Lcom/android/systemui/bubbles/animation/StackAnimationController$StackPositionProperty;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v2, 0x0

    invoke-direct {v5, p0, v1, v2}, Lcom/android/systemui/bubbles/animation/StackAnimationController$StackPositionProperty;-><init>(Lcom/android/systemui/bubbles/animation/StackAnimationController;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Lcom/android/systemui/bubbles/animation/StackAnimationController$1;)V

    new-instance v6, Lcom/android/systemui/bubbles/animation/StackAnimationController$StackPositionProperty;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v6, p0, v1, v2}, Lcom/android/systemui/bubbles/animation/StackAnimationController$StackPositionProperty;-><init>(Lcom/android/systemui/bubbles/animation/StackAnimationController;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Lcom/android/systemui/bubbles/animation/StackAnimationController$1;)V

    move-object v1, v0

    move-object v2, p0

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/bubbles/animation/StackAnimationController$2;-><init>(Lcom/android/systemui/bubbles/animation/StackAnimationController;Landroid/content/Context;Lcom/android/systemui/bubbles/animation/StackAnimationController;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mMagnetizedStack:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    .line 1030
    invoke-virtual {v0, p1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->addTarget(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;)V

    .line 1031
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mMagnetizedStack:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->setHapticsEnabled(Z)V

    .line 1032
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mMagnetizedStack:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    const/high16 v0, 0x457a0000    # 4000.0f

    invoke-virtual {p1, v0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->setFlingToTargetMinVelocity(F)V

    .line 1035
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 1036
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mMagnetizedStack:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    .line 1038
    invoke-virtual {v0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->getFlingToTargetMinVelocity()F

    move-result v0

    const-string v1, "bubble_dismiss_fling_min_velocity"

    .line 1036
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 1039
    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mMagnetizedStack:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    .line 1041
    invoke-virtual {v1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->getStickToTargetMaxXVelocity()F

    move-result v1

    const-string v2, "bubble_dismiss_stick_max_velocity"

    .line 1039
    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    .line 1042
    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mMagnetizedStack:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    .line 1044
    invoke-virtual {v2}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->getFlingToTargetWidthPercent()F

    move-result v2

    const-string v3, "bubble_dismiss_target_width_percent"

    .line 1042
    invoke-static {p1, v3, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    .line 1046
    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mMagnetizedStack:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    invoke-virtual {v2, v0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->setFlingToTargetMinVelocity(F)V

    .line 1047
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mMagnetizedStack:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->setStickToTargetMaxXVelocity(F)V

    .line 1048
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mMagnetizedStack:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->setFlingToTargetWidthPercent(F)V

    .line 1050
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mMagnetizedStack:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    return-object p0
.end method

.method getNextAnimationInChain(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;I)I
    .locals 0

    .line 747
    sget-object p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 748
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    return p0

    :cond_1
    :goto_0
    add-int/lit8 p2, p2, 0x1

    return p2
.end method

.method getOffsetForChainedPropertyAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)F
    .locals 1

    .line 758
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 761
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackStuckToTarget()Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    .line 765
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->isFirstChildXLeftOfCenter(F)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 766
    iget p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackOffset:F

    neg-float p0, p0

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackOffset:F

    :goto_0
    return p0

    :cond_2
    return v0
.end method

.method getSpringForce(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringForce;
    .locals 1

    .line 775
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 777
    iget-boolean p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mIsMovingFromFlinging:Z

    if-eqz p0, :cond_0

    const p0, 0x469c4000    # 20000.0f

    goto :goto_0

    :cond_0
    const p0, 0x463b8000    # 12000.0f

    :goto_0
    const-string p2, "bubble_stiffness"

    .line 776
    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    const p2, 0x3f666666    # 0.9f

    const-string v0, "bubble_damping"

    .line 778
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    .line 781
    new-instance p2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 782
    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 783
    invoke-virtual {p2, p0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-object p2
.end method

.method public getStackPosition()Landroid/graphics/PointF;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getStackPositionAlongNearestHorizontalEdge()Landroid/graphics/PointF;
    .locals 3

    .line 426
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getStackPosition()Landroid/graphics/PointF;

    move-result-object v0

    .line 427
    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->isFirstChildXLeftOfCenter(F)Z

    move-result v1

    .line 428
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getAllowableStackPositionRegion()Landroid/graphics/RectF;

    move-result-object p0

    if-eqz v1, :cond_0

    .line 430
    iget p0, p0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_0
    iget p0, p0, Landroid/graphics/RectF;->right:F

    :goto_0
    iput p0, v0, Landroid/graphics/PointF;->x:F

    return-object v0
.end method

.method public isStackOnLeftSide()Z
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackPositionSet()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubbleBitmapSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 306
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public synthetic lambda$animateStackDismissal$1$StackAnimationController(FILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->lambda$animateStackDismissal$1(FILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V

    return-void
.end method

.method public synthetic lambda$flingThenSpringFirstBubbleWithStackFollowing$0$StackAnimationController(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Float;FFLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->lambda$flingThenSpringFirstBubbleWithStackFollowing$0(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Float;FFLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public synthetic lambda$moveStackToStartPosition$3$StackAnimationController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->lambda$moveStackToStartPosition$3()V

    return-void
.end method

.method public synthetic lambda$springFirstBubbleWithStackFollowing$2$StackAnimationController(Z[Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->lambda$springFirstBubbleWithStackFollowing$2(Z[Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public moveFirstBubbleWithStackFollowing(FF)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mAnimatingToBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const v0, -0x7fffffff

    .line 281
    iput v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mPreImeY:F

    .line 283
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->moveFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)V

    .line 284
    sget-object p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->moveFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)V

    const/4 p1, 0x0

    .line 288
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mIsMovingFromFlinging:Z

    return-void
.end method

.method public moveStackFromTouch(FF)V
    .locals 4

    .line 642
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mSpringToTouchOnNextMotionEvent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x463b8000    # 12000.0f

    .line 643
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->springStack(FFF)V

    .line 644
    iput-boolean v1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mSpringToTouchOnNextMotionEvent:Z

    const/4 v0, 0x1

    .line 645
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mFirstBubbleSpringingToTouch:Z

    goto :goto_1

    .line 646
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mFirstBubbleSpringingToTouch:Z

    if-eqz v0, :cond_3

    .line 647
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPositionAnimations:Ljava/util/HashMap;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 648
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 650
    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPositionAnimations:Ljava/util/HashMap;

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 651
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 655
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 661
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mFirstBubbleSpringingToTouch:Z

    goto :goto_1

    .line 656
    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 657
    invoke-virtual {v2, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 665
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mFirstBubbleSpringingToTouch:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackStuckToTarget()Z

    move-result v0

    if-nez v0, :cond_4

    .line 666
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->moveFirstBubbleWithStackFollowing(FF)V

    :cond_4
    return-void
.end method

.method public moveStackToSimilarPositionAfterRotation(ZF)V
    .locals 3

    .line 440
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getAllowableStackPositionRegion()Landroid/graphics/RectF;

    move-result-object v0

    .line 441
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    if-eqz p1, :cond_0

    .line 443
    iget p1, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_0
    iget p1, v0, Landroid/graphics/RectF;->right:F

    :goto_0
    mul-float/2addr v1, p2

    .line 444
    iget p2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    .line 446
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->setStackPosition(Landroid/graphics/PointF;)V

    return-void
.end method

.method onActiveControllerForLayout(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;)V
    .locals 1

    .line 836
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 837
    sget v0, Lcom/android/systemui/R$dimen;->bubble_stack_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackOffset:F

    .line 838
    sget v0, Lcom/android/systemui/R$dimen;->individual_bubble_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubbleSize:I

    .line 839
    sget v0, Lcom/android/systemui/R$dimen;->bubble_bitmap_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubbleBitmapSize:I

    .line 840
    sget v0, Lcom/android/systemui/R$dimen;->bubble_padding_top:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubblePaddingTop:I

    .line 841
    sget v0, Lcom/android/systemui/R$dimen;->bubble_stack_offscreen:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubbleOffscreen:I

    .line 842
    sget v0, Lcom/android/systemui/R$dimen;->bubble_stack_starting_offset_y:I

    .line 843
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackStartingVerticalOffset:I

    const v0, 0x1050249

    .line 845
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStatusBarHeight:F

    return-void
.end method

.method onChildAdded(Landroid/view/View;I)V
    .locals 2

    .line 789
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackStuckToTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 793
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getBubbleCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 795
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->moveStackToStartPosition()V

    goto :goto_0

    .line 796
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackPositionSet()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_2

    .line 799
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->animateInBubble(Landroid/view/View;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method onChildRemoved(Landroid/view/View;ILjava/lang/Runnable;)V
    .locals 2

    .line 805
    invoke-static {p1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    move-result-object p1

    sget-object p2, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v0, 0x0

    .line 806
    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object p2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mAnimateOutSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    .line 807
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object p2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mAnimateOutSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    .line 808
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Runnable;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    iget-object p3, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mOnBubbleAnimatedOutAction:Ljava/lang/Runnable;

    const/4 v1, 0x1

    aput-object p3, p2, v1

    .line 809
    invoke-virtual {p1, p2}, Lcom/android/systemui/util/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    .line 810
    invoke-virtual {p1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->start()V

    .line 813
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getBubbleCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 814
    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChildAtIndex(I)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->x:F

    new-array p2, v0, [Ljava/lang/Runnable;

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p0, v0, [Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    goto :goto_0

    .line 817
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mRestingStackPosition:Landroid/graphics/PointF;

    if-nez p1, :cond_1

    .line 818
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getDefaultStartPosition()Landroid/graphics/PointF;

    move-result-object p1

    .line 817
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->setStackPosition(Landroid/graphics/PointF;)V

    .line 823
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mFloatingContentCoordinator:Lcom/android/systemui/util/FloatingContentCoordinator;

    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackFloatingContent:Lcom/android/systemui/util/FloatingContentCoordinator$FloatingContent;

    invoke-virtual {p1, p0}, Lcom/android/systemui/util/FloatingContentCoordinator;->onContentRemoved(Lcom/android/systemui/util/FloatingContentCoordinator$FloatingContent;)V

    :goto_0
    return-void
.end method

.method onChildReordered(Landroid/view/View;II)V
    .locals 0

    .line 829
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackPositionSet()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 830
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->setStackPosition(Landroid/graphics/PointF;)V

    :cond_0
    return-void
.end method

.method public onUnstuckFromTarget()V
    .locals 1

    const/4 v0, 0x1

    .line 672
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mSpringToTouchOnNextMotionEvent:Z

    return-void
.end method

.method public setImeHeight(I)V
    .locals 0

    int-to-float p1, p1

    .line 537
    iput p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mImeHeight:F

    return-void
.end method

.method public setStackPosition(Landroid/graphics/PointF;)V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 913
    iget v2, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "Setting position to (%f, %f)."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bubbs.StackCtrl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 916
    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mRestingStackPosition:Landroid/graphics/PointF;

    if-nez v1, :cond_0

    .line 917
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mRestingStackPosition:Landroid/graphics/PointF;

    .line 920
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mRestingStackPosition:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 923
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->isActiveController()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 925
    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    new-array v0, v0, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    aput-object v2, v0, v3

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    aput-object v2, v0, v4

    invoke-virtual {v1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->cancelAllAnimationsOfProperties([Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 927
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->cancelStackPositionAnimations()V

    .line 930
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getOffsetForChainedPropertyAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)F

    move-result v0

    .line 932
    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p0, v1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getOffsetForChainedPropertyAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)F

    move-result v1

    .line 934
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v3, v2, :cond_1

    .line 935
    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v4, p1, Landroid/graphics/PointF;->x:F

    int-to-float v5, v3

    mul-float v6, v5, v0

    add-float/2addr v4, v6

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 936
    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v4, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected varargs springFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;FF[Ljava/lang/Runnable;)V
    .locals 3

    .line 697
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->isActiveController()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 702
    invoke-static {p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->getReadablePropertyName(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 703
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Springing %s to final position %f."

    .line 701
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bubbs.StackCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mSpringToTouchOnNextMotionEvent:Z

    .line 709
    new-instance v1, Lcom/android/systemui/bubbles/animation/StackAnimationController$StackPositionProperty;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/bubbles/animation/StackAnimationController$StackPositionProperty;-><init>(Lcom/android/systemui/bubbles/animation/StackAnimationController;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Lcom/android/systemui/bubbles/animation/StackAnimationController$1;)V

    .line 710
    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v2, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 712
    invoke-virtual {v2, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$TVDnndU2JkVcHNzVQ-aINweVCLk;

    invoke-direct {p2, p0, v0, p5}, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$TVDnndU2JkVcHNzVQ-aINweVCLk;-><init>(Lcom/android/systemui/bubbles/animation/StackAnimationController;Z[Ljava/lang/Runnable;)V

    .line 713
    invoke-virtual {v2, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    check-cast v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 728
    invoke-virtual {v2, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    check-cast v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 730
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->cancelStackPositionAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 731
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStackPositionAnimations:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    invoke-virtual {v2, p4}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public springStack(FFF)V
    .locals 15

    move/from16 v0, p3

    .line 317
    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->notifyFloatingCoordinatorStackAnimatingTo(FF)V

    .line 319
    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v3, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 321
    invoke-virtual {v3, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const v7, 0x3f59999a    # 0.85f

    .line 322
    invoke-virtual {v3, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/4 v8, 0x0

    new-array v6, v8, [Ljava/lang/Runnable;

    const/4 v4, 0x0

    move-object v1, p0

    move/from16 v5, p1

    .line 319
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->springFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;FF[Ljava/lang/Runnable;)V

    .line 326
    sget-object v10, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance v11, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v11}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 328
    invoke-virtual {v11, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 329
    invoke-virtual {v11, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    new-array v14, v8, [Ljava/lang/Runnable;

    const/4 v12, 0x0

    move-object v9, p0

    move/from16 v13, p2

    .line 326
    invoke-virtual/range {v9 .. v14}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->springFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;FF[Ljava/lang/Runnable;)V

    return-void
.end method

.method public springStackAfterFling(FF)V
    .locals 1

    const v0, 0x443b8000    # 750.0f

    .line 339
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->springStack(FFF)V

    return-void
.end method

.method public updateResources(I)V
    .locals 1

    .line 853
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    if-eqz p1, :cond_0

    .line 854
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 855
    sget v0, Lcom/android/systemui/R$dimen;->bubble_padding_top:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mBubblePaddingTop:I

    const v0, 0x1050249

    .line 856
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController;->mStatusBarHeight:F

    :cond_0
    return-void
.end method
