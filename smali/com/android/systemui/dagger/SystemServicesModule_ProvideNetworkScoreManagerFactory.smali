.class public final Lcom/android/systemui/dagger/SystemServicesModule_ProvideNetworkScoreManagerFactory;
.super Ljava/lang/Object;
.source "SystemServicesModule_ProvideNetworkScoreManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/net/NetworkScoreManager;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dagger/SystemServicesModule_ProvideNetworkScoreManagerFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideNetworkScoreManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/dagger/SystemServicesModule_ProvideNetworkScoreManagerFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/dagger/SystemServicesModule_ProvideNetworkScoreManagerFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideNetworkScoreManagerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Landroid/net/NetworkScoreManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Landroid/net/NetworkScoreManager;"
        }
    .end annotation

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideNetworkScoreManagerFactory;->proxyProvideNetworkScoreManager(Landroid/content/Context;)Landroid/net/NetworkScoreManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideNetworkScoreManager(Landroid/content/Context;)Landroid/net/NetworkScoreManager;
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/dagger/SystemServicesModule;->provideNetworkScoreManager(Landroid/content/Context;)Landroid/net/NetworkScoreManager;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/net/NetworkScoreManager;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/net/NetworkScoreManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dagger/SystemServicesModule_ProvideNetworkScoreManagerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideNetworkScoreManagerFactory;->provideInstance(Ljavax/inject/Provider;)Landroid/net/NetworkScoreManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideNetworkScoreManagerFactory;->get()Landroid/net/NetworkScoreManager;

    move-result-object p0

    return-object p0
.end method
