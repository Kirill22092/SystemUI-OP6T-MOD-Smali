.class public Lcom/android/systemui/bubbles/BubbleIconFactory;
.super Lcom/android/launcher3/icons/BaseIconFactory;
.source "BubbleIconFactory.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->individual_bubble_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 45
    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method getBadgeBitmap(Landroid/graphics/drawable/Drawable;Z)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 9

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleIconFactory;->getBadgeSize()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 82
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 84
    new-instance v0, Lcom/android/launcher3/icons/ShadowGenerator;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleIconFactory;->getBadgeSize()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/icons/ShadowGenerator;-><init>(I)V

    if-nez p2, :cond_0

    .line 86
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2}, Landroid/graphics/Canvas;-><init>()V

    .line 87
    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 88
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/icons/ShadowGenerator;->recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0

    .line 91
    :cond_0
    iget-object p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x105014f

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    .line 93
    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settingslib/R$color;->important_conversation:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    .line 95
    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 97
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 98
    new-instance v5, Landroid/graphics/Rect;

    float-to-int v6, p2

    .line 99
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-direct {v5, v6, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 100
    invoke-virtual {v4, p1, v3, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 101
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 102
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    .line 104
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 106
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v5, p2

    invoke-virtual {v4, v1, v3, v5, p1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 108
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1, v4}, Lcom/android/launcher3/icons/ShadowGenerator;->recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 109
    invoke-virtual {p0, v2}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method getBadgeSize()I
    .locals 1

    .line 50
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/launcher3/icons/R$dimen;->profile_badge_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method getBubbleBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BitmapInfo;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 117
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Z)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1

    .line 121
    iget-object v0, p1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    .line 122
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object p2, p2, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 121
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/icons/BaseIconFactory;->badgeWithDrawable(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method getBubbleDrawable(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p2, :cond_0

    const-string p0, "launcherapps"

    .line 60
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 62
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p3, :cond_3

    .line 65
    invoke-virtual {p3}, Landroid/graphics/drawable/Icon;->getType()I

    move-result p0

    const/4 p2, 0x4

    if-eq p0, p2, :cond_1

    .line 66
    invoke-virtual {p3}, Landroid/graphics/drawable/Icon;->getType()I

    move-result p0

    const/4 p2, 0x6

    if-ne p0, p2, :cond_2

    .line 67
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 68
    invoke-virtual {p3}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p1, p0, p2, v0}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 71
    :cond_2
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
