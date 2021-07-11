.class public Lcom/android/systemui/stackdivider/Divider;
.super Lcom/android/systemui/SystemUI;
.source "Divider.java"

# interfaces
.implements Lcom/android/systemui/stackdivider/DividerView$DividerCallbacks;
.implements Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;


# static fields
.field static final DEBUG:Z


# instance fields
.field private mActivityRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private mAdjustedForIme:Z

.field private mDisplayController:Lcom/android/systemui/wm/DisplayController;

.field private final mDividerState:Lcom/android/systemui/stackdivider/DividerState;

.field private final mDockedStackExistsListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

.field private mHandler:Landroid/os/Handler;

.field private mHomeStackResizable:Z

.field private mImeController:Lcom/android/systemui/wm/DisplayImeController;

.field private final mImePositionProcessor:Lcom/android/systemui/stackdivider/DividerImeController;

.field private mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private mMinimized:Z

.field private final mRecentsOptionalLazy:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/recents/Recents;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRotateSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

.field private mRotationController:Lcom/android/systemui/wm/DisplayChangeController$OnDisplayChangingListener;

.field private mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

.field private mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

.field private mSystemWindows:Lcom/android/systemui/wm/SystemWindows;

.field final mTransactionPool:Lcom/android/systemui/TransactionPool;

.field private mView:Lcom/android/systemui/stackdivider/DividerView;

.field private mVisible:Z

.field private mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

.field private mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/stackdivider/Divider;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Optional;Lcom/android/systemui/wm/DisplayController;Lcom/android/systemui/wm/SystemWindows;Lcom/android/systemui/wm/DisplayImeController;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/TransactionPool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/recents/Recents;",
            ">;>;",
            "Lcom/android/systemui/wm/DisplayController;",
            "Lcom/android/systemui/wm/SystemWindows;",
            "Lcom/android/systemui/wm/DisplayImeController;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/TransactionPool;",
            ")V"
        }
    .end annotation

    .line 185
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    .line 85
    new-instance v0, Lcom/android/systemui/stackdivider/DividerState;

    invoke-direct {v0}, Lcom/android/systemui/stackdivider/DividerState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerState:Lcom/android/systemui/stackdivider/DividerState;

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDockedStackExistsListeners:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;-><init>(Lcom/android/systemui/stackdivider/Divider;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    .line 114
    new-instance v0, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$0WHTGcDpweqOnqzkpJAQb7brKYs;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$0WHTGcDpweqOnqzkpJAQb7brKYs;-><init>(Lcom/android/systemui/stackdivider/Divider;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mRotationController:Lcom/android/systemui/wm/DisplayChangeController$OnDisplayChangingListener;

    .line 166
    new-instance v0, Lcom/android/systemui/stackdivider/Divider$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/Divider$1;-><init>(Lcom/android/systemui/stackdivider/Divider;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mActivityRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 186
    iput-object p3, p0, Lcom/android/systemui/stackdivider/Divider;->mDisplayController:Lcom/android/systemui/wm/DisplayController;

    .line 187
    iput-object p4, p0, Lcom/android/systemui/stackdivider/Divider;->mSystemWindows:Lcom/android/systemui/wm/SystemWindows;

    .line 188
    iput-object p5, p0, Lcom/android/systemui/stackdivider/Divider;->mImeController:Lcom/android/systemui/wm/DisplayImeController;

    .line 189
    iput-object p6, p0, Lcom/android/systemui/stackdivider/Divider;->mHandler:Landroid/os/Handler;

    .line 190
    iput-object p7, p0, Lcom/android/systemui/stackdivider/Divider;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 191
    iput-object p2, p0, Lcom/android/systemui/stackdivider/Divider;->mRecentsOptionalLazy:Ljava/util/Optional;

    .line 192
    new-instance p2, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;-><init>(Landroid/content/Context;Lcom/android/systemui/stackdivider/Divider;)V

    iput-object p2, p0, Lcom/android/systemui/stackdivider/Divider;->mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    .line 193
    iput-object p8, p0, Lcom/android/systemui/stackdivider/Divider;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    .line 194
    new-instance p1, Lcom/android/systemui/stackdivider/WindowManagerProxy;

    iget-object p2, p0, Lcom/android/systemui/stackdivider/Divider;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    iget-object p3, p0, Lcom/android/systemui/stackdivider/Divider;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p2, p3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;-><init>(Lcom/android/systemui/TransactionPool;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 195
    new-instance p1, Lcom/android/systemui/stackdivider/DividerImeController;

    iget-object p2, p0, Lcom/android/systemui/stackdivider/Divider;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object p3, p0, Lcom/android/systemui/stackdivider/Divider;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    iget-object p4, p0, Lcom/android/systemui/stackdivider/Divider;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p2, p3, p4}, Lcom/android/systemui/stackdivider/DividerImeController;-><init>(Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;Lcom/android/systemui/TransactionPool;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider;->mImePositionProcessor:Lcom/android/systemui/stackdivider/DividerImeController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->isSplitActive()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerImeController;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mImePositionProcessor:Lcom/android/systemui/stackdivider/DividerImeController;

    return-object p0
.end method

.method private addDivider(Landroid/content/res/Configuration;)V
    .locals 12

    .line 335
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDisplayController:Lcom/android/systemui/wm/DisplayController;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wm/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v0

    .line 337
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->docked_stack_divider:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/DividerView;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    .line 338
    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mDisplayController:Lcom/android/systemui/wm/DisplayController;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/wm/DisplayController;->getDisplayLayout(I)Lcom/android/systemui/wm/DisplayLayout;

    move-result-object v1

    .line 339
    iget-object v4, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerState:Lcom/android/systemui/stackdivider/DividerState;

    iget-object v8, p0, Lcom/android/systemui/stackdivider/Divider;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/Divider;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iget-object v10, p0, Lcom/android/systemui/stackdivider/Divider;->mImePositionProcessor:Lcom/android/systemui/stackdivider/DividerImeController;

    iget-object v11, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object v7, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/systemui/stackdivider/DividerView;->injectDependencies(Lcom/android/systemui/stackdivider/DividerWindowManager;Lcom/android/systemui/stackdivider/DividerState;Lcom/android/systemui/stackdivider/DividerView$DividerCallbacks;Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;Lcom/android/systemui/stackdivider/SplitDisplayLayout;Lcom/android/systemui/stackdivider/DividerImeController;Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    .line 341
    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 342
    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    iget-boolean v6, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    invoke-virtual {v2, v4, v6, v3}, Lcom/android/systemui/stackdivider/DividerView;->setMinimizedDockStack(ZZLandroid/view/SurfaceControl$Transaction;)V

    .line 343
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1050117

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 345
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const/4 v5, 0x1

    :cond_1
    if-eqz v5, :cond_2

    move p1, v0

    goto :goto_1

    .line 346
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/wm/DisplayLayout;->width()I

    move-result p1

    :goto_1
    if-eqz v5, :cond_3

    .line 347
    invoke-virtual {v1}, Lcom/android/systemui/wm/DisplayLayout;->height()I

    move-result v0

    .line 348
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-virtual {v1, v2, p1, v0, p0}, Lcom/android/systemui/stackdivider/DividerWindowManager;->add(Landroid/view/View;III)V

    return-void
.end method

.method private isSplitActive()Z
    .locals 1

    .line 329
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_1

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-nez v0, :cond_0

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$JQC7s2DcACmP1thtllRZ30N2PIw(Lcom/android/systemui/stackdivider/Divider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->removeDivider()V

    return-void
.end method

.method static synthetic lambda$growRecents$5(Ldagger/Lazy;)V
    .locals 0

    .line 533
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/recents/Recents;

    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->growRecents()V

    return-void
.end method

.method private synthetic lambda$new$0(IIILandroid/window/WindowContainerTransaction;)V
    .locals 4

    .line 116
    iget-object p2, p0, Lcom/android/systemui/stackdivider/Divider;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    invoke-virtual {p2}, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->isSplitScreenSupported()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 121
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    const-string v0, "Divider"

    if-nez p2, :cond_1

    const-string p0, "mView is null"

    .line 122
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 127
    :cond_1
    new-instance p2, Landroid/window/WindowContainerTransaction;

    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 128
    new-instance v1, Lcom/android/systemui/wm/DisplayLayout;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mDisplayController:Lcom/android/systemui/wm/DisplayController;

    .line 129
    invoke-virtual {v2, p1}, Lcom/android/systemui/wm/DisplayController;->getDisplayLayout(I)Lcom/android/systemui/wm/DisplayLayout;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/systemui/wm/DisplayLayout;-><init>(Lcom/android/systemui/wm/DisplayLayout;)V

    .line 130
    new-instance p1, Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/Divider;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    invoke-direct {p1, v2, v1, v3}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;-><init>(Landroid/content/Context;Lcom/android/systemui/wm/DisplayLayout;Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;)V

    .line 131
    invoke-virtual {p1, p3}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->rotateTo(I)V

    .line 132
    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider;->mRotateSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->isDividerVisible()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 134
    iget-boolean p3, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-object p3, p3, Lcom/android/systemui/stackdivider/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget p3, p3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p3

    iget p3, p3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_0

    .line 142
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p3

    iget p3, p3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 143
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    .line 145
    invoke-virtual {v1, p3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p3

    .line 146
    iget p3, p3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-virtual {p1, p3, p2}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->resizeSplits(ILandroid/window/WindowContainerTransaction;)V

    .line 148
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->isSplitActive()Z

    move-result p3

    if-eqz p3, :cond_4

    iget-boolean p3, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    if-eqz p3, :cond_4

    .line 149
    iget-object p3, p0, Lcom/android/systemui/stackdivider/Divider;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object p3, p3, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-static {p1, p3, p2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->applyHomeTasksMinimized(Lcom/android/systemui/stackdivider/SplitDisplayLayout;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;)Z

    .line 151
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {p0, p2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->queueSyncTransactionIfWaiting(Landroid/window/WindowContainerTransaction;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "Screen rotated while other operations were pending, this may result in some graphical artifacts."

    .line 157
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const/4 p0, 0x1

    .line 160
    invoke-virtual {p4, p2, p0}, Landroid/window/WindowContainerTransaction;->merge(Landroid/window/WindowContainerTransaction;Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method private synthetic lambda$setMinimized$4(Z)V
    .locals 2

    .line 408
    sget-boolean v0, Lcom/android/systemui/stackdivider/Divider;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run posted ext setMinimized "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " vis:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Divider"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    if-nez v0, :cond_1

    return-void

    .line 412
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/stackdivider/Divider;->setHomeMinimized(ZZ)V

    return-void
.end method

.method private synthetic lambda$updateVisibility$1(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->setMinimizedDockStack(ZZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private synthetic lambda$updateVisibility$2(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->setMinimizedDockStack(ZZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method static synthetic lambda$updateVisibility$3(ZLjava/lang/ref/WeakReference;)Z
    .locals 0

    .line 396
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Consumer;

    if-eqz p1, :cond_0

    .line 397
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private removeDivider()V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->onDividerRemoved()V

    .line 355
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerWindowManager;->remove()V

    return-void
.end method

.method private setHomeMinimized(ZZ)V
    .locals 6

    .line 417
    sget-boolean v0, Lcom/android/systemui/stackdivider/Divider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHomeMinimized  min:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " hrsz:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " split:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->isDividerVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Divider"

    .line 418
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 423
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, p1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    .line 426
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    .line 429
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/stackdivider/Divider;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v4, v4, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-boolean v5, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    xor-int/2addr v5, v2

    invoke-virtual {v0, v4, v5}, Landroid/window/WindowContainerTransaction;->setFocusable(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 433
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    if-eq v4, p2, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    if-eqz v4, :cond_4

    .line 435
    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    .line 436
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->isDividerVisible()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 437
    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/Divider;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v5, v5, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-static {v2, v5, v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->applyHomeTasksMinimized(Lcom/android/systemui/stackdivider/SplitDisplayLayout;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;)Z

    move v2, v3

    .line 444
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz v5, :cond_9

    .line 445
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 446
    iget-object v3, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    .line 448
    :cond_5
    iget-boolean v5, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    if-eqz v5, :cond_6

    .line 449
    iget-object v5, p0, Lcom/android/systemui/stackdivider/Divider;->mImePositionProcessor:Lcom/android/systemui/stackdivider/DividerImeController;

    invoke-virtual {v5, v3}, Lcom/android/systemui/stackdivider/DividerImeController;->pause(I)V

    :cond_6
    if-nez v1, :cond_7

    if-eqz v4, :cond_8

    .line 453
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->getAnimDuration()J

    move-result-wide v4

    invoke-virtual {v1, p1, v4, v5, p2}, Lcom/android/systemui/stackdivider/DividerView;->setMinimizedDockStack(ZJZ)V

    .line 455
    :cond_8
    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    if-nez p1, :cond_9

    .line 457
    iget-object p1, p0, Lcom/android/systemui/stackdivider/Divider;->mImePositionProcessor:Lcom/android/systemui/stackdivider/DividerImeController;

    invoke-virtual {p1, v3}, Lcom/android/systemui/stackdivider/DividerImeController;->resume(I)V

    .line 460
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->updateTouchable()V

    if-eqz v2, :cond_a

    .line 464
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->getWmProxy()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->queueSyncTransactionIfWaiting(Landroid/window/WindowContainerTransaction;)Z

    move-result p0

    if-nez p0, :cond_b

    .line 465
    invoke-static {v0}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    goto :goto_2

    .line 468
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->applySyncTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_b
    :goto_2
    return-void
.end method

.method private update(Landroid/content/res/Configuration;)V
    .locals 4

    .line 359
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 360
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update, isDividerHidden:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", stack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Divider"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->removeDivider()V

    .line 363
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->addDivider(Landroid/content/res/Configuration;)V

    .line 365
    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    if-eqz p1, :cond_1

    .line 366
    iget-object p1, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/systemui/stackdivider/DividerView;->setMinimizedDockStack(ZZLandroid/view/SurfaceControl$Transaction;)V

    .line 367
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->updateTouchable()V

    .line 369
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->setHidden(Z)V

    return-void
.end method

.method private updateTouchable()V
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setTouchable(Z)V

    return-void
.end method

.method private updateVisibility(Z)V
    .locals 2

    .line 377
    sget-boolean v0, Lcom/android/systemui/stackdivider/Divider;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating visibility "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Divider"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    if-eq v0, p1, :cond_3

    .line 379
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    .line 380
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 383
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->enterSplitMode(Z)V

    .line 385
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    new-instance v1, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$PFK1wU0r4FZbucBwkJAZvajxzCU;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$PFK1wU0r4FZbucBwkJAZvajxzCU;-><init>(Lcom/android/systemui/stackdivider/Divider;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->runInSync(Lcom/android/systemui/stackdivider/SyncTransactionQueue$TransactionRunnable;)V

    goto :goto_1

    .line 389
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->exitSplitMode()V

    .line 390
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    new-instance v1, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$VIerqJCgwVozy2YX14uply8NzWc;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$VIerqJCgwVozy2YX14uply8NzWc;-><init>(Lcom/android/systemui/stackdivider/Divider;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->runInSync(Lcom/android/systemui/stackdivider/SyncTransactionQueue$TransactionRunnable;)V

    .line 394
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDockedStackExistsListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 395
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mDockedStackExistsListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$fg71CWqbbHGuQEcI_sx-8tNWcJg;

    invoke-direct {v1, p1}, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$fg71CWqbbHGuQEcI_sx-8tNWcJg;-><init>(Z)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 400
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "  mVisible="

    .line 538
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mMinimized="

    .line 539
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mAdjustedForIme="

    .line 540
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method ensureMinimizedSplit()V
    .locals 3

    .line 577
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/stackdivider/Divider;->setHomeMinimized(ZZ)V

    .line 578
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->isDividerVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 580
    sget-boolean v0, Lcom/android/systemui/stackdivider/Divider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Divider"

    const-string v2, " entering split mode with minimized=true"

    .line 581
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/stackdivider/Divider;->updateVisibility(Z)V

    :cond_1
    return-void
.end method

.method ensureNormalSplit()V
    .locals 2

    .line 588
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/stackdivider/Divider;->setHomeMinimized(ZZ)V

    .line 589
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->isDividerVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 591
    sget-boolean v0, Lcom/android/systemui/stackdivider/Divider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Divider"

    const-string v1, " enter split mode unminimized "

    .line 592
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 594
    invoke-direct {p0, v0}, Lcom/android/systemui/stackdivider/Divider;->updateVisibility(Z)V

    :cond_1
    return-void
.end method

.method getAnimDuration()J
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 546
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x105009a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    const-string/jumbo v1, "transition_animation_scale"

    .line 544
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    const/high16 v0, 0x43a80000    # 336.0f

    mul-float/2addr p0, v0

    float-to-long v0, p0

    return-wide v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getSecondaryRoot()Landroid/window/WindowContainerToken;
    .locals 0

    .line 608
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez p0, :cond_0

    goto :goto_0

    .line 611
    :cond_0
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method getSplitLayout()Lcom/android/systemui/stackdivider/SplitDisplayLayout;
    .locals 0

    .line 599
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    return-object p0
.end method

.method public getView()Lcom/android/systemui/stackdivider/DividerView;
    .locals 0

    .line 307
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    return-object p0
.end method

.method getWmProxy()Lcom/android/systemui/stackdivider/WindowManagerProxy;
    .locals 0

    .line 603
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    return-object p0
.end method

.method public growRecents()V
    .locals 1

    .line 533
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mRecentsOptionalLazy:Ljava/util/Optional;

    sget-object v0, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$kUReJvdE1s1BPD9HklZ-GjPX7dM;->INSTANCE:Lcom/android/systemui/stackdivider/-$$Lambda$Divider$kUReJvdE1s1BPD9HklZ-GjPX7dM;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public isDividerVisible()Z
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHomeStackResizable()Z
    .locals 0

    .line 315
    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    return p0
.end method

.method public isMinimized()Z
    .locals 0

    .line 311
    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    return p0
.end method

.method public synthetic lambda$new$0$Divider(IIILandroid/window/WindowContainerTransaction;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/stackdivider/Divider;->lambda$new$0(IIILandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public synthetic lambda$setMinimized$4$Divider(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->lambda$setMinimized$4(Z)V

    return-void
.end method

.method public synthetic lambda$updateVisibility$1$Divider(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->lambda$updateVisibility$1(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public synthetic lambda$updateVisibility$2$Divider(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->lambda$updateVisibility$2(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public onAppTransitionFinished()V
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-nez v0, :cond_0

    return-void

    .line 518
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->onAppTransitionFinished()V

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 3

    if-eqz p1, :cond_0

    return-void

    .line 241
    :cond_0
    new-instance v0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mDisplayController:Lcom/android/systemui/wm/DisplayController;

    invoke-virtual {v1, p1}, Lcom/android/systemui/wm/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mDisplayController:Lcom/android/systemui/wm/DisplayController;

    .line 242
    invoke-virtual {v2, p1}, Lcom/android/systemui/wm/DisplayController;->getDisplayLayout(I)Lcom/android/systemui/wm/DisplayLayout;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;-><init>(Landroid/content/Context;Lcom/android/systemui/wm/DisplayLayout;Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    .line 243
    iget-object p1, p0, Lcom/android/systemui/stackdivider/Divider;->mImeController:Lcom/android/systemui/wm/DisplayImeController;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mImePositionProcessor:Lcom/android/systemui/stackdivider/DividerImeController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/wm/DisplayImeController;->addPositionProcessor(Lcom/android/systemui/wm/DisplayImeController$ImePositionProcessor;)V

    .line 244
    iget-object p1, p0, Lcom/android/systemui/stackdivider/Divider;->mDisplayController:Lcom/android/systemui/wm/DisplayController;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mRotationController:Lcom/android/systemui/wm/DisplayChangeController$OnDisplayChangingListener;

    invoke-virtual {p1, v0}, Lcom/android/systemui/wm/DisplayController;->addDisplayChangingController(Lcom/android/systemui/wm/DisplayChangeController$OnDisplayChangingListener;)V

    .line 245
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/ActivityTaskManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 246
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->removeDivider()V

    return-void

    .line 250
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/stackdivider/Divider;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->init()V

    .line 252
    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 254
    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->resizeSplits(ILandroid/window/WindowContainerTransaction;)V

    .line 255
    invoke-static {p1}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mActivityRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Divider"

    const-string v1, "Failed to register docked stack listener"

    .line 257
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->removeDivider()V

    return-void
.end method

.method public onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 4

    .line 266
    sget-boolean v0, Lcom/android/systemui/stackdivider/Divider;->DEBUG:Z

    const-string v1, ", mSplits.isSplitScreenSupported():"

    const-string v2, "Divider"

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisplayConfigurationChanged, displayId:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/Divider;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    .line 269
    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->isSplitScreenSupported()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isSplitActive():"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->isSplitActive()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mSplits.mPrimary.topActivityType:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/Divider;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v3, v3, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mSplits.mSecondary.topActivityType:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/Divider;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v3, v3, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", stack: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    .line 273
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_6

    .line 275
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->isSplitScreenSupported()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 279
    :cond_1
    new-instance v0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mDisplayController:Lcom/android/systemui/wm/DisplayController;

    invoke-virtual {v1, p1}, Lcom/android/systemui/wm/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mDisplayController:Lcom/android/systemui/wm/DisplayController;

    .line 280
    invoke-virtual {v2, p1}, Lcom/android/systemui/wm/DisplayController;->getDisplayLayout(I)Lcom/android/systemui/wm/DisplayLayout;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;-><init>(Landroid/content/Context;Lcom/android/systemui/wm/DisplayLayout;Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    .line 281
    iget-object p1, p0, Lcom/android/systemui/stackdivider/Divider;->mRotateSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    if-nez p1, :cond_3

    .line 282
    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 283
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 285
    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz v1, :cond_2

    .line 286
    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerView;->onDockedFirstAnimationFrame()V

    .line 289
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->resizeSplits(ILandroid/window/WindowContainerTransaction;)V

    .line 290
    invoke-static {v0}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    goto :goto_0

    .line 291
    :cond_3
    iget-object p1, v0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {p1}, Lcom/android/systemui/wm/DisplayLayout;->rotation()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mRotateSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iget-object v0, v0, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    .line 292
    invoke-virtual {v0}, Lcom/android/systemui/wm/DisplayLayout;->rotation()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 293
    iget-object p1, p0, Lcom/android/systemui/stackdivider/Divider;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mRotateSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iget-object v1, v1, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p1, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    .line 294
    iget-object p1, p0, Lcom/android/systemui/stackdivider/Divider;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mRotateSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    iget-object v1, v1, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p1, Lcom/android/systemui/stackdivider/SplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 295
    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider;->mRotateSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    .line 297
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->isSplitActive()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 298
    invoke-direct {p0, p2}, Lcom/android/systemui/stackdivider/Divider;->update(Landroid/content/res/Configuration;)V

    :cond_5
    return-void

    .line 276
    :cond_6
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDisplayConfigurationChanged return, displayId:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->isSplitScreenSupported()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDockedFirstAnimationFrame()V
    .locals 0

    .line 503
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz p0, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->onDockedFirstAnimationFrame()V

    :cond_0
    return-void
.end method

.method public onDockedTopTask()V
    .locals 0

    .line 509
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz p0, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->onDockedTopTask()V

    :cond_0
    return-void
.end method

.method public onDraggingEnd()V
    .locals 0

    .line 528
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->onDraggingEnd()V

    return-void
.end method

.method public onDraggingStart()V
    .locals 0

    .line 523
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->onDraggingStart()V

    return-void
.end method

.method public onRecentsDrawn()V
    .locals 0

    .line 491
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz p0, :cond_0

    .line 492
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->onRecentsDrawn()V

    :cond_0
    return-void
.end method

.method onTaskVanished()V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$JQC7s2DcACmP1thtllRZ30N2PIw;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$JQC7s2DcACmP1thtllRZ30N2PIw;-><init>(Lcom/android/systemui/stackdivider/Divider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUndockingTask()V
    .locals 0

    .line 497
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz p0, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->onUndockingTask()V

    :cond_0
    return-void
.end method

.method public registerInSplitScreenListener(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 555
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->isDividerVisible()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 556
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDockedStackExistsListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 557
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mDockedStackExistsListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method setAdjustedForIme(Z)V
    .locals 1

    .line 473
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 476
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    .line 477
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->updateTouchable()V

    return-void
.end method

.method public setMinimized(Z)V
    .locals 2

    .line 406
    sget-boolean v0, Lcom/android/systemui/stackdivider/Divider;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "posting ext setMinimized "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " vis:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Divider"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$qaeq-4YZm8Jheg2TUOpTbHIkGx8;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$qaeq-4YZm8Jheg2TUOpTbHIkGx8;-><init>(Lcom/android/systemui/stackdivider/Divider;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public start()V
    .locals 2

    .line 200
    new-instance v0, Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mSystemWindows:Lcom/android/systemui/wm/SystemWindows;

    invoke-direct {v0, v1}, Lcom/android/systemui/stackdivider/DividerWindowManager;-><init>(Lcom/android/systemui/wm/SystemWindows;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    .line 201
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDisplayController:Lcom/android/systemui/wm/DisplayController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/wm/DisplayController;->addDisplayWindowListener(Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;)V

    .line 206
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/Divider$2;-><init>(Lcom/android/systemui/stackdivider/Divider;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method startDismissSplit()V
    .locals 4

    .line 569
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->applyDismissSplit(Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;Lcom/android/systemui/stackdivider/SplitDisplayLayout;Z)V

    const/4 v0, 0x0

    .line 570
    invoke-direct {p0, v0}, Lcom/android/systemui/stackdivider/Divider;->updateVisibility(Z)V

    .line 571
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    .line 572
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->removeDivider()V

    .line 573
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mImePositionProcessor:Lcom/android/systemui/stackdivider/DividerImeController;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->reset()V

    return-void
.end method

.method startEnterSplit()V
    .locals 3

    .line 562
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDisplayController:Lcom/android/systemui/wm/DisplayController;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 563
    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    .line 562
    invoke-virtual {v0, v1}, Lcom/android/systemui/wm/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v0

    .line 563
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 562
    invoke-direct {p0, v0}, Lcom/android/systemui/stackdivider/Divider;->update(Landroid/content/res/Configuration;)V

    .line 565
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mSplits:Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mSplitLayout:Lcom/android/systemui/stackdivider/SplitDisplayLayout;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->applyEnterSplit(Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;Lcom/android/systemui/stackdivider/SplitDisplayLayout;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    return-void
.end method
