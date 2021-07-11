.class public Lcom/oneplus/battery/OpShadowView;
.super Landroid/widget/ImageView;
.source "OpShadowView.java"


# instance fields
.field private mShadowPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 21
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 22
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 23
    iget-object p0, p0, Lcom/oneplus/battery/OpShadowView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setShadowLayer(FFFII)V
    .locals 1

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/battery/OpShadowView;->mShadowPaint:Landroid/graphics/Paint;

    .line 28
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    iget-object p4, p0, Lcom/oneplus/battery/OpShadowView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, p2, p3, p5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 30
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
