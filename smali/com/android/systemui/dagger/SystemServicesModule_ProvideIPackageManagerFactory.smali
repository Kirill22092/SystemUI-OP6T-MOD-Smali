.class public final Lcom/android/systemui/dagger/SystemServicesModule_ProvideIPackageManagerFactory;
.super Ljava/lang/Object;
.source "SystemServicesModule_ProvideIPackageManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/content/pm/IPackageManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/dagger/SystemServicesModule_ProvideIPackageManagerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIPackageManagerFactory;

    invoke-direct {v0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIPackageManagerFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIPackageManagerFactory;->INSTANCE:Lcom/android/systemui/dagger/SystemServicesModule_ProvideIPackageManagerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/dagger/SystemServicesModule_ProvideIPackageManagerFactory;
    .locals 1

    sget-object v0, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIPackageManagerFactory;->INSTANCE:Lcom/android/systemui/dagger/SystemServicesModule_ProvideIPackageManagerFactory;

    return-object v0
.end method

.method public static provideInstance()Landroid/content/pm/IPackageManager;
    .locals 1

    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIPackageManagerFactory;->proxyProvideIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static proxyProvideIPackageManager()Landroid/content/pm/IPackageManager;
    .locals 2

    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule;->provideIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/IPackageManager;

    return-object v0
.end method


# virtual methods
.method public get()Landroid/content/pm/IPackageManager;
    .locals 0

    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIPackageManagerFactory;->provideInstance()Landroid/content/pm/IPackageManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIPackageManagerFactory;->get()Landroid/content/pm/IPackageManager;

    move-result-object p0

    return-object p0
.end method
