.class public Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;
.super Ljava/lang/Object;
.source "MediaNotificationProcessor.java"


# instance fields
.field private final mBlackWhiteFilter:Landroidx/palette/graphics/Palette$Filter;

.field private final mColorizer:Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;

.field private final mContext:Landroid/content/Context;

.field private final mPackageContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 1

    .line 81
    new-instance v0, Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v0, Lcom/android/systemui/statusbar/notification/-$$Lambda$MediaNotificationProcessor$oWRwwE503YseXSqqQUwqkZxEskY;->INSTANCE:Lcom/android/systemui/statusbar/notification/-$$Lambda$MediaNotificationProcessor$oWRwwE503YseXSqqQUwqkZxEskY;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mBlackWhiteFilter:Landroidx/palette/graphics/Palette$Filter;

    .line 87
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mPackageContext:Landroid/content/Context;

    .line 89
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mColorizer:Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;

    return-void
.end method

.method public static findBackgroundSwatch(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Swatch;
    .locals 0

    .line 275
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->generateArtworkPaletteBuilder(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Builder;->generate()Landroidx/palette/graphics/Palette;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->findBackgroundSwatch(Landroidx/palette/graphics/Palette;)Landroidx/palette/graphics/Palette$Swatch;

    move-result-object p0

    return-object p0
.end method

.method public static findBackgroundSwatch(Landroidx/palette/graphics/Palette;)Landroidx/palette/graphics/Palette$Swatch;
    .locals 5

    .line 286
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette;->getDominantSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v0

    if-nez v0, :cond_0

    .line 288
    new-instance p0, Landroidx/palette/graphics/Palette$Swatch;

    const/4 v0, -0x1

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Landroidx/palette/graphics/Palette$Swatch;-><init>(II)V

    return-object p0

    .line 291
    :cond_0
    invoke-virtual {v0}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->isWhiteOrBlack([F)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 295
    :cond_1
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette;->getSwatches()Ljava/util/List;

    move-result-object p0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    .line 298
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/palette/graphics/Palette$Swatch;

    if-eq v3, v0, :cond_2

    .line 300
    invoke-virtual {v3}, Landroidx/palette/graphics/Palette$Swatch;->getPopulation()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v4, v1

    if-lez v4, :cond_2

    .line 301
    invoke-virtual {v3}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->isWhiteOrBlack([F)Z

    move-result v4

    if-nez v4, :cond_2

    .line 303
    invoke-virtual {v3}, Landroidx/palette/graphics/Palette$Swatch;->getPopulation()I

    move-result v1

    int-to-float v1, v1

    move-object v2, v3

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    return-object v0

    .line 309
    :cond_4
    invoke-virtual {v0}, Landroidx/palette/graphics/Palette$Swatch;->getPopulation()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    const/high16 v1, 0x40200000    # 2.5f

    cmpl-float p0, p0, v1

    if-lez p0, :cond_5

    return-object v0

    :cond_5
    return-object v2
.end method

.method public static generateArtworkPaletteBuilder(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Builder;
    .locals 3

    .line 331
    invoke-static {p0}, Landroidx/palette/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Builder;

    move-result-object v0

    .line 332
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p0}, Landroidx/palette/graphics/Palette$Builder;->setRegion(IIII)Landroidx/palette/graphics/Palette$Builder;

    .line 333
    invoke-virtual {v0}, Landroidx/palette/graphics/Palette$Builder;->clearFilters()Landroidx/palette/graphics/Palette$Builder;

    const/16 p0, 0x57e4

    .line 334
    invoke-virtual {v0, p0}, Landroidx/palette/graphics/Palette$Builder;->resizeBitmapArea(I)Landroidx/palette/graphics/Palette$Builder;

    return-object v0
.end method

.method private static hasEnoughPopulation(Landroidx/palette/graphics/Palette$Swatch;)Z
    .locals 4

    if-eqz p0, :cond_0

    .line 265
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Swatch;->getPopulation()I

    move-result p0

    int-to-float p0, p0

    const v0, 0x46afc800    # 22500.0f

    div-float/2addr p0, v0

    float-to-double v0, p0

    const-wide v2, 0x3f60624dd2f1a9fcL    # 0.002

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isBlack([F)Z
    .locals 1

    const/4 v0, 0x2

    .line 345
    aget p0, p0, v0

    const v0, 0x3da3d70a    # 0.08f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isWhite([F)Z
    .locals 1

    const/4 v0, 0x2

    .line 352
    aget p0, p0, v0

    const v0, 0x3f666666    # 0.9f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isWhiteOrBlack([F)Z
    .locals 1

    .line 338
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->isBlack([F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->isWhite([F)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$new$0(I[F)Z
    .locals 0

    .line 72
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->isWhiteOrBlack([F)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$processNotification$1(FI[F)Z
    .locals 0

    const/4 p1, 0x0

    .line 154
    aget p2, p2, p1

    sub-float/2addr p2, p0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p2, 0x41200000    # 10.0f

    cmpl-float p2, p0, p2

    if-lez p2, :cond_0

    const/high16 p2, 0x43af0000    # 350.0f

    cmpg-float p0, p0, p2

    if-gez p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public static selectForegroundColor(ILandroidx/palette/graphics/Palette;)I
    .locals 6

    .line 179
    invoke-static {p0}, Lcom/android/internal/util/ContrastColorUtil;->isColorLight(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 180
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette;->getDarkVibrantSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v0

    .line 181
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette;->getVibrantSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v1

    .line 182
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette;->getDarkMutedSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v2

    .line 183
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette;->getMutedSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v3

    .line 184
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette;->getDominantSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v4

    const/high16 v5, -0x1000000

    .line 180
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->selectForegroundColorForSwatches(Landroidx/palette/graphics/Palette$Swatch;Landroidx/palette/graphics/Palette$Swatch;Landroidx/palette/graphics/Palette$Swatch;Landroidx/palette/graphics/Palette$Swatch;Landroidx/palette/graphics/Palette$Swatch;I)I

    move-result p0

    return p0

    .line 187
    :cond_0
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette;->getLightVibrantSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v0

    .line 188
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette;->getVibrantSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v1

    .line 189
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette;->getLightMutedSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v2

    .line 190
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette;->getMutedSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v3

    .line 191
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette;->getDominantSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v4

    const/4 v5, -0x1

    .line 187
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->selectForegroundColorForSwatches(Landroidx/palette/graphics/Palette$Swatch;Landroidx/palette/graphics/Palette$Swatch;Landroidx/palette/graphics/Palette$Swatch;Landroidx/palette/graphics/Palette$Swatch;Landroidx/palette/graphics/Palette$Swatch;I)I

    move-result p0

    return p0
.end method

.method private static selectForegroundColorForSwatches(Landroidx/palette/graphics/Palette$Swatch;Landroidx/palette/graphics/Palette$Swatch;Landroidx/palette/graphics/Palette$Swatch;Landroidx/palette/graphics/Palette$Swatch;Landroidx/palette/graphics/Palette$Swatch;I)I
    .locals 0

    .line 199
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->selectVibrantCandidate(Landroidx/palette/graphics/Palette$Swatch;Landroidx/palette/graphics/Palette$Swatch;)Landroidx/palette/graphics/Palette$Swatch;

    move-result-object p0

    if-nez p0, :cond_0

    .line 201
    invoke-static {p3, p2}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->selectMutedCandidate(Landroidx/palette/graphics/Palette$Swatch;Landroidx/palette/graphics/Palette$Swatch;)Landroidx/palette/graphics/Palette$Swatch;

    move-result-object p0

    :cond_0
    if-eqz p0, :cond_3

    if-ne p4, p0, :cond_1

    .line 205
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result p0

    return p0

    .line 206
    :cond_1
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Swatch;->getPopulation()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p4}, Landroidx/palette/graphics/Palette$Swatch;->getPopulation()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    const p2, 0x3c23d70a    # 0.01f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    .line 208
    invoke-virtual {p4}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    move-result-object p1

    const/4 p2, 0x1

    aget p1, p1, p2

    const p2, 0x3e428f5c    # 0.19f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    .line 209
    invoke-virtual {p4}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result p0

    return p0

    .line 211
    :cond_2
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result p0

    return p0

    .line 213
    :cond_3
    invoke-static {p4}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->hasEnoughPopulation(Landroidx/palette/graphics/Palette$Swatch;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 214
    invoke-virtual {p4}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result p0

    return p0

    :cond_4
    return p5
.end method

.method private static selectMutedCandidate(Landroidx/palette/graphics/Palette$Swatch;Landroidx/palette/graphics/Palette$Swatch;)Landroidx/palette/graphics/Palette$Swatch;
    .locals 4

    .line 222
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->hasEnoughPopulation(Landroidx/palette/graphics/Palette$Swatch;)Z

    move-result v0

    .line 223
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->hasEnoughPopulation(Landroidx/palette/graphics/Palette$Swatch;)Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 225
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    .line 226
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v2

    aget v1, v2, v1

    .line 227
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Swatch;->getPopulation()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroidx/palette/graphics/Palette$Swatch;->getPopulation()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v0, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return-object p0

    :cond_0
    return-object p1

    :cond_1
    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    if-eqz v1, :cond_3

    return-object p1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static selectVibrantCandidate(Landroidx/palette/graphics/Palette$Swatch;Landroidx/palette/graphics/Palette$Swatch;)Landroidx/palette/graphics/Palette$Swatch;
    .locals 2

    .line 243
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->hasEnoughPopulation(Landroidx/palette/graphics/Palette$Swatch;)Z

    move-result v0

    .line 244
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->hasEnoughPopulation(Landroidx/palette/graphics/Palette$Swatch;)Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 246
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Swatch;->getPopulation()I

    move-result v0

    .line 247
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette$Swatch;->getPopulation()I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-object p1

    :cond_0
    return-object p0

    :cond_1
    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    if-eqz v1, :cond_3

    return-object p1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public processNotification(Landroid/app/Notification;Landroid/app/Notification$Builder;)V
    .locals 8

    .line 100
    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    .line 106
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setRebuildStyledRemoteViews(Z)V

    .line 107
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mPackageContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 109
    invoke-virtual {p1}, Landroid/app/Notification;->isColorizedMedia()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 110
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 111
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    mul-int v4, p1, v3

    const/16 v5, 0x57e4

    if-le v4, v5, :cond_0

    const v5, 0x46afc800    # 22500.0f

    int-to-float v4, v4

    div-float/2addr v5, v4

    float-to-double v4, v5

    .line 114
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    int-to-double v6, p1

    mul-double/2addr v6, v4

    double-to-int p1, v6

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 118
    :cond_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 119
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 120
    invoke-virtual {v0, v2, v2, p1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 121
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 128
    :try_start_0
    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->generateArtworkPaletteBuilder(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Builder;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette$Builder;->generate()Landroidx/palette/graphics/Palette;

    move-result-object v3

    .line 142
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->findBackgroundSwatch(Landroidx/palette/graphics/Palette;)Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v3

    .line 143
    invoke-virtual {v3}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result v5

    const v6, 0x3ecccccd    # 0.4f

    .line 146
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v6, v7

    .line 147
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 148
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 146
    invoke-virtual {p1, v6, v2, v7, v4}, Landroidx/palette/graphics/Palette$Builder;->setRegion(IIII)Landroidx/palette/graphics/Palette$Builder;

    .line 150
    invoke-virtual {v3}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->isWhiteOrBlack([F)Z

    move-result v4

    if-nez v4, :cond_1

    .line 151
    invoke-virtual {v3}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v3

    aget v3, v3, v2

    .line 152
    new-instance v4, Lcom/android/systemui/statusbar/notification/-$$Lambda$MediaNotificationProcessor$jNuRDwOMbOj8fwROH917lxaryoM;

    invoke-direct {v4, v3}, Lcom/android/systemui/statusbar/notification/-$$Lambda$MediaNotificationProcessor$jNuRDwOMbOj8fwROH917lxaryoM;-><init>(F)V

    invoke-virtual {p1, v4}, Landroidx/palette/graphics/Palette$Builder;->addFilter(Landroidx/palette/graphics/Palette$Filter;)Landroidx/palette/graphics/Palette$Builder;

    .line 158
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mBlackWhiteFilter:Landroidx/palette/graphics/Palette$Filter;

    invoke-virtual {p1, v3}, Landroidx/palette/graphics/Palette$Builder;->addFilter(Landroidx/palette/graphics/Palette$Filter;)Landroidx/palette/graphics/Palette$Builder;

    .line 159
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette$Builder;->generate()Landroidx/palette/graphics/Palette;

    move-result-object p1

    .line 160
    invoke-static {v5, p1}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->selectForegroundColor(ILandroidx/palette/graphics/Palette;)I

    move-result p1

    .line 161
    invoke-virtual {p2, v5, p1}, Landroid/app/Notification$Builder;->setColorPalette(II)V

    goto :goto_1

    :catch_0
    move-exception p1

    .line 130
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v3, "MediaNotificationProcessor"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$color;->notification_material_background_color:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 133
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mColorizer:Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mContext:Landroid/content/Context;

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 133
    :goto_0
    invoke-virtual {v3, v0, p1, v1}, Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;->colorize(Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 136
    invoke-static {p0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    return-void

    .line 163
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$color;->notification_material_background_color:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v5

    .line 165
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mColorizer:Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mContext:Landroid/content/Context;

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    if-ne p0, v1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    .line 165
    :goto_2
    invoke-virtual {p1, v0, v5, v1}, Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;->colorize(Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 168
    invoke-static {p0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    :cond_5
    return-void
.end method
