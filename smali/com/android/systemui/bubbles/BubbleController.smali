.class public Lcom/android/systemui/bubbles/BubbleController;
.super Ljava/lang/Object;
.source "BubbleController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/oneplus/scene/OpSceneModeObserver$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bubbles/BubbleController$BubblesImeListener;,
        Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;,
        Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;,
        Lcom/android/systemui/bubbles/BubbleController$NotifCallback;,
        Lcom/android/systemui/bubbles/BubbleController$PendingIntentCanceledListener;,
        Lcom/android/systemui/bubbles/BubbleController$NotificationSuppressionChangedListener;,
        Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;
    }
.end annotation


# instance fields
.field private mAddedToWindowManager:Z

.field private mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

.field private final mBubbleDataListener:Lcom/android/systemui/bubbles/BubbleData$Listener;

.field private mBubbleIconFactory:Lcom/android/systemui/bubbles/BubbleIconFactory;

.field private mBubbleScrim:Lcom/android/systemui/statusbar/ScrimView;

.field private final mCacheEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/BubbleController$NotifCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDataRepository:Lcom/android/systemui/bubbles/BubbleDataRepository;

.field private mDensityDpi:I

.field private mExpandListener:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

.field private final mFloatingContentCoordinator:Lcom/android/systemui/util/FloatingContentCoordinator;

.field private mHadTopUi:Z

.field private mHandler:Landroid/os/Handler;

.field private mINotificationManager:Landroid/app/INotificationManager;

.field private mImeVisible:Z

.field private mInflateSynchronously:Z

.field private mIsInBrickMode:Z

.field private mLayoutDirection:I

.field private mLogger:Lcom/android/systemui/bubbles/BubbleLogger;

.field private mNotifEntryToExpandOnShadeUnlock:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private final mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field private final mNotifUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final mNotificationGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private final mNotificationInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

.field private final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

.field private mOrientation:I

.field private mOverflowCallback:Ljava/lang/Runnable;

.field private mOverflowDataLoaded:Z

.field private final mSavedBubbleKeysPerUser:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

.field private mStatusBarStateListener:Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;

.field private mSurfaceSynchronizer:Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;

.field private mSysUiState:Lcom/android/systemui/model/SysUiState;

.field private final mTaskStackListener:Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;

.field private mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/bubbles/BubbleData;Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/FloatingContentCoordinator;Lcom/android/systemui/bubbles/BubbleDataRepository;Lcom/android/systemui/model/SysUiState;Landroid/app/INotificationManager;Lcom/android/internal/statusbar/IStatusBarService;Landroid/view/WindowManager;Landroid/content/pm/LauncherApps;)V
    .locals 7

    move-object v1, p0

    move-object v2, p1

    move-object v0, p5

    move-object/from16 v3, p9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lcom/android/systemui/bubbles/BubbleLoggerImpl;

    invoke-direct {v4}, Lcom/android/systemui/bubbles/BubbleLoggerImpl;-><init>()V

    iput-object v4, v1, Lcom/android/systemui/bubbles/BubbleController;->mLogger:Lcom/android/systemui/bubbles/BubbleLogger;

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/android/systemui/bubbles/BubbleController;->mOverflowCallback:Ljava/lang/Runnable;

    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/systemui/bubbles/BubbleController;->mOverflowDataLoaded:Z

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, v1, Lcom/android/systemui/bubbles/BubbleController;->mHandler:Landroid/os/Handler;

    iput-boolean v5, v1, Lcom/android/systemui/bubbles/BubbleController;->mAddedToWindowManager:Z

    iput-boolean v5, v1, Lcom/android/systemui/bubbles/BubbleController;->mHadTopUi:Z

    iput v5, v1, Lcom/android/systemui/bubbles/BubbleController;->mOrientation:I

    iput v5, v1, Lcom/android/systemui/bubbles/BubbleController;->mDensityDpi:I

    const/4 v6, -0x1

    iput v6, v1, Lcom/android/systemui/bubbles/BubbleController;->mLayoutDirection:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Lcom/android/systemui/bubbles/BubbleController;->mCallbacks:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Lcom/android/systemui/bubbles/BubbleController;->mCacheEntries:Ljava/util/List;

    iput-boolean v5, v1, Lcom/android/systemui/bubbles/BubbleController;->mImeVisible:Z

    new-instance v6, Lcom/android/systemui/bubbles/BubbleController$10;

    invoke-direct {v6, p0}, Lcom/android/systemui/bubbles/BubbleController$10;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    iput-object v6, v1, Lcom/android/systemui/bubbles/BubbleController;->mBubbleDataListener:Lcom/android/systemui/bubbles/BubbleData$Listener;

    iput-boolean v5, v1, Lcom/android/systemui/bubbles/BubbleController;->mIsInBrickMode:Z

    const-string v5, "Bubbles"

    move-object/from16 v6, p15

    invoke-virtual {v6, v5, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    iput-object v2, v1, Lcom/android/systemui/bubbles/BubbleController;->mContext:Landroid/content/Context;

    move-object v5, p4

    iput-object v5, v1, Lcom/android/systemui/bubbles/BubbleController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    move-object v5, p8

    iput-object v5, v1, Lcom/android/systemui/bubbles/BubbleController;->mNotificationInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    move-object/from16 v5, p10

    iput-object v5, v1, Lcom/android/systemui/bubbles/BubbleController;->mNotifUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object v3, v1, Lcom/android/systemui/bubbles/BubbleController;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-object/from16 v5, p16

    iput-object v5, v1, Lcom/android/systemui/bubbles/BubbleController;->mFloatingContentCoordinator:Lcom/android/systemui/util/FloatingContentCoordinator;

    move-object/from16 v5, p17

    iput-object v5, v1, Lcom/android/systemui/bubbles/BubbleController;->mDataRepository:Lcom/android/systemui/bubbles/BubbleDataRepository;

    move-object/from16 v5, p19

    iput-object v5, v1, Lcom/android/systemui/bubbles/BubbleController;->mINotificationManager:Landroid/app/INotificationManager;

    new-instance v5, Lcom/android/systemui/bubbles/BubbleController$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/bubbles/BubbleController$1;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    invoke-interface {v3, v5}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    move-object v3, p7

    invoke-interface {p7, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    move-object/from16 v3, p18

    iput-object v3, v1, Lcom/android/systemui/bubbles/BubbleController;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    iput-object v0, v1, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    iget-object v3, v1, Lcom/android/systemui/bubbles/BubbleController;->mBubbleDataListener:Lcom/android/systemui/bubbles/BubbleData$Listener;

    invoke-virtual {p5, v3}, Lcom/android/systemui/bubbles/BubbleData;->setListener(Lcom/android/systemui/bubbles/BubbleData$Listener;)V

    iget-object v0, v1, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    new-instance v3, Lcom/android/systemui/bubbles/BubbleController$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/bubbles/BubbleController$2;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/bubbles/BubbleData;->setSuppressionChangedListener(Lcom/android/systemui/bubbles/BubbleController$NotificationSuppressionChangedListener;)V

    iget-object v0, v1, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    new-instance v3, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$nWhc82cKJiqwvfEf64TRF3Q5U6g;

    invoke-direct {v3, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$nWhc82cKJiqwvfEf64TRF3Q5U6g;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/bubbles/BubbleData;->setPendingIntentCancelledListener(Lcom/android/systemui/bubbles/BubbleController$PendingIntentCanceledListener;)V

    move-object/from16 v0, p12

    iput-object v0, v1, Lcom/android/systemui/bubbles/BubbleController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-object/from16 v0, p11

    iput-object v0, v1, Lcom/android/systemui/bubbles/BubbleController;->mNotificationGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v0, p13

    iput-object v0, v1, Lcom/android/systemui/bubbles/BubbleController;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual/range {p14 .. p14}, Lcom/android/systemui/statusbar/FeatureFlags;->isNewNotifPipelineRenderingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleController;->setupNEM()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleController;->setupNotifPipeline()V

    :goto_0
    move-object v0, p2

    iput-object v0, v1, Lcom/android/systemui/bubbles/BubbleController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    new-instance v0, Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;-><init>(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/bubbles/BubbleController$1;)V

    iput-object v0, v1, Lcom/android/systemui/bubbles/BubbleController;->mStatusBarStateListener:Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;

    move-object v3, p3

    invoke-interface {p3, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    new-instance v0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;-><init>(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/bubbles/BubbleController$1;)V

    iput-object v0, v1, Lcom/android/systemui/bubbles/BubbleController;->mTaskStackListener:Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v3, v1, Lcom/android/systemui/bubbles/BubbleController;->mTaskStackListener:Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;

    invoke-virtual {v0, v3}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    :try_start_0
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/bubbles/BubbleController$BubblesImeListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/bubbles/BubbleController$BubblesImeListener;-><init>(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/bubbles/BubbleController$1;)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->addPinnedStackListener(Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    move-object v3, p6

    iput-object v3, v1, Lcom/android/systemui/bubbles/BubbleController;->mSurfaceSynchronizer:Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;

    move-object/from16 v3, p21

    iput-object v3, v1, Lcom/android/systemui/bubbles/BubbleController;->mWindowManager:Landroid/view/WindowManager;

    if-nez p20, :cond_1

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    goto :goto_2

    :cond_1
    move-object/from16 v0, p20

    :goto_2
    iput-object v0, v1, Lcom/android/systemui/bubbles/BubbleController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    new-instance v0, Lcom/android/systemui/statusbar/ScrimView;

    iget-object v3, v1, Lcom/android/systemui/bubbles/BubbleController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/systemui/bubbles/BubbleController;->mBubbleScrim:Lcom/android/systemui/statusbar/ScrimView;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, v1, Lcom/android/systemui/bubbles/BubbleController;->mSavedBubbleKeysPerUser:Landroid/util/SparseSetArray;

    iget-object v0, v1, Lcom/android/systemui/bubbles/BubbleController;->mNotifUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v0

    iput v0, v1, Lcom/android/systemui/bubbles/BubbleController;->mCurrentUserId:I

    iget-object v0, v1, Lcom/android/systemui/bubbles/BubbleController;->mNotifUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    new-instance v3, Lcom/android/systemui/bubbles/BubbleController$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/bubbles/BubbleController$3;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->addUserChangedListener(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;)V

    new-instance v0, Lcom/android/systemui/bubbles/BubbleIconFactory;

    invoke-direct {v0, p1}, Lcom/android/systemui/bubbles/BubbleIconFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/systemui/bubbles/BubbleController;->mBubbleIconFactory:Lcom/android/systemui/bubbles/BubbleIconFactory;

    new-instance v0, Lcom/android/systemui/bubbles/BubbleController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/BubbleController$4;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    move-object/from16 v2, p22

    invoke-virtual {v2, v0}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;)V

    const-class v0, Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-virtual {v0, p0}, Lcom/oneplus/scene/OpSceneModeObserver;->addCallback(Lcom/oneplus/scene/OpSceneModeObserver$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotifEntryToExpandOnShadeUnlock:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotifEntryToExpandOnShadeUnlock:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/bubbles/BubbleController;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->onRankingUpdated(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/bubbles/BubbleController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleController;->ensureStackViewCreated()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/bubbles/BubbleController;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mOverflowCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/bubbles/BubbleController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mHadTopUi:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/android/systemui/bubbles/BubbleController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mHadTopUi:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/bubbles/BubbleController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/bubbles/Bubble;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleController;->setIsBubble(Lcom/android/systemui/bubbles/Bubble;Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleDataRepository;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mDataRepository:Lcom/android/systemui/bubbles/BubbleDataRepository;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/bubbles/BubbleController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/bubbles/BubbleController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mImeVisible:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/bubbles/BubbleController;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$602(Lcom/android/systemui/bubbles/BubbleController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/bubbles/BubbleController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->saveBubbles(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/bubbles/BubbleController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->restoreBubbles(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method private addToWindowManagerMaybe()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mAddedToWindowManager:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x7fa

    const v5, 0x1000008

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "Bubbles!"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mAddedToWindowManager:Z

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleController;->updateWmFlags()V

    :cond_1
    :goto_0
    return-void
.end method

.method static canLaunchInActivityView(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const-string v1, "Bubbles"

    const/4 v3, 0x0

    if-nez v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to create bubble -- no intent: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {p0, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, p0, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    const-string v4, "Unable to send as bubble, "

    if-nez p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " couldn\'t find activity info for intent: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    iget p0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {p0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result p0

    if-nez p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " activity is not resizable for intent: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    return v2
.end method

.method private ensureStackViewCreated()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleController;->mSurfaceSynchronizer:Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;

    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleController;->mFloatingContentCoordinator:Lcom/android/systemui/util/FloatingContentCoordinator;

    iget-object v6, p0, Lcom/android/systemui/bubbles/BubbleController;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    new-instance v7, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$9ZgvorygajtGrm7C34N9mjHiRg4;

    invoke-direct {v7, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$9ZgvorygajtGrm7C34N9mjHiRg4;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    new-instance v8, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$n5Txkm3_6gK60tp4RYvQGkCgICc;

    invoke-direct {v8, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$n5Txkm3_6gK60tp4RYvQGkCgICc;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    new-instance v9, Lcom/android/systemui/bubbles/-$$Lambda$jFCV6yHjrilnLmu1dvU8ruP2Llk;

    invoke-direct {v9, p0}, Lcom/android/systemui/bubbles/-$$Lambda$jFCV6yHjrilnLmu1dvU8ruP2Llk;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/bubbles/BubbleStackView;-><init>(Landroid/content/Context;Lcom/android/systemui/bubbles/BubbleData;Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;Lcom/android/systemui/util/FloatingContentCoordinator;Lcom/android/systemui/model/SysUiState;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleScrim:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mExpandListener:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->setExpandListener(Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$QJVf62b5wCS3J_DHWUbuCKTKs3M;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$QJVf62b5wCS3J_DHWUbuCKTKs3M;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->setUnbubbleConversationCallback(Ljava/util/function/Consumer;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleController;->addToWindowManagerMaybe()V

    return-void
.end method

.method private handleSummaryDismissalInterception(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 7

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getAttachedNotifChildren()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/bubbles/BubbleData;->hasAnyBubbleWithKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/systemui/bubbles/BubbleData;->getAnyBubbleWithkey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v3}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getPendingOrActiveNotif(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/bubbles/Bubble;->setSuppressNotification(Z)V

    invoke-virtual {v3, v1}, Lcom/android/systemui/bubbles/Bubble;->setShowDot(Z)V

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleController;->mCallbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/bubbles/BubbleController$NotifCallback;

    const/16 v6, 0xc

    invoke-interface {v5, v3, v6}, Lcom/android/systemui/bubbles/BubbleController$NotifCallback;->removeNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/bubbles/BubbleData;->addSummaryToSuppress(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private isSummaryOfBubbles(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/bubbles/BubbleData;->getBubblesInGroup(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v3, v1}, Lcom/android/systemui/bubbles/BubbleData;->isSummarySuppressed(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0, v1}, Lcom/android/systemui/bubbles/BubbleData;->getSummaryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v4

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p1

    if-nez p0, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    move v0, v4

    :cond_3
    return v0
.end method

.method public static synthetic lambda$9ZgvorygajtGrm7C34N9mjHiRg4(Lcom/android/systemui/bubbles/BubbleController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleController;->onAllBubblesAnimatedOut()V

    return-void
.end method

.method private synthetic lambda$ensureStackViewCreated$2(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getPendingOrActiveNotif(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleController;->onUserChangedBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$inflateAndAdd$7(ZZLcom/android/systemui/bubbles/Bubble;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/systemui/bubbles/BubbleData;->notificationEntryUpdated(Lcom/android/systemui/bubbles/Bubble;ZZ)V

    return-void
.end method

.method private synthetic lambda$loadOverflowBubblesFromDisk$4(Lcom/android/systemui/bubbles/Bubble;Lcom/android/systemui/bubbles/Bubble;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/bubbles/BubbleData;->overflowBubble(ILcom/android/systemui/bubbles/Bubble;)V

    return-void
.end method

.method private synthetic lambda$loadOverflowBubblesFromDisk$5(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleData;->hasAnyBubbleWithKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v2, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$2Y1b47AMtxr-ttMHzCCBd8aAXiw;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$2Y1b47AMtxr-ttMHzCCBd8aAXiw;-><init>(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/bubbles/Bubble;)V

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleIconFactory:Lcom/android/systemui/bubbles/BubbleIconFactory;

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/bubbles/Bubble;->inflate(Lcom/android/systemui/bubbles/BubbleViewInfoTask$Callback;Landroid/content/Context;Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/BubbleIconFactory;Z)V

    return-void
.end method

.method private synthetic lambda$loadOverflowBubblesFromDisk$6(Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$_mg4UF9QSoehsZuSwJtOultVl1U;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$_mg4UF9QSoehsZuSwJtOultVl1U;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$n5Txkm3_6gK60tp4RYvQGkCgICc(Lcom/android/systemui/bubbles/BubbleController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->onImeVisibilityChanged(Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleController;->removeBubble(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getBubbleIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->isIntentActive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->setPendingIntentCanceled()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$itibjTNfFjFc1_LsSQYkBCjv-NQ;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$itibjTNfFjFc1_LsSQYkBCjv-NQ;-><init>(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/bubbles/Bubble;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onBrickModeChanged$8(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->updateBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method private synthetic lambda$setExpandListener$3(Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1, p2, p3}, Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;->onBubbleExpandChanged(ZLjava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleController;->updateWmFlags()V

    return-void
.end method

.method private onAllBubblesAnimatedOut()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleController;->removeFromWindowManagerMaybe()V

    :cond_0
    return-void
.end method

.method private onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;->shouldBubbleUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/bubbles/BubbleController;->canLaunchInActivityView(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->updateBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_0
    return-void
.end method

.method private onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->isSummaryOfBubbles(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/BubbleData;->removeSuppressedSummary(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/bubbles/BubbleData;->getBubblesInGroup(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/bubbles/BubbleController;->removeBubble(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleController;->removeBubble(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;->shouldBubbleUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/bubbles/BubbleController;->canLaunchInActivityView(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/bubbles/BubbleData;->hasAnyBubbleWithKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleController;->removeBubble(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->updateBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private onImeVisibilityChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mImeVisible:Z

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleController;->updateWmFlags()V

    return-void
.end method

.method private onRankingUpdated(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    if-nez v0, :cond_0

    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    aget-object v2, v0, v1

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getPendingOrActiveNotif(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleController;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p1, v2, v4}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v4, v2}, Lcom/android/systemui/bubbles/BubbleData;->hasAnyBubbleWithKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleController;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v4}, Landroid/service/notification/NotificationListenerService$Ranking;->canBubble()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/bubbles/BubbleData;->dismissBubbleWithKey(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleController;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v4}, Landroid/service/notification/NotificationListenerService$Ranking;->isBubble()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setFlagBubble(Z)Z

    invoke-direct {p0, v3}, Lcom/android/systemui/bubbles/BubbleController;->onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private removeFromWindowManagerMaybe()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mAddedToWindowManager:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mAddedToWindowManager:Z

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleScrim:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    goto :goto_0

    :cond_1
    const-string p0, "Bubbles"

    const-string v0, "StackView added to WindowManager, but was null when removing!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private restoreBubbles(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mSavedBubbleKeysPerUser:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationsForCurrentUser()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;->shouldBubbleUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/systemui/bubbles/BubbleController;->canLaunchInActivityView(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/bubbles/BubbleController;->updateBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZ)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mSavedBubbleKeysPerUser:Landroid/util/SparseSetArray;

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mCurrentUserId:I

    invoke-virtual {p1, p0}, Landroid/util/SparseSetArray;->remove(I)V

    return-void
.end method

.method private saveBubbles(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mSavedBubbleKeysPerUser:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/Bubble;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleController;->mSavedBubbleKeysPerUser:Landroid/util/SparseSetArray;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setIsBubble(Lcom/android/systemui/bubbles/Bubble;Z)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/android/systemui/bubbles/Bubble;->setIsBubble(Z)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getPendingOrActiveNotif(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->shouldAutoExpand()Z

    move-result p1

    invoke-direct {p0, v0, p2, p1}, Lcom/android/systemui/bubbles/BubbleController;->setIsBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZ)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/android/systemui/bubbles/BubbleData;->getOrCreateBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/bubbles/Bubble;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->shouldAutoExpand()Z

    move-result p2

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->shouldAutoExpand()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/bubbles/BubbleController;->inflateAndAdd(Lcom/android/systemui/bubbles/Bubble;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setIsBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZ)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, -0x1001

    iput v1, v0, Landroid/app/Notification;->flags:I

    :goto_0
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 v0, 0x3

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2, v0}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationBubbleChanged(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private setupNEM()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    new-instance v1, Lcom/android/systemui/bubbles/BubbleController$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/BubbleController$5;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    new-instance v1, Lcom/android/systemui/bubbles/BubbleController$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/BubbleController$6;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationRemoveInterceptor(Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    new-instance v1, Lcom/android/systemui/bubbles/BubbleController$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/BubbleController$7;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->addOnGroupChangeListener(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;)V

    new-instance v0, Lcom/android/systemui/bubbles/BubbleController$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/BubbleController$8;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleController;->addNotifCallback(Lcom/android/systemui/bubbles/BubbleController$NotifCallback;)V

    return-void
.end method

.method private setupNotifPipeline()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    new-instance v1, Lcom/android/systemui/bubbles/BubbleController$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/BubbleController$9;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    return-void
.end method

.method private updateForThemeChanges()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->onThemeChanged()V

    :cond_0
    new-instance v0, Lcom/android/systemui/bubbles/BubbleIconFactory;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/bubbles/BubbleIconFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleIconFactory:Lcom/android/systemui/bubbles/BubbleIconFactory;

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/bubbles/Bubble;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v6, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleIconFactory:Lcom/android/systemui/bubbles/BubbleIconFactory;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/bubbles/Bubble;->inflate(Lcom/android/systemui/bubbles/BubbleViewInfoTask$Callback;Landroid/content/Context;Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/BubbleIconFactory;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleData;->getOverflowBubbles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/bubbles/Bubble;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v6, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleIconFactory:Lcom/android/systemui/bubbles/BubbleIconFactory;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/bubbles/Bubble;->inflate(Lcom/android/systemui/bubbles/BubbleViewInfoTask$Callback;Landroid/content/Context;Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/BubbleIconFactory;Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private updateWmFlags()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleController;->isStackExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mImeVisible:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mAddedToWindowManager:Z

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addNotifCallback(Lcom/android/systemui/bubbles/BubbleController$NotifCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public collapseStack()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "BubbleController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/bubbles/BubbleData;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/bubbles/BubbleStackView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public expandStackAndSelectBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStatusBarStateListener:Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotifEntryToExpandOnShadeUnlock:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v1, v0}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p1, v1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubble(Lcom/android/systemui/bubbles/Bubble;)V

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0, v2}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v1, v0}, Lcom/android/systemui/bubbles/BubbleData;->getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleController;->promoteBubbleFromOverflow(Lcom/android/systemui/bubbles/Bubble;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->canBubble()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, v2, v2}, Lcom/android/systemui/bubbles/BubbleController;->setIsBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZ)V

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotifEntryToExpandOnShadeUnlock:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    :cond_3
    :goto_0
    return-void
.end method

.method public getExpandedDisplayId(Landroid/content/Context;)I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->getExpandedBubble()Lcom/android/systemui/bubbles/BubbleViewProvider;

    move-result-object v0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleController;->isStackExpanded()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->getPanelExpanded()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {v0}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getDisplayId()I

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method getOverflowBubbles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->getOverflowBubbles()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getScrimForBubble()Lcom/android/systemui/statusbar/ScrimView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleScrim:Lcom/android/systemui/statusbar/ScrimView;

    return-object p0
.end method

.method getStackView()Lcom/android/systemui/bubbles/BubbleStackView;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    return-object p0
.end method

.method public handleDismissalInterception(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->isSummaryOfBubbles(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->handleSummaryDismissalInterception(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/systemui/bubbles/BubbleData;->getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    return v0

    :cond_4
    invoke-virtual {v1, v2}, Lcom/android/systemui/bubbles/Bubble;->setSuppressNotification(Z)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/bubbles/Bubble;->setShowDot(Z)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/bubbles/BubbleController$NotifCallback;

    const-string v0, "BubbleController.handleDismissalInterception"

    invoke-interface {p1, v0}, Lcom/android/systemui/bubbles/BubbleController$NotifCallback;->invalidateNotifications(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return v2
.end method

.method hasBubbles()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->hasBubbles()Z

    move-result p0

    return p0
.end method

.method public hideCurrentInputMethod()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->hideCurrentInputMethodForBubbles()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method inLandscape()Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mOrientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method inflateAndAdd(Lcom/android/systemui/bubbles/Bubble;ZZ)V
    .locals 7

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleController;->ensureStackViewCreated()V

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mInflateSynchronously:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/bubbles/Bubble;->setInflateSynchronously(Z)V

    new-instance v2, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$kBf4keAqVIQRxl9SNI0prTDdem4;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$kBf4keAqVIQRxl9SNI0prTDdem4;-><init>(Lcom/android/systemui/bubbles/BubbleController;ZZ)V

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleIconFactory:Lcom/android/systemui/bubbles/BubbleIconFactory;

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/bubbles/Bubble;->inflate(Lcom/android/systemui/bubbles/BubbleViewInfoTask$Callback;Landroid/content/Context;Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/BubbleIconFactory;Z)V

    return-void
.end method

.method public isBubbleExpanded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleController;->isStackExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleData;->getSelectedBubble()Lcom/android/systemui/bubbles/Bubble;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->getSelectedBubble()Lcom/android/systemui/bubbles/Bubble;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBubbleNotificationSuppressedFromShade(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v1, v0}, Lcom/android/systemui/bubbles/BubbleData;->hasAnyBubbleWithKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v1, v0}, Lcom/android/systemui/bubbles/BubbleData;->getAnyBubbleWithkey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->showInShade()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v4, p1}, Lcom/android/systemui/bubbles/BubbleData;->isSummarySuppressed(Ljava/lang/String;)Z

    move-result v4

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->getSummaryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez v4, :cond_3

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :cond_3
    :goto_1
    return v2
.end method

.method public isStackExpanded()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$ensureStackViewCreated$2$BubbleController(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->lambda$ensureStackViewCreated$2(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$inflateAndAdd$7$BubbleController(ZZLcom/android/systemui/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/bubbles/BubbleController;->lambda$inflateAndAdd$7(ZZLcom/android/systemui/bubbles/Bubble;)V

    return-void
.end method

.method public synthetic lambda$loadOverflowBubblesFromDisk$4$BubbleController(Lcom/android/systemui/bubbles/Bubble;Lcom/android/systemui/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleController;->lambda$loadOverflowBubblesFromDisk$4(Lcom/android/systemui/bubbles/Bubble;Lcom/android/systemui/bubbles/Bubble;)V

    return-void
.end method

.method public synthetic lambda$loadOverflowBubblesFromDisk$5$BubbleController(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->lambda$loadOverflowBubblesFromDisk$5(Lcom/android/systemui/bubbles/Bubble;)V

    return-void
.end method

.method public synthetic lambda$loadOverflowBubblesFromDisk$6$BubbleController(Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->lambda$loadOverflowBubblesFromDisk$6(Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$0$BubbleController(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->lambda$new$0(Lcom/android/systemui/bubbles/Bubble;)V

    return-void
.end method

.method public synthetic lambda$new$1$BubbleController(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->lambda$new$1(Lcom/android/systemui/bubbles/Bubble;)V

    return-void
.end method

.method public synthetic lambda$onBrickModeChanged$8$BubbleController(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->lambda$onBrickModeChanged$8(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public synthetic lambda$setExpandListener$3$BubbleController(Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/bubbles/BubbleController;->lambda$setExpandListener$3(Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;ZLjava/lang/String;)V

    return-void
.end method

.method loadOverflowBubblesFromDisk()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleData;->getOverflowBubbles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mOverflowDataLoaded:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mOverflowDataLoaded:Z

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mDataRepository:Lcom/android/systemui/bubbles/BubbleDataRepository;

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$DOCWkNShFlaO6cGprPyPx98P4oE;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$DOCWkNShFlaO6cGprPyPx98P4oE;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleDataRepository;->loadBubbles(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Job;

    :cond_1
    :goto_0
    return-void
.end method

.method public onBrickModeChanged()V
    .locals 2

    const-class v0, Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-virtual {v0}, Lcom/oneplus/scene/OpSceneModeObserver;->isInBrickMode()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mIsInBrickMode:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mIsInBrickMode:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBrickModeChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mIsInBrickMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bubbles"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mIsInBrickMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mCacheEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mCacheEntries:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$l3FpaLM-dXpIARU0UhlMpBxDEL4;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$l3FpaLM-dXpIARU0UhlMpBxDEL4;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mCacheEntries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleController;->mOrientation:I

    if-eq v1, v2, :cond_0

    iput v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->onOrientationChanged(I)V

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mDensityDpi:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mDensityDpi:I

    new-instance v0, Lcom/android/systemui/bubbles/BubbleIconFactory;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/bubbles/BubbleIconFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleIconFactory:Lcom/android/systemui/bubbles/BubbleIconFactory;

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->onDisplaySizeChanged()V

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mLayoutDirection:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mLayoutDirection:I

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->onLayoutDirectionChanged(I)V

    :cond_2
    return-void
.end method

.method public onOverlayChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleController;->updateForThemeChanges()V

    return-void
.end method

.method public onStatusBarVisibilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleController;->isStackExpanded()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/bubbles/BubbleStackView;->setTemporarilyInvisible(Z)V

    :cond_1
    return-void
.end method

.method public onUiModeChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleController;->updateForThemeChanges()V

    return-void
.end method

.method public onUserChangedBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v2

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x3

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, p2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationBubbleChanged(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleController;->mINotificationManager:Landroid/app/INotificationManager;

    invoke-static {v3, v4, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationChannelHelper;->createConversationChannelIfNeeded(Landroid/content/Context;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/NotificationChannel;)Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleController;->mINotificationManager:Landroid/app/INotificationManager;

    invoke-interface {v3, v1, v2}, Landroid/app/INotificationManager;->getBubblePreferenceForPackage(Ljava/lang/String;I)I

    move-result v3

    if-eqz p2, :cond_1

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleController;->mINotificationManager:Landroid/app/INotificationManager;

    const/4 v4, 0x2

    invoke-interface {v3, v1, v2, v4}, Landroid/app/INotificationManager;->setBubblesAllowed(Ljava/lang/String;II)V

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleController;->mINotificationManager:Landroid/app/INotificationManager;

    invoke-interface {v3, v1, v2, v0}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bubbles"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    const/4 p2, 0x1

    invoke-interface {p0, p2}, Lcom/android/systemui/statusbar/phone/ShadeController;->collapsePanel(Z)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateBubbleButton()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onUserChangedImportance(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1, v0}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationBubbleChanged(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Bubbles"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0, v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->collapsePanel(Z)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateBubbleButton()V

    :cond_0
    return-void
.end method

.method public performBackPressIfNeeded()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->performBackPressIfNeeded()Z

    :cond_0
    return-void
.end method

.method promoteBubbleFromOverflow(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mLogger:Lcom/android/systemui/bubbles/BubbleLogger;

    sget-object v1, Lcom/android/systemui/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_BACK_TO_STACK:Lcom/android/systemui/bubbles/BubbleLogger$Event;

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/bubbles/BubbleLogger;->log(Lcom/android/systemui/bubbles/Bubble;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mInflateSynchronously:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/bubbles/Bubble;->setInflateSynchronously(Z)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/bubbles/Bubble;->setShouldAutoExpand(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/bubbles/Bubble;->markAsAccessedAt(J)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleController;->setIsBubble(Lcom/android/systemui/bubbles/Bubble;Z)V

    return-void
.end method

.method removeBubble(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/BubbleData;->hasAnyBubbleWithKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleData;->dismissBubbleWithKey(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setExpandListener(Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$0VC4vw4gvzIdDv19h0ZrywF_riU;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$0VC4vw4gvzIdDv19h0ZrywF_riU;-><init>(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mExpandListener:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->setExpandListener(Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;)V

    :cond_0
    return-void
.end method

.method setInflateSynchronously(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mInflateSynchronously:Z

    return-void
.end method

.method setOverflowCallback(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mOverflowCallback:Ljava/lang/Runnable;

    return-void
.end method

.method updateBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mIsInBrickMode:Z

    if-eqz v0, :cond_0

    const-string v0, "Bubbles"

    const-string/jumbo v1, "updateBubble cache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mCacheEntries:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/bubbles/BubbleController;->updateBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZ)V

    return-void
.end method

.method updateBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZ)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setInterruption()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/bubbles/BubbleData;->getOrCreateBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/bubbles/Bubble;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/bubbles/BubbleController;->inflateAndAdd(Lcom/android/systemui/bubbles/Bubble;ZZ)V

    return-void
.end method

.method public updateStack()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStatusBarStateListener:Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;->getCurrentState()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleController;->hasBubbles()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateContentDescription()V

    return-void
.end method
