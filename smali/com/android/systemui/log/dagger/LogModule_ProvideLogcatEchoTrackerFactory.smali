.class public final Lcom/android/systemui/log/dagger/LogModule_ProvideLogcatEchoTrackerFactory;
.super Ljava/lang/Object;
.source "LogModule_ProvideLogcatEchoTrackerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/log/LogcatEchoTracker;",
        ">;"
    }
.end annotation


# instance fields
.field private final contentResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/ContentResolver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/log/dagger/LogModule_ProvideLogcatEchoTrackerFactory;->contentResolverProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/log/dagger/LogModule_ProvideLogcatEchoTrackerFactory;->looperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/log/dagger/LogModule_ProvideLogcatEchoTrackerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/ContentResolver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)",
            "Lcom/android/systemui/log/dagger/LogModule_ProvideLogcatEchoTrackerFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/log/dagger/LogModule_ProvideLogcatEchoTrackerFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/log/dagger/LogModule_ProvideLogcatEchoTrackerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/log/LogcatEchoTracker;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/ContentResolver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)",
            "Lcom/android/systemui/log/LogcatEchoTracker;"
        }
    .end annotation

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentResolver;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Looper;

    invoke-static {p0, p1}, Lcom/android/systemui/log/dagger/LogModule_ProvideLogcatEchoTrackerFactory;->proxyProvideLogcatEchoTracker(Landroid/content/ContentResolver;Landroid/os/Looper;)Lcom/android/systemui/log/LogcatEchoTracker;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideLogcatEchoTracker(Landroid/content/ContentResolver;Landroid/os/Looper;)Lcom/android/systemui/log/LogcatEchoTracker;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/log/dagger/LogModule;->provideLogcatEchoTracker(Landroid/content/ContentResolver;Landroid/os/Looper;)Lcom/android/systemui/log/LogcatEchoTracker;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/log/LogcatEchoTracker;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/log/LogcatEchoTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/log/dagger/LogModule_ProvideLogcatEchoTrackerFactory;->contentResolverProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/log/dagger/LogModule_ProvideLogcatEchoTrackerFactory;->looperProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/log/dagger/LogModule_ProvideLogcatEchoTrackerFactory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/log/LogcatEchoTracker;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/log/dagger/LogModule_ProvideLogcatEchoTrackerFactory;->get()Lcom/android/systemui/log/LogcatEchoTracker;

    move-result-object p0

    return-object p0
.end method
