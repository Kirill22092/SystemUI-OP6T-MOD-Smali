.class public Lcom/android/systemui/screenshot/ScreenshotSelectorView;
.super Landroid/view/View;
.source "ScreenshotSelectorView.java"


# instance fields
.field private final mPaintBackground:Landroid/graphics/Paint;

.field private final mPaintSelection:Landroid/graphics/Paint;

.field private mSelectionRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mPaintBackground:Landroid/graphics/Paint;

    const/16 p2, 0xa0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mPaintSelection:Landroid/graphics/Paint;

    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    iget v0, p0, Landroid/view/View;->mLeft:I

    int-to-float v2, v0

    iget v0, p0, Landroid/view/View;->mTop:I

    int-to-float v3, v0

    iget v0, p0, Landroid/view/View;->mRight:I

    int-to-float v4, v0

    iget v0, p0, Landroid/view/View;->mBottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mPaintBackground:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mPaintSelection:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getSelectionRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public stopSelection()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    return-void
.end method
