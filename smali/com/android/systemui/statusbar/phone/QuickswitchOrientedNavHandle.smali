.class public Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;
.super Lcom/android/systemui/statusbar/phone/NavigationHandle;
.source "QuickswitchOrientedNavHandle.java"


# instance fields
.field private mDeltaRotation:I

.field private final mTmpBoundsRectF:Landroid/graphics/RectF;

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationHandle;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;->mTmpBoundsRectF:Landroid/graphics/RectF;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->navigation_home_handle_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;->mWidth:I

    return-void
.end method


# virtual methods
.method computeHomeHandleBounds()Landroid/graphics/RectF;
    .locals 7

    .line 51
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mRadius:I

    mul-int/lit8 v0, v0, 0x2

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 54
    iget v3, p0, Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;->mDeltaRotation:I

    if-eq v3, v2, :cond_1

    const/4 v2, 0x3

    if-eq v3, v2, :cond_0

    .line 58
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mRadius:I

    mul-int/lit8 v0, v0, 0x2

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;->mWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBottom:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;->mWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v0, v2

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBottom:I

    sub-int v3, v2, v3

    sub-int v0, v3, v0

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v4, p0, Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;->mWidth:I

    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v2, v5

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    add-int v1, v2, v4

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0

    .line 65
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBottom:I

    add-int v3, v2, v0

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v4, p0, Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;->mWidth:I

    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v0, v5

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int v1, v0, v4

    move v6, v2

    move v2, v0

    move v0, v1

    move v1, v6

    .line 77
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;->mTmpBoundsRectF:Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v0, v0

    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 78
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;->mTmpBoundsRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;->computeHomeHandleBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method setDeltaRotation(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;->mDeltaRotation:I

    return-void
.end method
