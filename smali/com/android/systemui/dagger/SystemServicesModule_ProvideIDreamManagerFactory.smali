.class public final Lcom/android/systemui/dagger/SystemServicesModule_ProvideIDreamManagerFactory;
.super Ljava/lang/Object;
.source "SystemServicesModule_ProvideIDreamManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/service/dreams/IDreamManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/dagger/SystemServicesModule_ProvideIDreamManagerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIDreamManagerFactory;

    invoke-direct {v0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIDreamManagerFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIDreamManagerFactory;->INSTANCE:Lcom/android/systemui/dagger/SystemServicesModule_ProvideIDreamManagerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/dagger/SystemServicesModule_ProvideIDreamManagerFactory;
    .locals 1

    .line 26
    sget-object v0, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIDreamManagerFactory;->INSTANCE:Lcom/android/systemui/dagger/SystemServicesModule_ProvideIDreamManagerFactory;

    return-object v0
.end method

.method public static provideInstance()Landroid/service/dreams/IDreamManager;
    .locals 1

    .line 22
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIDreamManagerFactory;->proxyProvideIDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    return-object v0
.end method

.method public static proxyProvideIDreamManager()Landroid/service/dreams/IDreamManager;
    .locals 2

    .line 31
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule;->provideIDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 30
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/service/dreams/IDreamManager;

    return-object v0
.end method


# virtual methods
.method public get()Landroid/service/dreams/IDreamManager;
    .locals 0

    .line 18
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIDreamManagerFactory;->provideInstance()Landroid/service/dreams/IDreamManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIDreamManagerFactory;->get()Landroid/service/dreams/IDreamManager;

    move-result-object p0

    return-object p0
.end method
