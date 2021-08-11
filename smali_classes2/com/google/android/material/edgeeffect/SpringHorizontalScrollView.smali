.class public Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "SpringHorizontalScrollView.java"


# instance fields
.field private mDispatchScrollCounter:I

.field private mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

.field private mGlowing:Z

.field private mLastTouchX:I

.field private mLastX:F

.field private mLastXVel:F

.field private mLastY:F

.field private mLeftGlow:Landroid/widget/EdgeEffect;

.field private mMaxFlingVelocity:I

.field private mNestedOffsets:[I

.field mOverScrollNested:Z

.field mPullGrowLeft:F

.field mPullGrowRight:F

.field private mRightGlow:Landroid/widget/EdgeEffect;

.field private mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field mScrollStepConsumed:[I

.field private mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mOverScrollNested:Z

    const p2, 0x3dcccccd    # 0.1f

    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mPullGrowLeft:F

    const p2, 0x3f666666    # 0.9f

    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mPullGrowRight:F

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mGlowing:Z

    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->init()V

    return-void
.end method

.method private cancelTouch()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->resetTouch()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->setScrollState(I)V

    return-void
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mMaxFlingVelocity:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mScrollStepConsumed:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mScrollOffset:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mNestedOffsets:[I

    return-void
.end method

.method private isReadyToOverScroll(Z)Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_2
    return v1
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLastTouchX:I

    :cond_1
    return-void
.end method

.method private pullGlows(FFFF)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_4

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    cmpg-float v1, p2, v0

    const/4 v2, 0x1

    if-gez v1, :cond_1

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mPullGrowRight:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mPullGrowLeft:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->ensureLeftGlow()V

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_2

    neg-float v1, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p3, v3

    invoke-virtual {p1, v1, p3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    iput-boolean v2, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mGlowing:Z

    goto :goto_0

    :cond_1
    cmpl-float v1, p2, v0

    if-lez v1, :cond_2

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mPullGrowLeft:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mPullGrowRight:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->ensureRightGlow()V

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p3, v4

    sub-float/2addr v3, p3

    invoke-virtual {p1, v1, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    iput-boolean v2, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mGlowing:Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    cmpl-float p1, p2, v0

    if-nez p1, :cond_3

    cmpl-float p1, p4, v0

    if-eqz p1, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    :cond_4
    :goto_1
    return-void
.end method

.method private releaseGlows()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLeftGlow:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mGlowing:Z

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mGlowing:Z

    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method private resetTouch()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->releaseGlows()V

    return-void
.end method


# virtual methods
.method computeVelocity()F
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mMaxFlingVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mScrollPointerId:I

    invoke-virtual {v0, p0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p0

    neg-float p0, p0

    return p0
.end method

.method considerReleasingGlowsOnScroll(II)V
    .locals 1

    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLeftGlow:Landroid/widget/EdgeEffect;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p2

    if-nez p2, :cond_0

    if-lez p1, :cond_0

    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p2

    or-int/2addr v0, p2

    :cond_0
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p2

    if-nez p2, :cond_1

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method dispatchOnScrolled(II)V
    .locals 2

    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mDispatchScrollCounter:I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->onScrollChanged(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->onScrolled(II)V

    iget p1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mDispatchScrollCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mDispatchScrollCounter:I

    return-void
.end method

.method ensureLeftGlow()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

    if-nez v0, :cond_0

    const-string p0, "SpringHorizontalScrollView"

    const-string v0, "setEdgeEffectFactory first, please!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method ensureRightGlow()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

    if-nez v0, :cond_0

    const-string p0, "SpringHorizontalScrollView"

    const-string v0, "setEdgeEffectFactory first, please!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v6, :cond_9

    if-eq v0, v4, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v4, 0x5

    if-eq v0, v4, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mScrollPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLastTouchX:I

    goto/16 :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->cancelTouch()V

    goto/16 :goto_2

    :cond_4
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SpringHorizontalScrollView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    return v5

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLastTouchX:I

    sub-int/2addr v0, v1

    iget v3, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mScrollState:I

    if-eq v3, v6, :cond_8

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mTouchSlop:I

    if-le v3, v4, :cond_7

    if-lez v0, :cond_6

    sub-int/2addr v0, v4

    goto :goto_0

    :cond_6
    add-int/2addr v0, v4

    :goto_0
    move v3, v6

    goto :goto_1

    :cond_7
    move v3, v5

    :goto_1
    if-eqz v3, :cond_8

    invoke-virtual {p0, v6}, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->setScrollState(I)V

    :cond_8
    iget v3, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mScrollState:I

    if-ne v3, v6, :cond_d

    iget-object v3, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mScrollOffset:[I

    aget v3, v3, v5

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLastTouchX:I

    invoke-virtual {p0, v0, v5, v2}, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v3, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mMaxFlingVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mScrollPointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    neg-float v0, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a

    invoke-virtual {p0, v5}, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->setScrollState(I)V

    :cond_a
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->resetTouch()V

    goto :goto_2

    :cond_b
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mScrollPointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLastTouchX:I

    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mScrollState:I

    if-ne v0, v4, :cond_c

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0, v6}, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->setScrollState(I)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mNestedOffsets:[I

    aput v5, v0, v6

    aput v5, v0, v5

    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->startNestedScroll(I)Z

    :cond_d
    :goto_2
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLastY:F

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onScrollChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    const/4 p4, -0x1

    invoke-virtual {p0, p4}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result p4

    const/high16 v0, 0x41a00000    # 20.0f

    const/4 v1, 0x0

    if-nez p4, :cond_1

    if-ge p2, p3, :cond_1

    iget-boolean p2, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mGlowing:Z

    if-nez p2, :cond_1

    iget p2, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLastXVel:F

    cmpl-float p4, p2, v1

    if-ltz p4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->computeVelocity()F

    move-result p2

    :cond_0
    iget p4, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLastX:F

    div-float/2addr p2, v0

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLastY:F

    invoke-direct {p0, p4, p2, v2, v1}, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->pullGlows(FFFF)V

    iget-object p4, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz p4, :cond_1

    float-to-int p2, p2

    invoke-virtual {p4, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_1
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result p2

    if-nez p2, :cond_3

    if-le p1, p3, :cond_3

    iget-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mGlowing:Z

    if-nez p1, :cond_3

    iget p1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLastXVel:F

    cmpg-float p2, p1, v1

    if-gtz p2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->computeVelocity()F

    move-result p1

    :cond_2
    iget p2, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLastX:F

    div-float/2addr p1, v0

    iget p3, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLastY:F

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->pullGlows(FFFF)V

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz p0, :cond_3

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_3
    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mNestedOffsets:[I

    aput v4, v5, v3

    aput v4, v5, v4

    :cond_1
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mNestedOffsets:[I

    aget v6, v5, v4

    int-to-float v6, v6

    aget v5, v5, v3

    int-to-float v5, v5

    invoke-virtual {v0, v6, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v5, 0x2

    const/high16 v6, 0x3f000000    # 0.5f

    if-eqz v1, :cond_c

    if-eq v1, v3, :cond_a

    if-eq v1, v5, :cond_5

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    const/4 v3, 0x5

    if-eq v1, v3, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mScrollPointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLastTouchX:I

    goto/16 :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->cancelTouch()V

    goto/16 :goto_3

    :cond_5
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mScrollPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SpringHorizontalScrollView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return v4

    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v2, v6

    float-to-int v2, v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLastTouchX:I

    sub-int/2addr v1, v2

    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mScrollState:I

    if-eq v5, v3, :cond_9

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mTouchSlop:I

    if-le v5, v6, :cond_8

    if-lez v1, :cond_7

    sub-int/2addr v1, v6

    goto :goto_0

    :cond_7
    add-int/2addr v1, v6

    :goto_0
    move v5, v3

    goto :goto_1

    :cond_8
    move v5, v4

    :goto_1
    if-eqz v5, :cond_9

    invoke-virtual {p0, v3}, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->setScrollState(I)V

    :cond_9
    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mScrollState:I

    if-ne v5, v3, :cond_d

    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mScrollOffset:[I

    aget v5, v5, v4

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLastTouchX:I

    invoke-virtual {p0, v1, v4, v0}, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    :cond_a
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mMaxFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mScrollPointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_b

    invoke-virtual {p0, v4}, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->setScrollState(I)V

    goto :goto_2

    :cond_b
    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLastXVel:F

    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->resetTouch()V

    goto :goto_4

    :cond_c
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mScrollPointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLastTouchX:I

    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->startNestedScroll(I)Z

    :cond_d
    :goto_3
    move v3, v4

    :goto_4
    if-nez v3, :cond_e

    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_e
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mLastY:F

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 10

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p3

    move v5, p5

    move/from16 v9, p9

    invoke-super/range {v0 .. v9}, Landroid/widget/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-direct {p0, v2}, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->isReadyToOverScroll(Z)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    instance-of p3, p2, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    if-eqz p3, :cond_1

    check-cast p2, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    iput-object p2, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->onRecyclerViewScrolled()V

    :cond_2
    return v1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v2

    if-ltz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mScrollStepConsumed:[I

    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->scrollStep(II[I)V

    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mScrollStepConsumed:[I

    aget v3, v2, v1

    aget v2, v2, v0

    sub-int v4, p1, v3

    sub-int v5, p2, v2

    goto :goto_1

    :cond_4
    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_6

    if-eqz p3, :cond_5

    const/16 v6, 0x2002

    invoke-virtual {p3, v6}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v4, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    int-to-float v5, v5

    invoke-direct {p0, v6, v4, p3, v5}, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->pullGlows(FFFF)V

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->considerReleasingGlowsOnScroll(II)V

    :cond_6
    if-nez v3, :cond_7

    if-eqz v2, :cond_8

    :cond_7
    invoke-virtual {p0, v3, v2}, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->dispatchOnScrolled(II)V

    :cond_8
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    :cond_9
    if-nez v3, :cond_b

    if-eqz v2, :cond_a

    goto :goto_2

    :cond_a
    move v0, v1

    :cond_b
    :goto_2
    return v0
.end method

.method scrollStep(II[I)V
    .locals 0

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    aput p0, p3, p0

    :cond_0
    return-void
.end method

.method setScrollState(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mScrollState:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringHorizontalScrollView;->mScrollState:I

    :cond_0
    return-void
.end method
