.class public final Lcom/android/systemui/settings/CurrentUserContextTracker;
.super Ljava/lang/Object;
.source "CurrentUserContextTracker.kt"


# instance fields
.field private _curUserContext:Landroid/content/Context;

.field private initialized:Z

.field private final sysuiContext:Landroid/content/Context;

.field private final userTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/broadcast/BroadcastDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "sysuiContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/CurrentUserContextTracker;->sysuiContext:Landroid/content/Context;

    new-instance p1, Lcom/android/systemui/settings/CurrentUserContextTracker$1;

    invoke-direct {p1, p0, p2, p2}, Lcom/android/systemui/settings/CurrentUserContextTracker$1;-><init>(Lcom/android/systemui/settings/CurrentUserContextTracker;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object p1, p0, Lcom/android/systemui/settings/CurrentUserContextTracker;->userTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-void
.end method

.method private final makeUserContext(I)Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object p0, p0, Lcom/android/systemui/settings/CurrentUserContextTracker;->sysuiContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    const-string/jumbo p1, "sysuiContext.createConte\u2026er(UserHandle.of(uid), 0)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final getCurrentUserContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/settings/CurrentUserContextTracker;->initialized:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/settings/CurrentUserContextTracker;->_curUserContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must initialize before getting context"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final handleUserSwitched(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/CurrentUserContextTracker;->makeUserContext(I)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/settings/CurrentUserContextTracker;->_curUserContext:Landroid/content/Context;

    return-void
.end method

.method public final initialize()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/settings/CurrentUserContextTracker;->initialized:Z

    iget-object v0, p0, Lcom/android/systemui/settings/CurrentUserContextTracker;->userTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/CurrentUserContextTracker;->makeUserContext(I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/CurrentUserContextTracker;->_curUserContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/settings/CurrentUserContextTracker;->userTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    return-void
.end method
