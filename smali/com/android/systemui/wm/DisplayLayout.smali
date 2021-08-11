.class public Lcom/android/systemui/wm/DisplayLayout;
.super Ljava/lang/Object;
.source "DisplayLayout.java"


# instance fields
.field private mCutout:Landroid/view/DisplayCutout;

.field private mDensityDpi:I

.field private mHasNavigationBar:Z

.field private mHasStatusBar:Z

.field private mHeight:I

.field private mNavBarFrameHeight:I

.field private final mNonDecorInsets:Landroid/graphics/Rect;

.field private mRotation:I

.field private final mStableInsets:Landroid/graphics/Rect;

.field private mUiMode:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mHasNavigationBar:Z

    iput-boolean v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mHasStatusBar:Z

    iput v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mNavBarFrameHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mHasNavigationBar:Z

    iput-boolean v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mHasStatusBar:Z

    iput v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mNavBarFrameHeight:I

    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {p2, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {v1, p1, v0}, Lcom/android/systemui/wm/DisplayLayout;->hasNavigationBar(Landroid/view/DisplayInfo;Landroid/content/Context;I)Z

    move-result p1

    invoke-static {v0}, Lcom/android/systemui/wm/DisplayLayout;->hasStatusBar(I)Z

    move-result v0

    invoke-direct {p0, v1, p2, p1, v0}, Lcom/android/systemui/wm/DisplayLayout;->init(Landroid/view/DisplayInfo;Landroid/content/res/Resources;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/wm/DisplayLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mHasNavigationBar:Z

    iput-boolean v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mHasStatusBar:Z

    iput v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mNavBarFrameHeight:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/wm/DisplayLayout;->set(Lcom/android/systemui/wm/DisplayLayout;)V

    return-void
.end method

.method public static calculateDisplayCutoutForRotation(Landroid/view/DisplayCutout;III)Landroid/view/DisplayCutout;
    .locals 7

    if-eqz p0, :cond_8

    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    if-ne p0, v0, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/RotationUtils;->rotateInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    if-nez p1, :cond_1

    invoke-static {p0, p2, p3}, Lcom/android/systemui/wm/DisplayLayout;->computeSafeInsets(Landroid/view/DisplayCutout;II)Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object p0

    array-length v3, p0

    new-array v3, v3, [Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v2, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_1
    array-length v5, p0

    if-ge v2, v5, :cond_5

    new-instance v5, Landroid/graphics/Rect;

    aget-object v6, p0, v2

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v5, v4, p1}, Lcom/android/systemui/wm/DisplayLayout;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    :cond_4
    invoke-static {v2, p1}, Lcom/android/systemui/wm/DisplayLayout;->getBoundIndexFromRotation(II)I

    move-result v6

    aput-object v5, v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-static {v3, v0}, Landroid/view/DisplayCutout;->fromBoundsAndWaterfall([Landroid/graphics/Rect;Landroid/graphics/Insets;)Landroid/view/DisplayCutout;

    move-result-object p0

    if-eqz v1, :cond_6

    move p1, p3

    goto :goto_2

    :cond_6
    move p1, p2

    :goto_2
    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    move p2, p3

    :goto_3
    invoke-static {p0, p1, p2}, Lcom/android/systemui/wm/DisplayLayout;->computeSafeInsets(Landroid/view/DisplayCutout;II)Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_4
    const/4 p0, 0x0

    return-object p0
.end method

.method static computeNonDecorInsets(Landroid/content/res/Resources;IIILandroid/view/DisplayCutout;ILandroid/graphics/Rect;Z)V
    .locals 0

    invoke-virtual {p6}, Landroid/graphics/Rect;->setEmpty()V

    if-eqz p7, :cond_3

    invoke-static {p0, p2, p3, p1}, Lcom/android/systemui/wm/DisplayLayout;->navigationBarPosition(Landroid/content/res/Resources;III)I

    move-result p1

    const/4 p7, 0x1

    if-le p2, p3, :cond_0

    move p2, p7

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p0, p1, p2, p5}, Lcom/android/systemui/wm/DisplayLayout;->getNavigationBarSize(Landroid/content/res/Resources;IZI)I

    move-result p0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    iput p0, p6, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    iput p0, p6, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_2
    if-ne p1, p7, :cond_3

    iput p0, p6, Landroid/graphics/Rect;->left:I

    :cond_3
    :goto_1
    if-eqz p4, :cond_4

    iget p0, p6, Landroid/graphics/Rect;->left:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p1

    add-int/2addr p0, p1

    iput p0, p6, Landroid/graphics/Rect;->left:I

    iget p0, p6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p1

    add-int/2addr p0, p1

    iput p0, p6, Landroid/graphics/Rect;->top:I

    iget p0, p6, Landroid/graphics/Rect;->right:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p1

    add-int/2addr p0, p1

    iput p0, p6, Landroid/graphics/Rect;->right:I

    iget p0, p6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p1

    add-int/2addr p0, p1

    iput p0, p6, Landroid/graphics/Rect;->bottom:I

    :cond_4
    return-void
.end method

.method private static computeSafeInsets(Landroid/util/Size;Landroid/view/DisplayCutout;)Landroid/graphics/Rect;
    .locals 5

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->left:I

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v1, v2}, Lcom/android/systemui/wm/DisplayLayout;->findCutoutInsetForSide(Landroid/util/Size;Landroid/graphics/Rect;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->top:I

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v2

    const/16 v3, 0x30

    invoke-static {p0, v2, v3}, Lcom/android/systemui/wm/DisplayLayout;->findCutoutInsetForSide(Landroid/util/Size;Landroid/graphics/Rect;I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->right:I

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {p0, v3, v4}, Lcom/android/systemui/wm/DisplayLayout;->findCutoutInsetForSide(Landroid/util/Size;Landroid/graphics/Rect;I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object p1

    const/16 v4, 0x50

    invoke-static {p0, p1, v4}, Lcom/android/systemui/wm/DisplayLayout;->findCutoutInsetForSide(Landroid/util/Size;Landroid/graphics/Rect;I)I

    move-result p0

    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not implemented: display="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " cutout="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static computeSafeInsets(Landroid/view/DisplayCutout;II)Landroid/view/DisplayCutout;
    .locals 1

    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    invoke-static {v0, p0}, Lcom/android/systemui/wm/DisplayLayout;->computeSafeInsets(Landroid/util/Size;Landroid/view/DisplayCutout;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/DisplayCutout;->replaceSafeInsets(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method private static convertNonDecorInsetsToStableInsets(Landroid/content/res/Resources;Landroid/graphics/Rect;IIZ)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    :cond_0
    if-le p2, p3, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2, p0}, Lcom/android/systemui/wm/DisplayLayout;->getStatusBarHeight(ZLandroid/content/res/Resources;)I

    move-result p0

    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method private static findCutoutInsetForSide(Landroid/util/Size;Landroid/graphics/Rect;I)I
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    if-eq p2, v0, :cond_4

    const/4 v0, 0x5

    if-eq p2, v0, :cond_3

    const/16 v0, 0x30

    if-eq p2, v0, :cond_2

    const/16 v0, 0x50

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unknown gravity: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_4
    iget p0, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static getBoundIndexFromRotation(II)I
    .locals 0

    sub-int/2addr p0, p1

    if-gez p0, :cond_0

    add-int/lit8 p0, p0, 0x4

    :cond_0
    return p0
.end method

.method public static getNavigationBarFrameHeight(Landroid/content/res/Resources;Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x10501ad

    goto :goto_0

    :cond_0
    const p1, 0x10501ac

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getNavigationBarSize(Landroid/content/res/Resources;IZI)I
    .locals 1

    and-int/lit8 p3, p3, 0xf

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/4 v0, 0x4

    if-eqz p3, :cond_3

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_1

    const p1, 0x10501b2

    goto :goto_1

    :cond_1
    const p1, 0x10501b0

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_2
    const p1, 0x10501b5

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_3
    if-ne p1, v0, :cond_5

    if-eqz p2, :cond_4

    const p1, 0x10501b1

    goto :goto_2

    :cond_4
    const p1, 0x10501af

    :goto_2
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_5
    const p1, 0x10501b4

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method static getStatusBarHeight(ZLandroid/content/res/Resources;)I
    .locals 0

    if-eqz p0, :cond_0

    const p0, 0x105024a

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, 0x105024b

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method static hasNavigationBar(Landroid/view/DisplayInfo;Landroid/content/Context;I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_2

    const-string p0, "qemu.hw.mainkeys"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "1"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return v1

    :cond_0
    const-string p2, "0"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x11100c9

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0

    :cond_2
    iget p2, p0, Landroid/view/DisplayInfo;->type:I

    const/4 v2, 0x5

    if-ne p2, v2, :cond_3

    iget p2, p0, Landroid/view/DisplayInfo;->ownerUid:I

    const/16 v2, 0x3e8

    if-eq p2, v2, :cond_3

    move p2, v0

    goto :goto_0

    :cond_3
    move p2, v1

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "force_desktop_mode_on_external_displays"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_4

    move p1, v0

    goto :goto_1

    :cond_4
    move p1, v1

    :goto_1
    iget p0, p0, Landroid/view/DisplayInfo;->flags:I

    and-int/lit8 p0, p0, 0x40

    if-nez p0, :cond_6

    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :cond_6
    :goto_2
    return v0
.end method

.method static hasStatusBar(I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private init(Landroid/view/DisplayInfo;Landroid/content/res/Resources;ZZ)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mUiMode:I

    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mWidth:I

    iget v0, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mHeight:I

    iget v0, p1, Landroid/view/DisplayInfo;->rotation:I

    iput v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mRotation:I

    iget-object v0, p1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    iget p1, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput p1, p0, Lcom/android/systemui/wm/DisplayLayout;->mDensityDpi:I

    iput-boolean p3, p0, Lcom/android/systemui/wm/DisplayLayout;->mHasNavigationBar:Z

    iput-boolean p4, p0, Lcom/android/systemui/wm/DisplayLayout;->mHasStatusBar:Z

    invoke-direct {p0, p2}, Lcom/android/systemui/wm/DisplayLayout;->recalcInsets(Landroid/content/res/Resources;)V

    return-void
.end method

.method public static navigationBarPosition(Landroid/content/res/Resources;III)I
    .locals 2

    const/4 v0, 0x1

    if-eq p1, p2, :cond_0

    const v1, 0x11100a5

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    if-le p1, p2, :cond_2

    if-ne p3, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x4

    return p0
.end method

.method private recalcInsets(Landroid/content/res/Resources;)V
    .locals 8

    iget v1, p0, Lcom/android/systemui/wm/DisplayLayout;->mRotation:I

    iget v2, p0, Lcom/android/systemui/wm/DisplayLayout;->mWidth:I

    iget v3, p0, Lcom/android/systemui/wm/DisplayLayout;->mHeight:I

    iget-object v4, p0, Lcom/android/systemui/wm/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    iget v5, p0, Lcom/android/systemui/wm/DisplayLayout;->mUiMode:I

    iget-object v6, p0, Lcom/android/systemui/wm/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    iget-boolean v7, p0, Lcom/android/systemui/wm/DisplayLayout;->mHasNavigationBar:Z

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/wm/DisplayLayout;->computeNonDecorInsets(Landroid/content/res/Resources;IIILandroid/view/DisplayCutout;ILandroid/graphics/Rect;Z)V

    iget-object v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/wm/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mHasStatusBar:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wm/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/wm/DisplayLayout;->mWidth:I

    iget v3, p0, Lcom/android/systemui/wm/DisplayLayout;->mHeight:I

    invoke-static {p1, v1, v2, v3, v0}, Lcom/android/systemui/wm/DisplayLayout;->convertNonDecorInsetsToStableInsets(Landroid/content/res/Resources;Landroid/graphics/Rect;IIZ)V

    :cond_0
    iget v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mWidth:I

    iget v1, p0, Lcom/android/systemui/wm/DisplayLayout;->mHeight:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/android/systemui/wm/DisplayLayout;->getNavigationBarFrameHeight(Landroid/content/res/Resources;Z)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/wm/DisplayLayout;->mNavBarFrameHeight:I

    return-void
.end method

.method public static rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 2

    rem-int/lit8 p2, p2, 0x4

    add-int/lit8 p2, p2, 0x4

    rem-int/lit8 p2, p2, 0x4

    iget v0, p0, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    return-void

    :cond_0
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v1

    iput p2, p0, Landroid/graphics/Rect;->left:I

    iget p2, p0, Landroid/graphics/Rect;->right:I

    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/graphics/Rect;->top:I

    return-void

    :cond_1
    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget p2, p0, Landroid/graphics/Rect;->right:I

    sub-int p2, p1, p2

    iput p2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->right:I

    return-void

    :cond_2
    iget p2, p0, Landroid/graphics/Rect;->top:I

    iput p2, p0, Landroid/graphics/Rect;->left:I

    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v1

    iput p2, p0, Landroid/graphics/Rect;->top:I

    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    iput p2, p0, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method public density()F
    .locals 1

    iget p0, p0, Lcom/android/systemui/wm/DisplayLayout;->mDensityDpi:I

    int-to-float p0, p0

    const v0, 0x3bcccccd    # 0.00625f

    mul-float/2addr p0, v0

    return p0
.end method

.method public getNavigationBarPosition(Landroid/content/res/Resources;)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mWidth:I

    iget v1, p0, Lcom/android/systemui/wm/DisplayLayout;->mHeight:I

    iget p0, p0, Lcom/android/systemui/wm/DisplayLayout;->mRotation:I

    invoke-static {p1, v0, v1, p0}, Lcom/android/systemui/wm/DisplayLayout;->navigationBarPosition(Landroid/content/res/Resources;III)I

    move-result p0

    return p0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mWidth:I

    iget p0, p0, Lcom/android/systemui/wm/DisplayLayout;->mHeight:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public getStableBounds(Landroid/graphics/Rect;)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mWidth:I

    iget v1, p0, Lcom/android/systemui/wm/DisplayLayout;->mHeight:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lcom/android/systemui/wm/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    return-void
.end method

.method public height()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/wm/DisplayLayout;->mHeight:I

    return p0
.end method

.method public isLandscape()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mWidth:I

    iget p0, p0, Lcom/android/systemui/wm/DisplayLayout;->mHeight:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public navBarFrameHeight()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/wm/DisplayLayout;->mNavBarFrameHeight:I

    return p0
.end method

.method public nonDecorInsets()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wm/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method public rotateTo(Landroid/content/res/Resources;I)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mRotation:I

    sub-int v0, p2, v0

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/systemui/wm/DisplayLayout;->mWidth:I

    iget v3, p0, Lcom/android/systemui/wm/DisplayLayout;->mHeight:I

    iput p2, p0, Lcom/android/systemui/wm/DisplayLayout;->mRotation:I

    if-eqz v1, :cond_1

    iput v3, p0, Lcom/android/systemui/wm/DisplayLayout;->mWidth:I

    iput v2, p0, Lcom/android/systemui/wm/DisplayLayout;->mHeight:I

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/wm/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/wm/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    invoke-static {p2, v0, v2, v3}, Lcom/android/systemui/wm/DisplayLayout;->calculateDisplayCutoutForRotation(Landroid/view/DisplayCutout;III)Landroid/view/DisplayCutout;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/wm/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/wm/DisplayLayout;->recalcInsets(Landroid/content/res/Resources;)V

    return-void
.end method

.method public rotation()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/wm/DisplayLayout;->mRotation:I

    return p0
.end method

.method public set(Lcom/android/systemui/wm/DisplayLayout;)V
    .locals 2

    iget v0, p1, Lcom/android/systemui/wm/DisplayLayout;->mUiMode:I

    iput v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mUiMode:I

    iget v0, p1, Lcom/android/systemui/wm/DisplayLayout;->mWidth:I

    iput v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mWidth:I

    iget v0, p1, Lcom/android/systemui/wm/DisplayLayout;->mHeight:I

    iput v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mHeight:I

    iget-object v0, p1, Lcom/android/systemui/wm/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    iput-object v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    iget v0, p1, Lcom/android/systemui/wm/DisplayLayout;->mRotation:I

    iput v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mRotation:I

    iget v0, p1, Lcom/android/systemui/wm/DisplayLayout;->mDensityDpi:I

    iput v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mDensityDpi:I

    iget-boolean v0, p1, Lcom/android/systemui/wm/DisplayLayout;->mHasNavigationBar:Z

    iput-boolean v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mHasNavigationBar:Z

    iget-boolean v0, p1, Lcom/android/systemui/wm/DisplayLayout;->mHasStatusBar:Z

    iput-boolean v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mHasStatusBar:Z

    iget-object v0, p0, Lcom/android/systemui/wm/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/systemui/wm/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/systemui/wm/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/android/systemui/wm/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public stableInsets()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wm/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method public width()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/wm/DisplayLayout;->mWidth:I

    return p0
.end method
