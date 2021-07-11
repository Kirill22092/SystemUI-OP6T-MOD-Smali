.class public final Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationSectionLogBufferFactory;
.super Ljava/lang/Object;
.source "LogModule_ProvideNotificationSectionLogBufferFactory.java"

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

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationSectionLogBufferFactory;->bufferFilterProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationSectionLogBufferFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationSectionLogBufferFactory;
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
            "Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationSectionLogBufferFactory;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationSectionLogBufferFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationSectionLogBufferFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

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

    .line 34
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/LogcatEchoTracker;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/dump/DumpManager;

    .line 33
    invoke-static {p0, p1}, Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationSectionLogBufferFactory;->proxyProvideNotificationSectionLogBuffer(Lcom/android/systemui/log/LogcatEchoTracker;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideNotificationSectionLogBuffer(Lcom/android/systemui/log/LogcatEchoTracker;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/log/LogBuffer;
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lcom/android/systemui/log/dagger/LogModule;->provideNotificationSectionLogBuffer(Lcom/android/systemui/log/LogcatEchoTracker;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 45
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/log/LogBuffer;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/log/LogBuffer;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationSectionLogBufferFactory;->bufferFilterProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationSectionLogBufferFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationSectionLogBufferFactory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/log/dagger/LogModule_ProvideNotificationSectionLogBufferFactory;->get()Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    return-object p0
.end method
