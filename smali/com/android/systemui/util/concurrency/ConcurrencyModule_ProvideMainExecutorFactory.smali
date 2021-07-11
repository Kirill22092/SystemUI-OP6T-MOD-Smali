.class public final Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;
.super Ljava/lang/Object;
.source "ConcurrencyModule_ProvideMainExecutorFactory.java"

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
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
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
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Ljava/util/concurrent/Executor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Ljava/util/concurrent/Executor;"
        }
    .end annotation

    .line 26
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;->proxyProvideMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;
    .locals 1

    .line 36
    invoke-static {p0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule;->provideMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 35
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;->get()Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/concurrent/Executor;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;->provideInstance(Ljavax/inject/Provider;)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method
