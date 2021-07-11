.class public final Lcom/android/systemui/log/dagger/LogModule_ProvideDozeLogBufferFactory;
.super Ljava/lang/Object;
.source "LogModule_ProvideDozeLogBufferFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/log/LogBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private final bufferFilterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogcatEchoTracker;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogcatEchoTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/log/dagger/LogModule_ProvideDozeLogBufferFactory;->bufferFilterProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/android/systemui/log/dagger/LogModule_ProvideDozeLogBufferFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/log/dagger/LogModule_ProvideDozeLogBufferFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogcatEchoTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)",
            "Lcom/android/systemui/log/dagger/LogModule_ProvideDozeLogBufferFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/android/systemui/log/dagger/LogModule_ProvideDozeLogBufferFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/log/dagger/LogModule_ProvideDozeLogBufferFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/log/LogBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogcatEchoTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)",
            "Lcom/android/systemui/log/LogBuffer;"
        }
    .end annotation

    .line 32
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/LogcatEchoTracker;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/dump/DumpManager;

    invoke-static {p0, p1}, Lcom/android/systemui/log/dagger/LogModule_ProvideDozeLogBufferFactory;->proxyProvideDozeLogBuffer(Lcom/android/systemui/log/LogcatEchoTracker;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideDozeLogBuffer(Lcom/android/systemui/log/LogcatEchoTracker;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/log/LogBuffer;
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lcom/android/systemui/log/dagger/LogModule;->provideDozeLogBuffer(Lcom/android/systemui/log/LogcatEchoTracker;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 42
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/log/LogBuffer;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/log/LogBuffer;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/android/systemui/log/dagger/LogModule_ProvideDozeLogBufferFactory;->bufferFilterProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/log/dagger/LogModule_ProvideDozeLogBufferFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/log/dagger/LogModule_ProvideDozeLogBufferFactory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/log/dagger/LogModule_ProvideDozeLogBufferFactory;->get()Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    return-object p0
.end method
