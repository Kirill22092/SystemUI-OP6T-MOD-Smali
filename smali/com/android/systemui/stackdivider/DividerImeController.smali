.class Lcom/android/systemui/stackdivider/DividerImeController;
.super Ljava/lang/Object;
.source "DividerImeController.java"

# interfaces
.implements Lcom/android/systemui/wm/DisplayImeController$ImePositionProcessor;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAdjusted:Z

.field private mAdjustedWhileHidden:Z

.field private mAnimation:Landroid/animation/ValueAnimator;

.field private final mHandler:Landroid/os/Handler;

.field private mHiddenTop:I

.field private mImeWasShown:Z

.field private mLastAdjustTop:I

.field private mLastPrimaryDim:F

.field private mLastSecondaryDim:F

.field private mPaused:Z

.field private mPausedTargetAdjusted:Z

.field private mSecondaryHasFocus:Z

.field private mShownTop:I

.field private final mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

.field private mTargetAdjusted:Z

.field private mTargetPrimaryDim:F

.field private mTargetSecondaryDim:F

.field private mTargetShown:Z

.field private final mTransactionPool:Lcom/android/systemui/TransactionPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-boolean v0, Lcom/android/systemui/stackdivider/Divider;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/stackdivider/DividerImeController;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;Lcom/android/systemui/TransactionPool;Landroid/os/Handler;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mHiddenTop:I

    .line 54
    iput v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mShownTop:I

    .line 61
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    .line 66
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetShown:Z

    const/4 v1, 0x0

    .line 67
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetPrimaryDim:F

    .line 68
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetSecondaryDim:F

    .line 72
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSecondaryHasFocus:Z

    .line 74
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mLastPrimaryDim:F

    .line 75
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mLastSecondaryDim:F

    const/4 v1, -0x1

    .line 77
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mLastAdjustTop:I

    .line 81
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mImeWasShown:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjusted:Z

    const/4 v1, 0x0

    .line 89
    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    .line 92
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPaused:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPausedTargetAdjusted:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjustedWhileHidden:Z

    .line 97
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    .line 98
    iput-object p2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    .line 99
    iput-object p3, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/stackdivider/DividerImeController;)Lcom/android/systemui/TransactionPool;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/stackdivider/DividerImeController;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerImeController;->onEnd(ZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/stackdivider/DividerImeController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private dumpState()Ljava/lang/String;
    .locals 4

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "top:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mHiddenTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mShownTop:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " adj:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjusted:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mLastAdjustTop:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") shw:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mImeWasShown:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetShown:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " dims:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mLastPrimaryDim:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mLastSecondaryDim:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetPrimaryDim:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetSecondaryDim:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " shf:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSecondaryHasFocus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " desync:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " paus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPausedTargetAdjusted:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLayout()Lcom/android/systemui/stackdivider/SplitDisplayLayout;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->getSplitLayout()Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    move-result-object p0

    return-object p0
.end method

.method private getSecondaryHasFocus(I)Z
    .locals 0

    .line 115
    invoke-static {p1}, Landroid/window/TaskOrganizer;->getImeTarget(I)Landroid/window/WindowContainerToken;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getView()Lcom/android/systemui/stackdivider/DividerView;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object p0

    return-object p0
.end method

.method private isDividerVisible()Z
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->isDividerVisible()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$pause$1()V
    .locals 2

    .line 376
    sget-boolean v0, Lcom/android/systemui/stackdivider/DividerImeController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ime pause run posted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->dumpState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DividerImeController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPaused:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 380
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPaused:Z

    .line 381
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPausedTargetAdjusted:Z

    const/4 v0, 0x0

    .line 382
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    const/4 v0, 0x0

    .line 383
    iput v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetSecondaryDim:F

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetPrimaryDim:F

    .line 384
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->updateImeAdjustState()V

    .line 385
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->startAsyncAnimation()V

    .line 386
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_2

    .line 387
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$resume$2()V
    .locals 3

    .line 395
    sget-boolean v0, Lcom/android/systemui/stackdivider/DividerImeController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ime resume run posted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->dumpState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DividerImeController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPaused:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 399
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPaused:Z

    .line 400
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPausedTargetAdjusted:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    .line 401
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->updateDimTargets()V

    .line 402
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    .line 403
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjusted:Z

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v1, v1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/Divider;->isMinimized()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 405
    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->finishAnimations()V

    .line 407
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->updateImeAdjustState()V

    .line 408
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->startAsyncAnimation()V

    return-void
.end method

.method private synthetic lambda$startAsyncAnimation$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    invoke-virtual {v0}, Lcom/android/systemui/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 338
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 339
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/stackdivider/DividerImeController;->onProgress(FLandroid/view/SurfaceControl$Transaction;)V

    .line 340
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 341
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    invoke-virtual {p0, v0}, Lcom/android/systemui/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private onEnd(ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    if-nez p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 314
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerImeController;->onProgress(FLandroid/view/SurfaceControl$Transaction;)V

    .line 315
    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjusted:Z

    .line 316
    iget-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetShown:Z

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mImeWasShown:Z

    if-eqz p1, :cond_0

    .line 317
    iget p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mShownTop:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mHiddenTop:I

    :goto_0
    iput p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mLastAdjustTop:I

    .line 318
    iget p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetPrimaryDim:F

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mLastPrimaryDim:F

    .line 319
    iget p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetSecondaryDim:F

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mLastSecondaryDim:F

    :cond_1
    return-void
.end method

.method private onProgress(FLandroid/view/SurfaceControl$Transaction;)V
    .locals 8

    .line 284
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    .line 285
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjusted:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPaused:Z

    if-nez v1, :cond_1

    .line 286
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->getLayout()Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    move-result-object v1

    .line 287
    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    if-eqz v2, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    sub-float v2, v3, p1

    .line 288
    :goto_0
    iget v4, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mShownTop:I

    int-to-float v5, v4

    mul-float/2addr v5, v2

    sub-float v2, v3, v2

    iget v6, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mHiddenTop:I

    int-to-float v7, v6

    mul-float/2addr v2, v7

    add-float/2addr v5, v2

    float-to-int v2, v5

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mLastAdjustTop:I

    .line 289
    invoke-virtual {v1, v2, v6, v4}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->updateAdjustedBounds(III)V

    .line 290
    iget-object v2, v1, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    iget-object v1, v1, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mAdjustedSecondary:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v2, v1}, Lcom/android/systemui/stackdivider/DividerView;->resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_1
    sub-float/2addr v3, p1

    const/4 v1, 0x1

    .line 294
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mLastPrimaryDim:F

    mul-float/2addr v2, v3

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetPrimaryDim:F

    mul-float/2addr v4, p1

    add-float/2addr v2, v4

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    const/4 v1, 0x0

    .line 296
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mLastSecondaryDim:F

    mul-float/2addr v2, v3

    iget p0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetSecondaryDim:F

    mul-float/2addr p1, p0

    add-float/2addr v2, p1

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    return-void
.end method

.method private startAsyncAnimation()V
    .locals 4

    .line 324
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 327
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x113

    .line 328
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 329
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjusted:Z

    if-eq v0, v1, :cond_2

    .line 330
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mLastAdjustTop:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mHiddenTop:I

    int-to-float v3, v2

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mShownTop:I

    sub-int/2addr v3, v2

    int-to-float v2, v3

    div-float/2addr v1, v2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, v1

    .line 333
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/stackdivider/-$$Lambda$DividerImeController$w9tTEADRpkU2gnFFBrPgOh19s0k;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$DividerImeController$w9tTEADRpkU2gnFFBrPgOh19s0k;-><init>(Lcom/android/systemui/stackdivider/DividerImeController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 343
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/wm/DisplayImeController;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 344
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/stackdivider/DividerImeController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/DividerImeController$1;-><init>(Lcom/android/systemui/stackdivider/DividerImeController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 359
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateDimTargets()V
    .locals 4

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->isHidden()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 134
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSecondaryHasFocus:Z

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetShown:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 135
    :goto_0
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetPrimaryDim:F

    .line 136
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSecondaryHasFocus:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetShown:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 137
    :goto_1
    iput v2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetSecondaryDim:F

    return-void
.end method

.method private updateImeAdjustState()V
    .locals 1

    const/4 v0, 0x0

    .line 195
    invoke-direct {p0, v0}, Lcom/android/systemui/stackdivider/DividerImeController;->updateImeAdjustState(Z)V

    return-void
.end method

.method private updateImeAdjustState(Z)V
    .locals 5

    .line 199
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjusted:Z

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_2

    .line 202
    :cond_0
    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->getLayout()Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    move-result-object v0

    .line 204
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    if-eqz v1, :cond_1

    .line 205
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mShownTop:I

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mHiddenTop:I

    invoke-virtual {v0, v1, v3, v1}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->updateAdjustedBounds(III)V

    .line 206
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v1, v1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v3, v0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mAdjustedSecondary:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 210
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v3, v3, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 211
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 212
    iget-object v3, v0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mAdjustedSecondary:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, v0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 214
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v3, v3, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v3, v1}, Landroid/window/WindowContainerTransaction;->setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 215
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v1, v1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget v4, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v3, v4, v1}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    .line 219
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v1, v1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v3, v0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 220
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v3, v3, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 221
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 222
    iget-object v3, v0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v0, v0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v0, v0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 225
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v0, v0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v1, v3, v0}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    goto :goto_0

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v1, v1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v3, v0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 230
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v1, v1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/window/WindowContainerTransaction;->setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 231
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v1, v1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v1, v2, v2}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    .line 233
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v1, v1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v0, v0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 234
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v0, v0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, v3}, Landroid/window/WindowContainerTransaction;->setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 235
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v0, v0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, v2, v2}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    .line 239
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v0, v0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->getWmProxy()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->queueSyncTransactionIfWaiting(Landroid/window/WindowContainerTransaction;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 240
    invoke-static {p1}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 245
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPaused:Z

    if-nez p1, :cond_4

    .line 246
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 248
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetShown:Z

    if-eqz v0, :cond_3

    const-wide/16 v3, 0x113

    goto :goto_1

    :cond_3
    const-wide/16 v3, 0x154

    :goto_1
    invoke-virtual {p1, v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->setAdjustedForIme(ZJ)V

    .line 253
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object p1, p1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetShown:Z

    if-eqz v0, :cond_5

    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPaused:Z

    if-nez p0, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-virtual {p1, v2}, Lcom/android/systemui/stackdivider/Divider;->setAdjustedForIme(Z)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$pause$1$DividerImeController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->lambda$pause$1()V

    return-void
.end method

.method public synthetic lambda$resume$2$DividerImeController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->lambda$resume$2()V

    return-void
.end method

.method public synthetic lambda$startAsyncAnimation$0$DividerImeController(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerImeController;->lambda$startAsyncAnimation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public onImeEndPositioning(IZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 276
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->isDividerVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPaused:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/stackdivider/DividerImeController;->onEnd(ZLandroid/view/SurfaceControl$Transaction;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onImePositionChanged(IILandroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 264
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->isDividerVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPaused:Z

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    int-to-float p1, p2

    .line 268
    iget p2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mHiddenTop:I

    int-to-float v0, p2

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mShownTop:I

    sub-int/2addr v0, p2

    int-to-float p2, v0

    div-float/2addr p1, p2

    .line 269
    iget-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetShown:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    sub-float p1, p2, p1

    .line 270
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/stackdivider/DividerImeController;->onProgress(FLandroid/view/SurfaceControl$Transaction;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onImeStartPositioning(IIIZZLandroid/view/SurfaceControl$Transaction;)I
    .locals 2

    .line 144
    iput p2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mHiddenTop:I

    .line 145
    iput p3, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mShownTop:I

    .line 146
    iput-boolean p4, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetShown:Z

    .line 147
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->isDividerVisible()Z

    move-result p6

    const/4 v0, 0x0

    if-nez p6, :cond_0

    return v0

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object p6

    invoke-virtual {p6}, Lcom/android/systemui/stackdivider/DividerView;->isHidden()Z

    move-result p6

    const/4 v1, 0x1

    xor-int/2addr p6, v1

    .line 151
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerImeController;->getSecondaryHasFocus(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSecondaryHasFocus:Z

    if-eqz p6, :cond_1

    if-eqz p4, :cond_1

    if-eqz p1, :cond_1

    if-nez p5, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->getLayout()Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {p1}, Lcom/android/systemui/wm/DisplayLayout;->isLandscape()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object p1, p1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    .line 154
    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/Divider;->isMinimized()Z

    move-result p1

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 155
    :goto_0
    iget p5, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mLastAdjustTop:I

    if-gez p5, :cond_3

    if-eqz p4, :cond_2

    goto :goto_1

    :cond_2
    move p2, p3

    .line 156
    :goto_1
    iput p2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mLastAdjustTop:I

    goto :goto_3

    :cond_3
    if-eqz p4, :cond_4

    .line 157
    iget p2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mShownTop:I

    goto :goto_2

    :cond_4
    iget p2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mHiddenTop:I

    :goto_2
    if-eq p5, p2, :cond_6

    .line 158
    iget-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    if-eq p2, p1, :cond_5

    iget-boolean p3, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjusted:Z

    if-ne p1, p3, :cond_5

    .line 162
    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjusted:Z

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    .line 163
    iget-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjusted:Z

    if-eqz p2, :cond_6

    .line 166
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjusted:Z

    .line 169
    :cond_6
    :goto_3
    iget-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPaused:Z

    const-string p3, "DividerImeController"

    if-eqz p2, :cond_a

    .line 170
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPausedTargetAdjusted:Z

    .line 171
    sget-boolean p2, Lcom/android/systemui/stackdivider/DividerImeController;->DEBUG:Z

    if-eqz p2, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " ime starting but paused "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->dumpState()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-nez p1, :cond_8

    .line 172
    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjusted:Z

    if-eqz p0, :cond_9

    :cond_8
    move v0, v1

    :cond_9
    return v0

    .line 174
    :cond_a
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    .line 175
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->updateDimTargets()V

    .line 176
    sget-boolean p1, Lcom/android/systemui/stackdivider/DividerImeController;->DEBUG:Z

    if-eqz p1, :cond_b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " ime starting. vis:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->dumpState()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mImeWasShown:Z

    if-eqz p1, :cond_d

    if-eqz p4, :cond_d

    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    iget-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjusted:Z

    if-eq p1, p2, :cond_d

    .line 182
    :cond_c
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->startAsyncAnimation()V

    :cond_d
    if-eqz p6, :cond_e

    .line 187
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->updateImeAdjustState()V

    goto :goto_4

    .line 189
    :cond_e
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjustedWhileHidden:Z

    .line 191
    :goto_4
    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    if-nez p1, :cond_f

    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjusted:Z

    if-eqz p0, :cond_10

    :cond_f
    move v0, v1

    :cond_10
    return v0
.end method

.method public pause(I)V
    .locals 1

    .line 374
    sget-boolean p1, Lcom/android/systemui/stackdivider/DividerImeController;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ime pause posting "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->dumpState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DividerImeController"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerImeController$WahrdFPYjNuoSU9XvYFcvsrVnqE;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$DividerImeController$WahrdFPYjNuoSU9XvYFcvsrVnqE;-><init>(Lcom/android/systemui/stackdivider/DividerImeController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method reset()V
    .locals 2

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPaused:Z

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mPausedTargetAdjusted:Z

    .line 123
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjustedWhileHidden:Z

    const/4 v1, 0x0

    .line 124
    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    .line 125
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetAdjusted:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjusted:Z

    .line 126
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetShown:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mImeWasShown:Z

    const/4 v1, 0x0

    .line 127
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mLastSecondaryDim:F

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mLastPrimaryDim:F

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetSecondaryDim:F

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetPrimaryDim:F

    .line 128
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mSecondaryHasFocus:Z

    const/4 v0, -0x1

    .line 129
    iput v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mLastAdjustTop:I

    return-void
.end method

.method public resume(I)V
    .locals 1

    .line 393
    sget-boolean p1, Lcom/android/systemui/stackdivider/DividerImeController;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ime resume posting "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->dumpState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DividerImeController"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerImeController$BXScwQHRnelwDiQfpGXRr_rI2HQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$DividerImeController$BXScwQHRnelwDiQfpGXRr_rI2HQ;-><init>(Lcom/android/systemui/stackdivider/DividerImeController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setDimsHidden(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 3

    .line 301
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    .line 303
    invoke-virtual {v0, p1, v2, p0}, Lcom/android/systemui/stackdivider/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    .line 304
    invoke-virtual {v0, p1, v1, p0}, Lcom/android/systemui/stackdivider/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    goto :goto_0

    .line 306
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->updateDimTargets()V

    .line 307
    iget p2, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetPrimaryDim:F

    invoke-virtual {v0, p1, v2, p2}, Lcom/android/systemui/stackdivider/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    .line 308
    iget p0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mTargetSecondaryDim:F

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/systemui/stackdivider/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    :goto_0
    return-void
.end method

.method public updateAdjustForIme()V
    .locals 1

    .line 257
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjustedWhileHidden:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/stackdivider/DividerImeController;->updateImeAdjustState(Z)V

    const/4 v0, 0x0

    .line 258
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerImeController;->mAdjustedWhileHidden:Z

    return-void
.end method
