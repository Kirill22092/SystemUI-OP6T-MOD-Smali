.class public Lcom/android/systemui/pip/phone/PipTouchState;
.super Ljava/lang/Object;
.source "PipTouchState.java"


# static fields
.field static final DOUBLE_TAP_TIMEOUT:J = 0xc8L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mActivePointerId:I

.field private mAllowDraggingOffscreen:Z

.field private mAllowTouches:Z

.field private final mDoubleTapTimeoutCallback:Ljava/lang/Runnable;

.field private final mDownDelta:Landroid/graphics/PointF;

.field private final mDownTouch:Landroid/graphics/PointF;

.field private mDownTouchTime:J

.field private final mHandler:Landroid/os/Handler;

.field private final mHoverExitTimeoutCallback:Ljava/lang/Runnable;

.field private mIsDoubleTap:Z

.field private mIsDragging:Z

.field private mIsUserInteracting:Z

.field private mIsWaitingForDoubleTap:Z

.field private final mLastDelta:Landroid/graphics/PointF;

.field private mLastDownTouchTime:J

.field private final mLastTouch:Landroid/graphics/PointF;

.field private mPreviouslyDragging:Z

.field private mStartedDragging:Z

.field private mUpTouchTime:J

.field private final mVelocity:Landroid/graphics/PointF;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mViewConfig:Landroid/view/ViewConfiguration;


# direct methods
.method public constructor <init>(Landroid/view/ViewConfiguration;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 47
    iput-wide v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouchTime:J

    .line 48
    iput-wide v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastDownTouchTime:J

    .line 49
    iput-wide v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mUpTouchTime:J

    .line 50
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouch:Landroid/graphics/PointF;

    .line 51
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownDelta:Landroid/graphics/PointF;

    .line 52
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    .line 53
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastDelta:Landroid/graphics/PointF;

    .line 54
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocity:Landroid/graphics/PointF;

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowTouches:Z

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    .line 58
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDoubleTap:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDragging:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mPreviouslyDragging:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mStartedDragging:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowDraggingOffscreen:Z

    .line 70
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mViewConfig:Landroid/view/ViewConfiguration;

    .line 71
    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mHandler:Landroid/os/Handler;

    .line 72
    iput-object p3, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDoubleTapTimeoutCallback:Ljava/lang/Runnable;

    .line 73
    iput-object p4, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mHoverExitTimeoutCallback:Ljava/lang/Runnable;

    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 361
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 363
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 370
    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method


# virtual methods
.method addMovementToVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    return-void

    .line 352
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 353
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 354
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 355
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    neg-float p0, v0

    neg-float v0, v1

    .line 356
    invoke-virtual {p1, p0, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "PipTouchState"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAllowTouches="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowTouches:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mActivePointerId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDownTouch="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouch:Landroid/graphics/PointF;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDownDelta="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownDelta:Landroid/graphics/PointF;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastTouch="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastDelta="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastDelta:Landroid/graphics/PointF;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mVelocity="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocity:Landroid/graphics/PointF;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsUserInteracting="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsDragging="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDragging:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mStartedDragging="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mStartedDragging:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mAllowDraggingOffscreen="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowDraggingOffscreen:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method getDoubleTapTimeoutCallbackDelay()J
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 322
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0xc8

    .line 323
    iget-wide v4, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mUpTouchTime:J

    iget-wide v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouchTime:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getDownTouchPosition()Landroid/graphics/PointF;
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouch:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getLastTouchDelta()Landroid/graphics/PointF;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastDelta:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getLastTouchPosition()Landroid/graphics/PointF;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getVelocity()Landroid/graphics/PointF;
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocity:Landroid/graphics/PointF;

    return-object p0
.end method

.method public isDoubleTap()Z
    .locals 0

    .line 299
    iget-boolean p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDoubleTap:Z

    return p0
.end method

.method public isDragging()Z
    .locals 0

    .line 251
    iget-boolean p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDragging:Z

    return p0
.end method

.method public isUserInteracting()Z
    .locals 0

    .line 258
    iget-boolean p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    return p0
.end method

.method public isWaitingForDoubleTap()Z
    .locals 0

    .line 306
    iget-boolean p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 9

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-wide/16 v1, 0xc8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_f

    const-string v5, "PipTouchState"

    const/4 v6, -0x1

    if-eq v0, v4, :cond_a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 p1, 0xb

    if-eq v0, p1, :cond_0

    goto/16 :goto_3

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipTouchState;->removeHoverExitTimeoutCallback()V

    goto/16 :goto_3

    .line 152
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 157
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchState;->addMovementToVelocityTracker(Landroid/view/MotionEvent;)V

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 160
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 161
    iget v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    if-ne v1, v2, :cond_12

    if-nez v0, :cond_3

    move v3, v4

    .line 164
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    .line 169
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_3

    .line 121
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    if-nez v0, :cond_5

    goto/16 :goto_3

    .line 126
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchState;->addMovementToVelocityTracker(Landroid/view/MotionEvent;)V

    .line 127
    iget v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v6, :cond_6

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid active pointer id on MOVE: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 133
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v1

    .line 134
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    .line 135
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastDelta:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    iget v5, v2, Landroid/graphics/PointF;->x:F

    sub-float v5, v1, v5

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v2, p1, v2

    invoke-virtual {v0, v5, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownDelta:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouch:Landroid/graphics/PointF;

    iget v5, v2, Landroid/graphics/PointF;->x:F

    sub-float v5, v1, v5

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v2, p1, v2

    invoke-virtual {v0, v5, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownDelta:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/PointF;->length()F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mViewConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    move v0, v4

    goto :goto_0

    :cond_7
    move v0, v3

    .line 139
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDragging:Z

    if-nez v2, :cond_8

    if-eqz v0, :cond_9

    .line 141
    iput-boolean v4, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDragging:Z

    .line 142
    iput-boolean v4, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mStartedDragging:Z

    goto :goto_1

    .line 145
    :cond_8
    iput-boolean v3, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mStartedDragging:Z

    .line 147
    :cond_9
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {p0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_3

    .line 175
    :cond_a
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    if-nez v0, :cond_b

    goto/16 :goto_3

    .line 180
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchState;->addMovementToVelocityTracker(Landroid/view/MotionEvent;)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mViewConfig:Landroid/view/ViewConfiguration;

    .line 182
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v8

    int-to-float v8, v8

    .line 181
    invoke-virtual {v0, v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocity:Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 185
    iget v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v6, :cond_c

    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid active pointer id on UP: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 191
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mUpTouchTime:J

    .line 192
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v6

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    invoke-virtual {v5, v6, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 193
    iget-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDragging:Z

    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mPreviouslyDragging:Z

    .line 194
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDoubleTap:Z

    if-nez v0, :cond_d

    if-nez p1, :cond_d

    iget-wide v5, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mUpTouchTime:J

    iget-wide v7, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouchTime:J

    sub-long/2addr v5, v7

    cmp-long p1, v5, v1

    if-gez p1, :cond_d

    move v3, v4

    :cond_d
    iput-boolean v3, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    .line 200
    :cond_e
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchState;->recycleVelocityTracker()V

    goto :goto_3

    .line 92
    :cond_f
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowTouches:Z

    if-nez v0, :cond_10

    return-void

    .line 97
    :cond_10
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchState;->initOrResetVelocityTracker()V

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchState;->addMovementToVelocityTracker(Landroid/view/MotionEvent;)V

    .line 100
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    .line 104
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouch:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {v0, v5}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 106
    iput-boolean v4, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowDraggingOffscreen:Z

    .line 107
    iput-boolean v4, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouchTime:J

    .line 109
    iget-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mPreviouslyDragging:Z

    if-nez p1, :cond_11

    iget-wide v7, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastDownTouchTime:J

    sub-long/2addr v5, v7

    cmp-long p1, v5, v1

    if-gez p1, :cond_11

    goto :goto_2

    :cond_11
    move v4, v3

    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDoubleTap:Z

    .line 111
    iput-boolean v3, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    .line 112
    iput-boolean v3, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDragging:Z

    .line 113
    iget-wide v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouchTime:J

    iput-wide v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastDownTouchTime:J

    .line 114
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDoubleTapTimeoutCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_12

    .line 115
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_12
    :goto_3
    return-void
.end method

.method public removeDoubleTapTimeoutCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 332
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    .line 333
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDoubleTapTimeoutCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method removeHoverExitTimeoutCallback()V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mHoverExitTimeoutCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowDraggingOffscreen:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDragging:Z

    .line 82
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mStartedDragging:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    return-void
.end method

.method public scheduleDoubleTapTimeoutCallback()V
    .locals 4

    .line 314
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipTouchState;->getDoubleTapTimeoutCallbackDelay()J

    move-result-wide v0

    .line 316
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDoubleTapTimeoutCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 317
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDoubleTapTimeoutCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method scheduleHoverExitTimeoutCallback()V
    .locals 3

    .line 337
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mHoverExitTimeoutCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 338
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mHoverExitTimeoutCallback:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setAllowTouches(Z)V
    .locals 0

    .line 272
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowTouches:Z

    .line 276
    iget-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    if-eqz p1, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipTouchState;->reset()V

    :cond_0
    return-void
.end method

.method public startedDragging()Z
    .locals 0

    .line 265
    iget-boolean p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mStartedDragging:Z

    return p0
.end method
