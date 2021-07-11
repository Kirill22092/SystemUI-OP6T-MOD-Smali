.class public final Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWindowManagerFactory;
.super Ljava/lang/Object;
.source "SystemServicesModule_ProvideIWindowManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/view/IWindowManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWindowManagerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWindowManagerFactory;

    invoke-direct {v0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWindowManagerFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWindowManagerFactory;->INSTANCE:Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWindowManagerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWindowManagerFactory;
    .locals 1

    .line 26
    sget-object v0, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWindowManagerFactory;->INSTANCE:Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWindowManagerFactory;

    return-object v0
.end method

.method public static provideInstance()Landroid/view/IWindowManager;
    .locals 1

    .line 22
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWindowManagerFactory;->proxyProvideIWindowManager()Landroid/view/IWindowManager;

    move-result-object v0

    return-object v0
.end method

.method public static proxyProvideIWindowManager()Landroid/view/IWindowManager;
    .locals 2

    .line 31
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule;->provideIWindowManager()Landroid/view/IWindowManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 30
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/IWindowManager;

    return-object v0
.end method


# virtual methods
.method public get()Landroid/view/IWindowManager;
    .locals 0

    .line 18
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWindowManagerFactory;->provideInstance()Landroid/view/IWindowManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWindowManagerFactory;->get()Landroid/view/IWindowManager;

    move-result-object p0

    return-object p0
.end method
