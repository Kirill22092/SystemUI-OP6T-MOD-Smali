.class public final Lcom/android/systemui/DependencyProvider_ProvideDisplayMetricsFactory;
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
.field private final module:Lcom/android/systemui/DependencyProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/DependencyProvider;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/systemui/DependencyProvider_ProvideDisplayMetricsFactory;->module:Lcom/android/systemui/DependencyProvider;

    return-void
.end method

.method public static create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideDisplayMetricsFactory;
    .locals 1

    .line 26
    new-instance v0, Lcom/android/systemui/DependencyProvider_ProvideDisplayMetricsFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/DependencyProvider_ProvideDisplayMetricsFactory;-><init>(Lcom/android/systemui/DependencyProvider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/android/systemui/DependencyProvider;)Landroid/util/DisplayMetrics;
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/android/systemui/DependencyProvider_ProvideDisplayMetricsFactory;->proxyProvideDisplayMetrics(Lcom/android/systemui/DependencyProvider;)Landroid/util/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideDisplayMetrics(Lcom/android/systemui/DependencyProvider;)Landroid/util/DisplayMetrics;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/DependencyProvider;->provideDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 30
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/util/DisplayMetrics;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/util/DisplayMetrics;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/android/systemui/DependencyProvider_ProvideDisplayMetricsFactory;->module:Lcom/android/systemui/DependencyProvider;

    invoke-static {p0}, Lcom/android/systemui/DependencyProvider_ProvideDisplayMetricsFactory;->provideInstance(Lcom/android/systemui/DependencyProvider;)Landroid/util/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/DependencyProvider_ProvideDisplayMetricsFactory;->get()Landroid/util/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method
