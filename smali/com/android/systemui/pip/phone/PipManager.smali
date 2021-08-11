.class public Lcom/android/systemui/pip/phone/PipManager;
.super Ljava/lang/Object;
.source "PipManager.java"

# interfaces
.implements Lcom/android/systemui/pip/BasePipManager;
.implements Lcom/android/systemui/pip/PipTaskOrganizer$PipTransitionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;
    }
.end annotation


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private mAppOpsListener:Lcom/android/systemui/pip/phone/PipAppOpsListener;

.field private mContext:Landroid/content/Context;

.field private mFixedRotationListener:Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;

.field private mHandler:Landroid/os/Handler;

.field private mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

.field private mIsInFixedRotation:Z

.field private mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

.field protected mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

.field private mPinnedStackAnimationRecentsListener:Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;

.field private mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

.field private mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

.field private final mReentryBounds:Landroid/graphics/Rect;

.field private final mRotationController:Lcom/android/systemui/wm/DisplayChangeController$OnDisplayChangingListener;

.field private final mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private final mTmpDisplayInfo:Landroid/view/DisplayInfo;

.field private final mTmpInsetBounds:Landroid/graphics/Rect;

.field private final mTmpNormalBounds:Landroid/graphics/Rect;

.field private mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/wm/DisplayController;Lcom/android/systemui/util/FloatingContentCoordinator;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/pip/PipBoundsHandler;Lcom/android/systemui/pip/PipSnapAlgorithm;Lcom/android/systemui/pip/PipTaskOrganizer;Lcom/android/systemui/model/SysUiState;)V
    .locals 15

    move-object v1, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    move-object/from16 v2, p8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, v1, Lcom/android/systemui/pip/phone/PipManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, v1, Lcom/android/systemui/pip/phone/PipManager;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v1, Lcom/android/systemui/pip/phone/PipManager;->mTmpInsetBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v1, Lcom/android/systemui/pip/phone/PipManager;->mTmpNormalBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v1, Lcom/android/systemui/pip/phone/PipManager;->mReentryBounds:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$AYejaSf14FPjo5Gs0gXz-uHGoWo;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$AYejaSf14FPjo5Gs0gXz-uHGoWo;-><init>(Lcom/android/systemui/pip/phone/PipManager;)V

    iput-object v0, v1, Lcom/android/systemui/pip/phone/PipManager;->mRotationController:Lcom/android/systemui/wm/DisplayChangeController$OnDisplayChangingListener;

    new-instance v0, Lcom/android/systemui/pip/phone/PipManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipManager$1;-><init>(Lcom/android/systemui/pip/phone/PipManager;)V

    iput-object v0, v1, Lcom/android/systemui/pip/phone/PipManager;->mFixedRotationListener:Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;

    new-instance v0, Lcom/android/systemui/pip/phone/PipManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipManager$2;-><init>(Lcom/android/systemui/pip/phone/PipManager;)V

    iput-object v0, v1, Lcom/android/systemui/pip/phone/PipManager;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iput-object v13, v1, Lcom/android/systemui/pip/phone/PipManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/pip/phone/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    :try_start_0
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;-><init>(Lcom/android/systemui/pip/phone/PipManager;Lcom/android/systemui/pip/phone/PipManager$1;)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->addPinnedStackListener(Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "PipManager"

    const-string v4, "Failed to register pinned stack listener"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v3, v1, Lcom/android/systemui/pip/phone/PipManager;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v3}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    move-object/from16 v3, p6

    iput-object v3, v1, Lcom/android/systemui/pip/phone/PipManager;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    iput-object v2, v1, Lcom/android/systemui/pip/phone/PipManager;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    invoke-virtual {v2, p0}, Lcom/android/systemui/pip/PipTaskOrganizer;->registerPipTransitionCallback(Lcom/android/systemui/pip/PipTaskOrganizer$PipTransitionCallback;)V

    invoke-static {}, Lcom/android/systemui/shared/system/InputConsumerController;->getPipInputConsumer()Lcom/android/systemui/shared/system/InputConsumerController;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/pip/phone/PipManager;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    new-instance v0, Lcom/android/systemui/pip/phone/PipMediaController;

    iget-object v2, v1, Lcom/android/systemui/pip/phone/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v3, p2

    invoke-direct {v0, v13, v2, v3}, Lcom/android/systemui/pip/phone/PipMediaController;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object v0, v1, Lcom/android/systemui/pip/phone/PipManager;->mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

    new-instance v5, Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v2, v1, Lcom/android/systemui/pip/phone/PipManager;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    invoke-direct {v5, v13, v0, v2}, Lcom/android/systemui/pip/phone/PipMenuActivityController;-><init>(Landroid/content/Context;Lcom/android/systemui/pip/phone/PipMediaController;Lcom/android/systemui/shared/system/InputConsumerController;)V

    iput-object v5, v1, Lcom/android/systemui/pip/phone/PipManager;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    new-instance v0, Lcom/android/systemui/pip/phone/PipTouchHandler;

    iget-object v4, v1, Lcom/android/systemui/pip/phone/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v6, v1, Lcom/android/systemui/pip/phone/PipManager;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    iget-object v7, v1, Lcom/android/systemui/pip/phone/PipManager;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    iget-object v8, v1, Lcom/android/systemui/pip/phone/PipManager;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    move-object v2, v0

    move-object/from16 v3, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    move-object/from16 v12, p9

    invoke-direct/range {v2 .. v12}, Lcom/android/systemui/pip/phone/PipTouchHandler;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/systemui/pip/phone/PipMenuActivityController;Lcom/android/systemui/shared/system/InputConsumerController;Lcom/android/systemui/pip/PipBoundsHandler;Lcom/android/systemui/pip/PipTaskOrganizer;Lcom/android/systemui/util/FloatingContentCoordinator;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/pip/PipSnapAlgorithm;Lcom/android/systemui/model/SysUiState;)V

    iput-object v0, v1, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    new-instance v0, Lcom/android/systemui/pip/phone/PipAppOpsListener;

    iget-object v2, v1, Lcom/android/systemui/pip/phone/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v3, v1, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {v3}, Lcom/android/systemui/pip/phone/PipTouchHandler;->getMotionHelper()Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v3

    invoke-direct {v0, v13, v2, v3}, Lcom/android/systemui/pip/phone/PipAppOpsListener;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/systemui/pip/phone/PipAppOpsListener$Callback;)V

    iput-object v0, v1, Lcom/android/systemui/pip/phone/PipManager;->mAppOpsListener:Lcom/android/systemui/pip/phone/PipAppOpsListener;

    iget-object v0, v1, Lcom/android/systemui/pip/phone/PipManager;->mRotationController:Lcom/android/systemui/wm/DisplayChangeController$OnDisplayChangingListener;

    invoke-virtual {v14, v0}, Lcom/android/systemui/wm/DisplayController;->addDisplayChangingController(Lcom/android/systemui/wm/DisplayChangeController$OnDisplayChangingListener;)V

    iget-object v0, v1, Lcom/android/systemui/pip/phone/PipManager;->mFixedRotationListener:Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;

    invoke-virtual {v14, v0}, Lcom/android/systemui/wm/DisplayController;->addDisplayWindowListener(Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;)V

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v2, v1, Lcom/android/systemui/pip/phone/PipManager;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    invoke-virtual {v2, v0}, Lcom/android/systemui/pip/PipBoundsHandler;->onDisplayInfoChanged(Landroid/view/DisplayInfo;)V

    :try_start_1
    iget-object v0, v1, Lcom/android/systemui/pip/phone/PipManager;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/window/TaskOrganizer;->registerOrganizer(I)V

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/app/IActivityTaskManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/systemui/pip/phone/PipManager;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/InputConsumerController;->registerInputConsumer(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/pip/phone/PipManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipManager;->mIsInFixedRotation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipMediaController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager;->mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipAppOpsListener;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager;->mAppOpsListener:Lcom/android/systemui/pip/phone/PipAppOpsListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/pip/phone/PipManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/pip/phone/PipManager;)Landroid/app/IActivityManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/pip/phone/PipManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/PipBoundsHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/pip/phone/PipManager;Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/pip/phone/PipManager;->updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method private synthetic lambda$new$0(IIILandroid/window/WindowContainerTransaction;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    invoke-virtual {v0}, Lcom/android/systemui/pip/PipTaskOrganizer;->isInPip()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    invoke-virtual {v0}, Lcom/android/systemui/pip/PipTaskOrganizer;->isDeferringEnterPipAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    invoke-virtual {v0}, Lcom/android/systemui/pip/PipTaskOrganizer;->getCurrentOrAnimatingBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipManager;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipManager;->mTmpNormalBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipManager;->mTmpInsetBounds:Landroid/graphics/Rect;

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/pip/PipBoundsHandler;->onDisplayRotationChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/window/WindowContainerTransaction;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipManager;->mTmpNormalBounds:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/android/systemui/pip/phone/PipManager;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    invoke-virtual {p3}, Lcom/android/systemui/pip/PipTaskOrganizer;->getLastReportedBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mTmpInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->adjustBoundsForRotation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-boolean p1, p0, Lcom/android/systemui/pip/phone/PipManager;->mIsInFixedRotation:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipManager;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcom/android/systemui/pip/PipBoundsHandler;->setShelfHeight(ZI)Z

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipManager;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    invoke-virtual {p1, p2, p2}, Lcom/android/systemui/pip/PipBoundsHandler;->onImeVisibilityChanged(ZI)V

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {p1, p2, p2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onShelfVisibilityChanged(ZI)V

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {p1, p2, p2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onImeVisibilityChanged(ZI)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipManager;->mTmpNormalBounds:Landroid/graphics/Rect;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/pip/phone/PipManager;->updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    invoke-virtual {p0, p3}, Lcom/android/systemui/pip/PipBoundsHandler;->onDisplayRotationChangedNotInPip(I)V

    return-void
.end method

.method private synthetic lambda$setPinnedStackAnimationListener$3(Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipManager;->mPinnedStackAnimationRecentsListener:Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;

    return-void
.end method

.method private synthetic lambda$setPinnedStackAnimationType$2(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->setOneShotAnimationType(I)V

    return-void
.end method

.method private synthetic lambda$setShelfHeight$1(ZI)V
    .locals 6

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/pip/PipBoundsHandler;->setShelfHeight(ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onShelfVisibilityChanged(ZI)V

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipManager;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    invoke-virtual {p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->getLastReportedBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/pip/phone/PipManager;->updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    :cond_1
    return-void
.end method

.method private onPipTransitionFinishedOrCanceled(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setTouchEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onPinnedStackAnimationEnded(I)V

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->onPinnedStackAnimationEnded()V

    return-void
.end method

.method private updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V
    .locals 7

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipManager;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mTmpInsetBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipManager;->mTmpNormalBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipManager;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v0, v1, v6, v2}, Lcom/android/systemui/pip/PipBoundsHandler;->onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    move-object v1, v6

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/pip/PipTaskOrganizer;->onMovementBoundsChanged(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipManager;->mTmpInsetBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipManager;->mTmpNormalBounds:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    iget p0, p0, Landroid/view/DisplayInfo;->rotation:I

    move-object v3, v6

    move v4, p3

    move v5, p4

    move v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "PipManager"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    const-string v1, "  "

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/shared/system/InputConsumerController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/pip/PipBoundsHandler;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/pip/PipTaskOrganizer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$new$0$PipManager(IIILandroid/window/WindowContainerTransaction;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/pip/phone/PipManager;->lambda$new$0(IIILandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public synthetic lambda$setPinnedStackAnimationListener$3$PipManager(Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipManager;->lambda$setPinnedStackAnimationListener$3(Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;)V

    return-void
.end method

.method public synthetic lambda$setPinnedStackAnimationType$2$PipManager(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipManager;->lambda$setPinnedStackAnimationType$2(I)V

    return-void
.end method

.method public synthetic lambda$setShelfHeight$1$PipManager(ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pip/phone/PipManager;->lambda$setShelfHeight$1(ZI)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onConfigurationChanged()V

    return-void
.end method

.method public onPipTransitionCanceled(Landroid/content/ComponentName;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/systemui/pip/phone/PipManager;->onPipTransitionFinishedOrCanceled(I)V

    return-void
.end method

.method public onPipTransitionFinished(Landroid/content/ComponentName;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/systemui/pip/phone/PipManager;->onPipTransitionFinishedOrCanceled(I)V

    return-void
.end method

.method public onPipTransitionStarted(Landroid/content/ComponentName;I)V
    .locals 2

    invoke-static {p2}, Lcom/android/systemui/pip/PipAnimationController;->isOutPipDirection(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipManager;->mReentryBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->getNormalBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipManager;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    invoke-virtual {p2}, Lcom/android/systemui/pip/PipTaskOrganizer;->getLastReportedBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    invoke-virtual {v0, p2}, Lcom/android/systemui/pip/PipBoundsHandler;->getSnapFraction(Landroid/graphics/Rect;)F

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipManager;->mReentryBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/pip/PipBoundsHandler;->applySnapFraction(Landroid/graphics/Rect;F)V

    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipManager;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mReentryBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/pip/PipBoundsHandler;->onSaveReentryBounds(Landroid/content/ComponentName;Landroid/graphics/Rect;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setTouchEnabled(Z)V

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager;->mPinnedStackAnimationRecentsListener:Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;->onPinnedStackAnimationStarted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PipManager"

    const-string p2, "Failed to callback recents"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setPinnedStackAnimationListener(Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$t2XWznriuk4XHpM7EiG9uJamHUY;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$t2XWznriuk4XHpM7EiG9uJamHUY;-><init>(Lcom/android/systemui/pip/phone/PipManager;Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setPinnedStackAnimationType(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$_erwmkZE5c2eLc8r_OSTlUw7erk;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$_erwmkZE5c2eLc8r_OSTlUw7erk;-><init>(Lcom/android/systemui/pip/phone/PipManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setShelfHeight(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$f_jRwYFIWoME7ctX-wrfhuNp1q0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$f_jRwYFIWoME7ctX-wrfhuNp1q0;-><init>(Lcom/android/systemui/pip/phone/PipManager;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showPictureInPictureMenu()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->showPictureInPictureMenu()V

    return-void
.end method
