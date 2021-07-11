.class public Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;
.super Lcom/android/systemui/SystemUI;
.source "ShortcutKeyDispatcher.java"

# interfaces
.implements Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$Callbacks;


# instance fields
.field private final mDivider:Lcom/android/systemui/stackdivider/Divider;

.field private final mRecents:Lcom/android/systemui/recents/Recents;

.field private mShortcutKeyServiceProxy:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

.field private mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/recents/Recents;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance p1, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

    invoke-direct {p1, p0}, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;-><init>(Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$Callbacks;)V

    iput-object p1, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mShortcutKeyServiceProxy:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

    .line 50
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 63
    iput-object p2, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    .line 64
    iput-object p3, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mRecents:Lcom/android/systemui/recents/Recents;

    return-void
.end method

.method private handleDockKey(J)V
    .locals 6

    .line 95
    iget-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    const-wide v1, 0x1000000000047L

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->isDividerVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 102
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object p0

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v5

    .line 106
    invoke-virtual {v0, v5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v5

    cmp-long p1, p1, v1

    if-nez p1, :cond_1

    .line 108
    invoke-virtual {v0, v5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getPreviousTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v0, v5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getNextTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    .line 110
    :goto_0
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    .line 111
    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V

    goto :goto_3

    .line 97
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mRecents:Lcom/android/systemui/recents/Recents;

    cmp-long p1, p1, v1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    const/4 p1, 0x0

    const/4 p2, -0x1

    invoke-virtual {p0, v3, p1, p2}, Lcom/android/systemui/recents/Recents;->splitPrimaryTask(ILandroid/graphics/Rect;I)Z

    :goto_3
    return-void
.end method


# virtual methods
.method public onShortcutKeyPressed(J)V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const-wide v1, 0x1000000000047L

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    const-wide v1, 0x1000000000048L

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->handleDockKey(J)V

    :cond_1
    return-void
.end method

.method public registerShortcutKey(J)V
    .locals 1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mWindowManagerService:Landroid/view/IWindowManager;

    iget-object p0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mShortcutKeyServiceProxy:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

    invoke-interface {v0, p1, p2, p0}, Landroid/view/IWindowManager;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public start()V
    .locals 2

    const-wide v0, 0x1000000000047L

    .line 90
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->registerShortcutKey(J)V

    const-wide v0, 0x1000000000048L

    .line 91
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->registerShortcutKey(J)V

    return-void
.end method
