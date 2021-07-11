.class public final Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundDelayableExecutorFactory;
.super Ljava/lang/Object;
.source "ConcurrencyModule_ProvideBackgroundDelayableExecutorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
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

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundDelayableExecutorFactory;->looperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundDelayableExecutorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)",
            "Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundDelayableExecutorFactory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundDelayableExecutorFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundDelayableExecutorFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;"
        }
    .end annotation

    .line 27
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Looper;

    invoke-static {p0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundDelayableExecutorFactory;->proxyProvideBackgroundDelayableExecutor(Landroid/os/Looper;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideBackgroundDelayableExecutor(Landroid/os/Looper;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 1

    .line 37
    invoke-static {p0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule;->provideBackgroundDelayableExecutor(Landroid/os/Looper;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 36
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundDelayableExecutorFactory;->looperProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundDelayableExecutorFactory;->provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundDelayableExecutorFactory;->get()Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object p0

    return-object p0
.end method
