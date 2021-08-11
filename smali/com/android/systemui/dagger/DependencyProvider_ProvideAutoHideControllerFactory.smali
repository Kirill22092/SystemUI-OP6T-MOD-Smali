.class public final Lcom/android/systemui/dagger/DependencyProvider_ProvideAutoHideControllerFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvideAutoHideControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/AutoHideController;",
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

.field private final iWindowManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/IWindowManager;",
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
            "Landroid/view/IWindowManager;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideAutoHideControllerFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    iput-object p2, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideAutoHideControllerFactory;->contextProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideAutoHideControllerFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideAutoHideControllerFactory;->iWindowManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideAutoHideControllerFactory;
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
            "Landroid/view/IWindowManager;",
            ">;)",
            "Lcom/android/systemui/dagger/DependencyProvider_ProvideAutoHideControllerFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/dagger/DependencyProvider_ProvideAutoHideControllerFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/dagger/DependencyProvider_ProvideAutoHideControllerFactory;-><init>(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/AutoHideController;
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
            "Landroid/view/IWindowManager;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;"
        }
    .end annotation

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/IWindowManager;

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/dagger/DependencyProvider_ProvideAutoHideControllerFactory;->proxyProvideAutoHideController(Lcom/android/systemui/dagger/DependencyProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/view/IWindowManager;)Lcom/android/systemui/statusbar/phone/AutoHideController;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideAutoHideController(Lcom/android/systemui/dagger/DependencyProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/view/IWindowManager;)Lcom/android/systemui/statusbar/phone/AutoHideController;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/dagger/DependencyProvider;->provideAutoHideController(Landroid/content/Context;Landroid/os/Handler;Landroid/view/IWindowManager;)Lcom/android/systemui/statusbar/phone/AutoHideController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/phone/AutoHideController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/AutoHideController;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideAutoHideControllerFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    iget-object v1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideAutoHideControllerFactory;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideAutoHideControllerFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideAutoHideControllerFactory;->iWindowManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideAutoHideControllerFactory;->provideInstance(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/AutoHideController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideAutoHideControllerFactory;->get()Lcom/android/systemui/statusbar/phone/AutoHideController;

    move-result-object p0

    return-object p0
.end method
