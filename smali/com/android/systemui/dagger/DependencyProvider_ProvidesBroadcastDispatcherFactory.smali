.class public final Lcom/android/systemui/dagger/DependencyProvider_ProvidesBroadcastDispatcherFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvidesBroadcastDispatcherFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
        ">;"
    }
.end annotation


# instance fields
.field private final backgroundExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final backgroundLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final dumpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/systemui/dagger/DependencyProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvidesBroadcastDispatcherFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    iput-object p2, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvidesBroadcastDispatcherFactory;->contextProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvidesBroadcastDispatcherFactory;->backgroundLooperProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvidesBroadcastDispatcherFactory;->backgroundExecutorProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvidesBroadcastDispatcherFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvidesBroadcastDispatcherFactory;->loggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvidesBroadcastDispatcherFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;",
            ">;)",
            "Lcom/android/systemui/dagger/DependencyProvider_ProvidesBroadcastDispatcherFactory;"
        }
    .end annotation

    new-instance v7, Lcom/android/systemui/dagger/DependencyProvider_ProvidesBroadcastDispatcherFactory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/dagger/DependencyProvider_ProvidesBroadcastDispatcherFactory;-><init>(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static provideInstance(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;",
            ">;)",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;"
        }
    .end annotation

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/os/Looper;

    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/util/concurrent/Executor;

    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/android/systemui/dump/DumpManager;

    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/dagger/DependencyProvider_ProvidesBroadcastDispatcherFactory;->proxyProvidesBroadcastDispatcher(Lcom/android/systemui/dagger/DependencyProvider;Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/Executor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;)Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvidesBroadcastDispatcher(Lcom/android/systemui/dagger/DependencyProvider;Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/Executor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;)Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/android/systemui/dagger/DependencyProvider;->providesBroadcastDispatcher(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/Executor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;)Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvidesBroadcastDispatcherFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    iget-object v1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvidesBroadcastDispatcherFactory;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvidesBroadcastDispatcherFactory;->backgroundLooperProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvidesBroadcastDispatcherFactory;->backgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvidesBroadcastDispatcherFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvidesBroadcastDispatcherFactory;->loggerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/dagger/DependencyProvider_ProvidesBroadcastDispatcherFactory;->provideInstance(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvidesBroadcastDispatcherFactory;->get()Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-result-object p0

    return-object p0
.end method
