.class public Lcom/android/systemui/pip/phone/PipResizeGestureHandler;
.super Ljava/lang/Object;
.source "PipResizeGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/PipResizeGestureHandler$SysUiInputEventReceiver;
    }
.end annotation


# instance fields
.field private mAllowGesture:Z

.field private final mContext:Landroid/content/Context;

.field private mCtrlType:I

.field private mDelta:I

.field private final mDisplayBounds:Landroid/graphics/Rect;

.field private final mDisplayId:I

.field private final mDownPoint:Landroid/graphics/PointF;

.field private final mDragCornerSize:Landroid/graphics/Rect;

.field private mEnableUserResize:Z

.field private mInputEventReceiver:Landroid/view/InputEventReceiver;

.field private mInputMonitor:Landroid/view/InputMonitor;

.field private mIsAttached:Z

.field private mIsEnabled:Z

.field private final mLastDownBounds:Landroid/graphics/Rect;

.field private final mLastResizeBounds:Landroid/graphics/Rect;

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private final mMaxSize:Landroid/graphics/Point;

.field private final mMinSize:Landroid/graphics/Point;

.field private final mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

.field private final mMovementBoundsSupplier:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

.field private mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

.field private final mSysUiState:Lcom/android/systemui/model/SysUiState;

.field private mThresholdCrossed:Z

.field private final mTmpBottomLeftCorner:Landroid/graphics/Rect;

.field private final mTmpBottomRightCorner:Landroid/graphics/Rect;

.field private final mTmpRegion:Landroid/graphics/Region;

.field private final mTmpTopLeftCorner:Landroid/graphics/Rect;

.field private final mTmpTopRightCorner:Landroid/graphics/Rect;

.field private mTouchSlop:F

.field private final mUpdateMovementBoundsRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pip/PipBoundsHandler;Lcom/android/systemui/pip/phone/PipMotionHelper;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/pip/PipTaskOrganizer;Ljava/util/function/Function;Ljava/lang/Runnable;Lcom/android/systemui/model/SysUiState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/pip/PipBoundsHandler;",
            "Lcom/android/systemui/pip/phone/PipMotionHelper;",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            "Lcom/android/systemui/pip/PipTaskOrganizer;",
            "Ljava/util/function/Function<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/lang/Runnable;",
            "Lcom/android/systemui/model/SysUiState;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mLastDownBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDisplayId:I

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMainExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    iput-object p3, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    iput-object p5, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    iput-object p6, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMovementBoundsSupplier:Ljava/util/function/Function;

    iput-object p7, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mUpdateMovementBoundsRunnable:Ljava/lang/Runnable;

    iput-object p8, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    invoke-virtual {p1, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->reloadResources()V

    const-string/jumbo p1, "systemui"

    const-string p2, "pip_user_resize"

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mEnableUserResize:Z

    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/android/systemui/pip/phone/PipResizeGestureHandler$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler$1;-><init>(Lcom/android/systemui/pip/phone/PipResizeGestureHandler;)V

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/systemui/util/DeviceConfigProxy;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/pip/phone/PipResizeGestureHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mEnableUserResize:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/pip/phone/PipResizeGestureHandler;Landroid/view/InputEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->onInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method private disposeInputChannel()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    :cond_1
    return-void
.end method

.method private isInValidSysUiState()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    invoke-virtual {p0}, Lcom/android/systemui/model/SysUiState;->getFlags()I

    move-result p0

    const v0, 0xca4c

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onMotionEvent$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->synchronizePinnedStackBounds()V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mUpdateMovementBoundsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->resetState()V

    return-void
.end method

.method private synthetic lambda$onMotionEvent$1(Landroid/graphics/Rect;)V
    .locals 1

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/systemui/pip/phone/-$$Lambda$PipResizeGestureHandler$Z3nEFx0Z3KpDDBgJ9VHLzJ4HnEg;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipResizeGestureHandler$Z3nEFx0Z3KpDDBgJ9VHLzJ4HnEg;-><init>(Lcom/android/systemui/pip/phone/PipResizeGestureHandler;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->onMotionEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 p1, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->isInValidSysUiState()Z

    move-result v0

    if-eqz v0, :cond_0

    float-to-int v0, v1

    float-to-int v4, v2

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->isWithinTouchRegion(II)Z

    move-result v0

    if-eqz v0, :cond_0

    move p1, v3

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    if-eqz p1, :cond_8

    float-to-int p1, v1

    float-to-int v0, v2

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->setCtrlType(II)V

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mLastDownBounds:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    if-eqz v4, :cond_8

    if-eq v0, v3, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    goto/16 :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float v4, v1, v4

    float-to-double v4, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float v0, v2, v0

    float-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    iget v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTouchSlop:F

    float-to-double v6, v0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_4

    iput-boolean v3, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v0}, Landroid/view/InputMonitor;->pilferPointers()V

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v7, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    iget v9, v8, Landroid/graphics/Point;->x:I

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget-object v10, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mLastDownBounds:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    iget-object v13, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mLastDownBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v12, v13, :cond_5

    move p1, v3

    :cond_5
    move v3, v6

    move v6, v7

    move v7, v9

    move-object v9, v10

    move v10, v11

    move v11, p1

    invoke-static/range {v1 .. v11}, Lcom/android/internal/policy/TaskResizingAlgorithm;->resizeDrag(FFFFLandroid/graphics/Rect;IIILandroid/graphics/Point;ZZ)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/systemui/pip/PipBoundsHandler;->transformBoundsToAspectRatio(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mLastDownBounds:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/systemui/pip/PipTaskOrganizer;->scheduleUserResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipResizeGestureHandler$RnFltK7-aDIBKCAT3ErPSvbZbyg;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipResizeGestureHandler$RnFltK7-aDIBKCAT3ErPSvbZbyg;-><init>(Lcom/android/systemui/pip/phone/PipResizeGestureHandler;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/pip/PipTaskOrganizer;->scheduleFinishResizePip(Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->resetState()V

    :cond_8
    :goto_0
    return-void
.end method

.method private reloadResources()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->pip_resize_edge_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDelta:I

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTouchSlop:F

    return-void
.end method

.method private resetDragCorners()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDelta:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method private resetState()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    return-void
.end method

.method private setCtrlType(II)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMovementBoundsSupplier:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v5, v6

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v1, v6

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-eq v1, v3, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v3, :cond_2

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-eq p1, v1, :cond_3

    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->left:I

    if-eq p1, p2, :cond_3

    iget p1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    :cond_3
    return-void
.end method

.method private updateIsEnabled()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mIsAttached:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mEnableUserResize:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mIsEnabled:Z

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mIsEnabled:Z

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->disposeInputChannel()V

    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mIsEnabled:Z

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDisplayId:I

    const-string v2, "pip-resize"

    invoke-virtual {v0, v2, v1}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    new-instance v0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler$SysUiInputEventReceiver;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v1}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler$SysUiInputEventReceiver;-><init>(Lcom/android/systemui/pip/phone/PipResizeGestureHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    :cond_2
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "PipResizeGestureHandler"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAllowGesture="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsAttached="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mIsAttached:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsEnabled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mIsEnabled:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mEnableUserResize="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mEnableUserResize:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mThresholdCrossed="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isWithinTouchRegion(II)Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->resetDragCorners()V

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$onMotionEvent$0$PipResizeGestureHandler()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->lambda$onMotionEvent$0()V

    return-void
.end method

.method public synthetic lambda$onMotionEvent$1$PipResizeGestureHandler(Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->lambda$onMotionEvent$1(Landroid/graphics/Rect;)V

    return-void
.end method

.method onActivityPinned()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mIsAttached:Z

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->updateIsEnabled()V

    return-void
.end method

.method onActivityUnpinned()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mIsAttached:Z

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->updateIsEnabled()V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->reloadResources()V

    return-void
.end method

.method updateMaxSize(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method updateMinSize(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public willStartResizeGesture(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mEnableUserResize:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->isInValidSysUiState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->isWithinTouchRegion(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
