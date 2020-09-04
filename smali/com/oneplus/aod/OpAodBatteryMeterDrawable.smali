.class public Lcom/oneplus/aod/OpAodBatteryMeterDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "OpAodBatteryMeterDrawable.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/OpAodBatteryMeterDrawable$SettingObserver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "OpAodBatteryMeterDrawable"


# instance fields
.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mBatteryPaint:Landroid/graphics/Paint;

.field private mBatteryStyle:I

.field private final mBoltFrame:Landroid/graphics/RectF;

.field private final mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private final mButtonFrame:Landroid/graphics/RectF;

.field private mButtonHeightFraction:F

.field private mChargeColor:I

.field private mCharging:Z

.field private mCircleBackPaint:Landroid/graphics/Paint;

.field private mCircleChargingPaint:Landroid/graphics/Paint;

.field private mCircleFrontPaint:Landroid/graphics/Paint;

.field private final mCircleRect:Landroid/graphics/RectF;

.field private mCircleSize:I

.field private final mClipPath:Landroid/graphics/Path;

.field private final mColors:[I

.field private final mContext:Landroid/content/Context;

.field private final mCriticalLevel:I

.field private mCustomColor:I

.field private mDarkModeBackgroundColor:I

.field private mDarkModeFillColor:I

.field private final mFrame:Landroid/graphics/RectF;

.field private final mFramePaint:Landroid/graphics/Paint;

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIconTint:I

.field private mInStatusBar:Z

.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I

.field private final mInvalidate:Ljava/lang/Runnable;

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLevel:I

.field private mLightModeBackgroundColor:I

.field private mLightModeFillColor:I

.field private mListening:Z

.field private mLog:Z

.field private mOldDarkIntensity:F

.field private mPluggedIn:Z

.field private final mPlusFrame:Landroid/graphics/RectF;

.field private final mPlusPaint:Landroid/graphics/Paint;

.field private final mPlusPath:Landroid/graphics/Path;

.field private final mPlusPoints:[F

.field private mPowerSaveEnabled:Z

.field private final mSettingObserver:Lcom/oneplus/aod/OpAodBatteryMeterDrawable$SettingObserver;

.field private final mShapePath:Landroid/graphics/Path;

.field private mShowPercent:Z

.field private mSubpixelSmoothingLeft:F

.field private mSubpixelSmoothingRight:F

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTextPath:Landroid/graphics/Path;

.field private mUseCustomColor:Z

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field private final mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I

.field private resetUITimes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 10

    .line 141
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mIconTint:I

    const/4 v1, 0x0

    .line 67
    iput v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mOldDarkIntensity:F

    .line 75
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    .line 77
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    .line 79
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    .line 80
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    .line 81
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    .line 82
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    .line 84
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    .line 85
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    .line 86
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mTextPath:Landroid/graphics/Path;

    .line 97
    new-instance v2, Lcom/oneplus/aod/OpAodBatteryMeterDrawable$SettingObserver;

    invoke-direct {v2, p0}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable$SettingObserver;-><init>(Lcom/oneplus/aod/OpAodBatteryMeterDrawable;)V

    iput-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mSettingObserver:Lcom/oneplus/aod/OpAodBatteryMeterDrawable$SettingObserver;

    .line 102
    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLevel:I

    .line 112
    new-instance v0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable$1;-><init>(Lcom/oneplus/aod/OpAodBatteryMeterDrawable;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBatteryStyle:I

    .line 124
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    .line 138
    iput-boolean v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLog:Z

    .line 304
    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->resetUITimes:I

    .line 391
    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLastHeight:I

    .line 392
    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLastWidth:I

    .line 759
    iput-boolean v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mInStatusBar:Z

    .line 142
    iput-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mContext:Landroid/content/Context;

    .line 143
    iput-object p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 145
    sget v2, Lcom/android/systemui/R$array;->batterymeter_color_levels:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 146
    sget v3, Lcom/android/systemui/R$array;->batterymeter_color_values:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 148
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    .line 149
    new-array v5, v5, [I

    iput-object v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mColors:[I

    move v5, v0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v4, :cond_0

    .line 151
    iget-object v7, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mColors:[I

    mul-int/lit8 v8, v5, 0x2

    invoke-virtual {v2, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    aput v9, v7, v8

    .line 152
    iget-object v7, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mColors:[I

    add-int/2addr v8, v6

    invoke-virtual {v3, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    aput v6, v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 155
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->updateShowPercent()V

    .line 157
    sget v0, Lcom/android/systemui/R$string;->battery_meter_very_low_overlay_symbol:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mWarningString:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e002d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCriticalLevel:I

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$fraction;->battery_button_height_fraction:I

    invoke-virtual {v0, v2, v6, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mButtonHeightFraction:F

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$fraction;->battery_subpixel_smoothing_left:I

    invoke-virtual {v0, v2, v6, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$fraction;->battery_subpixel_smoothing_right:I

    invoke-virtual {v0, v2, v6, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mSubpixelSmoothingRight:F

    .line 167
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    .line 168
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 170
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 171
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 173
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    .line 174
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 175
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 176
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 178
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    .line 181
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 183
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    .line 184
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mColors:[I

    aget v2, v2, v6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 189
    sget v0, Lcom/android/systemui/R$color;->batterymeter_charge_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mChargeColor:I

    .line 191
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    .line 192
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/systemui/R$color;->batterymeter_bolt_color:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    invoke-static {p2}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->loadBoltPoints(Landroid/content/res/Resources;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltPoints:[F

    .line 195
    new-instance v0, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusPaint:Landroid/graphics/Paint;

    .line 196
    invoke-static {p2}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->loadPlusPoints(Landroid/content/res/Resources;)[F

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusPoints:[F

    .line 198
    sget p2, Lcom/android/systemui/R$color;->dark_mode_icon_color_dual_tone_background:I

    .line 199
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mDarkModeBackgroundColor:I

    .line 200
    sget p2, Lcom/android/systemui/R$color;->dark_mode_icon_color_dual_tone_fill:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mDarkModeFillColor:I

    .line 201
    sget p2, Lcom/android/systemui/R$color;->light_mode_icon_color_dual_tone_background:I

    .line 202
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLightModeBackgroundColor:I

    .line 203
    sget p2, Lcom/android/systemui/R$color;->light_mode_icon_color_dual_tone_fill:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLightModeFillColor:I

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$dimen;->battery_icon_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mIntrinsicWidth:I

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->battery_icon_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mIntrinsicHeight:I

    .line 209
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    .line 210
    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 212
    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 213
    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 214
    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 216
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    .line 217
    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 218
    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 219
    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 220
    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 222
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    .line 223
    iget-object p0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/OpAodBatteryMeterDrawable;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->updateShowPercent()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/aod/OpAodBatteryMeterDrawable;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->postInvalidate()V

    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;II)V
    .locals 12

    .line 727
    invoke-direct {p0, p2, p3}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->initCircleSize(II)V

    .line 730
    iget-object p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    iget-boolean p3, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPluggedIn:Z

    if-eqz p3, :cond_0

    iget p3, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mChargeColor:I

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLevel:I

    invoke-direct {p0, p3}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->getColorForLevel(I)I

    move-result p3

    :goto_0
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 731
    iget-object p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    iget-boolean p3, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPluggedIn:Z

    if-eqz p3, :cond_1

    iget p3, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mChargeColor:I

    goto :goto_1

    :cond_1
    iget p3, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLevel:I

    invoke-direct {p0, p3}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->getColorForLevel(I)I

    move-result p3

    :goto_1
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 733
    iget-object v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 734
    iget-object v7, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    const/high16 v8, 0x43870000    # 270.0f

    const p2, 0x40666666    # 3.6f

    iget p3, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLevel:I

    int-to-float p3, p3

    mul-float v9, p3, p2

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 736
    iget-object p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->right:F

    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p3, v0

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr p3, v0

    .line 738
    iget-boolean v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v0, :cond_2

    .line 739
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, p3, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private getColorForLevel(I)I
    .locals 4

    .line 423
    iget-boolean v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mUseCustomColor:Z

    if-eqz v0, :cond_0

    .line 424
    iget p0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCustomColor:I

    return p0

    .line 427
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-eqz v0, :cond_1

    .line 428
    iget-object p0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mColors:[I

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aget p0, p0, p1

    return p0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 431
    :goto_0
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mColors:[I

    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 432
    aget v1, v2, v0

    add-int/lit8 v3, v0, 0x1

    .line 433
    aget v3, v2, v3

    if-gt p1, v1, :cond_3

    .line 437
    array-length p1, v2

    add-int/lit8 p1, p1, -0x2

    if-ne v0, p1, :cond_2

    .line 438
    iget p0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mIconTint:I

    return p0

    :cond_2
    return v3

    :cond_3
    add-int/lit8 v0, v0, 0x2

    move v1, v3

    goto :goto_0

    :cond_4
    return v1
.end method

.method private initCircleSize(II)V
    .locals 3

    .line 744
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleSize:I

    .line 745
    iget p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleSize:I

    int-to-float p1, p1

    const/high16 p2, 0x40d00000    # 6.5f

    div-float/2addr p1, p2

    .line 746
    iget-object p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 747
    iget-object p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p2, 0x0

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    add-float v0, p2, p1

    .line 752
    iget v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleSize:I

    int-to-float v2, v1

    sub-float/2addr v2, p1

    add-float/2addr v2, p2

    int-to-float p2, v1

    sub-float/2addr p2, p1

    .line 754
    iget-object p0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, p1, v2, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private static loadBoltPoints(Landroid/content/res/Resources;)[F
    .locals 7

    .line 349
    sget v0, Lcom/android/systemui/R$array;->batterymeter_bolt_points:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 351
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_0

    .line 352
    aget v4, p0, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v4, v1, 0x1

    .line 353
    aget v4, p0, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 355
    :cond_0
    array-length v1, p0

    new-array v1, v1, [F

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 358
    :goto_1
    array-length v4, p0

    if-ge v0, v4, :cond_2

    .line 359
    aget v4, p0, v0

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    aput v4, v1, v0

    add-int/lit8 v4, v0, 0x1

    .line 360
    aget v5, p0, v4

    int-to-float v5, v5

    int-to-float v6, v3

    div-float/2addr v5, v6

    aput v5, v1, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 363
    :cond_1
    sget-object p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->TAG:Ljava/lang/String;

    const-string v0, "max X or Y is zero!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1
.end method

.method private static loadPlusPoints(Landroid/content/res/Resources;)[F
    .locals 7

    .line 370
    sget v0, Lcom/android/systemui/R$array;->batterymeter_plus_points:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 372
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_0

    .line 373
    aget v4, p0, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v4, v1, 0x1

    .line 374
    aget v4, p0, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 376
    :cond_0
    array-length v1, p0

    new-array v1, v1, [F

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 379
    :goto_1
    array-length v4, p0

    if-ge v0, v4, :cond_2

    .line 380
    aget v4, p0, v0

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    aput v4, v1, v0

    add-int/lit8 v4, v0, 0x1

    .line 381
    aget v5, p0, v4

    int-to-float v5, v5

    int-to-float v6, v3

    div-float/2addr v5, v6

    aput v5, v1, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 384
    :cond_1
    sget-object p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->TAG:Ljava/lang/String;

    const-string v0, "max X or Y is zero!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1
.end method

.method private postInvalidate()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postInvalidate(I)V
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateShowPercent()V
    .locals 4

    .line 416
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 417
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "status_bar_show_battery_percent"

    .line 416
    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShowPercent:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 493
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 494
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 495
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 497
    iget-boolean v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mInStatusBar:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->resetUITimes:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 498
    sget-object v0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->TAG:Ljava/lang/String;

    const-string v1, "re-draw since have padding"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->resetUITimes:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->resetUITimes:I

    .line 501
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 502
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->postInvalidate()V

    .line 509
    :cond_1
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLevel:I

    .line 513
    iget-boolean v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLog:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPluggedIn:Z

    if-nez v1, :cond_2

    .line 514
    sget-object v1, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "draw, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBatteryStyle:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPluggedIn:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCharging:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShowPercent:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mListening:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLevel:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPowerSaveEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    return-void

    :cond_3
    int-to-float v1, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    .line 521
    iget v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mHeight:I

    const v4, 0x3f27b961

    int-to-float v5, v2

    mul-float/2addr v5, v4

    float-to-int v4, v5

    .line 523
    iget v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mWidth:I

    sub-int/2addr v5, v4

    const/4 v6, 0x2

    div-int/2addr v5, v6

    int-to-float v7, v2

    .line 525
    iget v8, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mButtonHeightFraction:F

    mul-float/2addr v8, v7

    float-to-int v8, v8

    .line 527
    iget-object v9, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    int-to-float v10, v4

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v11, v10, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 528
    iget-object v7, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    int-to-float v5, v5

    invoke-virtual {v7, v5, v11}, Landroid/graphics/RectF;->offset(FF)V

    .line 531
    iget v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBatteryStyle:I

    if-eq v5, v3, :cond_12

    if-eq v5, v6, :cond_11

    .line 545
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v10, v5

    .line 546
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/RectF;->top:F

    iget v5, v5, Landroid/graphics/RectF;->right:F

    .line 548
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v5, v9

    iget-object v9, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    int-to-float v8, v8

    add-float/2addr v9, v8

    .line 545
    invoke-virtual {v2, v4, v7, v5, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 551
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    add-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 552
    iget v4, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 553
    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mSubpixelSmoothingRight:F

    sub-float/2addr v4, v7

    iput v4, v2, Landroid/graphics/RectF;->right:F

    .line 556
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v8

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 557
    iget v4, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 558
    iget v4, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 559
    iget v4, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v7

    iput v4, v2, Landroid/graphics/RectF;->right:F

    .line 560
    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v7

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    .line 563
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    iget-boolean v4, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mChargeColor:I

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->getColorForLevel(I)I

    move-result v4

    :goto_0
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v2, 0x60

    const/high16 v4, 0x3f800000    # 1.0f

    if-lt v0, v2, :cond_5

    move v1, v4

    goto :goto_1

    .line 567
    :cond_5
    iget v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCriticalLevel:I

    if-gt v0, v2, :cond_6

    move v1, v11

    :cond_6
    :goto_1
    cmpl-float v2, v1, v4

    if-nez v2, :cond_7

    .line 571
    iget-object v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    goto :goto_2

    .line 572
    :cond_7
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float v1, v4, v1

    mul-float/2addr v2, v1

    add-float v1, v5, v2

    .line 575
    :goto_2
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 576
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/RectF;->left:F

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v7, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 577
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/RectF;->right:F

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 578
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 579
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/RectF;->right:F

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 580
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/RectF;->right:F

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 581
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/RectF;->left:F

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 582
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/RectF;->left:F

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 583
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 584
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/RectF;->left:F

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 586
    iget-boolean v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPluggedIn:Z

    const/4 v5, 0x0

    if-eqz v2, :cond_b

    .line 588
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v2, v7

    add-float/2addr v4, v2

    .line 589
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v8, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/high16 v9, 0x40c00000    # 6.0f

    div-float/2addr v2, v9

    add-float/2addr v8, v2

    .line 590
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v9, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v7

    sub-float/2addr v9, v2

    .line 591
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/high16 v10, 0x41200000    # 10.0f

    div-float/2addr v2, v10

    sub-float/2addr v7, v2

    .line 592
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v10, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v10, v10, v4

    if-nez v10, :cond_8

    iget v10, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v10, v10, v8

    if-nez v10, :cond_8

    iget v10, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v10, v10, v9

    if-nez v10, :cond_8

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_a

    .line 594
    :cond_8
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v2, v4, v8, v9, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 595
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 596
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v7, v4, Landroid/graphics/RectF;->left:F

    iget-object v8, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltPoints:[F

    aget v8, v8, v5

    .line 597
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    iget-object v4, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v8, v4, Landroid/graphics/RectF;->top:F

    iget-object v9, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltPoints:[F

    aget v9, v9, v3

    .line 598
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    .line 596
    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 599
    :goto_3
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltPoints:[F

    array-length v4, v2

    if-ge v6, v4, :cond_9

    .line 600
    iget-object v4, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->left:F

    aget v2, v2, v6

    .line 601
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v2, v7

    add-float/2addr v8, v2

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v7, v2, Landroid/graphics/RectF;->top:F

    iget-object v9, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltPoints:[F

    add-int/lit8 v10, v6, 0x1

    aget v9, v9, v10

    .line 602
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v9, v2

    add-float/2addr v7, v9

    .line 600
    invoke-virtual {v4, v8, v7}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v6, v6, 0x2

    goto :goto_3

    .line 604
    :cond_9
    iget-object v4, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    aget v2, v2, v5

    .line 605
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v2, v5

    add-float/2addr v7, v2

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltPoints:[F

    aget v3, v6, v3

    .line 606
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v3, v2

    add-float/2addr v5, v3

    .line 604
    invoke-virtual {v4, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 610
    :cond_a
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_5

    .line 612
    :cond_b
    iget-boolean v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-eqz v2, :cond_10

    .line 614
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v2, v7

    const/high16 v8, 0x40400000    # 3.0f

    div-float/2addr v2, v8

    .line 615
    iget-object v8, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    sub-float/2addr v8, v2

    div-float/2addr v8, v7

    add-float/2addr v9, v8

    .line 616
    iget-object v8, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v10, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    sub-float/2addr v8, v2

    div-float/2addr v8, v7

    add-float/2addr v10, v8

    .line 617
    iget-object v8, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v12, v8, Landroid/graphics/RectF;->right:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    sub-float/2addr v8, v2

    div-float/2addr v8, v7

    sub-float/2addr v12, v8

    .line 618
    iget-object v8, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v13, v8, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    sub-float/2addr v8, v2

    div-float/2addr v8, v7

    sub-float/2addr v13, v8

    .line 619
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v7, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v9

    if-nez v7, :cond_c

    iget v7, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v7, v7, v10

    if-nez v7, :cond_c

    iget v7, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v7, v7, v12

    if-nez v7, :cond_c

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v13

    if-eqz v2, :cond_e

    .line 621
    :cond_c
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v2, v9, v10, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 622
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 623
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->left:F

    iget-object v9, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusPoints:[F

    aget v9, v9, v5

    .line 624
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    iget-object v7, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v9, v7, Landroid/graphics/RectF;->top:F

    iget-object v10, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusPoints:[F

    aget v10, v10, v3

    .line 625
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v10, v7

    add-float/2addr v9, v10

    .line 623
    invoke-virtual {v2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 626
    :goto_4
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusPoints:[F

    array-length v7, v2

    if-ge v6, v7, :cond_d

    .line 627
    iget-object v7, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    aget v2, v2, v6

    .line 628
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float/2addr v2, v8

    add-float/2addr v9, v2

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v8, v2, Landroid/graphics/RectF;->top:F

    iget-object v10, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusPoints:[F

    add-int/lit8 v12, v6, 0x1

    aget v10, v10, v12

    .line 629
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v10, v2

    add-float/2addr v8, v10

    .line 627
    invoke-virtual {v7, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v6, v6, 0x2

    goto :goto_4

    .line 631
    :cond_d
    iget-object v6, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->left:F

    aget v2, v2, v5

    .line 632
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v2, v5

    add-float/2addr v8, v2

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusPoints:[F

    aget v3, v7, v3

    .line 633
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v3, v2

    add-float/2addr v5, v3

    .line 631
    invoke-virtual {v6, v8, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 636
    :cond_e
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v5, v3, v1

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v2

    div-float/2addr v5, v3

    .line 637
    invoke-static {v5, v11}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v3, 0x3e99999a    # 0.3f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_f

    .line 640
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 643
    :cond_f
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 673
    :cond_10
    :goto_5
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 676
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iput v1, v2, Landroid/graphics/RectF;->top:F

    .line 677
    iget-object v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 678
    iget-object v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 679
    iget-object v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 680
    iget-object v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 682
    iget-boolean v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPluggedIn:Z

    if-nez v1, :cond_11

    iget-boolean v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-nez v1, :cond_11

    .line 683
    iget v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCriticalLevel:I

    if-gt v0, v1, :cond_11

    .line 685
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 686
    iget v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mWarningTextHeight:F

    add-float/2addr v1, v2

    const v2, 0x3ef5c28f    # 0.48f

    mul-float/2addr v1, v2

    .line 687
    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mWarningString:Ljava/lang/String;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_11
    return-void

    .line 533
    :cond_12
    invoke-direct {p0, p1, v4, v2}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->drawCircle(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 244
    iget p0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mIntrinsicHeight:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 251
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBatteryStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mIntrinsicHeight:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mIntrinsicWidth:I

    :goto_0
    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0

    .line 292
    iput p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLevel:I

    .line 293
    iput-boolean p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPluggedIn:Z

    .line 294
    iput-boolean p3, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mCharging:Z

    .line 295
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->postInvalidate()V

    return-void
.end method

.method public onBatteryPercentShowChange(Z)V
    .locals 0

    return-void
.end method

.method public onBatteryStyleChanged(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    move p1, v0

    .line 310
    :cond_0
    iput p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBatteryStyle:I

    .line 311
    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->resetUITimes:I

    .line 312
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->postInvalidate()V

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 3

    .line 318
    iput-boolean p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPowerSaveEnabled:Z

    .line 320
    iget-boolean v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLog:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPowerSaveChanged , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public relayout()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->battery_icon_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mIntrinsicWidth:I

    .line 230
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->battery_icon_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mIntrinsicHeight:I

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 286
    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mPowerSaveEnabled:Z

    return-void
.end method

.method public setBounds(IIII)V
    .locals 0

    .line 397
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sub-int/2addr p4, p2

    .line 398
    iput p4, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mHeight:I

    sub-int/2addr p3, p1

    .line 399
    iput p3, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mWidth:I

    .line 400
    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mHeight:I

    int-to-float p2, p2

    const/high16 p3, 0x3f400000    # 0.75f

    mul-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 401
    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float p1, p1

    iput p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mWarningTextHeight:F

    .line 404
    iget p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLastHeight:I

    iget p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mHeight:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLastWidth:I

    iget p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mWidth:I

    if-eq p1, p2, :cond_1

    .line 405
    :cond_0
    iget p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mHeight:I

    iput p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLastHeight:I

    .line 406
    iget p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mWidth:I

    iput p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mLastWidth:I

    const/16 p1, 0x14

    .line 407
    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->postInvalidate(I)V

    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setIconPlace(Z)V
    .locals 0

    .line 761
    iput-boolean p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mInStatusBar:Z

    return-void
.end method

.method public startListening()V
    .locals 4

    const/4 v0, 0x1

    .line 256
    iput-boolean v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mListening:Z

    .line 257
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_battery_percent"

    .line 258
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mSettingObserver:Lcom/oneplus/aod/OpAodBatteryMeterDrawable$SettingObserver;

    const/4 v3, 0x0

    .line 257
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 259
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->updateShowPercent()V

    .line 260
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public stopListening()V
    .locals 2

    const/4 v0, 0x0

    .line 264
    iput-boolean v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mListening:Z

    .line 265
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mSettingObserver:Lcom/oneplus/aod/OpAodBatteryMeterDrawable$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 266
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method
