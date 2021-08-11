.class public Lcom/android/systemui/pip/PipSnapAlgorithm;
.super Ljava/lang/Object;
.source "PipSnapAlgorithm.java"


# instance fields
.field private final mDefaultSizePercent:F

.field private final mMaxAspectRatioForMinSize:F

.field private final mMinAspectRatioForMinSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10500af

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/pip/PipSnapAlgorithm;->mDefaultSizePercent:F

    const v0, 0x10500ad

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/pip/PipSnapAlgorithm;->mMaxAspectRatioForMinSize:F

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/pip/PipSnapAlgorithm;->mMinAspectRatioForMinSize:F

    return-void
.end method


# virtual methods
.method public applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .locals 3

    const/high16 p0, 0x3f800000    # 1.0f

    cmpg-float v0, p3, p0

    if-gez v0, :cond_0

    iget p0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p3, v0

    float-to-int p3, p3

    add-int/2addr p0, p3

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v1, p3, v0

    if-gez v1, :cond_1

    sub-float/2addr p3, p0

    iget p0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p3, v0

    float-to-int p3, p3

    add-int/2addr p0, p3

    iget p2, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_1
    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v2, p3, v1

    if-gez v2, :cond_2

    sub-float/2addr p3, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    sub-float/2addr p0, p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p0, p3

    float-to-int p0, p0

    add-int/2addr v0, p0

    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_2
    sub-float/2addr p3, v1

    iget v0, p2, Landroid/graphics/Rect;->top:I

    sub-float/2addr p0, p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p0, p3

    float-to-int p0, p0

    add-int/2addr v0, p0

    iget p0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_0
    return-void
.end method

.method public getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 2

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p3, Landroid/graphics/Rect;->right:I

    iget p0, p2, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p4

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getSizeForAspectRatio(FFII)Landroid/util/Size;
    .locals 1

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    int-to-float p3, p3

    iget p4, p0, Lcom/android/systemui/pip/PipSnapAlgorithm;->mDefaultSizePercent:F

    mul-float/2addr p3, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    iget p3, p0, Lcom/android/systemui/pip/PipSnapAlgorithm;->mMinAspectRatioForMinSize:F

    cmpg-float p3, p1, p3

    const/high16 p4, 0x3f800000    # 1.0f

    if-lez p3, :cond_1

    iget p0, p0, Lcom/android/systemui/pip/PipSnapAlgorithm;->mMaxAspectRatioForMinSize:F

    cmpl-float p3, p1, p0

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p2, p2

    mul-float/2addr p0, p2

    invoke-static {p0, p2}, Landroid/graphics/PointF;->length(FF)F

    move-result p0

    mul-float/2addr p0, p0

    mul-float p2, p1, p1

    add-float/2addr p2, p4

    div-float/2addr p0, p2

    float-to-double p2, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    long-to-int p2, p2

    int-to-float p0, p2

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    cmpg-float p0, p1, p4

    if-gtz p0, :cond_2

    int-to-float p0, p2

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_2

    :cond_2
    int-to-float p0, p2

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_1
    move v0, p2

    move p2, p0

    move p0, v0

    :goto_2
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, p2, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1
.end method

.method public getSizeForAspectRatio(Landroid/util/Size;FF)Landroid/util/Size;
    .locals 1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    invoke-static {p3, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    int-to-float p1, p0

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_0

    :cond_0
    int-to-float p1, p0

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    move v0, p1

    move p1, p0

    move p0, v0

    :goto_0
    new-instance p2, Landroid/util/Size;

    invoke-direct {p2, p0, p1}, Landroid/util/Size;-><init>(II)V

    return-object p2
.end method

.method public getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/pip/PipSnapAlgorithm;->snapRectToClosestEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget p0, v0, Landroid/graphics/Rect;->left:I

    iget p1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p1

    int-to-float p0, p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    if-ne v1, v2, :cond_0

    return p0

    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v0, v2, :cond_1

    add-float/2addr p1, v3

    return p1

    :cond_1
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-ne v1, p2, :cond_2

    const/high16 p1, 0x40000000    # 2.0f

    sub-float/2addr v3, p0

    add-float/2addr v3, p1

    return v3

    :cond_2
    const/high16 p0, 0x40400000    # 3.0f

    sub-float/2addr v3, p1

    add-float/2addr v3, p0

    return v3
.end method

.method public snapRectToClosestEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5

    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ne p1, v1, :cond_0

    iget p0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3, p0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    iget p1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, p0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_2

    iget p0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p3, p0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_2
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3, p0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_0
    return-void
.end method
