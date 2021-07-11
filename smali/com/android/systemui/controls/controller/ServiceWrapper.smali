.class public final Lcom/android/systemui/controls/controller/ServiceWrapper;
.super Ljava/lang/Object;
.source "ServiceWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nServiceWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServiceWrapper.kt\ncom/android/systemui/controls/controller/ServiceWrapper\n*L\n1#1,87:1\n38#1,6:88\n38#1,6:94\n38#1,6:100\n38#1,6:106\n38#1,6:112\n38#1,6:118\n*E\n*S KotlinDebug\n*F\n+ 1 ServiceWrapper.kt\ncom/android/systemui/controls/controller/ServiceWrapper\n*L\n48#1,6:88\n54#1,6:94\n60#1,6:100\n66#1,6:106\n72#1,6:112\n82#1,6:118\n*E\n"
.end annotation


# instance fields
.field private final service:Landroid/service/controls/IControlsProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/service/controls/IControlsProvider;)V
    .locals 1
    .param p1    # Landroid/service/controls/IControlsProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ServiceWrapper;->service:Landroid/service/controls/IControlsProvider;

    return-void
.end method


# virtual methods
.method public final action(Ljava/lang/String;Landroid/service/controls/actions/ControlAction;Landroid/service/controls/IControlsActionCallback;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/service/controls/actions/ControlAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/service/controls/IControlsActionCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "controlId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cb"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ServiceWrapper;->service:Landroid/service/controls/IControlsProvider;

    new-instance v0, Landroid/service/controls/actions/ControlActionWrapper;

    invoke-direct {v0, p2}, Landroid/service/controls/actions/ControlActionWrapper;-><init>(Landroid/service/controls/actions/ControlAction;)V

    invoke-interface {p0, p1, v0, p3}, Landroid/service/controls/IControlsProvider;->action(Ljava/lang/String;Landroid/service/controls/actions/ControlActionWrapper;Landroid/service/controls/IControlsActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ServiceWrapper"

    const-string p2, "Caught exception from ControlsProviderService"

    .line 42
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final cancel(Landroid/service/controls/IControlsSubscription;)Z
    .locals 1
    .param p1    # Landroid/service/controls/IControlsSubscription;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo p0, "subscription"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    :try_start_0
    invoke-interface {p1}, Landroid/service/controls/IControlsSubscription;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ServiceWrapper"

    const-string v0, "Caught exception from ControlsProviderService"

    .line 42
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final load(Landroid/service/controls/IControlsSubscriber;)Z
    .locals 1
    .param p1    # Landroid/service/controls/IControlsSubscriber;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ServiceWrapper;->service:Landroid/service/controls/IControlsProvider;

    invoke-interface {p0, p1}, Landroid/service/controls/IControlsProvider;->load(Landroid/service/controls/IControlsSubscriber;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ServiceWrapper"

    const-string v0, "Caught exception from ControlsProviderService"

    .line 42
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final loadSuggested(Landroid/service/controls/IControlsSubscriber;)Z
    .locals 1
    .param p1    # Landroid/service/controls/IControlsSubscriber;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ServiceWrapper;->service:Landroid/service/controls/IControlsProvider;

    invoke-interface {p0, p1}, Landroid/service/controls/IControlsProvider;->loadSuggested(Landroid/service/controls/IControlsSubscriber;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ServiceWrapper"

    const-string v0, "Caught exception from ControlsProviderService"

    .line 42
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final request(Landroid/service/controls/IControlsSubscription;J)Z
    .locals 0
    .param p1    # Landroid/service/controls/IControlsSubscription;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo p0, "subscription"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/service/controls/IControlsSubscription;->request(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ServiceWrapper"

    const-string p2, "Caught exception from ControlsProviderService"

    .line 42
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final subscribe(Ljava/util/List;Landroid/service/controls/IControlsSubscriber;)Z
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/service/controls/IControlsSubscriber;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/service/controls/IControlsSubscriber;",
            ")Z"
        }
    .end annotation

    const-string v0, "controlIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "subscriber"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ServiceWrapper;->service:Landroid/service/controls/IControlsProvider;

    invoke-interface {p0, p1, p2}, Landroid/service/controls/IControlsProvider;->subscribe(Ljava/util/List;Landroid/service/controls/IControlsSubscriber;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ServiceWrapper"

    const-string p2, "Caught exception from ControlsProviderService"

    .line 42
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method
