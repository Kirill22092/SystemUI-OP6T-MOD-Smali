.class public Lcom/google/android/material/seekbar/TickSeekBar;
.super Landroid/widget/SeekBar;
.source "TickSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/seekbar/TickSeekBar$TickData;
    }
.end annotation


# instance fields
.field private mMaxProgress:I

.field private mMeasureHeight:I

.field private mPaddingLeft:I

.field private mSeekBlockLength:F

.field private mStockPaint:Landroid/graphics/Paint;

.field private mTickColor:I

.field private mTickDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/seekbar/TickSeekBar$TickData;",
            ">;"
        }
    .end annotation
.end field

.field private mTickDisabledColor:I

.field private mTickInactiveColor:I

.field private mTrackY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/seekbar/TickSeekBar;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/google/android/material/seekbar/TickSeekBar;->initStrokePaint()V

    return-void
.end method

.method private drawTicks(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTickDataList:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTickDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    iget v1, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mSeekBlockLength:F

    iget-object v2, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTickDataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/seekbar/TickSeekBar$TickData;

    invoke-virtual {v2}, Lcom/google/android/material/seekbar/TickSeekBar$TickData;->getLocation()F

    move-result v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mPaddingLeft:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v2

    add-float/2addr v1, v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTickDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v2

    sub-float/2addr v1, v2

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/seekbar/TickSeekBar;->getThumbPosOnTick()F

    move-result v2

    sub-float v3, v2, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x42480000    # 50.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    goto :goto_5

    :cond_3
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->oneplus_control_tick_seekbar_radius:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget v4, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTrackY:F

    iget v5, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mMeasureHeight:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    int-to-float v3, v3

    div-float/2addr v3, v6

    sub-float/2addr v4, v3

    const v5, 0x3e4ccccd    # 0.2f

    add-float/2addr v4, v5

    cmpg-float v2, v2, v1

    if-gez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mStockPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTickInactiveColor:I

    goto :goto_2

    :cond_4
    iget v5, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTickDisabledColor:I

    :goto_2
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mStockPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTickColor:I

    goto :goto_3

    :cond_6
    iget v5, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTickDisabledColor:I

    :goto_3
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    :goto_4
    add-float/2addr v4, v3

    iget-object v2, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mStockPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_6
    return-void
.end method

.method private getThumbPosOnTick()F
    .locals 2

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result p0

    sub-int/2addr v1, p0

    int-to-float p0, v1

    mul-float/2addr v0, p0

    return v0
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/material/R$styleable;->TickSeekBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/google/android/material/R$styleable;->TickSeekBar_seekbarTickColor:I

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$color;->op_seek_bar_tick_color_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTickColor:I

    sget p2, Lcom/google/android/material/R$styleable;->TickSeekBar_seekbarInActiveTickColor:I

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$color;->op_seek_bar_tick_color_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTickInactiveColor:I

    sget p2, Lcom/google/android/material/R$styleable;->TickSeekBar_seekbarTickDisabledColor:I

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$color;->op_seek_bar_tick_disabled_color_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTickDisabledColor:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initSeekBarInfo()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mMeasureHeight:I

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v1

    iput v1, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mPaddingLeft:I

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mPaddingLeft:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mMaxProgress:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mSeekBlockLength:F

    int-to-float v0, v2

    iput v0, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mTrackY:F

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mMaxProgress:I

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMeasuredWidth()I

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingRight()I

    return-void
.end method

.method private initStrokePaint()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mStockPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mStockPaint:Landroid/graphics/Paint;

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/seekbar/TickSeekBar;->mStockPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/google/android/material/seekbar/TickSeekBar;->drawTicks(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->onMeasure(II)V

    invoke-direct {p0}, Lcom/google/android/material/seekbar/TickSeekBar;->initSeekBarInfo()V

    return-void
.end method
