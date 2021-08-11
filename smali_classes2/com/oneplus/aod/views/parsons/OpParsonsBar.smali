.class public Lcom/oneplus/aod/views/parsons/OpParsonsBar;
.super Landroid/view/View;
.source "OpParsonsBar.java"


# static fields
.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field private mBarDistanceBottom:I

.field private mBarDistanceBottomId:I

.field private mBarDistanceTop:I

.field private mBarDistanceTopId:I

.field private mBarHeight:I

.field private mBarMarginBottom:I

.field private mBarMarginBottomId:I

.field private mBarWidth:I

.field private mBarWidthId:I

.field private mBorder:I

.field private mBorderId:I

.field private mClearPaint:Landroid/graphics/Paint;

.field private mClockMarginBottom3:I

.field private mClockMarginBottom3Id:I

.field private mColors:[I

.field private mFodBelow:Z

.field private mGap:I

.field private mGapId:I

.field private mOverlayView:Landroid/view/View;

.field private mPaint:Landroid/graphics/Paint;

.field private mPositions:[F

.field private mStartTime:Ljava/lang/String;

.field private mUnlockDataHelper:Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;

.field private mUnlockMarginBottom:I

.field private mUnlockMarginBottomId:I

.field private mUnlockMarginTop:I

.field private mUnlockMarginTopId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p2}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->setupAttributes(Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;

    invoke-direct {p2, p1, p0}, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;-><init>(Landroid/content/Context;Lcom/oneplus/aod/views/parsons/OpParsonsBar;)V

    iput-object p2, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mUnlockDataHelper:Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;

    invoke-virtual {p0}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->updateResource()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mClearPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mClearPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$bool;->op_parsons_fod_below:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mFodBelow:Z

    return-void
.end method

.method private convertToSeconds(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getHours()I

    move-result p1

    mul-int/lit16 p1, p1, 0xe10

    invoke-virtual {p0}, Ljava/util/Date;->getMinutes()I

    move-result p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/lit8 p0, p0, 0x3c

    add-int/2addr p1, p0

    return p1

    :catch_0
    move-exception p0

    const-string p1, "OpParsonsBar"

    const-string v0, "convertToSeconds occur parse exception"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private convertToSeconds(Ljava/util/Date;)I
    .locals 1

    invoke-virtual {p1}, Ljava/util/Date;->getHours()I

    move-result p0

    mul-int/lit16 p0, p0, 0xe10

    invoke-virtual {p1}, Ljava/util/Date;->getMinutes()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr p0, v0

    invoke-virtual {p1}, Ljava/util/Date;->getSeconds()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private readColors(I)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mColors:[I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mColors:[I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method

.method private readPositions(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mPositions:[F

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mPositions:[F

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method

.method private updateShader()V
    .locals 9

    new-instance v8, Landroid/graphics/LinearGradient;

    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mColors:[I

    iget-object v6, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mPositions:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBorder:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method calculateBarHeight(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mUnlockMarginTop:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    iget p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mUnlockMarginBottom:I

    add-int/2addr v0, p1

    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpFodViewSettings;->getFodHighlightY(Landroid/content/Context;)I

    move-result p1

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFodViewSettings;->getFodHighlightSize(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFodViewSettings;->getFodIconSize(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->isFodShowBelow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarMarginBottom:I

    sub-int/2addr p1, v1

    sub-int/2addr p1, v0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFodViewSettings;->getFodHighlightSize(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mClockMarginBottom3:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarHeight:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarMarginBottom:I

    sub-int/2addr p1, v1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarHeight:I

    :goto_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCutoutEmulationEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050249

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarHeight:I

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarHeight:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method getBarHeight()I
    .locals 0

    iget p0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarHeight:I

    return p0
.end method

.method getBarWidth()I
    .locals 0

    iget p0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarWidth:I

    return p0
.end method

.method getOverlayView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mOverlayView:Landroid/view/View;

    return-object p0
.end method

.method isFodShowBelow()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mFodBelow:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mUnlockDataHelper:Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;

    invoke-virtual {p0}, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->startListen()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mUnlockDataHelper:Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;

    invoke-virtual {p0}, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->stopListen()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBorder:I

    iget v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mGap:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarWidth:I

    int-to-float v2, v1

    sub-float v4, v2, v0

    iget v2, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarHeight:I

    int-to-float v2, v2

    sub-float v5, v2, v0

    int-to-float v6, v1

    int-to-float v7, v1

    iget-object v8, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v0

    move v3, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mOverlayView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_0

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mOverlayView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v3, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mUnlockDataHelper:Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;

    float-to-int v5, v0

    iget v6, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarDistanceTop:I

    iget v2, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarWidth:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    float-to-int v7, v2

    iget-object v9, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mClearPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v8, v1

    invoke-virtual/range {v3 .. v9}, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->clearUnlockRecord(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V

    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBorder:I

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v5, v0, v2

    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarWidth:I

    int-to-float v2, v0

    sub-float v6, v2, v5

    iget v2, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarHeight:I

    int-to-float v2, v2

    sub-float v7, v2, v5

    int-to-float v8, v0

    int-to-float v9, v0

    iget-object v10, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v5

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mOverlayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v3, 0x0

    int-to-float v4, v1

    iget v2, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarWidth:I

    int-to-float v5, v2

    add-int/2addr v1, v0

    int-to-float v6, v1

    iget-object v7, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mClearPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->updateShader()V

    :cond_0
    return-void
.end method

.method onTimeChanged(Ljava/util/Date;)V
    .locals 9

    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mStartTime:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->convertToSeconds(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v1, v0, 0xe10

    mul-int/lit16 v2, v1, 0xe10

    sub-int v2, v0, v2

    div-int/lit8 v2, v2, 0x3c

    invoke-direct {p0, p1}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->convertToSeconds(Ljava/util/Date;)I

    move-result v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    sub-int/2addr v3, v0

    const/4 v0, 0x0

    const/16 v5, 0xd

    const/16 v6, 0xc

    const/16 v7, 0xb

    if-ltz v3, :cond_0

    invoke-virtual {v4, v7, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4, v6, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    const/4 v8, -0x1

    invoke-virtual {v4, v3, v8}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v4, v7, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4, v6, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    :goto_0
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mOverlayView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mOverlayView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarDistanceTop:I

    iget v5, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarHeight:I

    iget v6, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarDistanceBottom:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mOverlayView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v5, v5

    const v6, 0x47a8c000    # 86400.0f

    div-float/2addr v5, v6

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    long-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v5, v6

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v5, v4

    iput v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mOverlayView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object p0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mUnlockDataHelper:Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->onTimeChanged(JJ)V

    return-void
.end method

.method setOverlayView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mOverlayView:Landroid/view/View;

    return-void
.end method

.method setUnlocksMsg(Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mUnlockDataHelper:Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->setUnlocksMsg(Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;)V

    return-void
.end method

.method setupAttributes(Landroid/util/AttributeSet;)V
    .locals 3

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/R$styleable;->OpParsonsClock:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsClock_colors:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->readColors(I)V

    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsClock_positions:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->readPositions(I)V

    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsClock_barWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarWidthId:I

    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsClock_border:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBorderId:I

    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsClock_gap:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mGapId:I

    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsClock_barDistanceTop:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarDistanceTopId:I

    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsClock_barDistanceBottom:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarDistanceBottomId:I

    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsClock_barStartTime:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mStartTime:Ljava/lang/String;

    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsClock_clockMarginTop1:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mUnlockMarginTopId:I

    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsClock_unlockMarginBottom:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mUnlockMarginBottomId:I

    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsClock_clockMarginBottom1:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarMarginBottomId:I

    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsClock_clockMarginBottom3:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mClockMarginBottom3Id:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method updateResource()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mUnlockDataHelper:Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;

    invoke-virtual {v0}, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->updateResources()V

    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarWidthId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarWidth:I

    :cond_0
    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBorderId:I

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBorder:I

    :cond_1
    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mGapId:I

    if-eq v0, v1, :cond_2

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mGap:I

    :cond_2
    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarDistanceTopId:I

    if-eq v0, v1, :cond_3

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarDistanceTop:I

    :cond_3
    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarDistanceBottomId:I

    if-eq v0, v1, :cond_4

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarDistanceBottom:I

    :cond_4
    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mUnlockMarginTopId:I

    if-eq v0, v1, :cond_5

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mUnlockMarginTop:I

    :cond_5
    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mUnlockMarginBottomId:I

    if-eq v0, v1, :cond_6

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mUnlockMarginBottom:I

    :cond_6
    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarMarginBottomId:I

    if-eq v0, v1, :cond_7

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarMarginBottom:I

    :cond_7
    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mClockMarginBottom3Id:I

    if-eq v0, v1, :cond_8

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mClockMarginBottom3:I

    :cond_8
    return-void
.end method
