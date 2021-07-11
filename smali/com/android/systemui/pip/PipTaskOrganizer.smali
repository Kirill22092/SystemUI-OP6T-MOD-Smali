.class public Lcom/android/systemui/pip/PipTaskOrganizer;
.super Landroid/window/TaskOrganizer;
.source "PipTaskOrganizer.java"

# interfaces
.implements Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/PipTaskOrganizer$PipTransitionCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mEnterExitAnimationDuration:I

.field private mExitingPip:Z

.field private mInPip:Z

.field private final mInitialState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastReportedBounds:Landroid/graphics/Rect;

.field private mLeash:Landroid/view/SurfaceControl;

.field private final mMainHandler:Landroid/os/Handler;

.field private mOneShotAnimationType:I

.field private mOverridableMinSize:I

.field private mPictureInPictureParams:Landroid/app/PictureInPictureParams;

.field private final mPipAnimationCallback:Lcom/android/systemui/pip/PipAnimationController$PipAnimationCallback;

.field private final mPipAnimationController:Lcom/android/systemui/pip/PipAnimationController;

.field private final mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

.field private final mPipTransitionCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/pip/PipTaskOrganizer$PipTransitionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldDeferEnteringPip:Z

.field private final mSplitDivider:Lcom/android/systemui/stackdivider/Divider;

.field private mSurfaceControlTransactionFactory:Lcom/android/systemui/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

.field private final mSurfaceTransactionHelper:Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

.field private mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mToken:Landroid/window/WindowContainerToken;

.field private final mUpdateCallbacks:Landroid/os/Handler$Callback;

.field private final mUpdateHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    const-class v0, Lcom/android/systemui/pip/PipTaskOrganizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pip/PipBoundsHandler;Lcom/android/systemui/pip/PipSurfaceTransactionHelper;Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/wm/DisplayController;Lcom/android/systemui/pip/PipAnimationController;)V
    .locals 3

    .line 210
    invoke-direct {p0}, Landroid/window/TaskOrganizer;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipTransitionCallbacks:Ljava/util/List;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLastReportedBounds:Landroid/graphics/Rect;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mInitialState:Ljava/util/Map;

    .line 110
    new-instance v0, Lcom/android/systemui/pip/PipTaskOrganizer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/PipTaskOrganizer$1;-><init>(Lcom/android/systemui/pip/PipTaskOrganizer;)V

    iput-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipAnimationCallback:Lcom/android/systemui/pip/PipAnimationController$PipAnimationCallback;

    .line 131
    new-instance v0, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$5wOr4WCerG3hW1uyUvJi4O0nPDE;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$5wOr4WCerG3hW1uyUvJi4O0nPDE;-><init>(Lcom/android/systemui/pip/PipTaskOrganizer;)V

    iput-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateCallbacks:Landroid/os/Handler$Callback;

    const/4 v0, 0x0

    .line 193
    iput v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mOneShotAnimationType:I

    .line 211
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mMainHandler:Landroid/os/Handler;

    .line 212
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/systemui/pip/phone/PipUpdateThread;->get()Lcom/android/systemui/pip/phone/PipUpdateThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateCallbacks:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateHandler:Landroid/os/Handler;

    .line 213
    iput-object p2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$integer;->config_pipResizeAnimationDuration:I

    .line 215
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mEnterExitAnimationDuration:I

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10501ef

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mOverridableMinSize:I

    .line 218
    iput-object p3, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    .line 219
    iput-object p6, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/systemui/pip/PipAnimationController;

    .line 220
    sget-object p1, Lcom/android/systemui/pip/-$$Lambda$0FLZQAxNoOm85ohJ3bgjkYQDWsU;->INSTANCE:Lcom/android/systemui/pip/-$$Lambda$0FLZQAxNoOm85ohJ3bgjkYQDWsU;

    iput-object p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/systemui/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 221
    iput-object p4, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSplitDivider:Lcom/android/systemui/stackdivider/Divider;

    .line 222
    invoke-virtual {p5, p0}, Lcom/android/systemui/wm/DisplayController;->addDisplayWindowListener(Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/pip/PipTaskOrganizer;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->sendOnPipTransitionStarted(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/pip/PipTaskOrganizer;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/pip/PipTaskOrganizer;->finishResize(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/pip/PipTaskOrganizer;)Lcom/android/systemui/pip/PipAnimationController;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/systemui/pip/PipAnimationController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/pip/PipTaskOrganizer;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->sendOnPipTransitionFinished(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/pip/PipTaskOrganizer;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->sendOnPipTransitionCancelled(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/pip/PipTaskOrganizer;)Landroid/graphics/Rect;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLastReportedBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/pip/PipTaskOrganizer;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/util/function/Consumer;)V
    .locals 0

    .line 87
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/systemui/pip/PipTaskOrganizer;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mInPip:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/pip/PipTaskOrganizer;)Landroid/os/Handler;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/pip/PipTaskOrganizer;)Lcom/android/systemui/pip/PipAnimationController$PipAnimationCallback;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipAnimationCallback:Lcom/android/systemui/pip/PipAnimationController$PipAnimationCallback;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/pip/PipTaskOrganizer;)Landroid/view/SurfaceControl;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method private animateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 2

    .line 895
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 900
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    goto :goto_0

    .line 904
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/systemui/pip/PipAnimationController;

    .line 905
    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/android/systemui/pip/PipAnimationController;->getAnimator(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object p1

    .line 906
    invoke-virtual {p1, p4}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipAnimationCallback:Lcom/android/systemui/pip/PipAnimationController$PipAnimationCallback;

    .line 907
    invoke-virtual {p1, p0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->setPipAnimationCallback(Lcom/android/systemui/pip/PipAnimationController$PipAnimationCallback;)Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    int-to-long p2, p5

    .line 908
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 909
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 901
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/systemui/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    const-string p1, "Abort animation, invalid leash"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 896
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callers should call scheduleAnimateResizePip() instead of this directly"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private applyPictureInPictureParams(Landroid/app/PictureInPictureParams;)Z
    .locals 3

    .line 635
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 636
    :cond_0
    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->getAspectRatioRational()Landroid/util/Rational;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getAspectRatioRational()Landroid/util/Rational;

    move-result-object v2

    .line 635
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 638
    iput-object p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 639
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getAspectRatio()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/pip/PipBoundsHandler;->onAspectRatioChanged(F)V

    .line 642
    :cond_2
    sget-object p1, Lcom/android/systemui/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyPictureInPictureParams - mLastReportedBounds: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLastReportedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private applyWindowingModeChangeOnExit(Landroid/window/WindowContainerTransaction;I)V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p0}, Lcom/android/systemui/pip/PipTaskOrganizer;->getOutPipWindowingMode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 329
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 330
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSplitDivider:Lcom/android/systemui/stackdivider/Divider;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 331
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->getSecondaryRoot()Landroid/window/WindowContainerToken;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p0, p2, v0}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :cond_0
    return-void
.end method

.method private createFinishResizeSurfaceTransaction(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .locals 3

    .line 738
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/systemui/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    invoke-interface {v0}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 739
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    iget-object v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 740
    invoke-virtual {v1, v0, v2, p1}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->crop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    iget-object v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 741
    invoke-virtual {v1, v0, v2, p1}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->resetScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    iget-object p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget-boolean p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mInPip:Z

    .line 742
    invoke-virtual {v1, v0, p1, p0}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    return-object v0
.end method

.method private enterPipWithAlphaAnimation(Landroid/graphics/Rect;J)V
    .locals 3

    .line 431
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/systemui/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 432
    invoke-interface {v0}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 433
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 434
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 436
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 438
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 439
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 440
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, p1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 441
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, p1}, Landroid/window/WindowContainerTransaction;->scheduleFinishEnterPip(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 442
    new-instance v1, Lcom/android/systemui/pip/PipTaskOrganizer$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/pip/PipTaskOrganizer$3;-><init>(Lcom/android/systemui/pip/PipTaskOrganizer;Landroid/graphics/Rect;J)V

    invoke-virtual {p0, v0, v1}, Landroid/window/TaskOrganizer;->applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I

    return-void
.end method

.method private finishResize(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V
    .locals 2

    .line 831
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 835
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLastReportedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 836
    invoke-static {p3}, Lcom/android/systemui/pip/PipAnimationController;->isInPipDirection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    return-void

    .line 840
    :cond_0
    new-instance p4, Landroid/window/WindowContainerTransaction;

    invoke-direct {p4}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 841
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/android/systemui/pip/PipTaskOrganizer;->prepareFinishResizeTransaction(Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 842
    invoke-virtual {p0, p4, p3}, Lcom/android/systemui/pip/PipTaskOrganizer;->applyFinishBoundsResize(Landroid/window/WindowContainerTransaction;I)V

    return-void

    .line 832
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callers should call scheduleResizePip() instead of this directly"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getAspectRatioOrDefault(Landroid/app/PictureInPictureParams;)F
    .locals 1

    if-eqz p1, :cond_1

    .line 933
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->hasSetAspectRatio()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 935
    :cond_0
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getAspectRatio()F

    move-result p0

    goto :goto_1

    .line 934
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    invoke-virtual {p0}, Lcom/android/systemui/pip/PipBoundsHandler;->getDefaultAspectRatio()F

    move-result p0

    :goto_1
    return p0
.end method

.method private getMinimalSize(Landroid/content/pm/ActivityInfo;)Landroid/util/Size;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 913
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez p1, :cond_0

    goto :goto_0

    .line 919
    :cond_0
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    if-lez v1, :cond_3

    iget v2, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    if-lez v2, :cond_3

    .line 922
    iget v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mOverridableMinSize:I

    if-lt v1, v0, :cond_1

    if-ge v2, v0, :cond_2

    :cond_1
    const v0, 0x534e4554

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "174302616"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 924
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 926
    :cond_2
    new-instance v0, Landroid/util/Size;

    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iget v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mOverridableMinSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget p1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iget p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mOverridableMinSize:I

    .line 927
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    :cond_3
    :goto_0
    return-object v0
.end method

.method private getValidSourceHintRect(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    .line 418
    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->hasSourceBoundsHint()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 419
    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 421
    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    return-object v0
.end method

.method private synthetic lambda$new$0(Landroid/os/Message;)Z
    .locals 9

    .line 133
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 134
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Consumer;

    .line 135
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const/4 v3, 0x4

    if-eq p1, v3, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    iget-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Rect;

    .line 179
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    .line 180
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/pip/PipTaskOrganizer;->userResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    .line 170
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    .line 171
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v5, -0x1

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/systemui/pip/PipTaskOrganizer;->finishResize(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V

    if-eqz v1, :cond_5

    .line 173
    invoke-interface {v1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 157
    :cond_2
    iget-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Rect;

    .line 158
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 159
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    const/4 v5, 0x0

    .line 160
    invoke-direct {p0, p1, v5, v3, v4}, Lcom/android/systemui/pip/PipTaskOrganizer;->offsetPip(Landroid/graphics/Rect;III)V

    .line 161
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 162
    invoke-virtual {p0, v5, v3}, Landroid/graphics/Rect;->offset(II)V

    if-eqz v1, :cond_5

    .line 164
    invoke-interface {v1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 145
    :cond_3
    iget-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Landroid/graphics/Rect;

    .line 146
    iget-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Rect;

    .line 147
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v6, v3

    check-cast v6, Landroid/graphics/Rect;

    .line 148
    iget v8, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 149
    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/pip/PipTaskOrganizer;->animateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    if-eqz v1, :cond_5

    .line 152
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 137
    :cond_4
    iget-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Rect;

    .line 138
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->resizePip(Landroid/graphics/Rect;)V

    if-eqz v1, :cond_5

    .line 140
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 184
    :cond_5
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return v2
.end method

.method private synthetic lambda$removePip$1()V
    .locals 3

    .line 347
    :try_start_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 348
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 349
    invoke-static {v0}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 351
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

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

    .line 354
    sget-object v0, Lcom/android/systemui/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    const-string v1, "Failed to remove PiP"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$sendOnPipTransitionCancelled$4(I)V
    .locals 3

    .line 479
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipTransitionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 480
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipTransitionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pip/PipTaskOrganizer$PipTransitionCallback;

    .line 481
    iget-object v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-interface {v1, v2, p1}, Lcom/android/systemui/pip/PipTaskOrganizer$PipTransitionCallback;->onPipTransitionCanceled(Landroid/content/ComponentName;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$sendOnPipTransitionFinished$3(I)V
    .locals 3

    .line 469
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipTransitionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 470
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipTransitionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pip/PipTaskOrganizer$PipTransitionCallback;

    .line 471
    iget-object v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-interface {v1, v2, p1}, Lcom/android/systemui/pip/PipTaskOrganizer$PipTransitionCallback;->onPipTransitionFinished(Landroid/content/ComponentName;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$sendOnPipTransitionStarted$2(I)V
    .locals 3

    .line 459
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipTransitionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 460
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipTransitionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pip/PipTaskOrganizer$PipTransitionCallback;

    .line 461
    iget-object v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-interface {v1, v2, p1}, Lcom/android/systemui/pip/PipTaskOrganizer$PipTransitionCallback;->onPipTransitionStarted(Landroid/content/ComponentName;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private offsetPip(Landroid/graphics/Rect;III)V
    .locals 8

    .line 772
    sget-object v0, Lcom/android/systemui/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 776
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v1, :cond_0

    const-string p0, "mTaskInfo is not set"

    .line 777
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 781
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offsetPip - xOffset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", yOffset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 784
    invoke-virtual {v4, p2, p3}, Landroid/graphics/Rect;->offset(II)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move v7, p4

    .line 785
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/pip/PipTaskOrganizer;->animateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    return-void

    .line 773
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callers should call scheduleOffsetPip() instead of this directly"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private prepareFinishResizeTransaction(Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 1

    .line 850
    invoke-static {p2}, Lcom/android/systemui/pip/PipAnimationController;->isInPipDirection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    iget-object p2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const/4 v0, 0x0

    invoke-virtual {p4, p2, v0}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 855
    iget-object p2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p4, p2, p1}, Landroid/window/WindowContainerTransaction;->scheduleFinishEnterPip(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    goto :goto_0

    .line 856
    :cond_0
    invoke-static {p2}, Lcom/android/systemui/pip/PipAnimationController;->isOutPipDirection(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    const/4 p1, 0x0

    .line 861
    :cond_1
    invoke-direct {p0, p4, p2}, Lcom/android/systemui/pip/PipTaskOrganizer;->applyWindowingModeChangeOnExit(Landroid/window/WindowContainerTransaction;I)V

    .line 867
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p4, p2, p1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 868
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p4, p0, p3}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    return-void
.end method

.method private resizePip(Landroid/graphics/Rect;)V
    .locals 3

    .line 790
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 795
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    goto :goto_0

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLastReportedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 800
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/systemui/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    invoke-interface {v0}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 801
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    iget-object v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 802
    invoke-virtual {v1, v0, v2, p1}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->crop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    iget-object p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget-boolean p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mInPip:Z

    .line 803
    invoke-virtual {v1, v0, p1, p0}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    .line 804
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void

    .line 796
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/systemui/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    const-string p1, "Abort animation, invalid leash"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 791
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callers should call scheduleResizePip() instead of this directly"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private runOnMainHandler(Ljava/lang/Runnable;)V
    .locals 2

    .line 487
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 488
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 490
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private scheduleAnimateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "II",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 663
    iget-boolean v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mInPip:Z

    if-nez v0, :cond_0

    return-void

    .line 670
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 671
    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 672
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 673
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 674
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 675
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 676
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 677
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private scheduleFinishResizePip(Landroid/graphics/Rect;ILjava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "I",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 723
    invoke-direct {p0}, Lcom/android/systemui/pip/PipTaskOrganizer;->shouldBlockResizeRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 727
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 728
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 729
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->createFinishResizeSurfaceTransaction(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 731
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 732
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 733
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateHandler:Landroid/os/Handler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendOnPipTransitionCancelled(I)V
    .locals 1

    .line 478
    new-instance v0, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$TTTo1eGF0SlCllWVDuAJlbhmvjo;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$TTTo1eGF0SlCllWVDuAJlbhmvjo;-><init>(Lcom/android/systemui/pip/PipTaskOrganizer;I)V

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/PipTaskOrganizer;->runOnMainHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendOnPipTransitionFinished(I)V
    .locals 1

    .line 468
    new-instance v0, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$cVPyDgP7uB9XVG-Z8xzNA-yEDd4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$cVPyDgP7uB9XVG-Z8xzNA-yEDd4;-><init>(Lcom/android/systemui/pip/PipTaskOrganizer;I)V

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/PipTaskOrganizer;->runOnMainHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendOnPipTransitionStarted(I)V
    .locals 1

    .line 458
    new-instance v0, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$JUO3Grq_R7eMASAsK_v_c6_mMuI;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$JUO3Grq_R7eMASAsK_v_c6_mMuI;-><init>(Lcom/android/systemui/pip/PipTaskOrganizer;I)V

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/PipTaskOrganizer;->runOnMainHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method private shouldBlockResizeRequest()Z
    .locals 1

    .line 945
    iget-boolean v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mInPip:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mExitingPip:Z

    if-eqz p0, :cond_0

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

.method private syncWithSplitScreenBounds(Landroid/graphics/Rect;)Z
    .locals 1

    .line 955
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSplitDivider:Lcom/android/systemui/stackdivider/Divider;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->isDividerVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 961
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSplitDivider:Lcom/android/systemui/stackdivider/Divider;

    .line 962
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 961
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private userResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    .line 808
    sget-object v0, Lcom/android/systemui/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 813
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-nez v1, :cond_0

    goto :goto_1

    .line 818
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 823
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/systemui/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    invoke-interface {v0}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 824
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v0, p0, p1, p2}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    .line 825
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void

    :cond_2
    :goto_0
    const-string p0, "Attempted to user resize PIP to or from empty bounds, aborting."

    .line 819
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_1
    const-string p0, "Abort animation, invalid leash"

    .line 814
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 809
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callers should call scheduleUserResizePip() instead of this directly"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public applyFinishBoundsResize(Landroid/window/WindowContainerTransaction;I)V
    .locals 0

    .line 880
    invoke-static {p1}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 971
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/systemui/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 972
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mTaskInfo="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 973
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mToken="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " binder="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 973
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 975
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLeash="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 976
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mInPip="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mInPip:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 977
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mOneShotAnimationType="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mOneShotAnimationType:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 978
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mPictureInPictureParams="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 979
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastReportedBounds="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLastReportedBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 980
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mInitialState:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 981
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mInitialState:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 982
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  binder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " winConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/res/Configuration;

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 982
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public exitPip(I)V
    .locals 9

    .line 276
    iget-boolean v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mInPip:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mExitingPip:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mInitialState:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    .line 283
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    .line 284
    invoke-virtual {v2}, Lcom/android/systemui/pip/PipBoundsHandler;->getDisplayRotation()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    .line 285
    :goto_0
    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 286
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 287
    invoke-direct {p0, v0}, Lcom/android/systemui/pip/PipTaskOrganizer;->syncWithSplitScreenBounds(Landroid/graphics/Rect;)Z

    move-result v5

    const/4 v6, 0x4

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    const/4 v5, 0x3

    :goto_1
    if-eqz v1, :cond_3

    .line 292
    invoke-direct {p0, v5}, Lcom/android/systemui/pip/PipTaskOrganizer;->sendOnPipTransitionStarted(I)V

    .line 295
    invoke-direct {p0, v2, v5}, Lcom/android/systemui/pip/PipTaskOrganizer;->applyWindowingModeChangeOnExit(Landroid/window/WindowContainerTransaction;I)V

    .line 296
    invoke-static {v2}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 298
    invoke-direct {p0, v5}, Lcom/android/systemui/pip/PipTaskOrganizer;->sendOnPipTransitionFinished(I)V

    .line 299
    iput-boolean v3, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mInPip:Z

    goto :goto_3

    .line 301
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/systemui/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 302
    invoke-interface {v1}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 303
    iget-object v3, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    iget-object v7, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget-object v8, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLastReportedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v7, v0, v8}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    .line 305
    iget-object v3, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v1, v3, v7, v8}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 306
    iget-object v3, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-ne v5, v6, :cond_4

    goto :goto_2

    :cond_4
    move v6, v4

    :goto_2
    invoke-virtual {v2, v3, v6}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 309
    iget-object v3, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v3, v0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 310
    iget-object v3, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v3, v1}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    .line 311
    new-instance v1, Lcom/android/systemui/pip/PipTaskOrganizer$2;

    invoke-direct {v1, p0, v0, v5, p1}, Lcom/android/systemui/pip/PipTaskOrganizer$2;-><init>(Lcom/android/systemui/pip/PipTaskOrganizer;Landroid/graphics/Rect;II)V

    invoke-virtual {p0, v2, v1}, Landroid/window/TaskOrganizer;->applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I

    .line 322
    :goto_3
    iput-boolean v4, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mExitingPip:Z

    return-void

    .line 277
    :cond_5
    :goto_4
    sget-object p1, Lcom/android/systemui/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not allowed to exitPip in current state mInPip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mInPip:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mExitingPip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mExitingPip:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getCurrentOrAnimatingBounds()Landroid/graphics/Rect;
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/systemui/pip/PipAnimationController;

    .line 235
    invoke-virtual {v0}, Lcom/android/systemui/pip/PipAnimationController;->getCurrentAnimator()Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getDestinationBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object p0

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pip/PipTaskOrganizer;->getLastReportedBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getLastReportedBounds()Landroid/graphics/Rect;
    .locals 1

    .line 230
    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLastReportedBounds:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getOutPipWindowingMode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getUpdateHandler()Landroid/os/Handler;
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public isDeferringEnterPipAnimation()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mInPip:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mShouldDeferEnteringPip:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInPip()Z
    .locals 0

    .line 243
    iget-boolean p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mInPip:Z

    return p0
.end method

.method public synthetic lambda$new$0$PipTaskOrganizer(Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->lambda$new$0(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$removePip$1$PipTaskOrganizer()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/PipTaskOrganizer;->lambda$removePip$1()V

    return-void
.end method

.method public synthetic lambda$sendOnPipTransitionCancelled$4$PipTaskOrganizer(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->lambda$sendOnPipTransitionCancelled$4(I)V

    return-void
.end method

.method public synthetic lambda$sendOnPipTransitionFinished$3$PipTaskOrganizer(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->lambda$sendOnPipTransitionFinished$3(I)V

    return-void
.end method

.method public synthetic lambda$sendOnPipTransitionStarted$2$PipTaskOrganizer(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->lambda$sendOnPipTransitionStarted$2(I)V

    return-void
.end method

.method public onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    return-void
.end method

.method public onFixedRotationFinished(I)V
    .locals 4

    .line 551
    iget-boolean p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mShouldDeferEnteringPip:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mInPip:Z

    if-eqz p1, :cond_0

    .line 552
    iget-object p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 553
    invoke-direct {p0, v1}, Lcom/android/systemui/pip/PipTaskOrganizer;->getAspectRatioOrDefault(Landroid/app/PictureInPictureParams;)F

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 554
    invoke-direct {p0, v3}, Lcom/android/systemui/pip/PipTaskOrganizer;->getMinimalSize(Landroid/content/pm/ActivityInfo;)Landroid/util/Size;

    move-result-object v3

    .line 552
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/systemui/pip/PipBoundsHandler;->getDestinationBounds(Landroid/content/ComponentName;FLandroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 556
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/pip/PipTaskOrganizer;->enterPipWithAlphaAnimation(Landroid/graphics/Rect;J)V

    :cond_0
    const/4 p1, 0x0

    .line 558
    iput-boolean p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mShouldDeferEnteringPip:Z

    return-void
.end method

.method public onFixedRotationStarted(II)V
    .locals 0

    const/4 p1, 0x1

    .line 546
    iput-boolean p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mShouldDeferEnteringPip:Z

    return-void
.end method

.method public onMovementBoundsChanged(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V
    .locals 3

    .line 570
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/systemui/pip/PipAnimationController;

    .line 571
    invoke-virtual {v0}, Lcom/android/systemui/pip/PipAnimationController;->getCurrentAnimator()Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 572
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 573
    invoke-virtual {v0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 611
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getDestinationBounds()Landroid/graphics/Rect;

    move-result-object p2

    .line 612
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    .line 613
    iget-object p3, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    .line 614
    invoke-virtual {p3}, Lcom/android/systemui/pip/PipBoundsHandler;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 619
    :cond_1
    iget-object p3, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    iget-object p4, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object p5, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 620
    invoke-direct {p0, p5}, Lcom/android/systemui/pip/PipTaskOrganizer;->getAspectRatioOrDefault(Landroid/app/PictureInPictureParams;)F

    move-result p5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 621
    invoke-direct {p0, v2}, Lcom/android/systemui/pip/PipTaskOrganizer;->getMinimalSize(Landroid/content/pm/ActivityInfo;)Landroid/util/Size;

    move-result-object p0

    .line 619
    invoke-virtual {p3, p4, p5, v1, p0}, Lcom/android/systemui/pip/PipBoundsHandler;->getDestinationBounds(Landroid/content/ComponentName;FLandroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object p0

    .line 622
    invoke-virtual {p0, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 623
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getAnimationType()I

    move-result p2

    if-nez p2, :cond_3

    .line 624
    invoke-virtual {v0, p0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->updateEndValue(Ljava/lang/Object;)V

    .line 626
    :cond_3
    invoke-virtual {v0, p0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->setDestinationBounds(Landroid/graphics/Rect;)V

    .line 627
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    .line 574
    :cond_4
    :goto_0
    iget-boolean p3, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mInPip:Z

    if-eqz p3, :cond_6

    if-eqz p2, :cond_6

    const/4 p2, 0x0

    if-eqz v0, :cond_5

    .line 580
    invoke-virtual {v0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    move-result p2

    .line 581
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 582
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 583
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 585
    invoke-direct {p0, p2}, Lcom/android/systemui/pip/PipTaskOrganizer;->sendOnPipTransitionCancelled(I)V

    .line 586
    invoke-direct {p0, p2}, Lcom/android/systemui/pip/PipTaskOrganizer;->sendOnPipTransitionFinished(I)V

    .line 588
    :cond_5
    iget-object p3, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLastReportedBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 592
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->createFinishResizeSurfaceTransaction(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    .line 594
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/systemui/pip/PipTaskOrganizer;->prepareFinishResizeTransaction(Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    .line 598
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 599
    invoke-virtual {v0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getDestinationBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_8

    .line 600
    invoke-virtual {v0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getDestinationBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 603
    :cond_7
    iget-object p2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLastReportedBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    .line 604
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLastReportedBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 10

    .line 363
    sget-object v2, Lcom/android/systemui/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    const-string v3, "Requires RunningTaskInfo"

    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 364
    iput-object p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 365
    iget-object v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object v3, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const/4 v4, 0x1

    .line 366
    iput-boolean v4, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mInPip:Z

    const/4 v5, 0x0

    .line 367
    iput-boolean v5, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mExitingPip:Z

    .line 368
    iput-object p2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 369
    iget-object v6, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mInitialState:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    new-instance v7, Landroid/content/res/Configuration;

    iget-object v8, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-direct {v7, v8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-interface {v6, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v3, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    iput-object v3, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTaskAppeared - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-boolean v3, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mShouldDeferEnteringPip:Z

    if-eqz v3, :cond_0

    .line 378
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/systemui/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 379
    invoke-interface {v1}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 380
    iget-object v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 381
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 382
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 384
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void

    .line 389
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    iget-object v6, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 390
    invoke-direct {p0, v7}, Lcom/android/systemui/pip/PipTaskOrganizer;->getAspectRatioOrDefault(Landroid/app/PictureInPictureParams;)F

    move-result v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 391
    invoke-direct {p0, v9}, Lcom/android/systemui/pip/PipTaskOrganizer;->getMinimalSize(Landroid/content/pm/ActivityInfo;)Landroid/util/Size;

    move-result-object v9

    .line 389
    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/android/systemui/pip/PipBoundsHandler;->getDestinationBounds(Landroid/content/ComponentName;FLandroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v3

    const-string v6, "Missing destination bounds"

    .line 392
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 393
    iget-object v6, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 395
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "destinationBounds: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", window currentBounds: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mOneShotAnimationType:I

    if-nez v2, :cond_1

    .line 400
    invoke-direct {p0, p1, v6}, Lcom/android/systemui/pip/PipTaskOrganizer;->getValidSourceHintRect(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    const/4 v5, 0x2

    .line 401
    iget v7, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mEnterExitAnimationDuration:I

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v7

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    if-ne v2, v4, :cond_2

    .line 405
    iget v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mEnterExitAnimationDuration:I

    int-to-long v1, v1

    invoke-direct {p0, v3, v1, v2}, Lcom/android/systemui/pip/PipTaskOrganizer;->enterPipWithAlphaAnimation(Landroid/graphics/Rect;J)V

    .line 406
    iput v5, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mOneShotAnimationType:I

    :goto_0
    return-void

    .line 408
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized animation type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mOneShotAnimationType:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 9

    .line 521
    sget-object v0, Lcom/android/systemui/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const-string v2, "onTaskInfoChanged requires valid existing mToken"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTaskInfoChanged - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v1, :cond_1

    .line 526
    invoke-direct {p0, v1}, Lcom/android/systemui/pip/PipTaskOrganizer;->applyPictureInPictureParams(Landroid/app/PictureInPictureParams;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 530
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    iget-object v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 531
    invoke-direct {p0, v1}, Lcom/android/systemui/pip/PipTaskOrganizer;->getAspectRatioOrDefault(Landroid/app/PictureInPictureParams;)F

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLastReportedBounds:Landroid/graphics/Rect;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 532
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->getMinimalSize(Landroid/content/pm/ActivityInfo;)Landroid/util/Size;

    move-result-object v7

    const/4 v8, 0x1

    .line 530
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/pip/PipBoundsHandler;->getDestinationBounds(Landroid/content/ComponentName;FLandroid/graphics/Rect;Landroid/util/Size;Z)Landroid/graphics/Rect;

    move-result-object p1

    const-string v0, "Missing destination bounds"

    .line 534
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 535
    iget v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mEnterExitAnimationDuration:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;ILjava/util/function/Consumer;)V

    return-void

    .line 527
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignored onTaskInfoChanged with PiP param: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 504
    iget-boolean v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mInPip:Z

    if-nez v0, :cond_0

    return-void

    .line 507
    :cond_0
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const-string v0, "Requires valid WindowContainerToken"

    .line 508
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 509
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 510
    sget-object p0, Lcom/android/systemui/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 513
    iput-boolean p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mShouldDeferEnteringPip:Z

    const/4 v0, 0x0

    .line 514
    iput-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 515
    iput-boolean p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mInPip:Z

    .line 516
    iput-boolean p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mExitingPip:Z

    return-void
.end method

.method public registerPipTransitionCallback(Lcom/android/systemui/pip/PipTaskOrganizer$PipTransitionCallback;)V
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipTransitionCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePip()V
    .locals 3

    .line 339
    iget-boolean v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mInPip:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mExitingPip:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-nez v0, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pip/PipTaskOrganizer;->getUpdateHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$imSGihBVaB-7Q3dNvjZL6kcUBBY;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$imSGihBVaB-7Q3dNvjZL6kcUBBY;-><init>(Lcom/android/systemui/pip/PipTaskOrganizer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 357
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mInitialState:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 358
    iput-boolean v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mExitingPip:Z

    return-void

    .line 340
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/systemui/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to removePip in current state mInPip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mInPip:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mExitingPip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mExitingPip:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public scheduleAnimateResizePip(Landroid/graphics/Rect;ILjava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "I",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 652
    iget-boolean v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mShouldDeferEnteringPip:Z

    if-eqz v0, :cond_0

    .line 653
    sget-object p0, Lcom/android/systemui/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "skip scheduleAnimateResizePip, entering pip deferred"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 656
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLastReportedBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/util/function/Consumer;)V

    return-void
.end method

.method public scheduleFinishResizePip(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    .line 709
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/pip/PipTaskOrganizer;->scheduleFinishResizePip(Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public scheduleFinishResizePip(Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 717
    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/pip/PipTaskOrganizer;->scheduleFinishResizePip(Landroid/graphics/Rect;ILjava/util/function/Consumer;)V

    return-void
.end method

.method public scheduleOffsetPip(Landroid/graphics/Rect;IILjava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "II",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 751
    sget-object v0, Lcom/android/systemui/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/pip/PipTaskOrganizer;->shouldBlockResizeRequest()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 754
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mShouldDeferEnteringPip:Z

    if-eqz v1, :cond_1

    const-string/jumbo p0, "skip scheduleOffsetPip, entering pip deferred"

    .line 755
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 759
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleOffsetPip - originalBounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 763
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 764
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 766
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 767
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 768
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public scheduleResizePip(Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 685
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 686
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 687
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 688
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public scheduleUserResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 697
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 698
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 699
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 700
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 701
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateHandler:Landroid/os/Handler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setOneShotAnimationType(I)V
    .locals 0

    .line 263
    iput p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mOneShotAnimationType:I

    return-void
.end method
