.class public final Lcom/android/systemui/dagger/DependencyProvider_ProvideAlwaysOnDisplayPolicyFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvideAlwaysOnDisplayPolicyFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;",
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

.field private final module:Lcom/android/systemui/dagger/DependencyProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideAlwaysOnDisplayPolicyFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    .line 22
    iput-object p2, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideAlwaysOnDisplayPolicyFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideAlwaysOnDisplayPolicyFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/dagger/DependencyProvider_ProvideAlwaysOnDisplayPolicyFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/android/systemui/dagger/DependencyProvider_ProvideAlwaysOnDisplayPolicyFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideAlwaysOnDisplayPolicyFactory;-><init>(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;"
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/systemui/dagger/DependencyProvider_ProvideAlwaysOnDisplayPolicyFactory;->proxyProvideAlwaysOnDisplayPolicy(Lcom/android/systemui/dagger/DependencyProvider;Landroid/content/Context;)Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideAlwaysOnDisplayPolicy(Lcom/android/systemui/dagger/DependencyProvider;Landroid/content/Context;)Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DependencyProvider;->provideAlwaysOnDisplayPolicy(Landroid/content/Context;)Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 42
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideAlwaysOnDisplayPolicyFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    iget-object p0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideAlwaysOnDisplayPolicyFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideAlwaysOnDisplayPolicyFactory;->provideInstance(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideAlwaysOnDisplayPolicyFactory;->get()Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    move-result-object p0

    return-object p0
.end method
