.class public final synthetic Lcom/android/systemui/glwallpaper/-$$Lambda$ImageWallpaperRenderer$tbObMkzj33QDR6llFkRAHA0TWow;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/glwallpaper/-$$Lambda$ImageWallpaperRenderer$tbObMkzj33QDR6llFkRAHA0TWow;->f$0:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/-$$Lambda$ImageWallpaperRenderer$tbObMkzj33QDR6llFkRAHA0TWow;->f$0:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->lambda$onSurfaceCreated$0$ImageWallpaperRenderer(Landroid/graphics/Bitmap;)V

    return-void
.end method
