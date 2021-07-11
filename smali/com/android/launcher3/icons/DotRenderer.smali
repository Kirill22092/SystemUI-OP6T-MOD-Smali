.class public Lcom/android/launcher3/icons/DotRenderer;
.super Ljava/lang/Object;
.source "DotRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/DotRenderer$DrawParams;
    }
.end annotation


# instance fields
.field private final mBackgroundWithShadow:Landroid/graphics/Bitmap;

.field private final mBitmapOffset:F

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private final mCircleRadius:F

.field private final mLeftDotPosition:[F

.field private final mRightDotPosition:[F


# direct methods
.method public constructor <init>(ILandroid/graphics/Path;I)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/icons/DotRenderer;->mCirclePaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    const v0, 0x3e6978d5    # 0.228f

    mul-float/2addr p1, v0

    .line 54
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 55
    new-instance v0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/icons/ShadowGenerator$Builder;-><init>(I)V

    const/16 v1, 0x58

    .line 56
    iput v1, v0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->ambientShadowAlpha:I

    .line 57
    invoke-virtual {v0, p1}, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->setupBlurForSize(I)Lcom/android/launcher3/icons/ShadowGenerator$Builder;

    invoke-virtual {v0, p1, p1}, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->createPill(II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/icons/DotRenderer;->mBackgroundWithShadow:Landroid/graphics/Bitmap;

    .line 58
    iget v0, v0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->radius:F

    iput v0, p0, Lcom/android/launcher3/icons/DotRenderer;->mCircleRadius:F

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/icons/DotRenderer;->mBitmapOffset:F

    int-to-float p1, p3

    const/high16 p3, -0x40800000    # -1.0f

    .line 63
    invoke-static {p2, p1, p3}, Lcom/android/launcher3/icons/DotRenderer;->getPathPoint(Landroid/graphics/Path;FF)[F

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher3/icons/DotRenderer;->mLeftDotPosition:[F

    const/high16 p3, 0x3f800000    # 1.0f

    .line 64
    invoke-static {p2, p1, p3}, Lcom/android/launcher3/icons/DotRenderer;->getPathPoint(Landroid/graphics/Path;FF)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/icons/DotRenderer;->mRightDotPosition:[F

    return-void
.end method

.method private static getPathPoint(Landroid/graphics/Path;FF)[F
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    mul-float v1, p2, v0

    add-float/2addr v1, v0

    .line 73
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 74
    invoke-virtual {v2, v0, v0}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p2, v0

    add-float/2addr p2, v1

    const/4 v0, 0x0

    .line 75
    invoke-virtual {v2, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 76
    invoke-virtual {v2, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 77
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 79
    sget-object p2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v2, p0, p2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    const/4 p0, 0x2

    new-array p0, p0, [F

    .line 81
    new-instance p2, Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-direct {p2, v2, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 v2, 0x0

    invoke-virtual {p2, v0, p0, v2}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 83
    aget p2, p0, v1

    div-float/2addr p2, p1

    aput p2, p0, v1

    const/4 p2, 0x1

    .line 84
    aget v0, p0, p2

    div-float/2addr v0, p1

    aput v0, p0, p2

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/android/launcher3/icons/DotRenderer$DrawParams;)V
    .locals 6

    if-nez p2, :cond_0

    const-string p0, "DotRenderer"

    const-string p1, "Invalid null argument(s) passed in call to draw."

    .line 101
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 104
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 106
    iget-object v0, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    .line 107
    iget-boolean v1, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->leftAlign:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/icons/DotRenderer;->mLeftDotPosition:[F

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/icons/DotRenderer;->mRightDotPosition:[F

    .line 108
    :goto_0
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    aget v4, v1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 109
    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/4 v4, 0x1

    aget v1, v1, v4

    mul-float/2addr v0, v1

    add-float/2addr v3, v0

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 113
    iget-boolean v1, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->leftAlign:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 114
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v5, p0, Lcom/android/launcher3/icons/DotRenderer;->mBitmapOffset:F

    add-float/2addr v5, v2

    sub-float/2addr v1, v5

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_1

    .line 115
    :cond_2
    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v5, p0, Lcom/android/launcher3/icons/DotRenderer;->mBitmapOffset:F

    sub-float v5, v2, v5

    sub-float/2addr v1, v5

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 116
    :goto_1
    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v5, p0, Lcom/android/launcher3/icons/DotRenderer;->mBitmapOffset:F

    add-float/2addr v5, v3

    sub-float/2addr v0, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float/2addr v2, v1

    add-float/2addr v3, v0

    .line 119
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 120
    iget v0, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/icons/DotRenderer;->mCirclePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/icons/DotRenderer;->mBackgroundWithShadow:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/launcher3/icons/DotRenderer;->mBitmapOffset:F

    iget-object v2, p0, Lcom/android/launcher3/icons/DotRenderer;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 124
    iget-object v0, p0, Lcom/android/launcher3/icons/DotRenderer;->mCirclePaint:Landroid/graphics/Paint;

    iget p2, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->color:I

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    iget p2, p0, Lcom/android/launcher3/icons/DotRenderer;->mCircleRadius:F

    iget-object p0, p0, Lcom/android/launcher3/icons/DotRenderer;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v4, p2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getLeftDotPosition()[F
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/launcher3/icons/DotRenderer;->mLeftDotPosition:[F

    return-object p0
.end method

.method public getRightDotPosition()[F
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/launcher3/icons/DotRenderer;->mRightDotPosition:[F

    return-object p0
.end method
