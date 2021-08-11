.class public final Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationsLogBufferFactory;
.super Ljava/lang/Object;
.source "LogModule_ProvideNotificationsLogBufferFactory.java"

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationsLogBufferFactory;->bufferFilterProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationsLogBufferFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationsLogBufferFactory;
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
            "Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationsLogBufferFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationsLogBufferFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationsLogBufferFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

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

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/LogcatEchoTracker;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/dump/DumpManager;

    invoke-static {p0, p1}, Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationsLogBufferFactory;->proxyProvideNotificationsLogBuffer(Lcom/android/systemui/log/LogcatEchoTracker;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideNotificationsLogBuffer(Lcom/android/systemui/log/LogcatEchoTracker;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/log/LogBuffer;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/log/dagger/LogModule;->provideNotificationsLogBuffer(Lcom/android/systemui/log/LogcatEchoTracker;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/log/LogBuffer;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/log/LogBuffer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationsLogBufferFactory;->bufferFilterProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationsLogBufferFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationsLogBufferFactory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationsLogBufferFactory;->get()Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    return-object p0
.end method
