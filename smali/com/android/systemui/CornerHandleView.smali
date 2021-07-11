.class public Lcom/android/systemui/CornerHandleView;
.super Landroid/view/View;
.source "CornerHandleView.java"


# static fields
.field private static mDisableRoundedCorner:I


# instance fields
.field private mDarkColor:I

.field private mLightColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRequiresInvalidate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "vendor.display.disable_rounded_corner"

    const/4 v1, 0x0

    .line 47
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/CornerHandleView;->mDisableRoundedCorner:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/CornerHandleView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 59
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object p1, p0, Lcom/android/systemui/CornerHandleView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    iget-object p1, p0, Lcom/android/systemui/CornerHandleView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 62
    iget-object p1, p0, Lcom/android/systemui/CornerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getStrokePx()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$attr;->darkIconTheme:I

    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result p1

    .line 65
    iget-object p2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$attr;->lightIconTheme:I

    invoke-static {p2, v0}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result p2

    .line 66
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 67
    new-instance p2, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 68
    sget p1, Lcom/android/systemui/R$attr;->singleToneColor:I

    invoke-static {v0, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/CornerHandleView;->mLightColor:I

    .line 69
    sget p1, Lcom/android/systemui/R$attr;->singleToneColor:I

    invoke-static {p2, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/CornerHandleView;->mDarkColor:I

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->updatePath()V

    return-void
.end method

.method private static convertDpToPixel(FLandroid/content/Context;)F
    .locals 1

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p1, v0

    mul-float/2addr p0, p1

    return p0
.end method

.method private static convertPixelToDp(FLandroid/content/Context;)F
    .locals 1

    const/high16 v0, 0x43200000    # 160.0f

    mul-float/2addr p0, v0

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method

.method private getAngle()F
    .locals 2

    .line 154
    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getOuterRadiusPx()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, v1

    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 153
    invoke-static {v0, p0}, Lcom/android/systemui/CornerHandleView;->convertPixelToDp(FLandroid/content/Context;)F

    move-result p0

    const/high16 v0, 0x41f80000    # 31.0f

    div-float/2addr v0, p0

    const/high16 p0, 0x43b40000    # 360.0f

    mul-float/2addr v0, p0

    const/high16 p0, 0x42b40000    # 90.0f

    cmpl-float v1, v0, p0

    if-lez v1, :cond_0

    move v0, p0

    :cond_0
    return v0
.end method

.method private getInnerRadiusPx()F
    .locals 1

    .line 167
    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getOuterRadiusPx()F

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getMarginPx()F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method private getMarginPx()F
    .locals 1

    .line 163
    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0, p0}, Lcom/android/systemui/CornerHandleView;->convertDpToPixel(FLandroid/content/Context;)F

    move-result p0

    return p0
.end method

.method private getOuterRadiusPx()F
    .locals 2

    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->rounded_corner_radius_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 183
    sget v1, Lcom/android/systemui/CornerHandleView;->mDisableRoundedCorner:I

    if-nez v1, :cond_0

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->config_rounded_mask_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->rounded_corner_radius_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :cond_1
    if-nez v0, :cond_2

    const/high16 v0, 0x41700000    # 15.0f

    .line 198
    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/systemui/CornerHandleView;->convertDpToPixel(FLandroid/content/Context;)F

    move-result p0

    float-to-int v0, p0

    :cond_2
    int-to-float p0, v0

    return p0
.end method

.method private getStrokePx()F
    .locals 2

    .line 205
    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getAngle()F

    move-result v0

    const/high16 v1, 0x42b40000    # 90.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    const v0, 0x3ff9999a    # 1.95f

    .line 206
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 205
    invoke-static {v0, p0}, Lcom/android/systemui/CornerHandleView;->convertDpToPixel(FLandroid/content/Context;)F

    move-result p0

    return p0
.end method

.method private updatePath()V
    .locals 11

    .line 84
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/CornerHandleView;->mPath:Landroid/graphics/Path;

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getMarginPx()F

    move-result v0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getInnerRadiusPx()F

    move-result v1

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getStrokePx()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getAngle()F

    move-result v4

    const/high16 v5, 0x42b40000    # 90.0f

    sub-float v6, v5, v4

    div-float/2addr v6, v3

    const/high16 v7, 0x43340000    # 180.0f

    add-float/2addr v6, v7

    .line 91
    new-instance v7, Landroid/graphics/RectF;

    add-float v8, v0, v2

    mul-float v9, v1, v3

    add-float v10, v0, v9

    sub-float/2addr v10, v2

    invoke-direct {v7, v8, v8, v10, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    cmpl-float v2, v4, v5

    if-ltz v2, :cond_0

    const v2, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v9, v2

    .line 97
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v9, v2}, Lcom/android/systemui/CornerHandleView;->convertPixelToDp(FLandroid/content/Context;)F

    move-result v2

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getAngle()F

    move-result v5

    mul-float/2addr v2, v5

    const/high16 v5, 0x43b40000    # 360.0f

    div-float/2addr v2, v5

    const/high16 v5, 0x41f80000    # 31.0f

    sub-float/2addr v5, v2

    const/high16 v2, 0x41000000    # 8.0f

    sub-float/2addr v5, v2

    div-float/2addr v5, v3

    .line 102
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/android/systemui/CornerHandleView;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v2

    .line 105
    iget-object v3, p0, Lcom/android/systemui/CornerHandleView;->mPath:Landroid/graphics/Path;

    add-float/2addr v0, v1

    add-float/2addr v2, v0

    invoke-virtual {v3, v8, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 106
    iget-object v1, p0, Lcom/android/systemui/CornerHandleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v8, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 107
    iget-object v1, p0, Lcom/android/systemui/CornerHandleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v7, v6, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 108
    iget-object v1, p0, Lcom/android/systemui/CornerHandleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 109
    iget-object p0, p0, Lcom/android/systemui/CornerHandleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0, v2, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/CornerHandleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0, v7, v6, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 136
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/CornerHandleView;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/systemui/CornerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 77
    iget-boolean p1, p0, Lcom/android/systemui/CornerHandleView;->mRequiresInvalidate:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/android/systemui/CornerHandleView;->mRequiresInvalidate:Z

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public updateDarkness(F)V
    .locals 3

    .line 121
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/CornerHandleView;->mLightColor:I

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/CornerHandleView;->mDarkColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 121
    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 123
    iget-object v0, p0, Lcom/android/systemui/CornerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/systemui/CornerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 129
    iput-boolean p1, p0, Lcom/android/systemui/CornerHandleView;->mRequiresInvalidate:Z

    :cond_1
    :goto_0
    return-void
.end method
