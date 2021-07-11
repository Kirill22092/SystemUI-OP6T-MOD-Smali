.class public Lcom/android/systemui/pip/PipAnimationController;
.super Ljava/lang/Object;
.source "PipAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;,
        Lcom/android/systemui/pip/PipAnimationController$PipAnimationCallback;
    }
.end annotation


# instance fields
.field private mCurrentAnimator:Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

.field private mSfAnimationHandlerThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/animation/AnimationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceTransactionHelper:Lcom/android/systemui/pip/PipSurfaceTransactionHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/pip/PipSurfaceTransactionHelper;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    sget-object p1, Lcom/android/systemui/pip/-$$Lambda$PipAnimationController$-iXb7MLu8McpFbUwX5eyjXMVFMI;->INSTANCE:Lcom/android/systemui/pip/-$$Lambda$PipAnimationController$-iXb7MLu8McpFbUwX5eyjXMVFMI;

    .line 84
    invoke-static {p1}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pip/PipAnimationController;->mSfAnimationHandlerThreadLocal:Ljava/lang/ThreadLocal;

    .line 92
    iput-object p2, p0, Lcom/android/systemui/pip/PipAnimationController;->mSurfaceTransactionHelper:Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    return-void
.end method

.method public static isInPipDirection(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isOutPipDirection(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$new$0()Landroid/animation/AnimationHandler;
    .locals 2

    .line 85
    new-instance v0, Landroid/animation/AnimationHandler;

    invoke-direct {v0}, Landroid/animation/AnimationHandler;-><init>()V

    .line 86
    new-instance v1, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    invoke-direct {v1}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimationHandler;->setProvider(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;)V

    return-object v0
.end method

.method private setupPipTransitionAnimator(Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;)Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/systemui/pip/PipAnimationController;->mSurfaceTransactionHelper:Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->setSurfaceTransactionHelper(Lcom/android/systemui/pip/PipSurfaceTransactionHelper;)V

    .line 143
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 144
    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 145
    iget-object p0, p0, Lcom/android/systemui/pip/PipAnimationController;->mSfAnimationHandlerThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/AnimationHandler;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setAnimationHandler(Landroid/animation/AnimationHandler;)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method getAnimator(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FF)Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/android/systemui/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    if-nez v0, :cond_0

    .line 100
    invoke-static {p1, p2, p3, p4}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->ofAlpha(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FF)Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object p1

    .line 99
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipAnimationController;->setupPipTransitionAnimator(Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;)Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    iput-object p1, p0, Lcom/android/systemui/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getAnimationType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    .line 102
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object p1, p0, Lcom/android/systemui/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->updateEndValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 107
    invoke-static {p1, p2, p3, p4}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->ofAlpha(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FF)Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object p1

    .line 106
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipAnimationController;->setupPipTransitionAnimator(Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;)Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    iput-object p1, p0, Lcom/android/systemui/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    .line 109
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    return-object p0
.end method

.method getAnimator(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/systemui/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    if-nez v0, :cond_0

    .line 117
    invoke-static {p1, p2, p3, p4}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->ofBounds(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object p1

    .line 116
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipAnimationController;->setupPipTransitionAnimator(Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;)Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    iput-object p1, p0, Lcom/android/systemui/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getAnimationType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    .line 119
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object p1, p0, Lcom/android/systemui/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    invoke-virtual {p1, p3}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->setDestinationBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getAnimationType()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    .line 125
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    iget-object p1, p0, Lcom/android/systemui/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    invoke-virtual {p1, p3}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->setDestinationBounds(Landroid/graphics/Rect;)V

    .line 128
    iget-object p1, p0, Lcom/android/systemui/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->updateEndValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 132
    invoke-static {p1, p2, p3, p4}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->ofBounds(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object p1

    .line 131
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipAnimationController;->setupPipTransitionAnimator(Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;)Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    iput-object p1, p0, Lcom/android/systemui/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    .line 134
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    return-object p0
.end method

.method getCurrentAnimator()Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/systemui/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    return-object p0
.end method
