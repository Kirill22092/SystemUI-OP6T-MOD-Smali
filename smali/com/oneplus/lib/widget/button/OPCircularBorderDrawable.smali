.class Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "OPCircularBorderDrawable.java"


# instance fields
.field mBorderWidth:F

.field private mBottomInnerStrokeColor:I

.field private mBottomOuterStrokeColor:I

.field private mInvalidateShader:Z

.field final mPaint:Landroid/graphics/Paint;

.field final mRect:Landroid/graphics/Rect;

.field final mRectF:Landroid/graphics/RectF;

.field private mTint:Landroid/content/res/ColorStateList;

.field private mTintColor:I

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mTopInnerStrokeColor:I

.field private mTopOuterStrokeColor:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mRect:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mRectF:Landroid/graphics/RectF;

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mInvalidateShader:Z

    .line 65
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 69
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    .line 70
    iget-object p0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private static compositeAlpha(II)I
    .locals 0

    rsub-int p1, p1, 0xff

    rsub-int p0, p0, 0xff

    mul-int/2addr p1, p0

    .line 253
    div-int/lit16 p1, p1, 0xff

    rsub-int p0, p1, 0xff

    return p0
.end method

.method private static compositeColors(II)I
    .locals 6

    .line 238
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 239
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 240
    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->compositeAlpha(II)I

    move-result v2

    .line 242
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 243
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 242
    invoke-static {v3, v1, v4, v0, v2}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->compositeComponent(IIIII)I

    move-result v3

    .line 244
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 245
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 244
    invoke-static {v4, v1, v5, v0, v2}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->compositeComponent(IIIII)I

    move-result v4

    .line 246
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    .line 247
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 246
    invoke-static {p0, v1, p1, v0, v2}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->compositeComponent(IIIII)I

    move-result p0

    .line 249
    invoke-static {v2, v3, v4, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private static compositeComponent(IIIII)I
    .locals 0

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    mul-int/lit16 p0, p0, 0xff

    mul-int/2addr p0, p1

    mul-int/2addr p2, p3

    rsub-int p1, p1, 0xff

    mul-int/2addr p2, p1

    add-int/2addr p0, p2

    mul-int/lit16 p4, p4, 0xff

    .line 258
    div-int/2addr p0, p4

    return p0
.end method

.method private createGradientShader()Landroid/graphics/Shader;
    .locals 11

    .line 204
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mRect:Landroid/graphics/Rect;

    .line 205
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 207
    iget v1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mBorderWidth:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x6

    new-array v8, v2, [I

    .line 210
    iget v3, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTopOuterStrokeColor:I

    iget v4, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintColor:I

    invoke-static {v3, v4}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->compositeColors(II)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v8, v4

    .line 211
    iget v3, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTopInnerStrokeColor:I

    iget v5, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintColor:I

    invoke-static {v3, v5}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->compositeColors(II)I

    move-result v3

    const/4 v5, 0x1

    aput v3, v8, v5

    .line 212
    iget v3, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTopInnerStrokeColor:I

    .line 213
    invoke-static {v3, v4}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->setAlphaComponent(II)I

    move-result v3

    iget v6, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintColor:I

    .line 212
    invoke-static {v3, v6}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->compositeColors(II)I

    move-result v3

    const/4 v6, 0x2

    aput v3, v8, v6

    .line 214
    iget v3, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mBottomInnerStrokeColor:I

    .line 215
    invoke-static {v3, v4}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->setAlphaComponent(II)I

    move-result v3

    iget v7, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintColor:I

    .line 214
    invoke-static {v3, v7}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->compositeColors(II)I

    move-result v3

    const/4 v7, 0x3

    aput v3, v8, v7

    .line 216
    iget v3, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mBottomInnerStrokeColor:I

    iget v9, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintColor:I

    invoke-static {v3, v9}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->compositeColors(II)I

    move-result v3

    const/4 v9, 0x4

    aput v3, v8, v9

    .line 217
    iget v3, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mBottomOuterStrokeColor:I

    iget p0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintColor:I

    invoke-static {v3, p0}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->compositeColors(II)I

    move-result p0

    const/4 v3, 0x5

    aput p0, v8, v3

    new-array p0, v2, [F

    const/4 v2, 0x0

    aput v2, p0, v4

    aput v1, p0, v5

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, p0, v6

    aput v2, p0, v7

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    aput v1, p0, v9

    aput v2, p0, v3

    .line 227
    new-instance v1, Landroid/graphics/LinearGradient;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v1

    move-object v9, p0

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v1
.end method

.method public static setAlphaComponent(II)I
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0

    .line 263
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alpha must be between 0 and 255."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    .line 180
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p1, p0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 104
    :goto_0
    iget-boolean v2, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mInvalidateShader:Z

    if-eqz v2, :cond_1

    .line 105
    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->createGradientShader()Landroid/graphics/Shader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 106
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mInvalidateShader:Z

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 110
    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mRectF:Landroid/graphics/RectF;

    .line 114
    iget-object v3, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 115
    iget-object v3, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 116
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 117
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 118
    iget v3, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 119
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 122
    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-eqz v0, :cond_2

    .line 126
    iget-object p0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_2
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 191
    iget p0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mBorderWidth:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, -0x3

    goto :goto_0

    :cond_0
    const/4 p0, -0x2

    :goto_0
    return p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 167
    iget-object p0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 0

    .line 133
    iget p0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mBorderWidth:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 134
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p0, 0x1

    return p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    const/4 p1, 0x1

    .line 196
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mInvalidateShader:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 141
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method setBorderWidth(F)V
    .locals 2

    .line 85
    iget v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mBorderWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 86
    iput p1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mBorderWidth:F

    .line 87
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    const v1, 0x3faaa993    # 1.3333f

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x1

    .line 88
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mInvalidateShader:Z

    .line 89
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 186
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method setGradientColors(IIII)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTopOuterStrokeColor:I

    .line 76
    iput p2, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTopInnerStrokeColor:I

    .line 77
    iput p3, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mBottomOuterStrokeColor:I

    .line 78
    iput p4, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mBottomInnerStrokeColor:I

    return-void
.end method

.method setTintColor(I)V
    .locals 0

    .line 145
    iput p1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintColor:I

    const/4 p1, 0x1

    .line 146
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mInvalidateShader:Z

    .line 147
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 152
    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTint:Landroid/content/res/ColorStateList;

    .line 153
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 154
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 159
    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 160
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTint:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 161
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
