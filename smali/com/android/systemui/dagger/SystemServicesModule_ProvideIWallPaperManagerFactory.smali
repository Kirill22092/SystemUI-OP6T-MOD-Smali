.class public final Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWallPaperManagerFactory;
.super Ljava/lang/Object;
.source "SystemServicesModule_ProvideIWallPaperManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/app/IWallpaperManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWallPaperManagerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWallPaperManagerFactory;

    invoke-direct {v0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWallPaperManagerFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWallPaperManagerFactory;->INSTANCE:Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWallPaperManagerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWallPaperManagerFactory;
    .locals 1

    .line 28
    sget-object v0, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWallPaperManagerFactory;->INSTANCE:Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWallPaperManagerFactory;

    return-object v0
.end method

.method public static provideInstance()Landroid/app/IWallpaperManager;
    .locals 1

    .line 24
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWallPaperManagerFactory;->proxyProvideIWallPaperManager()Landroid/app/IWallpaperManager;

    move-result-object v0

    return-object v0
.end method

.method public static proxyProvideIWallPaperManager()Landroid/app/IWallpaperManager;
    .locals 1

    .line 33
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule;->provideIWallPaperManager()Landroid/app/IWallpaperManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get()Landroid/app/IWallpaperManager;
    .locals 0

    .line 19
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWallPaperManagerFactory;->provideInstance()Landroid/app/IWallpaperManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWallPaperManagerFactory;->get()Landroid/app/IWallpaperManager;

    move-result-object p0

    return-object p0
.end method
