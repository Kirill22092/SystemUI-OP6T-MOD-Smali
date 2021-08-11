.class public final Lcom/android/systemui/controls/controller/StatefulControlSubscriber;
.super Landroid/service/controls/IControlsSubscriber$Stub;
.source "StatefulControlSubscriber.kt"


# instance fields
.field private final bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final controller:Lcom/android/systemui/controls/controller/ControlsController;

.field private final provider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

.field private final requestLimit:J

.field private subscription:Landroid/service/controls/IControlsSubscription;

.field private subscriptionOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;J)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/controller/ControlsController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/util/concurrency/DelayableExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/service/controls/IControlsSubscriber$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->controller:Lcom/android/systemui/controls/controller/ControlsController;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->provider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    iput-object p3, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-wide p4, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->requestLimit:J

    return-void
.end method

.method public static final synthetic access$getController$p(Lcom/android/systemui/controls/controller/StatefulControlSubscriber;)Lcom/android/systemui/controls/controller/ControlsController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->controller:Lcom/android/systemui/controls/controller/ControlsController;

    return-object p0
.end method

.method public static final synthetic access$getProvider$p(Lcom/android/systemui/controls/controller/StatefulControlSubscriber;)Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->provider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    return-object p0
.end method

.method public static final synthetic access$getRequestLimit$p(Lcom/android/systemui/controls/controller/StatefulControlSubscriber;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->requestLimit:J

    return-wide v0
.end method

.method public static final synthetic access$getSubscription$p(Lcom/android/systemui/controls/controller/StatefulControlSubscriber;)Landroid/service/controls/IControlsSubscription;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->subscription:Landroid/service/controls/IControlsSubscription;

    return-object p0
.end method

.method public static final synthetic access$getSubscriptionOpen$p(Lcom/android/systemui/controls/controller/StatefulControlSubscriber;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->subscriptionOpen:Z

    return p0
.end method

.method public static final synthetic access$setSubscription$p(Lcom/android/systemui/controls/controller/StatefulControlSubscriber;Landroid/service/controls/IControlsSubscription;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->subscription:Landroid/service/controls/IControlsSubscription;

    return-void
.end method

.method public static final synthetic access$setSubscriptionOpen$p(Lcom/android/systemui/controls/controller/StatefulControlSubscriber;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->subscriptionOpen:Z

    return-void
.end method

.method private final run(Landroid/os/IBinder;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->provider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance p1, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$run$1;

    invoke-direct {p1, p2}, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$run$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->subscriptionOpen:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$cancel$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$cancel$1;-><init>(Lcom/android/systemui/controls/controller/StatefulControlSubscriber;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onComplete(Landroid/os/IBinder;)V
    .locals 1
    .param p1    # Landroid/os/IBinder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$onComplete$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$onComplete$1;-><init>(Lcom/android/systemui/controls/controller/StatefulControlSubscriber;)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->run(Landroid/os/IBinder;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onError(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/os/IBinder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$onError$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$onError$1;-><init>(Lcom/android/systemui/controls/controller/StatefulControlSubscriber;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->run(Landroid/os/IBinder;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onNext(Landroid/os/IBinder;Landroid/service/controls/Control;)V
    .locals 1
    .param p1    # Landroid/os/IBinder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/service/controls/Control;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "control"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$onNext$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$onNext$1;-><init>(Lcom/android/systemui/controls/controller/StatefulControlSubscriber;Landroid/os/IBinder;Landroid/service/controls/Control;)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->run(Landroid/os/IBinder;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onSubscribe(Landroid/os/IBinder;Landroid/service/controls/IControlsSubscription;)V
    .locals 1
    .param p1    # Landroid/os/IBinder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/service/controls/IControlsSubscription;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "subs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$onSubscribe$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$onSubscribe$1;-><init>(Lcom/android/systemui/controls/controller/StatefulControlSubscriber;Landroid/service/controls/IControlsSubscription;)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->run(Landroid/os/IBinder;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
