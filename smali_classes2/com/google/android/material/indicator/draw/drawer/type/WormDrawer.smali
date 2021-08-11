.class public Lcom/google/android/material/indicator/draw/drawer/type/WormDrawer;
.super Lcom/google/android/material/indicator/draw/drawer/type/BaseDrawer;
.source "WormDrawer.java"


# instance fields
.field public rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;Lcom/google/android/material/indicator/draw/data/Indicator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/indicator/draw/drawer/type/BaseDrawer;-><init>(Landroid/graphics/Paint;Lcom/google/android/material/indicator/draw/data/Indicator;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/indicator/draw/drawer/type/WormDrawer;->rect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/google/android/material/indicator/animation/data/Value;II)V
    .locals 6

    check-cast p2, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->getRectStart()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/material/indicator/animation/data/WormAnimationValue;->getRectEnd()I

    move-result p2

    iget-object v1, p0, Lcom/google/android/material/indicator/draw/drawer/type/BaseDrawer;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/google/android/material/indicator/draw/data/Indicator;->getRadius()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/indicator/draw/drawer/type/BaseDrawer;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    invoke-virtual {v2}, Lcom/google/android/material/indicator/draw/data/Indicator;->getUnselectedColor()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/indicator/draw/drawer/type/BaseDrawer;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    invoke-virtual {v3}, Lcom/google/android/material/indicator/draw/data/Indicator;->getSelectedColor()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/indicator/draw/drawer/type/BaseDrawer;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    invoke-virtual {v4}, Lcom/google/android/material/indicator/draw/data/Indicator;->getOrientation()Lcom/google/android/material/indicator/draw/data/Orientation;

    move-result-object v4

    sget-object v5, Lcom/google/android/material/indicator/draw/data/Orientation;->HORIZONTAL:Lcom/google/android/material/indicator/draw/data/Orientation;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/google/android/material/indicator/draw/drawer/type/WormDrawer;->rect:Landroid/graphics/RectF;

    int-to-float v0, v0

    iput v0, v4, Landroid/graphics/RectF;->left:F

    int-to-float p2, p2

    iput p2, v4, Landroid/graphics/RectF;->right:F

    sub-int p2, p4, v1

    int-to-float p2, p2

    iput p2, v4, Landroid/graphics/RectF;->top:F

    add-int p2, p4, v1

    int-to-float p2, p2

    iput p2, v4, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/google/android/material/indicator/draw/drawer/type/WormDrawer;->rect:Landroid/graphics/RectF;

    sub-int v5, p3, v1

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->left:F

    add-int v5, p3, v1

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->right:F

    int-to-float v0, v0

    iput v0, v4, Landroid/graphics/RectF;->top:F

    int-to-float p2, p2

    iput p2, v4, Landroid/graphics/RectF;->bottom:F

    :goto_0
    iget-object p2, p0, Lcom/google/android/material/indicator/draw/drawer/type/BaseDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p2, p3

    int-to-float p3, p4

    int-to-float p4, v1

    iget-object v0, p0, Lcom/google/android/material/indicator/draw/drawer/type/BaseDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/google/android/material/indicator/draw/drawer/type/BaseDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/google/android/material/indicator/draw/drawer/type/WormDrawer;->rect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/google/android/material/indicator/draw/drawer/type/BaseDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4, p4, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method
