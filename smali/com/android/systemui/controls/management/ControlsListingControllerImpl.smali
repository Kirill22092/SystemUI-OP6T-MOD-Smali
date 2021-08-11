.class public final Lcom/android/systemui/controls/management/ControlsListingControllerImpl;
.super Ljava/lang/Object;
.source "ControlsListingControllerImpl.kt"

# interfaces
.implements Lcom/android/systemui/controls/management/ControlsListingController;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsListingControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsListingControllerImpl.kt\ncom/android/systemui/controls/management/ControlsListingControllerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,179:1\n1313#2:180\n1382#2,3:181\n240#2,2:184\n*E\n*S KotlinDebug\n*F\n+ 1 ControlsListingControllerImpl.kt\ncom/android/systemui/controls/management/ControlsListingControllerImpl\n*L\n166#1:180\n166#1,3:181\n175#1,2:184\n*E\n"
.end annotation


# instance fields
.field private availableComponents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private availableServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private final callbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private currentUserId:I

.field private serviceListing:Lcom/android/settingslib/applications/ServiceListing;

.field private final serviceListingBuilder:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/applications/ServiceListing;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceListingCallback:Lcom/android/settingslib/applications/ServiceListing$Callback;

.field private userChangeInProgress:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$1;->INSTANCE:Lcom/android/systemui/controls/management/ControlsListingControllerImpl$1;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/Context;",
            "+",
            "Lcom/android/settingslib/applications/ServiceListing;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceListingBuilder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListingBuilder:Lkotlin/jvm/functions/Function1;

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/applications/ServiceListing;

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListing:Lcom/android/settingslib/applications/ServiceListing;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->callbacks:Ljava/util/Set;

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->availableComponents:Ljava/util/Set;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->availableServices:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->userChangeInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->currentUserId:I

    new-instance p1, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1;-><init>(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListingCallback:Lcom/android/settingslib/applications/ServiceListing$Callback;

    const-string p1, "ControlsListingControllerImpl"

    const-string p2, "Initializing"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListing:Lcom/android/settingslib/applications/ServiceListing;

    iget-object p2, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListingCallback:Lcom/android/settingslib/applications/ServiceListing$Callback;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/applications/ServiceListing;->addCallback(Lcom/android/settingslib/applications/ServiceListing$Callback;)V

    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListing:Lcom/android/settingslib/applications/ServiceListing;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/settingslib/applications/ServiceListing;->setListening(Z)V

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListing:Lcom/android/settingslib/applications/ServiceListing;

    invoke-virtual {p0}, Lcom/android/settingslib/applications/ServiceListing;->reload()V

    return-void
.end method

.method public static final synthetic access$getAvailableComponents$p(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->availableComponents:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getBackgroundExecutor$p(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static final synthetic access$getCallbacks$p(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->callbacks:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getServiceListing$p(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;)Lcom/android/settingslib/applications/ServiceListing;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListing:Lcom/android/settingslib/applications/ServiceListing;

    return-object p0
.end method

.method public static final synthetic access$getServiceListingBuilder$p(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListingBuilder:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getServiceListingCallback$p(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;)Lcom/android/settingslib/applications/ServiceListing$Callback;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListingCallback:Lcom/android/settingslib/applications/ServiceListing$Callback;

    return-object p0
.end method

.method public static final synthetic access$getUserChangeInProgress$p(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->userChangeInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static final synthetic access$setAvailableComponents$p(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->availableComponents:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$setAvailableServices$p(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->availableServices:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setCurrentUserId$p(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->currentUserId:I

    return-void
.end method

.method public static final synthetic access$setServiceListing$p(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;Lcom/android/settingslib/applications/ServiceListing;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListing:Lcom/android/settingslib/applications/ServiceListing;

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;)V
    .locals 2
    .param p1    # Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$addCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$addCallback$1;-><init>(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->addCallback(Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;)V

    return-void
.end method

.method public changeUser(Landroid/os/UserHandle;)V
    .locals 2
    .param p1    # Landroid/os/UserHandle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newUser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->userChangeInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListing:Lcom/android/settingslib/applications/ServiceListing;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/ServiceListing;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;-><init>(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAppLabel(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 3
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->getCurrentServices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/controls/ControlsServiceInfo;

    iget-object v2, v2, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lcom/android/systemui/controls/ControlsServiceInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/settingslib/applications/DefaultAppInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public getCurrentServices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlsServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->availableServices:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ServiceInfo;

    new-instance v3, Lcom/android/systemui/controls/ControlsServiceInfo;

    iget-object v4, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->context:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/android/systemui/controls/ControlsServiceInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getCurrentUserId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->currentUserId:I

    return p0
.end method

.method public removeCallback(Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;)V
    .locals 2
    .param p1    # Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$removeCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$removeCallback$1;-><init>(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->removeCallback(Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;)V

    return-void
.end method
