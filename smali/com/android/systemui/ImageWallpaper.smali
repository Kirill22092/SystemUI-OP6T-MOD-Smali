.class public Lcom/android/systemui/ImageWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ImageWallpaper$GLEngine;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mWorker:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/ImageWallpaper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/android/systemui/ImageWallpaper;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 58
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    .line 59
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/android/systemui/ImageWallpaper;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 60
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    .line 65
    new-instance v0, Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-direct {v0, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;-><init>(Lcom/android/systemui/ImageWallpaper;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 70
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    .line 71
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    return-void
.end method
