.class public final Lcom/android/systemui/dagger/DependencyProvider_ProvideNavigationBarControllerFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvideNavigationBarControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/NavigationBarController;",
        ">;"
    }
.end annotation


# instance fields
.field private final commandQueueProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
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

.field private final mainHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/systemui/dagger/DependencyProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideNavigationBarControllerFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    .line 31
    iput-object p2, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideNavigationBarControllerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideNavigationBarControllerFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p4, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideNavigationBarControllerFactory;->commandQueueProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideNavigationBarControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;)",
            "Lcom/android/systemui/dagger/DependencyProvider_ProvideNavigationBarControllerFactory;"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/android/systemui/dagger/DependencyProvider_ProvideNavigationBarControllerFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/dagger/DependencyProvider_ProvideNavigationBarControllerFactory;-><init>(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NavigationBarController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;)",
            "Lcom/android/systemui/statusbar/NavigationBarController;"
        }
    .end annotation

    .line 47
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/CommandQueue;

    .line 46
    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/dagger/DependencyProvider_ProvideNavigationBarControllerFactory;->proxyProvideNavigationBarController(Lcom/android/systemui/dagger/DependencyProvider;Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/NavigationBarController;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideNavigationBarController(Lcom/android/systemui/dagger/DependencyProvider;Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/NavigationBarController;
    .locals 0

    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/dagger/DependencyProvider;->provideNavigationBarController(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/NavigationBarController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 64
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/NavigationBarController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/NavigationBarController;
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideNavigationBarControllerFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    iget-object v1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideNavigationBarControllerFactory;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideNavigationBarControllerFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideNavigationBarControllerFactory;->commandQueueProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideNavigationBarControllerFactory;->provideInstance(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NavigationBarController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideNavigationBarControllerFactory;->get()Lcom/android/systemui/statusbar/NavigationBarController;

    move-result-object p0

    return-object p0
.end method
