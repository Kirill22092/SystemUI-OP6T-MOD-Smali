.class public final Lcom/android/systemui/dagger/DependencyProvider_ProvideTimeTickHandlerFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvideTimeTickHandlerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/android/systemui/dagger/DependencyProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DependencyProvider;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideTimeTickHandlerFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    return-void
.end method

.method public static create(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideTimeTickHandlerFactory;
    .locals 1

    .line 28
    new-instance v0, Lcom/android/systemui/dagger/DependencyProvider_ProvideTimeTickHandlerFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideTimeTickHandlerFactory;-><init>(Lcom/android/systemui/dagger/DependencyProvider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/android/systemui/dagger/DependencyProvider;)Landroid/os/Handler;
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideTimeTickHandlerFactory;->proxyProvideTimeTickHandler(Lcom/android/systemui/dagger/DependencyProvider;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideTimeTickHandler(Lcom/android/systemui/dagger/DependencyProvider;)Landroid/os/Handler;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DependencyProvider;->provideTimeTickHandler()Landroid/os/Handler;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 32
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/os/Handler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideTimeTickHandlerFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    invoke-static {p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideTimeTickHandlerFactory;->provideInstance(Lcom/android/systemui/dagger/DependencyProvider;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideTimeTickHandlerFactory;->get()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method
