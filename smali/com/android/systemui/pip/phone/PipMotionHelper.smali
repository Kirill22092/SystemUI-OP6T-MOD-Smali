.class public Lcom/android/systemui/pip/phone/PipMotionHelper;
.super Ljava/lang/Object;
.source "PipMotionHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/systemui/pip/phone/PipAppOpsListener$Callback;


# static fields
.field private static final RECT_EVALUATOR:Landroid/animation/RectEvaluator;


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field private mAnimationHandler:Landroid/animation/AnimationHandler;

.field private final mBounds:Landroid/graphics/Rect;

.field private mBoundsAnimator:Landroid/animation/ValueAnimator;

.field private mContext:Landroid/content/Context;

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mHandler:Landroid/os/Handler;

.field private mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

.field private mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

.field private final mStableInsets:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Landroid/animation/RectEvaluator;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    sput-object v0, Lcom/android/systemui/pip/phone/PipMotionHelper;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/app/IActivityTaskManager;Lcom/android/systemui/pip/phone/PipMenuActivityController;Lcom/android/internal/policy/PipSnapAlgorithm;Lcom/android/systemui/statusbar/FlingAnimationUtils;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mStableInsets:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 102
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    .line 103
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/systemui/pip/phone/ForegroundThread;->get()Lcom/android/systemui/pip/phone/ForegroundThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mHandler:Landroid/os/Handler;

    .line 104
    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityManager:Landroid/app/IActivityManager;

    .line 105
    iput-object p3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 106
    iput-object p4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    .line 107
    iput-object p5, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    .line 108
    iput-object p6, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 109
    new-instance p1, Landroid/animation/AnimationHandler;

    invoke-direct {p1}, Landroid/animation/AnimationHandler;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mAnimationHandler:Landroid/animation/AnimationHandler;

    .line 110
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mAnimationHandler:Landroid/animation/AnimationHandler;

    new-instance p2, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    invoke-direct {p2}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/AnimationHandler;->setProvider(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->onConfigurationChanged()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/pip/phone/PipMotionHelper;)Landroid/animation/AnimationHandler;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mAnimationHandler:Landroid/animation/AnimationHandler;

    return-object p0
.end method

.method private adjustAndAnimatePipOffset(Landroid/graphics/Rect;II)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 373
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 374
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 375
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 376
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 377
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private createAnimationToBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;
    .locals 3

    .line 425
    new-instance v0, Lcom/android/systemui/pip/phone/PipMotionHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipMotionHelper$2;-><init>(Lcom/android/systemui/pip/phone/PipMotionHelper;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    .line 431
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 432
    sget-object p1, Lcom/android/systemui/pip/phone/PipMotionHelper;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    int-to-long p1, p3

    .line 433
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 434
    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 435
    new-instance p1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$UijvXdqv_A_f2ZSKr4tqG6uf9mk;

    invoke-direct {p1, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$UijvXdqv_A_f2ZSKr4tqG6uf9mk;-><init>(Lcom/android/systemui/pip/phone/PipMotionHelper;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private distanceBetweenRectOffsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 1

    .line 520
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v0

    int-to-float p0, p0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    invoke-static {p0, p1}, Landroid/graphics/PointF;->length(FF)F

    move-result p0

    return p0
.end method

.method private getDismissEndPoint(Landroid/graphics/Rect;FFZ)Landroid/graphics/Point;
    .locals 2

    .line 477
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 478
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 479
    iget p0, v0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    add-float/2addr p0, v0

    if-eqz p4, :cond_0

    const/4 p4, 0x0

    cmpl-float v0, p2, p4

    if-eqz v0, :cond_0

    cmpl-float p4, p3, p4

    if-eqz p4, :cond_0

    div-float/2addr p3, p2

    .line 485
    iget p2, p1, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    mul-float/2addr p1, p3

    sub-float/2addr p2, p1

    sub-float p1, p0, p2

    div-float/2addr p1, p3

    .line 488
    new-instance p2, Landroid/graphics/Point;

    float-to-int p1, p1

    float-to-int p0, p0

    invoke-direct {p2, p1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object p2

    .line 492
    :cond_0
    new-instance p2, Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    float-to-int p0, p0

    invoke-direct {p2, p1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object p2
.end method

.method private resizeAndAnimatePipUnchecked(Landroid/graphics/Rect;I)V
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 466
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 467
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 468
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private resizePipUnchecked(Landroid/graphics/Rect;)V
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 451
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 452
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method animateDismiss(Landroid/graphics/Rect;FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/graphics/Rect;
    .locals 3

    .line 385
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 386
    invoke-static {p2, p3}, Landroid/graphics/PointF;->length(FF)F

    move-result v0

    .line 387
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 388
    :goto_0
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getDismissEndPoint(Landroid/graphics/Rect;FFZ)Landroid/graphics/Point;

    move-result-object p2

    .line 389
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 390
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 391
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    const/16 p2, 0xaf

    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-direct {p0, p1, p3, p2, v2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->createAnimationToBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 393
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/pip/phone/PipMotionHelper$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/pip/phone/PipMotionHelper$1;-><init>(Lcom/android/systemui/pip/phone/PipMotionHelper;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v1, :cond_1

    .line 400
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    .line 401
    invoke-direct {p0, v2, p3}, Lcom/android/systemui/pip/phone/PipMotionHelper;->distanceBetweenRectOffsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v2

    .line 400
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    :cond_1
    if-eqz p4, :cond_2

    .line 404
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 406
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-object p3
.end method

.method animateToClosestMinimizedState(Landroid/graphics/Rect;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/graphics/Rect;
    .locals 3

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 270
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getClosestMinimizedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 271
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    const/16 v1, 0xc8

    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->createAnimationToBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 277
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-object p1
.end method

.method animateToClosestSnapTarget(Landroid/graphics/Rect;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/graphics/Rect;
    .locals 3

    .line 312
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 313
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/policy/PipSnapAlgorithm;->findClosestSnapBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 314
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    const/16 v1, 0xe1

    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->createAnimationToBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 321
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 323
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-object p1
.end method

.method animateToExpandedState(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/policy/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result p2

    .line 334
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/internal/policy/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    const/16 p3, 0xfa

    .line 335
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/pip/phone/PipMotionHelper;->resizeAndAnimatePipUnchecked(Landroid/graphics/Rect;I)V

    return p2
.end method

.method animateToOffset(Landroid/graphics/Rect;I)V
    .locals 1

    .line 365
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    const/16 v0, 0x12c

    .line 366
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->adjustAndAnimatePipOffset(Landroid/graphics/Rect;II)V

    return-void
.end method

.method animateToUnexpandedState(Landroid/graphics/Rect;FLandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 347
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0, p4}, Lcom/android/internal/policy/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result p2

    .line 350
    :cond_0
    iget-object p4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-virtual {p4, p1, p3, p2}, Lcom/android/internal/policy/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    if-eqz p5, :cond_1

    .line 352
    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getClosestMinimizedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    :cond_1
    if-eqz p6, :cond_2

    .line 355
    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->movePip(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    const/16 p2, 0xfa

    .line 357
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->resizeAndAnimatePipUnchecked(Landroid/graphics/Rect;I)V

    :goto_0
    return-void
.end method

.method cancelAnimations()V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 416
    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public dismissPip()V
    .locals 2

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->hideMenuWithoutResize()V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$ExBmB11pCWcEFXztVKlantVNH0o;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$ExBmB11pCWcEFXztVKlantVNH0o;-><init>(Lcom/android/systemui/pip/phone/PipMotionHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "PipMotionHelper"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 597
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mBounds="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mStableInsets="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method expandPip()V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->expandPip(Z)V

    return-void
.end method

.method expandPip(Z)V
    .locals 2

    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->hideMenuWithoutResize()V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$sKxCzHQTJVfrtc--kVVtTIgcND4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$sKxCzHQTJVfrtc--kVVtTIgcND4;-><init>(Lcom/android/systemui/pip/phone/PipMotionHelper;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method flingToSnapTarget(FFFLandroid/graphics/Rect;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;Landroid/graphics/Point;)Landroid/graphics/Rect;
    .locals 6

    .line 288
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 289
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    move-object v1, p4

    move v3, p2

    move v4, p3

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/PipSnapAlgorithm;->findClosestSnapBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FFLandroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object p2

    .line 291
    iget-object p3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 292
    iget-object p3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    const/4 p4, 0x0

    sget-object p7, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-direct {p0, p3, p2, p4, p7}, Lcom/android/systemui/pip/phone/PipMotionHelper;->createAnimationToBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 293
    iget-object p3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object p4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    const/4 p7, 0x0

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    .line 294
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->distanceBetweenRectOffsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v0

    .line 293
    invoke-virtual {p3, p4, p7, v0, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    if-eqz p5, :cond_0

    .line 297
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    if-eqz p6, :cond_1

    .line 300
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 302
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-object p2
.end method

.method getBounds()Landroid/graphics/Rect;
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method getClosestMinimizedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    .line 204
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 205
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 206
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-virtual {v1, p2, p1}, Lcom/android/internal/policy/PipSnapAlgorithm;->findClosestSnapBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 207
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, v0, p0}, Lcom/android/internal/policy/PipSnapAlgorithm;->applyMinimizedOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 12

    .line 527
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "PipMotionHelper"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_2

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    return v4

    .line 565
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 566
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    .line 567
    iget v11, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 568
    iget v10, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 570
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {p1, v3, v4}, Landroid/app/IActivityTaskManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return v2

    .line 578
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget v6, p1, Landroid/app/ActivityManager$StackInfo;->stackId:I

    const/4 v8, 0x0

    move-object v7, v0

    move v9, v11

    invoke-interface/range {v5 .. v10}, Landroid/app/IActivityTaskManager;->offsetPinnedStackBounds(ILandroid/graphics/Rect;III)V

    .line 580
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 581
    invoke-virtual {p1, v4, v11}, Landroid/graphics/Rect;->offset(II)V

    .line 582
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 584
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not animate offset pinned stack with offset: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v2

    .line 542
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 543
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    .line 544
    iget v11, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 546
    :try_start_1
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {p1, v3, v4}, Landroid/app/IActivityTaskManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object p1

    if-nez p1, :cond_3

    return v2

    .line 554
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget v6, p1, Landroid/app/ActivityManager$StackInfo;->stackId:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v7, v0

    invoke-interface/range {v5 .. v11}, Landroid/app/IActivityTaskManager;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    .line 557
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 559
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not animate resize pinned stack to bounds: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v2

    .line 529
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 530
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Rect;

    .line 532
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    const/4 v3, 0x0

    invoke-interface {v0, p1, v3}, Landroid/app/IActivityTaskManager;->resizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 534
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not resize pinned stack to bounds: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return v2
.end method

.method public synthetic lambda$createAnimationToBounds$2$PipMotionHelper(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 436
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->resizePipUnchecked(Landroid/graphics/Rect;)V

    return-void
.end method

.method public synthetic lambda$dismissPip$1$PipMotionHelper()V
    .locals 3

    .line 185
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    invoke-interface {p0, v0}, Landroid/app/IActivityTaskManager;->removeStacksInWindowingModes([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PipMotionHelper"

    const-string v1, "Failed to remove PiP"

    .line 188
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public synthetic lambda$expandPip$0$PipMotionHelper(Z)V
    .locals 1

    .line 166
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x12c

    invoke-interface {p0, p1, v0}, Landroid/app/IActivityTaskManager;->dismissPip(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "PipMotionHelper"

    const-string v0, "Error expanding PiP activity"

    .line 168
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method movePip(Landroid/graphics/Rect;)V
    .locals 0

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 143
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->resizePipUnchecked(Landroid/graphics/Rect;)V

    .line 144
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method onConfigurationChanged()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/PipSnapAlgorithm;->onConfigurationChanged()V

    .line 119
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getStableInsets(Landroid/graphics/Rect;)V

    return-void
.end method

.method shouldDismissPip()Z
    .locals 3

    .line 233
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 234
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 235
    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mStableInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 236
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    const/4 v2, 0x0

    if-le v1, v0, :cond_0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    .line 237
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    const p0, 0x3e99999a    # 0.3f

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method synchronizePinnedStackBounds()V
    .locals 3

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityTaskManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    iget-object v0, v0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "PipMotionHelper"

    const-string v0, "Failed to get pinned stack bounds"

    .line 134
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
