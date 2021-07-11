.class public Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;
.super Ljava/lang/Object;
.source "ShadeControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ShadeController;


# instance fields
.field private final mAssistManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mBubbleControllerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/bubbles/BubbleController;",
            ">;"
        }
    .end annotation
.end field

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mDisplayId:I

.field protected final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

.field private final mPostCollapseRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field protected final mStatusBarLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/view/WindowManager;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Landroid/view/WindowManager;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/bubbles/BubbleController;",
            ">;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->mPostCollapseRunnables:Ljava/util/ArrayList;

    .line 67
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 68
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 69
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    .line 70
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 71
    invoke-interface {p5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->mDisplayId:I

    .line 73
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->mStatusBarLazy:Ldagger/Lazy;

    .line 74
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->mAssistManagerLazy:Ldagger/Lazy;

    .line 75
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->mBubbleControllerLazy:Ldagger/Lazy;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p0

    return-object p0
.end method

.method private getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
    .locals 0

    .line 234
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p0

    return-object p0
.end method

.method private getPresenter()Lcom/android/systemui/statusbar/NotificationPresenter;
    .locals 0

    .line 222
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPresenter()Lcom/android/systemui/statusbar/NotificationPresenter;

    move-result-object p0

    return-object p0
.end method

.method private getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method


# virtual methods
.method public addPostCollapseAction(Ljava/lang/Runnable;)V
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public animateCollapsePanels()V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->animateCollapsePanels(I)V

    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 93
    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->animateCollapsePanels(IZZF)V

    return-void
.end method

.method public animateCollapsePanels(IZ)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 99
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->animateCollapsePanels(IZZF)V

    return-void
.end method

.method public animateCollapsePanels(IZZ)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 104
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->animateCollapsePanels(IZZF)V

    return-void
.end method

.method public animateCollapsePanels(IZZF)V
    .locals 0

    if-nez p2, :cond_0

    .line 110
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p2

    if-eqz p2, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->runPostCollapseRunnables()V

    return-void

    :cond_0
    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->postHideRecentApps()V

    .line 125
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NotificationShadeWindow: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " canPanelBeCollapsed(): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->canPanelBeCollapsed()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShadeControllerImpl"

    .line 125
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->canPanelBeCollapsed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 131
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setNotificationShadeFocusable(Z)V

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationShadeWindowViewController()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->cancelExpandHelper()V

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->getStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/systemui/statusbar/phone/PanelBar;->collapsePanel(ZZF)V

    goto :goto_0

    .line 136
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->mBubbleControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleController;->collapseStack()V

    :goto_0
    return-void
.end method

.method public closeShadeIfOpen()Z
    .locals 4

    .line 143
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels(IZ)V

    .line 146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    .line 147
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    :cond_0
    return v1
.end method

.method public collapsePanel(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->collapsePanel()Z

    move-result p1

    if-nez p1, :cond_2

    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->runPostCollapseRunnables()V

    goto :goto_0

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->getPresenter()Lcom/android/systemui/statusbar/NotificationPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/NotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantCollapseNotificationPanel()V

    .line 211
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->runPostCollapseRunnables()V

    :cond_2
    :goto_0
    return-void
.end method

.method public collapsePanel()Z
    .locals 3

    .line 190
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    const/4 v2, 0x1

    .line 192
    invoke-virtual {p0, v0, v2, v2}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->animateCollapsePanels(IZZ)V

    .line 194
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    return v2

    :cond_0
    return v1
.end method

.method protected getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;
    .locals 0

    .line 226
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object p0

    return-object p0
.end method

.method protected getStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
    .locals 0

    .line 230
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object p0
.end method

.method public goToLockedShade(Landroid/view/View;)V
    .locals 0

    .line 185
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->goToLockedShade(Landroid/view/View;)V

    return-void
.end method

.method public instantExpandNotificationsPanel()V
    .locals 2

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeExpandedVisible(Z)V

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->expand(Z)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->mDisplayId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    return-void
.end method

.method public postOnShadeExpanded(Ljava/lang/Runnable;)V
    .locals 2

    .line 154
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public runPostCollapseRunnables()V
    .locals 4

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 174
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 175
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 177
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ShadeControllerImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->readyForKeyguardDone()V

    return-void
.end method
