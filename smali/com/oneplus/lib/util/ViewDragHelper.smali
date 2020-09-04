.class public Lcom/oneplus/lib/util/ViewDragHelper;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/util/ViewDragHelper$Callback;
    }
.end annotation


# static fields
.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgesTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroid/widget/OverScroller;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 309
    new-instance v0, Lcom/oneplus/lib/util/ViewDragHelper$1;

    invoke-direct {v0}, Lcom/oneplus/lib/util/ViewDragHelper$1;-><init>()V

    sput-object v0, Lcom/oneplus/lib/util/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/oneplus/lib/util/ViewDragHelper$Callback;)V
    .locals 1

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 98
    iput v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    .line 317
    new-instance v0, Lcom/oneplus/lib/util/ViewDragHelper$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/util/ViewDragHelper$2;-><init>(Lcom/oneplus/lib/util/ViewDragHelper;)V

    iput-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 366
    iput-object p2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 367
    iput-object p3, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    .line 369
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 370
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr p3, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p3, v0

    float-to-int p3, p3

    .line 371
    iput p3, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeSize:I

    .line 373
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mTouchSlop:I

    .line 374
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mMaxVelocity:F

    .line 375
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mMinVelocity:F

    .line 376
    new-instance p2, Landroid/widget/OverScroller;

    sget-object p3, Lcom/oneplus/lib/util/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p2, p1, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    return-void

    .line 363
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 360
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parent view may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkNewEdgeDrag(FFII)Z
    .locals 3

    .line 1250
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 1251
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 1253
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    const/4 v1, 0x0

    if-ne v0, p4, :cond_2

    iget v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v0, p4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_2

    iget v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mTouchSlop:I

    int-to-float v2, v0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p2, v0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    .line 1259
    iget-object p2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    invoke-virtual {p2, p4}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1260
    iget-object p0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeDragsLocked:[I

    aget p1, p0, p3

    or-int/2addr p1, p4

    aput p1, p0, p3

    return v1

    .line 1263
    :cond_1
    iget-object p2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget p2, p2, p3

    and-int/2addr p2, p4

    if-nez p2, :cond_2

    iget p0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mTouchSlop:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1280
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    .line 1281
    :goto_0
    iget-object v3, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    invoke-virtual {v3, p1}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result p1

    if-lez p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    mul-float/2addr p2, p2

    mul-float/2addr p3, p3

    add-float/2addr p2, p3

    .line 1284
    iget p0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr p0, p0

    int-to-float p0, p0

    cmpl-float p0, p2, p0

    if-lez p0, :cond_3

    move v0, v2

    :cond_3
    return v0

    :cond_4
    if-eqz v1, :cond_6

    .line 1286
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mTouchSlop:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_5

    move v0, v2

    :cond_5
    return v0

    :cond_6
    if-eqz p1, :cond_7

    .line 1288
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mTouchSlop:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_7

    move v0, v2

    :cond_7
    return v0
.end method

.method private clampMag(FFF)F
    .locals 1

    .line 659
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p2, p0, p2

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return v0

    :cond_0
    cmpl-float p0, p0, p3

    if-lez p0, :cond_2

    cmpl-float p0, p1, v0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    neg-float p3, p3

    :goto_0
    return p3

    :cond_2
    return p1
.end method

.method private clampMag(III)I
    .locals 0

    .line 642
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p0, p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le p0, p3, :cond_2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    neg-int p3, p3

    :goto_0
    return p3

    :cond_2
    return p1
.end method

.method private clearMotionHistory()V
    .locals 2

    .line 762
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 765
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 766
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 767
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 768
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 769
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialEdgesTouched:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 770
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeDragsInProgress:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 771
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeDragsLocked:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 772
    iput v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mPointersDown:I

    return-void
.end method

.method private clearMotionHistory(I)V
    .locals 2

    .line 776
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/util/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionX:[F

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 780
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionY:[F

    aput v1, v0, p1

    .line 781
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionX:[F

    aput v1, v0, p1

    .line 782
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionY:[F

    aput v1, v0, p1

    .line 783
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialEdgesTouched:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 784
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeDragsInProgress:[I

    aput v1, v0, p1

    .line 785
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeDragsLocked:[I

    aput v1, v0, p1

    .line 786
    iget v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mPointersDown:I

    :cond_1
    :goto_0
    return-void
.end method

.method private computeAxisDuration(III)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 615
    div-int/lit8 v1, v0, 0x2

    .line 616
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v1, v1

    .line 618
    invoke-direct {p0, v2}, Lcom/oneplus/lib/util/ViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    move-result p0

    mul-float/2addr p0, v1

    add-float/2addr v1, p0

    .line 621
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-lez p0, :cond_1

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p0, p0

    div-float/2addr v1, p0

    .line 623
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    goto :goto_0

    .line 625
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-float p0, p0

    int-to-float p1, p3

    div-float/2addr p0, p1

    add-float/2addr p0, v0

    const/high16 p1, 0x43800000    # 256.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    :goto_0
    const/16 p1, 0x258

    .line 628
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .locals 6

    .line 589
    iget v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mMinVelocity:F

    float-to-int v0, v0

    iget v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mMaxVelocity:F

    float-to-int v1, v1

    invoke-direct {p0, p4, v0, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->clampMag(III)I

    move-result p4

    .line 590
    iget v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mMinVelocity:F

    float-to-int v0, v0

    iget v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mMaxVelocity:F

    float-to-int v1, v1

    invoke-direct {p0, p5, v0, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->clampMag(III)I

    move-result p5

    .line 591
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 592
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 593
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 594
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v4, v2, v3

    add-int v5, v0, v1

    if-eqz p4, :cond_0

    int-to-float v0, v2

    int-to-float v2, v4

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    int-to-float v2, v5

    :goto_0
    div-float/2addr v0, v2

    if-eqz p5, :cond_1

    int-to-float v1, v3

    int-to-float v2, v4

    goto :goto_1

    :cond_1
    int-to-float v1, v1

    int-to-float v2, v5

    :goto_1
    div-float/2addr v1, v2

    .line 603
    iget-object v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0, p2, p4, v2}, Lcom/oneplus/lib/util/ViewDragHelper;->computeAxisDuration(III)I

    move-result p2

    .line 604
    iget-object p4, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    invoke-virtual {p4, p1}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result p1

    invoke-direct {p0, p3, p5, p1}, Lcom/oneplus/lib/util/ViewDragHelper;->computeAxisDuration(III)I

    move-result p0

    int-to-float p1, p2

    mul-float/2addr p1, v0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static create(Landroid/view/ViewGroup;FLcom/oneplus/lib/util/ViewDragHelper$Callback;)Lcom/oneplus/lib/util/ViewDragHelper;
    .locals 1

    .line 345
    invoke-static {p0, p2}, Lcom/oneplus/lib/util/ViewDragHelper;->create(Landroid/view/ViewGroup;Lcom/oneplus/lib/util/ViewDragHelper$Callback;)Lcom/oneplus/lib/util/ViewDragHelper;

    move-result-object p0

    .line 346
    iget p2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    mul-float/2addr p2, v0

    float-to-int p1, p2

    iput p1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mTouchSlop:I

    return-object p0
.end method

.method public static create(Landroid/view/ViewGroup;Lcom/oneplus/lib/util/ViewDragHelper$Callback;)Lcom/oneplus/lib/util/ViewDragHelper;
    .locals 2

    .line 332
    new-instance v0, Lcom/oneplus/lib/util/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/oneplus/lib/util/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/oneplus/lib/util/ViewDragHelper$Callback;)V

    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .locals 3

    const/4 v0, 0x1

    .line 751
    iput-boolean v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mReleaseInProgress:Z

    .line 752
    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    iget-object v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1, v2, p1, p2}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    const/4 p1, 0x0

    .line 753
    iput-boolean p1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mReleaseInProgress:Z

    .line 755
    iget p2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    if-ne p2, v0, :cond_0

    .line 757
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/util/ViewDragHelper;->setDragState(I)V

    :cond_0
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 2

    const/high16 p0, 0x3f000000    # 0.5f

    sub-float/2addr p1, p0

    float-to-double p0, p1

    const-wide v0, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr p0, v0

    double-to-float p0, p0

    float-to-double p0, p0

    .line 668
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private dragTo(IIII)V
    .locals 10

    .line 1400
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1401
    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-eqz p3, :cond_0

    .line 1403
    iget-object v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    iget-object v3, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v2, v3, p1, p3}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result p1

    .line 1404
    iget-object v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v3, p1, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    move v6, p1

    if-eqz p4, :cond_1

    .line 1407
    iget-object p1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    iget-object v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p1, v2, p2, p4}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result p2

    .line 1408
    iget-object p1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v2, p2, v1

    invoke-virtual {p1, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_1
    move v7, p2

    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    :cond_2
    sub-int v8, v6, v0

    sub-int v9, v7, v1

    .line 1414
    iget-object v4, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    iget-object v5, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v4 .. v9}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_3
    return-void
.end method

.method private ensureMotionHistorySizeForId(I)V
    .locals 9

    .line 790
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_0

    array-length v0, v0

    if-gt v0, p1, :cond_2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 791
    new-array v0, p1, [F

    .line 792
    new-array v1, p1, [F

    .line 793
    new-array v2, p1, [F

    .line 794
    new-array v3, p1, [F

    .line 795
    new-array v4, p1, [I

    .line 796
    new-array v5, p1, [I

    .line 797
    new-array p1, p1, [I

    .line 799
    iget-object v6, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v6, :cond_1

    .line 800
    array-length v7, v6

    const/4 v8, 0x0

    invoke-static {v6, v8, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 801
    iget-object v6, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionY:[F

    array-length v7, v6

    invoke-static {v6, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 802
    iget-object v6, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionX:[F

    array-length v7, v6

    invoke-static {v6, v8, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 803
    iget-object v6, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionY:[F

    array-length v7, v6

    invoke-static {v6, v8, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 804
    iget-object v6, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v7, v6

    invoke-static {v6, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 805
    iget-object v6, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeDragsInProgress:[I

    array-length v7, v6

    invoke-static {v6, v8, v5, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 806
    iget-object v6, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeDragsLocked:[I

    array-length v7, v6

    invoke-static {v6, v8, p1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 809
    :cond_1
    iput-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionX:[F

    .line 810
    iput-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionY:[F

    .line 811
    iput-object v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionX:[F

    .line 812
    iput-object v3, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionY:[F

    .line 813
    iput-object v4, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 814
    iput-object v5, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 815
    iput-object p1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeDragsLocked:[I

    :cond_2
    return-void
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .locals 10

    .line 569
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 570
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr p1, v2

    sub-int/2addr p2, v3

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 576
    iget-object p1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 p1, 0x0

    .line 577
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/util/ViewDragHelper;->setDragState(I)V

    return p1

    .line 581
    :cond_0
    iget-object v5, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object v4, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/lib/util/ViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    move-result v6

    .line 582
    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    const/4 p1, 0x2

    .line 584
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/util/ViewDragHelper;->setDragState(I)V

    const/4 p0, 0x1

    return p0
.end method

.method private getEdgesTouched(II)I
    .locals 3

    .line 1474
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1475
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    .line 1476
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    .line 1477
    :cond_2
    iget-object p1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    iget p0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr p1, p0

    if-le p2, p1, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    return v0
.end method

.method private isValidPointerForActionMove(I)Z
    .locals 1

    .line 1483
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/util/ViewDragHelper;->isPointerDown(I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1484
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring pointerId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ViewDragHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private releaseViewForPointerUp()V
    .locals 4

    .line 1387
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mMaxVelocity:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1388
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    .line 1389
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mMinVelocity:F

    iget v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mMaxVelocity:F

    .line 1388
    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/lib/util/ViewDragHelper;->clampMag(FFF)F

    move-result v0

    .line 1391
    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    .line 1392
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mMinVelocity:F

    iget v3, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mMaxVelocity:F

    .line 1391
    invoke-direct {p0, v1, v2, v3}, Lcom/oneplus/lib/util/ViewDragHelper;->clampMag(FFF)F

    move-result v1

    .line 1394
    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->dispatchViewReleased(FF)V

    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .locals 2

    const/4 v0, 0x1

    .line 1230
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/util/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    .line 1233
    invoke-direct {p0, p2, p1, p3, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    const/4 v1, 0x2

    .line 1236
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    const/16 v1, 0x8

    .line 1239
    invoke-direct {p0, p2, p1, p3, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result p1

    if-eqz p1, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    if-eqz v0, :cond_4

    .line 1244
    iget-object p1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget p2, p1, p3

    or-int/2addr p2, v0

    aput p2, p1, p3

    .line 1245
    iget-object p0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    invoke-virtual {p0, v0, p3}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    :cond_4
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .locals 2

    .line 820
    invoke-direct {p0, p3}, Lcom/oneplus/lib/util/ViewDragHelper;->ensureMotionHistorySizeForId(I)V

    .line 821
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionX:[F

    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 822
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionY:[F

    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionY:[F

    aput p2, v1, p3

    aput p2, v0, p3

    .line 823
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialEdgesTouched:[I

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/util/ViewDragHelper;->getEdgesTouched(II)I

    move-result p1

    aput p1, v0, p3

    .line 824
    iget p1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mPointersDown:I

    const/4 p2, 0x1

    shl-int/2addr p2, p3

    or-int/2addr p1, p2

    iput p1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mPointersDown:I

    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 6

    .line 828
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 830
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 832
    invoke-direct {p0, v2}, Lcom/oneplus/lib/util/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 835
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 836
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 837
    iget-object v5, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionX:[F

    aput v3, v5, v2

    .line 838
    iget-object v3, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionY:[F

    aput v4, v3, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, -0x1

    .line 483
    iput v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    .line 484
    invoke-direct {p0}, Lcom/oneplus/lib/util/ViewDragHelper;->clearMotionHistory()V

    .line 486
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 488
    iput-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .locals 2

    .line 445
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    .line 450
    iput-object p1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 451
    iput p2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    .line 452
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    const/4 p1, 0x1

    .line 453
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/util/ViewDragHelper;->setDragState(I)V

    return-void

    .line 446
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkTouchSlop(I)Z
    .locals 4

    .line 1308
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionX:[F

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1310
    invoke-virtual {p0, p1, v2}, Lcom/oneplus/lib/util/ViewDragHelper;->checkTouchSlop(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public checkTouchSlop(II)Z
    .locals 6

    .line 1333
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/util/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 v0, p1, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/4 v3, 0x2

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v1

    .line 1340
    :goto_1
    iget-object v3, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionX:[F

    aget v3, v3, p2

    iget-object v4, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionX:[F

    aget v4, v4, p2

    sub-float/2addr v3, v4

    .line 1341
    iget-object v4, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionY:[F

    aget v4, v4, p2

    iget-object v5, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionY:[F

    aget p2, v5, p2

    sub-float/2addr v4, p2

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    mul-float/2addr v3, v3

    mul-float/2addr v4, v4

    add-float/2addr v3, v4

    .line 1344
    iget p0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr p0, p0

    int-to-float p0, p0

    cmpl-float p0, v3, p0

    if-lez p0, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    if-eqz v0, :cond_6

    .line 1346
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mTouchSlop:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_5

    move v1, v2

    :cond_5
    return v1

    :cond_6
    if-eqz p1, :cond_7

    .line 1348
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mTouchSlop:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_7

    move v1, v2

    :cond_7
    return v1
.end method

.method public continueSettling(Z)Z
    .locals 11

    .line 707
    iget v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    .line 708
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    .line 709
    iget-object v3, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v3

    .line 710
    iget-object v4, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v10

    .line 711
    iget-object v4, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v8, v3, v4

    .line 712
    iget-object v4, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v9, v10, v4

    if-eqz v8, :cond_0

    .line 715
    iget-object v4, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    if-eqz v9, :cond_1

    .line 718
    iget-object v4, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_1
    if-nez v8, :cond_2

    if-eqz v9, :cond_3

    .line 722
    :cond_2
    iget-object v4, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    iget-object v5, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v6, v3

    move v7, v10

    invoke-virtual/range {v4 .. v9}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_3
    if-eqz v0, :cond_4

    .line 725
    iget-object v4, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v4

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v3

    if-ne v10, v3, :cond_4

    .line 728
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    move v0, v2

    :cond_4
    if-nez v0, :cond_6

    if-eqz p1, :cond_5

    .line 734
    iget-object p1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 736
    :cond_5
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/util/ViewDragHelper;->setDragState(I)V

    .line 741
    :cond_6
    :goto_0
    iget p0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    if-ne p0, v1, :cond_7

    const/4 v2, 0x1

    :cond_7
    return v2
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .locals 3

    .line 1460
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1462
    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1463
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 1464
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCapturedView()Landroid/view/View;
    .locals 0

    .line 460
    iget-object p0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    return-object p0
.end method

.method public getEdgeSize()I
    .locals 0

    .line 433
    iget p0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeSize:I

    return p0
.end method

.method public getTouchSlop()I
    .locals 0

    .line 475
    iget p0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mTouchSlop:I

    return p0
.end method

.method public getViewDragState()I
    .locals 0

    .line 406
    iget p0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    return p0
.end method

.method public isCapturedViewUnder(II)Z
    .locals 1

    .line 1429
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/oneplus/lib/util/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public isPointerDown(I)Z
    .locals 1

    .line 856
    iget p0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mPointersDown:I

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 1445
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 1446
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 1447
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    if-lt p3, p2, :cond_1

    .line 1448
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-ge p3, p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 9

    .line 1071
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1072
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v0, :cond_0

    .line 1077
    invoke-virtual {p0}, Lcom/oneplus/lib/util/ViewDragHelper;->cancel()V

    .line 1080
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 1081
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1083
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    const/4 v3, 0x1

    if-eq v0, v3, :cond_12

    const/4 v4, 0x2

    if-eq v0, v4, :cond_b

    const/4 v4, 0x3

    if-eq v0, v4, :cond_9

    const/4 v4, 0x5

    if-eq v0, v4, :cond_7

    const/4 v4, 0x6

    if-eq v0, v4, :cond_2

    goto/16 :goto_6

    .line 1180
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1181
    iget v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    if-ne v0, v1, :cond_6

    .line 1184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v1, :cond_5

    .line 1186
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1187
    iget v5, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    if-ne v4, v5, :cond_3

    goto :goto_1

    .line 1192
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 1193
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v5, v5

    float-to-int v6, v6

    .line 1194
    invoke-virtual {p0, v5, v6}, Lcom/oneplus/lib/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v5, v6, :cond_4

    .line 1195
    invoke-virtual {p0, v6, v4}, Lcom/oneplus/lib/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1196
    iget p1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move p1, v3

    :goto_2
    if-ne p1, v3, :cond_6

    .line 1203
    invoke-direct {p0}, Lcom/oneplus/lib/util/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1206
    :cond_6
    invoke-direct {p0, v0}, Lcom/oneplus/lib/util/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_6

    .line 1107
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1108
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1109
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 1111
    invoke-direct {p0, v2, p1, v0}, Lcom/oneplus/lib/util/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1114
    iget v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    if-nez v1, :cond_8

    float-to-int v1, v2

    float-to-int p1, p1

    .line 1117
    invoke-virtual {p0, v1, p1}, Lcom/oneplus/lib/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object p1

    .line 1118
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1120
    iget-object p1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialEdgesTouched:[I

    aget p1, p1, v0

    .line 1121
    iget v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mTrackingEdges:I

    and-int v2, p1, v1

    if-eqz v2, :cond_15

    .line 1122
    iget-object p0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    and-int/2addr p1, v1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_6

    :cond_8
    float-to-int v1, v2

    float-to-int p1, p1

    .line 1124
    invoke-virtual {p0, v1, p1}, Lcom/oneplus/lib/util/ViewDragHelper;->isCapturedViewUnder(II)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 1129
    iget-object p1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_6

    .line 1219
    :cond_9
    iget p1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    if-ne p1, v3, :cond_a

    const/4 p1, 0x0

    .line 1220
    invoke-direct {p0, p1, p1}, Lcom/oneplus/lib/util/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1222
    :cond_a
    invoke-virtual {p0}, Lcom/oneplus/lib/util/ViewDragHelper;->cancel()V

    goto/16 :goto_6

    .line 1135
    :cond_b
    iget v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    if-ne v0, v3, :cond_d

    .line 1137
    iget v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    invoke-direct {p0, v0}, Lcom/oneplus/lib/util/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_6

    .line 1139
    :cond_c
    iget v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1140
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1141
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1142
    iget-object v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionX:[F

    iget v3, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 1143
    iget-object v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionY:[F

    aget v2, v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 1145
    iget-object v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/oneplus/lib/util/ViewDragHelper;->dragTo(IIII)V

    .line 1147
    invoke-direct {p0, p1}, Lcom/oneplus/lib/util/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_6

    .line 1150
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_11

    .line 1152
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1155
    invoke-direct {p0, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_4

    .line 1157
    :cond_e
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1158
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 1159
    iget-object v6, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionX:[F

    aget v6, v6, v1

    sub-float v6, v4, v6

    .line 1160
    iget-object v7, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionY:[F

    aget v7, v7, v1

    sub-float v7, v5, v7

    .line 1162
    invoke-direct {p0, v6, v7, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1163
    iget v8, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    if-ne v8, v3, :cond_f

    goto :goto_5

    :cond_f
    float-to-int v4, v4

    float-to-int v5, v5

    .line 1168
    invoke-virtual {p0, v4, v5}, Lcom/oneplus/lib/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v4

    .line 1169
    invoke-direct {p0, v4, v6, v7}, Lcom/oneplus/lib/util/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1170
    invoke-virtual {p0, v4, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_5

    :cond_10
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1174
    :cond_11
    :goto_5
    invoke-direct {p0, p1}, Lcom/oneplus/lib/util/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto :goto_6

    .line 1211
    :cond_12
    iget p1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    if-ne p1, v3, :cond_13

    .line 1212
    invoke-direct {p0}, Lcom/oneplus/lib/util/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1214
    :cond_13
    invoke-virtual {p0}, Lcom/oneplus/lib/util/ViewDragHelper;->cancel()V

    goto :goto_6

    .line 1087
    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1088
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1089
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    float-to-int v2, v0

    float-to-int v3, v1

    .line 1090
    invoke-virtual {p0, v2, v3}, Lcom/oneplus/lib/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v2

    .line 1092
    invoke-direct {p0, v0, v1, p1}, Lcom/oneplus/lib/util/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1097
    invoke-virtual {p0, v2, p1}, Lcom/oneplus/lib/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1099
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v0, v0, p1

    .line 1100
    iget v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mTrackingEdges:I

    and-int v2, v0, v1

    if-eqz v2, :cond_15

    .line 1101
    iget-object p0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    and-int/2addr v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->onEdgeTouched(II)V

    :cond_15
    :goto_6
    return-void
.end method

.method setDragState(I)V
    .locals 2

    .line 860
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 861
    iget v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    if-eq v0, p1, :cond_0

    .line 862
    iput p1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    .line 863
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 864
    iget p1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 865
    iput-object p1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .locals 0

    .line 422
    iput p1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mTrackingEdges:I

    return-void
.end method

.method public setMinVelocity(F)V
    .locals 0

    .line 386
    iput p1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mMinVelocity:F

    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .locals 3

    .line 549
    iget-boolean v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mReleaseInProgress:Z

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    .line 555
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    .line 556
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    .line 554
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result p0

    return p0

    .line 550
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 935
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 936
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-nez v2, :cond_0

    .line 941
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/util/ViewDragHelper;->cancel()V

    .line 944
    :cond_0
    iget-object v4, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    .line 945
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 947
    :cond_1
    iget-object v4, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v4, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_10

    if-eq v2, v6, :cond_f

    if-eq v2, v4, :cond_6

    const/4 v7, 0x3

    if-eq v2, v7, :cond_f

    const/4 v7, 0x5

    if-eq v2, v7, :cond_4

    const/4 v4, 0x6

    if-eq v2, v4, :cond_3

    :cond_2
    :goto_0
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 1049
    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1050
    invoke-direct {v0, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->clearMotionHistory(I)V

    goto :goto_0

    .line 971
    :cond_4
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 972
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 973
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 975
    invoke-direct {v0, v7, v1, v2}, Lcom/oneplus/lib/util/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 978
    iget v3, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    if-nez v3, :cond_5

    .line 979
    iget-object v1, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v1, v1, v2

    .line 980
    iget v3, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mTrackingEdges:I

    and-int v4, v1, v3

    if-eqz v4, :cond_2

    .line 981
    iget-object v4, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    and-int/2addr v1, v3

    invoke-virtual {v4, v1, v2}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    :cond_5
    if-ne v3, v4, :cond_2

    float-to-int v3, v7

    float-to-int v1, v1

    .line 985
    invoke-virtual {v0, v3, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v1

    .line 986
    iget-object v3, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v1, v3, :cond_2

    .line 987
    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto :goto_0

    .line 994
    :cond_6
    iget-object v2, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionY:[F

    if-nez v2, :cond_7

    goto :goto_0

    .line 997
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_e

    .line 999
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1002
    invoke-direct {v0, v4}, Lcom/oneplus/lib/util/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v7

    if-nez v7, :cond_8

    goto/16 :goto_3

    .line 1004
    :cond_8
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 1005
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 1006
    iget-object v9, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionX:[F

    aget v9, v9, v4

    sub-float v9, v7, v9

    .line 1007
    iget-object v10, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionY:[F

    aget v10, v10, v4

    sub-float v10, v8, v10

    float-to-int v7, v7

    float-to-int v8, v8

    .line 1009
    invoke-virtual {v0, v7, v8}, Lcom/oneplus/lib/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 1010
    invoke-direct {v0, v7, v9, v10}, Lcom/oneplus/lib/util/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v8

    if-eqz v8, :cond_9

    move v8, v6

    goto :goto_2

    :cond_9
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_b

    .line 1017
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v11

    float-to-int v12, v9

    add-int v13, v11, v12

    .line 1019
    iget-object v14, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    invoke-virtual {v14, v7, v13, v12}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v12

    .line 1021
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v13

    float-to-int v14, v10

    add-int v15, v13, v14

    .line 1023
    iget-object v5, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    invoke-virtual {v5, v7, v15, v14}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v5

    .line 1025
    iget-object v14, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    invoke-virtual {v14, v7}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v14

    .line 1027
    iget-object v15, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    invoke-virtual {v15, v7}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v15

    if-eqz v14, :cond_a

    if-lez v14, :cond_b

    if-ne v12, v11, :cond_b

    :cond_a
    if-eqz v15, :cond_e

    if-lez v15, :cond_b

    if-ne v5, v13, :cond_b

    goto :goto_4

    .line 1034
    :cond_b
    invoke-direct {v0, v9, v10, v4}, Lcom/oneplus/lib/util/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1035
    iget v5, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    if-ne v5, v6, :cond_c

    goto :goto_4

    :cond_c
    if-eqz v8, :cond_d

    .line 1040
    invoke-virtual {v0, v7, v4}, Lcom/oneplus/lib/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_4

    :cond_d
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1044
    :cond_e
    :goto_4
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/lib/util/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1056
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/util/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 951
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 952
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v5, 0x0

    .line 953
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 954
    invoke-direct {v0, v2, v3, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->saveInitialMotion(FFI)V

    float-to-int v2, v2

    float-to-int v3, v3

    .line 956
    invoke-virtual {v0, v2, v3}, Lcom/oneplus/lib/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v2

    .line 959
    iget-object v3, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v2, v3, :cond_11

    iget v3, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    if-ne v3, v4, :cond_11

    .line 960
    invoke-virtual {v0, v2, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 963
    :cond_11
    iget-object v2, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v2, v2, v1

    .line 964
    iget v3, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mTrackingEdges:I

    and-int v4, v2, v3

    if-eqz v4, :cond_12

    .line 965
    iget-object v4, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    and-int/2addr v2, v3

    invoke-virtual {v4, v2, v1}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->onEdgeTouched(II)V

    .line 1061
    :cond_12
    :goto_5
    iget v0, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    if-ne v0, v6, :cond_13

    move v5, v6

    :cond_13
    return v5
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    const/4 p1, -0x1

    .line 525
    iput p1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    const/4 p1, 0x0

    .line 527
    invoke-direct {p0, p2, p3, p1, p1}, Lcom/oneplus/lib/util/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result p1

    if-nez p1, :cond_0

    .line 528
    iget p2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 531
    iput-object p2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    :cond_0
    return p1
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .locals 2

    .line 880
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    if-ne v0, p2, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 884
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 885
    iput p2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    .line 886
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/util/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
