.class public Lcom/oneplus/battery/OpBatteryMeterDrawable;
.super Lcom/android/settingslib/graph/BatteryMeterDrawableBase;
.source "OpBatteryMeterDrawable.java"


# instance fields
.field private mBatterySaveOutline:Landroid/graphics/Bitmap;

.field private mBatteryStyle:I

.field private mChargingOutlineBitmap:Landroid/graphics/Bitmap;

.field private mCircleBackPaint:Landroid/graphics/Paint;

.field private mCircleChargingPaint:Landroid/graphics/Paint;

.field private mCircleFrontPaint:Landroid/graphics/Paint;

.field private mCirclePowerSavePaint:Landroid/graphics/Paint;

.field private final mCircleRect:Landroid/graphics/RectF;

.field private mCircleSize:I

.field private mHeight:I

.field protected mIsInvalidCharge:I

.field private mIsOptimizatedCharge:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mMaskColor:I

.field private mMaskColorWithoutAlpha:I

.field private mMaskDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaskOutlineBitmap:Landroid/graphics/Bitmap;

.field private mOptimizatedChargeOutline:Landroid/graphics/Bitmap;

.field private mOptimizatedChargePaint:Landroid/graphics/Paint;

.field private mPowerSaveColor:I

.field private mPowerSaveEnabled:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mBatteryStyle:I

    .line 36
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    .line 58
    iput v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mIsInvalidCharge:I

    .line 64
    iput-boolean v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mIsOptimizatedCharge:Z

    .line 153
    iput v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mLastHeight:I

    .line 154
    iput v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mLastWidth:I

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    .line 77
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    iget-object p2, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 79
    iget-object p2, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 80
    iget-object p2, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    iget-object p2, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    .line 84
    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 85
    iget-object p2, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 86
    iget-object p2, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    iget-object p2, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    .line 90
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCirclePowerSavePaint:Landroid/graphics/Paint;

    .line 94
    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 95
    iget-object p2, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCirclePowerSavePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 96
    iget-object p2, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCirclePowerSavePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    iget-object p2, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 98
    iget-object p2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$drawable;->op_ic_battery_saver_outline:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2}, Lcom/oneplus/util/OpImageUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mBatterySaveOutline:Landroid/graphics/Bitmap;

    .line 102
    sget p2, Lcom/android/systemui/R$color;->battery_power_save_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mPowerSaveColor:I

    .line 104
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mOptimizatedChargePaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    .line 105
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mOptimizatedChargePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 107
    iget-object p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mOptimizatedChargePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 108
    iget-object p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mOptimizatedChargePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 109
    iget-object p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mOptimizatedChargePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 111
    iget-object p2, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mOptimizatedChargePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 112
    iget-object p1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$drawable;->op_optimized_charging_outline:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/util/OpImageUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mOptimizatedChargeOutline:Landroid/graphics/Bitmap;

    .line 115
    iget-object p1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$drawable;->op_battery_charging_outline:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/util/OpImageUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mChargingOutlineBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private drawBattery(Landroid/graphics/RectF;Landroid/graphics/Canvas;)V
    .locals 9

    .line 253
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v1, 0x1

    .line 254
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 255
    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getBatteryLevel()I

    move-result v1

    .line 256
    iget-object v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/util/OpBatteryUtils;->getBatteryMaskInsideResId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 257
    invoke-static {v2}, Lcom/oneplus/util/OpImageUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 258
    iget-object v3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$drawable;->op_battery_mask:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 259
    invoke-static {v3}, Lcom/oneplus/util/OpImageUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 263
    iget v4, p1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 264
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 265
    iget v6, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskColor:I

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    iget v7, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskColor:I

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    iget v8, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskColor:I

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    .line 266
    invoke-virtual {p0, v1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->batteryColorForLevel(I)I

    move-result v1

    .line 267
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v7, v8, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 268
    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v1, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    .line 269
    invoke-virtual {v5, v2, v1, p1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 270
    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v6, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 271
    invoke-virtual {v5, v3, v1, p1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 273
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 274
    iget p0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskColor:I

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 275
    invoke-virtual {p2, v4, v1, p1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 277
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    .line 278
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 281
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_1

    .line 282
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    if-eqz v4, :cond_2

    .line 285
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_2

    .line 286
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;II)V
    .locals 14

    move-object v0, p0

    move-object v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    .line 298
    invoke-direct {p0, v8, v9}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->initCircleSize(II)V

    .line 299
    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getBatteryLevel()I

    move-result v1

    .line 300
    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getCharging()Z

    move-result v10

    .line 304
    iget-object v2, v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    if-nez v10, :cond_1

    iget-boolean v3, v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getColorForLevel(I)I

    move-result v3

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getChargeColor()I

    move-result v3

    :goto_1
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 307
    iget-object v2, v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    const/high16 v3, 0x43870000    # 270.0f

    const v4, 0x40666666    # 3.6f

    int-to-float v1, v1

    mul-float v11, v1, v4

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float v4, v11, v1

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 308
    iget-object v2, v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    move v4, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 310
    iget-object v1, v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v1

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v2, v1

    .line 311
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-eqz v10, :cond_4

    .line 314
    iget-object v1, v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getChargeColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 318
    invoke-direct {p0}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->isOptimizatedCharge()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->isInvalidCharge()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 325
    :cond_2
    iget-object v1, v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v3, v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v0, v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 320
    :cond_3
    :goto_2
    iget-object v1, v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 321
    iget v2, v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mWidth:I

    iget v3, v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mHeight:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 322
    iget-object v0, v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 330
    :cond_4
    iget-boolean v1, v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-eqz v1, :cond_5

    int-to-float v1, v8

    const v2, 0x3eae147b    # 0.34f

    mul-float v10, v1, v2

    .line 332
    iget-object v2, v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCirclePowerSavePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v11

    int-to-float v12, v9

    const/high16 v13, 0x40000000    # 2.0f

    div-float v5, v12, v13

    sub-float v4, v1, v10

    .line 333
    iget-object v6, v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCirclePowerSavePaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v10

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 334
    div-int/lit8 v1, v8, 0x2

    int-to-float v8, v1

    div-int/lit8 v1, v9, 0x2

    int-to-float v9, v1

    div-float/2addr v11, v13

    sub-float v5, v9, v11

    iget-object v6, v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCirclePowerSavePaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v8

    move v3, v10

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v2, v9, v11

    sub-float v4, v12, v10

    .line 335
    iget-object v5, v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCirclePowerSavePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v8

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 337
    :cond_5
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private initCircleSize(II)V
    .locals 1

    .line 342
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleSize:I

    int-to-float p1, p1

    const/high16 p2, 0x40d00000    # 6.5f

    div-float/2addr p1, p2

    .line 344
    iget-object p2, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 345
    iget-object p2, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 347
    iget-object p2, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCirclePowerSavePaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 352
    iget p2, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleSize:I

    int-to-float v0, p2

    sub-float/2addr v0, p1

    int-to-float p2, p2

    sub-float/2addr p2, p1

    .line 354
    iget-object p0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p1, v0, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private isInvalidCharge()Z
    .locals 1

    .line 451
    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getCharging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mIsInvalidCharge:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isOptimizatedCharge()Z
    .locals 1

    .line 446
    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getCharging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mIsOptimizatedCharge:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private postInvalidate(I)V
    .locals 3

    .line 129
    new-instance v0, Lcom/oneplus/battery/-$$Lambda$S7Wld1_rpLukBj6_kbvV_X28zVM;

    invoke-direct {v0, p0}, Lcom/oneplus/battery/-$$Lambda$S7Wld1_rpLukBj6_kbvV_X28zVM;-><init>(Lcom/oneplus/battery/OpBatteryMeterDrawable;)V

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private setMaskDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 361
    iget v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskColorWithoutAlpha:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->setMaskDrawable(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private setMaskDrawable(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 368
    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 369
    iget-object p0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private updateViews()V
    .locals 3

    .line 396
    invoke-direct {p0}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->isInvalidCharge()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 397
    iget v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mBatteryStyle:I

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->op_invalid_charge:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->setMaskDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->op_invalid_charge_outline:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/util/OpImageUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskOutlineBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_0
    if-ne v0, v1, :cond_7

    .line 401
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->op_circle_invalid_charge:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->setMaskDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    iput-object v2, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskOutlineBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 404
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-eqz v0, :cond_2

    .line 406
    iget v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mBatteryStyle:I

    if-nez v0, :cond_7

    .line 407
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->op_ic_battery_saver:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->setMaskDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 408
    iget-object v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mBatterySaveOutline:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskOutlineBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 411
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->isOptimizatedCharge()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 412
    iget v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mBatteryStyle:I

    if-nez v0, :cond_3

    .line 413
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->op_optimized_charging:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->setMaskDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 414
    iget-object v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mOptimizatedChargeOutline:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskOutlineBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    if-ne v0, v1, :cond_7

    .line 416
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->op_circle_optimized_charging:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->setMaskDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 417
    iput-object v2, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskOutlineBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 422
    :cond_4
    iget v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mBatteryStyle:I

    if-nez v0, :cond_6

    .line 423
    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getCharging()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 424
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->op_battery_charging_mask:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->setMaskDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 425
    iget-object v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mChargingOutlineBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskOutlineBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 428
    :cond_5
    invoke-direct {p0, v2}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->setMaskDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 430
    iput-object v2, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskOutlineBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 433
    :cond_6
    invoke-direct {p0, v2}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->setMaskDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 434
    iput-object v2, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskOutlineBitmap:Landroid/graphics/Bitmap;

    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 213
    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getBatteryLevel()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->updateViews()V

    .line 218
    iget v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mBatteryStyle:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 231
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 232
    invoke-direct {p0, v0, p1}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->drawBattery(Landroid/graphics/RectF;Landroid/graphics/Canvas;)V

    .line 235
    iget-object v1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskOutlineBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskOutlineBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mOptimizatedChargePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 241
    iget v1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 243
    iget-object v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mWidth:I

    iget v2, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 244
    iget-object p0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void

    .line 220
    :cond_3
    iget v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mWidth:I

    iget v1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mHeight:I

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->drawCircle(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 123
    iget v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mBatteryStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getIntrinsicHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getIntrinsicWidth()I

    move-result p0

    :goto_0
    return p0
.end method

.method public onBatteryStyleChanged(I)V
    .locals 1

    .line 134
    iget v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mBatteryStyle:I

    if-eq v0, p1, :cond_0

    .line 135
    iput p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mBatteryStyle:I

    .line 136
    invoke-direct {p0}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->updateViews()V

    :cond_0
    return-void
.end method

.method public onOptimizatedStatusChange(Z)V
    .locals 3

    .line 143
    iget-boolean v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mIsOptimizatedCharge:Z

    if-eq v0, p1, :cond_0

    .line 144
    invoke-super {p0, p1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->onOptimizatedStatusChange(Z)V

    .line 145
    iput-boolean p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mIsOptimizatedCharge:Z

    .line 146
    sget-object v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptimizatedStatusChange isOptimizatedCharge:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->updateViews()V

    :cond_0
    return-void
.end method

.method public setBounds(IIII)V
    .locals 0

    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setBounds(IIII)V

    sub-int/2addr p4, p2

    .line 162
    iput p4, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mHeight:I

    sub-int/2addr p3, p1

    .line 163
    iput p3, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mWidth:I

    .line 164
    iget p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mLastHeight:I

    if-ne p1, p4, :cond_0

    iget p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mLastWidth:I

    if-eq p1, p3, :cond_1

    .line 165
    :cond_0
    iget p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mHeight:I

    iput p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mLastHeight:I

    .line 166
    iget p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mWidth:I

    iput p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mLastWidth:I

    const/16 p1, 0x14

    .line 167
    invoke-direct {p0, p1}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->postInvalidate(I)V

    :cond_1
    return-void
.end method

.method public setCharging(Z)V
    .locals 0

    .line 441
    invoke-super {p0, p1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setCharging(Z)V

    .line 442
    invoke-direct {p0}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->updateViews()V

    return-void
.end method

.method public setColors(II)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    iget-object v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    iget-object v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setColors(II)V

    return-void
.end method

.method public setColors(III)V
    .locals 2

    .line 174
    iput p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskColor:I

    .line 176
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p3

    iget v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskColor:I

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iget v1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskColor:I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {p3, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p3

    iput p3, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskColorWithoutAlpha:I

    .line 177
    iget-object p3, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    .line 178
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 179
    iget-object p3, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskColorWithoutAlpha:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 184
    :cond_0
    iget-object p3, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCirclePowerSavePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mMaskColor:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    iget p3, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mBatteryStyle:I

    if-nez p3, :cond_1

    const/4 p2, 0x0

    .line 191
    :cond_1
    iget-boolean p3, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-eqz p3, :cond_3

    .line 192
    iget p3, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mBatteryStyle:I

    if-nez p3, :cond_2

    .line 193
    iget p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mPowerSaveColor:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p3, v0, :cond_3

    .line 195
    iget p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mPowerSaveColor:I

    .line 198
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->setColors(II)V

    return-void
.end method

.method public setIsInvalidCharge(I)V
    .locals 3

    .line 385
    iget v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mIsInvalidCharge:I

    if-eq v0, p1, :cond_0

    .line 386
    invoke-super {p0, p1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setIsInvalidCharge(I)V

    .line 387
    iput p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mIsInvalidCharge:I

    .line 388
    sget-object v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsInvalidCharge isInvalidCharge:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-direct {p0}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->updateViews()V

    :cond_0
    return-void
.end method

.method public setPowerSaveEnabled(Z)V
    .locals 1

    .line 374
    iget-boolean v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-eq v0, p1, :cond_0

    .line 376
    invoke-super {p0, p1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setPowerSave(Z)V

    .line 378
    iput-boolean p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mPowerSaveEnabled:Z

    .line 379
    invoke-direct {p0}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->updateViews()V

    :cond_0
    return-void
.end method
