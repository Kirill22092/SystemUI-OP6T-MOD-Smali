.class public final Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundRepeatableExecutorFactory;
.super Ljava/lang/Object;
.source "ConcurrencyModule_ProvideBackgroundRepeatableExecutorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/util/concurrency/RepeatableExecutor;",
        ">;"
    }
.end annotation


# instance fields
.field private final execProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
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
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundRepeatableExecutorFactory;->execProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundRepeatableExecutorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;)",
            "Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundRepeatableExecutorFactory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundRepeatableExecutorFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundRepeatableExecutorFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/RepeatableExecutor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;)",
            "Lcom/android/systemui/util/concurrency/RepeatableExecutor;"
        }
    .end annotation

    .line 26
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-static {p0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundRepeatableExecutorFactory;->proxyProvideBackgroundRepeatableExecutor(Lcom/android/systemui/util/concurrency/DelayableExecutor;)Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideBackgroundRepeatableExecutor(Lcom/android/systemui/util/concurrency/DelayableExecutor;)Lcom/android/systemui/util/concurrency/RepeatableExecutor;
    .locals 1

    .line 37
    invoke-static {p0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule;->provideBackgroundRepeatableExecutor(Lcom/android/systemui/util/concurrency/DelayableExecutor;)Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 36
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/util/concurrency/RepeatableExecutor;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundRepeatableExecutorFactory;->execProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundRepeatableExecutorFactory;->provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBackgroundRepeatableExecutorFactory;->get()Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    move-result-object p0

    return-object p0
.end method
