.class public final Lcom/android/systemui/media/KeyguardMediaController;
.super Ljava/lang/Object;
.source "KeyguardMediaController.kt"


# instance fields
.field private final bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mediaHost:Lcom/android/systemui/media/MediaHost;

.field private final notifLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final notificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private view:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private visibilityChangedListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaHost;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationMediaManager;)V
    .locals 1
    .param p1    # Lcom/android/systemui/media/MediaHost;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/SysuiStatusBarStateController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/statusbar/NotificationMediaManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mediaHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bypassController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "statusBarStateController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifLockscreenUserManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationMediaManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/KeyguardMediaController;->mediaHost:Lcom/android/systemui/media/MediaHost;

    iput-object p2, p0, Lcom/android/systemui/media/KeyguardMediaController;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iput-object p3, p0, Lcom/android/systemui/media/KeyguardMediaController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object p4, p0, Lcom/android/systemui/media/KeyguardMediaController;->notifLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object p5, p0, Lcom/android/systemui/media/KeyguardMediaController;->notificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 55
    new-instance p1, Lcom/android/systemui/media/KeyguardMediaController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/KeyguardMediaController$1;-><init>(Lcom/android/systemui/media/KeyguardMediaController;)V

    invoke-interface {p3, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method public static final synthetic access$updateVisibility(Lcom/android/systemui/media/KeyguardMediaController;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/systemui/media/KeyguardMediaController;->updateVisibility()V

    return-void
.end method

.method private final updateVisibility()V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/android/systemui/media/KeyguardMediaController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/KeyguardMediaController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 91
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/media/KeyguardMediaController;->mediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaHost;->getVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/media/KeyguardMediaController;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/media/KeyguardMediaController;->notifLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowLockscreenNotifications()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    .line 92
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/media/KeyguardMediaController;->view:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    const/16 v3, 0x8

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move v1, v3

    .line 94
    :goto_4
    iget-object v3, p0, Lcom/android/systemui/media/KeyguardMediaController;->view:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_5
    if-eq v0, v1, :cond_7

    .line 96
    iget-object v0, p0, Lcom/android/systemui/media/KeyguardMediaController;->visibilityChangedListener:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    .line 100
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/media/KeyguardMediaController;->view:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    if-eqz v0, :cond_7

    .line 101
    iget-object p0, p0, Lcom/android/systemui/media/KeyguardMediaController;->notificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->onMediaHeaderViewChanged(I)V

    :cond_7
    return-void
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;)V
    .locals 2
    .param p1    # Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mediaView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcom/android/systemui/media/KeyguardMediaController;->view:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    .line 72
    iget-object v0, p0, Lcom/android/systemui/media/KeyguardMediaController;->mediaHost:Lcom/android/systemui/media/MediaHost;

    new-instance v1, Lcom/android/systemui/media/KeyguardMediaController$attach$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/KeyguardMediaController$attach$1;-><init>(Lcom/android/systemui/media/KeyguardMediaController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost;->addVisibilityChangeListener(Lkotlin/jvm/functions/Function1;)V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/media/KeyguardMediaController;->mediaHost:Lcom/android/systemui/media/MediaHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost;->setExpansion(F)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/media/KeyguardMediaController;->mediaHost:Lcom/android/systemui/media/MediaHost;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost;->setShowsOnlyActiveMedia(Z)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/media/KeyguardMediaController;->mediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost;->setFalsingProtectionNeeded(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/media/KeyguardMediaController;->mediaHost:Lcom/android/systemui/media/MediaHost;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost;->init(I)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/media/KeyguardMediaController;->mediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;->setContentView(Landroid/view/ViewGroup;)V

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/media/KeyguardMediaController;->updateVisibility()V

    return-void
.end method

.method public final getView()Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 63
    iget-object p0, p0, Lcom/android/systemui/media/KeyguardMediaController;->view:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    return-object p0
.end method

.method public final setVisibilityChangedListener(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/android/systemui/media/KeyguardMediaController;->visibilityChangedListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method
