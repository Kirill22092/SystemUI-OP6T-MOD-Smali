.class public final Lcom/android/systemui/dagger/DependencyProvider_ProvideActivityManagerWrapperFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvideActivityManagerWrapperFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/android/systemui/dagger/DependencyProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DependencyProvider;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideActivityManagerWrapperFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    return-void
.end method

.method public static create(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideActivityManagerWrapperFactory;
    .locals 1

    .line 30
    new-instance v0, Lcom/android/systemui/dagger/DependencyProvider_ProvideActivityManagerWrapperFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideActivityManagerWrapperFactory;-><init>(Lcom/android/systemui/dagger/DependencyProvider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/shared/system/ActivityManagerWrapper;
    .locals 0

    .line 25
    invoke-static {p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideActivityManagerWrapperFactory;->proxyProvideActivityManagerWrapper(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideActivityManagerWrapper(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/shared/system/ActivityManagerWrapper;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DependencyProvider;->provideActivityManagerWrapper()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 35
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/shared/system/ActivityManagerWrapper;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideActivityManagerWrapperFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    invoke-static {p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideActivityManagerWrapperFactory;->provideInstance(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideActivityManagerWrapperFactory;->get()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    return-object p0
.end method
