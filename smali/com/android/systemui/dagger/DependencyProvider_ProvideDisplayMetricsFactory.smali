.class public final Lcom/android/systemui/dagger/DependencyProvider_ProvideDisplayMetricsFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvideDisplayMetricsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/util/DisplayMetrics;",
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

.field private final windowManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/WindowManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/WindowManager;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideDisplayMetricsFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    iput-object p2, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideDisplayMetricsFactory;->contextProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideDisplayMetricsFactory;->windowManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideDisplayMetricsFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/WindowManager;",
            ">;)",
            "Lcom/android/systemui/dagger/DependencyProvider_ProvideDisplayMetricsFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/dagger/DependencyProvider_ProvideDisplayMetricsFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/dagger/DependencyProvider_ProvideDisplayMetricsFactory;-><init>(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Landroid/util/DisplayMetrics;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/WindowManager;",
            ">;)",
            "Landroid/util/DisplayMetrics;"
        }
    .end annotation

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/dagger/DependencyProvider_ProvideDisplayMetricsFactory;->proxyProvideDisplayMetrics(Lcom/android/systemui/dagger/DependencyProvider;Landroid/content/Context;Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideDisplayMetrics(Lcom/android/systemui/dagger/DependencyProvider;Landroid/content/Context;Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/dagger/DependencyProvider;->provideDisplayMetrics(Landroid/content/Context;Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/util/DisplayMetrics;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/util/DisplayMetrics;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideDisplayMetricsFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    iget-object v1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideDisplayMetricsFactory;->contextProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideDisplayMetricsFactory;->windowManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideDisplayMetricsFactory;->provideInstance(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Landroid/util/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideDisplayMetricsFactory;->get()Landroid/util/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method
