.class public Lcom/oneplus/systemui/biometrics/OpCircleImageView;
.super Landroid/widget/ImageView;
.source "OpCircleImageView.java"


# static fields
.field private static final BRIGHTNESS_ALPHA_ARRAY:[[I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultBacklight:I

.field private mHasCustomizedHightlight:Z

.field mPaint:Landroid/graphics/Paint;

.field mPath:Landroid/graphics/Path;

.field private mRadius:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x15

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_d

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_e

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_f

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_10

    const/16 v3, 0x10

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_11

    const/16 v3, 0x11

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_12

    const/16 v3, 0x12

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_13

    const/16 v3, 0x13

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_14

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->BRIGHTNESS_ALPHA_ARRAY:[[I

    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0x1
        0xf1
    .end array-data

    :array_2
    .array-data 4
        0x2
        0xec
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xeb
    .end array-data

    :array_4
    .array-data 4
        0x5
        0xea
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xe8
    .end array-data

    :array_6
    .array-data 4
        0xa
        0xe4
    .end array-data

    :array_7
    .array-data 4
        0x14
        0xdc
    .end array-data

    :array_8
    .array-data 4
        0x1e
        0xd4
    .end array-data

    :array_9
    .array-data 4
        0x2d
        0xcc
    .end array-data

    :array_a
    .array-data 4
        0x46
        0xbe
    .end array-data

    :array_b
    .array-data 4
        0x64
        0xb3
    .end array-data

    :array_c
    .array-data 4
        0x96
        0xa6
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x90
    .end array-data

    :array_e
    .array-data 4
        0x12c
        0x83
    .end array-data

    :array_f
    .array-data 4
        0x190
        0x70
    .end array-data

    :array_10
    .array-data 4
        0x1f4
        0x60
    .end array-data

    :array_11
    .array-data 4
        0x258
        0x53
    .end array-data

    :array_12
    .array-data 4
        0x320
        0x3c
    .end array-data

    :array_13
    .array-data 4
        0x3ff
        0x22
    .end array-data

    :array_14
    .array-data 4
        0x7d0
        0x83
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getDimAlpha()I
    .locals 11

    sget-object v0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->BRIGHTNESS_ALPHA_ARRAY:[[I

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mDefaultBacklight:I

    const-string v3, "screen_brightness"

    const/4 v4, -0x2

    invoke-static {v1, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    array-length v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "brightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpCircleImageView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    aget v4, v4, v2

    if-lt v4, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v4, 0x1

    if-nez v3, :cond_2

    aget-object p0, v0, v2

    aget p0, p0, v4

    return p0

    :cond_2
    if-ne v3, v1, :cond_3

    sub-int/2addr v1, v4

    aget-object p0, v0, v1

    aget p0, p0, v4

    return p0

    :cond_3
    add-int/lit8 v1, v3, -0x1

    aget-object v5, v0, v1

    aget v7, v5, v2

    aget-object v5, v0, v3

    aget v8, v5, v2

    aget-object v1, v0, v1

    aget v9, v1, v4

    aget-object v0, v0, v3

    aget v10, v0, v4

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->interpolate(IIIII)I

    move-result p0

    return p0
.end method

.method private initPaint()V
    .locals 3

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mType:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mHasCustomizedHightlight:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->fingerprint_highlight_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private interpolate(IIIII)I
    .locals 2

    sub-int/2addr p5, p4

    mul-int/lit8 p0, p5, 0x2

    sub-int v0, p1, p2

    mul-int/2addr p0, v0

    sub-int v1, p3, p2

    div-int/2addr p0, v1

    div-int/lit8 v1, p0, 0x2

    rem-int/lit8 p0, p0, 0x2

    sub-int/2addr p2, p3

    if-eqz p2, :cond_0

    if-eqz p5, :cond_0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, p3

    mul-int/2addr v0, p1

    div-int/2addr v0, p5

    div-int/2addr v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p4, v1

    add-int/2addr p4, p0

    add-int/2addr p4, v0

    return p4
.end method

.method private updateIconDim()V
    .locals 8

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->getDimAlpha()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->op_fingerprint_icon_dim_alpha_precentage:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    float-to-int v3, v1

    const-string v4, "sys.fod.icon.dim"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    const v5, -0x40a77633

    mul-float/2addr v5, v2

    const v6, 0x3f8e6e98

    add-float/2addr v5, v6

    const-string v6, "sys.fod.icon.cust"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    const/4 v4, 0x0

    cmpl-float v4, v6, v4

    if-eqz v4, :cond_0

    move v5, v6

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateIconDim: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "alpha = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", ratio = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", (alpha * ratio):"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float/2addr v2, v3

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", converseAlpha:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", custBright:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpCircleImageView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v5, v5, v5, v1}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 5

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    sget v1, Lcom/android/systemui/R$id;->op_fingerprint_icon_white:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v0, v1, :cond_0

    iput v4, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mType:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/systemui/R$id;->op_fingerprint_icon_disable:I

    if-ne v0, v1, :cond_1

    iput v3, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mType:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/android/systemui/R$id;->op_fingerprint_icon:I

    if-ne v0, v1, :cond_2

    iput v2, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mType:I

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpCircleImageView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mType:I

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->fod_flash_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mHasCustomizedHightlight:Z

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mRadius:I

    :cond_4
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->initPaint()V

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result p1

    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mDefaultBacklight:I

    return-void
.end method

.method public onBrightnessChange()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->updateIconDim()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mHasCustomizedHightlight:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v2, :cond_2

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mPath:Landroid/graphics/Path;

    div-float v4, v1, v3

    div-float v5, v0, v3

    float-to-double v6, v4

    float-to-double v8, v0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    double-to-float v6, v6

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    :cond_2
    div-float/2addr v1, v3

    div-float/2addr v0, v3

    iget v2, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mRadius:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->updateIconDim()V

    :cond_0
    return-void
.end method

.method public updateLayoutDimension(Z)V
    .locals 2

    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    sget p1, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_width_2k:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_width_1080p:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->mRadius:I

    :cond_1
    return-void
.end method
