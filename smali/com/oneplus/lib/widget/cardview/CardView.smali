.class public Lcom/oneplus/lib/widget/cardview/CardView;
.super Landroid/widget/FrameLayout;
.source "CardView.java"

# interfaces
.implements Lcom/oneplus/lib/widget/cardview/CardViewDelegate;


# static fields
.field private static final IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;


# instance fields
.field private mCompatPadding:Z

.field private final mContentPadding:Landroid/graphics/Rect;

.field private mPreventCornerOverlap:Z

.field private final mShadowBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Lcom/oneplus/lib/widget/cardview/CardViewApi21;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;-><init>()V

    sput-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    .line 84
    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->initStatic()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mShadowBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/cardview/CardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 205
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->CardView:[I

    sget v1, Lcom/oneplus/commonctrl/R$style;->CardView_Light:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 207
    sget p3, Lcom/oneplus/commonctrl/R$styleable;->CardView_cardBackgroundColor:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 208
    sget p3, Lcom/oneplus/commonctrl/R$styleable;->CardView_cardCornerRadius:I

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 209
    sget p3, Lcom/oneplus/commonctrl/R$styleable;->CardView_cardElevation:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 210
    sget p3, Lcom/oneplus/commonctrl/R$styleable;->CardView_cardMaxElevation:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    .line 211
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->CardView_cardUseCompatPadding:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mCompatPadding:Z

    .line 212
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->CardView_cardPreventCornerOverlap:I

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mPreventCornerOverlap:Z

    .line 213
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->CardView_contentPadding:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 214
    iget-object v1, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->CardView_contentPaddingLeft:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 216
    iget-object v1, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->CardView_contentPaddingTop:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 218
    iget-object v1, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->CardView_contentPaddingRight:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 220
    iget-object v1, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->CardView_contentPaddingBottom:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    cmpl-float v0, v6, p3

    if-lez v0, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, p3

    .line 225
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 226
    sget-object v1, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    move-object v2, p0

    move-object v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->initialize(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;Landroid/content/Context;IFFF)V

    return-void
.end method


# virtual methods
.method public getPreventCornerOverlap()Z
    .locals 0

    .line 366
    iget-boolean p0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mPreventCornerOverlap:Z

    return p0
.end method

.method public getUseCompatPadding()Z
    .locals 0

    .line 128
    iget-boolean p0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mCompatPadding:Z

    return p0
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 178
    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    instance-of v0, v0, Lcom/oneplus/lib/widget/cardview/CardViewApi21;

    if-nez v0, :cond_2

    .line 179
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    sget-object v3, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    invoke-interface {v3, p0}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->getMinWidth(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 185
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 184
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 189
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 193
    :cond_1
    sget-object v1, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    invoke-interface {v1, p0}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->getMinHeight(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 195
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 194
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 198
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_2

    .line 200
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_2
    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 1

    .line 236
    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->setBackgroundColor(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;I)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    return-void
.end method

.method public setShadowPadding(IIII)V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 304
    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p4, v0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method
