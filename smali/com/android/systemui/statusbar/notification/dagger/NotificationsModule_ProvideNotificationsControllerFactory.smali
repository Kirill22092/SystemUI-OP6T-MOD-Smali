.class public final Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationsControllerFactory;
.super Ljava/lang/Object;
.source "NotificationsModule_ProvideNotificationsControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/init/NotificationsController;",
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

.field private final realControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final stubControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsControllerStub;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsControllerStub;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationsControllerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationsControllerFactory;->realControllerProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationsControllerFactory;->stubControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationsControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsControllerStub;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationsControllerFactory;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationsControllerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationsControllerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/init/NotificationsController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsControllerStub;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsController;"
        }
    .end annotation

    .line 44
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    .line 45
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p1

    .line 46
    invoke-static {p2}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p2

    .line 43
    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationsControllerFactory;->proxyProvideNotificationsController(Landroid/content/Context;Ldagger/Lazy;Ldagger/Lazy;)Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideNotificationsController(Landroid/content/Context;Ldagger/Lazy;Ldagger/Lazy;)Lcom/android/systemui/statusbar/notification/init/NotificationsController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsControllerStub;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsController;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule;->provideNotificationsController(Landroid/content/Context;Ldagger/Lazy;Ldagger/Lazy;)Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 61
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/init/NotificationsController;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationsControllerFactory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationsControllerFactory;->realControllerProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationsControllerFactory;->stubControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationsControllerFactory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationsControllerFactory;->get()Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    move-result-object p0

    return-object p0
.end method
