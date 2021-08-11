.class public final Lcom/android/systemui/dagger/DependencyProvider_ProvidesViewMediatorCallbackFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvidesViewMediatorCallbackFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/keyguard/ViewMediatorCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/android/systemui/dagger/DependencyProvider;

.field private final viewMediatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvidesViewMediatorCallbackFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    iput-object p2, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvidesViewMediatorCallbackFactory;->viewMediatorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvidesViewMediatorCallbackFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;)",
            "Lcom/android/systemui/dagger/DependencyProvider_ProvidesViewMediatorCallbackFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/dagger/DependencyProvider_ProvidesViewMediatorCallbackFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/dagger/DependencyProvider_ProvidesViewMediatorCallbackFactory;-><init>(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/keyguard/ViewMediatorCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;)",
            "Lcom/android/keyguard/ViewMediatorCallback;"
        }
    .end annotation

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0, p1}, Lcom/android/systemui/dagger/DependencyProvider_ProvidesViewMediatorCallbackFactory;->proxyProvidesViewMediatorCallback(Lcom/android/systemui/dagger/DependencyProvider;Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvidesViewMediatorCallback(Lcom/android/systemui/dagger/DependencyProvider;Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/ViewMediatorCallback;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DependencyProvider;->providesViewMediatorCallback(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/keyguard/ViewMediatorCallback;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/keyguard/ViewMediatorCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvidesViewMediatorCallbackFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    iget-object p0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvidesViewMediatorCallbackFactory;->viewMediatorProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvidesViewMediatorCallbackFactory;->provideInstance(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvidesViewMediatorCallbackFactory;->get()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object p0

    return-object p0
.end method
