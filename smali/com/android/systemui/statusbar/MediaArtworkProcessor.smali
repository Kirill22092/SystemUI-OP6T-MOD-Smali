.class public final Lcom/android/systemui/statusbar/MediaArtworkProcessor;
.super Ljava/lang/Object;
.source "MediaArtworkProcessor.kt"


# instance fields
.field private mArtworkCache:Landroid/graphics/Bitmap;

.field private final mTmpSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mTmpSize:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final clearCache()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mArtworkCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mArtworkCache:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final processArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "inBitmap"

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "artwork"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mArtworkCache:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    return-object v1

    .line 51
    :cond_0
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v1

    .line 52
    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v2

    const/4 v3, 0x0

    .line 58
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mTmpSize:Landroid/graphics/Point;

    invoke-virtual {p1, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 59
    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {p1, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 60
    iget-object v4, p0, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mTmpSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v4, 0x6

    iget-object p0, p0, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mTmpSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    div-int/lit8 p0, p0, 0x6

    invoke-static {v4, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p1, p0}, Landroid/util/MathUtils;->fitRect(Landroid/graphics/Rect;I)V

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const/4 v4, 0x1

    invoke-static {p2, p0, p1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 65
    :try_start_1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq p1, v4, :cond_2

    .line 67
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, p1, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 68
    :try_start_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p0, p1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto/16 :goto_6

    :catch_0
    move-exception p0

    move-object v0, v3

    goto/16 :goto_4

    .line 70
    :cond_2
    :goto_0
    :try_start_3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 71
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 70
    invoke-static {p1, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 74
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v4, 0x2

    .line 73
    invoke-static {v1, p0, v0, v4}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 75
    :try_start_4
    invoke-static {v1, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/high16 v4, 0x41c80000    # 25.0f

    .line 77
    :try_start_5
    invoke-virtual {v2, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 78
    invoke-virtual {v2, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 79
    invoke-virtual {v2, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 84
    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 86
    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->findBackgroundSwatch(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Swatch;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_3

    .line 98
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    :cond_3
    if-eqz v1, :cond_4

    .line 99
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 100
    :cond_4
    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 101
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v1, v3

    :goto_1
    move-object v3, v0

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v1, v3

    goto :goto_3

    :catchall_3
    move-exception p1

    move-object v1, v3

    :goto_2
    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    goto :goto_6

    :catch_3
    move-exception p1

    move-object v0, v3

    move-object v1, v0

    :goto_3
    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    goto :goto_5

    :catchall_4
    move-exception p0

    move-object p1, v3

    move-object v1, p1

    goto :goto_6

    :catch_4
    move-exception p0

    move-object p1, v3

    move-object v0, p1

    :goto_4
    move-object v1, v0

    :goto_5
    :try_start_6
    const-string p2, "MediaArtworkProcessor"

    const-string v4, "error while processing artwork"

    .line 95
    invoke-static {p2, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-eqz v0, :cond_5

    .line 98
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    :cond_5
    if-eqz v1, :cond_6

    .line 99
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 100
    :cond_6
    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    if-eqz p1, :cond_7

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    return-object v3

    :catchall_5
    move-exception p0

    move-object v3, v0

    :goto_6
    if-eqz v3, :cond_8

    .line 98
    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    :cond_8
    if-eqz v1, :cond_9

    .line 99
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 100
    :cond_9
    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    if-eqz p1, :cond_a

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    throw p0
.end method
