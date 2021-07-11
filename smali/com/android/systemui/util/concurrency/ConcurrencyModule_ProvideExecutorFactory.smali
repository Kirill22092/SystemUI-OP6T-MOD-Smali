.class public final Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideExecutorFactory;
.super Ljava/lang/Object;
.source "ConcurrencyModule_ProvideExecutorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/concurrent/Executor;",
        ">;"
    }
.end annotation


# instance fields
.field private final looperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideExecutorFactory;->looperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideExecutorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)",
            "Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideExecutorFactory;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideExecutorFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideExecutorFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Ljava/util/concurrent/Executor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)",
            "Ljava/util/concurrent/Executor;"
        }
    .end annotation

    .line 26
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Looper;

    invoke-static {p0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideExecutorFactory;->proxyProvideExecutor(Landroid/os/Looper;)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideExecutor(Landroid/os/Looper;)Ljava/util/concurrent/Executor;
    .locals 1

    .line 35
    invoke-static {p0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule;->provideExecutor(Landroid/os/Looper;)Ljava/util/concurrent/Executor;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 34
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideExecutorFactory;->get()Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/concurrent/Executor;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideExecutorFactory;->looperProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideExecutorFactory;->provideInstance(Ljavax/inject/Provider;)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method
