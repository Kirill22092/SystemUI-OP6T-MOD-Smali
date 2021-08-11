.class Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;
.super Ljava/lang/Object;
.source "ImageWallpaperRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WallpaperTexture"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mDimensions:Landroid/graphics/Rect;

.field private final mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWcgContent:Z


# direct methods
.method private constructor <init>(Landroid/app/WallpaperManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWallpaperManager:Landroid/app/WallpaperManager;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mDimensions:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/WallpaperManager;Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;-><init>(Landroid/app/WallpaperManager;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->isWcgContent()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->getTextureDimensions()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private getHash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "null"

    :goto_0
    return-object p0
.end method

.method private getTextureDimensions()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mDimensions:Landroid/graphics/Rect;

    return-object p0
.end method

.method private isWcgContent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWcgContent:Z

    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public use(Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->getBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/WallpaperManager;->wallpaperSupportsWcg(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWcgContent:Z

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mDimensions:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t get bitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter p1

    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    :cond_3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
