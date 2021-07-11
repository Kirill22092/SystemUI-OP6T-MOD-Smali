.class public Lcom/oneplus/aod/views/OpTextClock;
.super Landroid/view/View;
.source "OpTextClock.java"

# interfaces
.implements Lcom/oneplus/aod/views/IOpAodClock;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDescFormat:Ljava/lang/CharSequence;

.field private mDescFormat12:Ljava/lang/CharSequence;

.field private mDescFormat24:Ljava/lang/CharSequence;

.field private mDigitColorRed:I

.field private mDigitColorWhite:I

.field private mFontBaseLineY:F

.field private mFontFamilyId:I

.field private mFontSizeId:I

.field private mFormat:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mFormat12:Ljava/lang/CharSequence;

.field private mFormat24:Ljava/lang/CharSequence;

.field private mHasSeconds:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mHourPaint:Landroid/graphics/Paint;

.field private mMinPaint:Landroid/graphics/Paint;

.field private mShowCurrentUserTime:Z

.field private final mTicker:Ljava/lang/Runnable;

.field private mTime:Ljava/util/Calendar;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 183
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 154
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    .line 155
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mMinPaint:Landroid/graphics/Paint;

    .line 164
    new-instance v0, Lcom/oneplus/aod/views/OpTextClock$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/views/OpTextClock$1;-><init>(Lcom/oneplus/aod/views/OpTextClock;)V

    iput-object v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mTicker:Ljava/lang/Runnable;

    .line 184
    iput-object p1, p0, Lcom/oneplus/aod/views/OpTextClock;->mContext:Landroid/content/Context;

    .line 185
    invoke-direct {p0}, Lcom/oneplus/aod/views/OpTextClock;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 201
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/views/OpTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 202
    iput-object p1, p0, Lcom/oneplus/aod/views/OpTextClock;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 217
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/aod/views/OpTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 218
    iput-object p1, p0, Lcom/oneplus/aod/views/OpTextClock;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 222
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 154
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/oneplus/aod/views/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    .line 155
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/oneplus/aod/views/OpTextClock;->mMinPaint:Landroid/graphics/Paint;

    .line 164
    new-instance p3, Lcom/oneplus/aod/views/OpTextClock$1;

    invoke-direct {p3, p0}, Lcom/oneplus/aod/views/OpTextClock$1;-><init>(Lcom/oneplus/aod/views/OpTextClock;)V

    iput-object p3, p0, Lcom/oneplus/aod/views/OpTextClock;->mTicker:Ljava/lang/Runnable;

    .line 224
    iput-object p1, p0, Lcom/oneplus/aod/views/OpTextClock;->mContext:Landroid/content/Context;

    .line 225
    invoke-direct {p0, p2}, Lcom/oneplus/aod/views/OpTextClock;->setupAttributes(Landroid/util/AttributeSet;)V

    .line 227
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    invoke-direct {p0}, Lcom/oneplus/aod/views/OpTextClock;->init()V

    return-void
.end method

.method private static abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    move-object p0, p2

    goto :goto_0

    :cond_0
    move-object p0, p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method static synthetic access$000(Lcom/oneplus/aod/views/OpTextClock;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/oneplus/aod/views/OpTextClock;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/aod/views/OpTextClock;)Ljava/lang/Runnable;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/oneplus/aod/views/OpTextClock;->mTicker:Ljava/lang/Runnable;

    return-object p0
.end method

.method private chooseFormat(Z)V
    .locals 3

    .line 489
    invoke-virtual {p0}, Lcom/oneplus/aod/views/OpTextClock;->is24HourModeEnabled()Z

    move-result v0

    .line 491
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/oneplus/aod/views/OpTextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v1, v1, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/oneplus/aod/views/OpTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mFormat:Ljava/lang/CharSequence;

    .line 494
    iget-object v1, p0, Lcom/oneplus/aod/views/OpTextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/oneplus/aod/views/OpTextClock;->mDescFormat12:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v0}, Lcom/oneplus/aod/views/OpTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mDescFormat:Ljava/lang/CharSequence;

    goto :goto_0

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/oneplus/aod/views/OpTextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v1, v1, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/oneplus/aod/views/OpTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mFormat:Ljava/lang/CharSequence;

    .line 497
    iget-object v1, p0, Lcom/oneplus/aod/views/OpTextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/oneplus/aod/views/OpTextClock;->mDescFormat24:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v0}, Lcom/oneplus/aod/views/OpTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mDescFormat:Ljava/lang/CharSequence;

    .line 499
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mHasSeconds:Z

    .line 500
    iget-object v1, p0, Lcom/oneplus/aod/views/OpTextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/format/DateFormat;->hasSeconds(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/aod/views/OpTextClock;->mHasSeconds:Z

    if-eqz p1, :cond_2

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    .line 503
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/aod/views/OpTextClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 504
    :cond_1
    iget-object p0, p0, Lcom/oneplus/aod/views/OpTextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_1
    return-void
.end method

.method private createTime(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 282
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/views/OpTextClock;->mTime:Ljava/util/Calendar;

    goto :goto_0

    .line 285
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/views/OpTextClock;->mTime:Ljava/util/Calendar;

    :goto_0
    return-void
.end method

.method private drawClockDefault(Landroid/graphics/Canvas;)V
    .locals 13

    .line 540
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [C

    .line 543
    invoke-virtual {p0}, Lcom/oneplus/aod/views/OpTextClock;->is24HourModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "HH"

    goto :goto_0

    :cond_0
    const-string v3, "hh"

    :goto_0
    iget-object v4, p0, Lcom/oneplus/aod/views/OpTextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 544
    iget-object v4, p0, Lcom/oneplus/aod/views/OpTextClock;->mTime:Ljava/util/Calendar;

    const-string v5, "mm"

    invoke-static {v5, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 549
    iget-object v5, p0, Lcom/oneplus/aod/views/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    new-array v6, v1, [F

    .line 555
    iget-object v7, p0, Lcom/oneplus/aod/views/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v6}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    const/4 v7, 0x0

    .line 556
    aget v8, v6, v7

    .line 560
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    div-int/2addr v9, v1

    int-to-float v9, v9

    aget v6, v6, v7

    sub-float/2addr v9, v6

    float-to-int v6, v9

    .line 561
    iget-object v9, p0, Lcom/oneplus/aod/views/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 564
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x31

    if-ne v9, v10, :cond_1

    iget v9, p0, Lcom/oneplus/aod/views/OpTextClock;->mDigitColorRed:I

    goto :goto_1

    :cond_1
    iget v9, p0, Lcom/oneplus/aod/views/OpTextClock;->mDigitColorWhite:I

    .line 565
    :goto_1
    iget-object v11, p0, Lcom/oneplus/aod/views/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 566
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    aput-char v9, v2, v7

    .line 567
    iget-object v9, p0, Lcom/oneplus/aod/views/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    aget-char v11, v2, v7

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v9, v11, v7, v12, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 572
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isMCLVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 573
    iget-object v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v9, Lcom/android/systemui/R$dimen;->clock_view_default_font_base_line1_y:I

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mFontBaseLineY:F

    goto :goto_2

    .line 575
    :cond_2
    iget v0, v5, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v9, 0x41c00000    # 24.0f

    sub-float/2addr v0, v9

    iput v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mFontBaseLineY:F

    .line 578
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v7, v2, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-float v6, v6

    iget v9, p0, Lcom/oneplus/aod/views/OpTextClock;->mFontBaseLineY:F

    iget-object v11, p0, Lcom/oneplus/aod/views/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v9, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 580
    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aput-char v0, v2, v12

    .line 581
    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v10, :cond_3

    iget v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mDigitColorRed:I

    goto :goto_3

    :cond_3
    iget v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mDigitColorWhite:I

    .line 582
    :goto_3
    iget-object v3, p0, Lcom/oneplus/aod/views/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v2, v2, v12

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-float/2addr v6, v8

    iget v2, p0, Lcom/oneplus/aod/views/OpTextClock;->mFontBaseLineY:F

    iget-object v3, p0, Lcom/oneplus/aod/views/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 587
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isMCLVersion()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 588
    iget-object v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->clock_view_default_font_base_line2_y:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mFontBaseLineY:F

    goto :goto_4

    .line 590
    :cond_4
    iget v0, v5, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    iget v2, v5, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v0, v2

    const/high16 v2, 0x42900000    # 72.0f

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mFontBaseLineY:F

    .line 593
    :goto_4
    iget-object v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 594
    iget-object v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oneplus/aod/views/OpTextClock;->mDigitColorWhite:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 595
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/aod/views/OpTextClock;->mFontBaseLineY:F

    iget-object p0, p0, Lcom/oneplus/aod/views/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v0, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getTextHeight()I
    .locals 2

    .line 642
    iget-object p0, p0, Lcom/oneplus/aod/views/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    .line 645
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isMCLVersion()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 646
    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->top:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    mul-float/2addr p0, v1

    goto :goto_0

    .line 650
    :cond_0
    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v0, p0

    const/high16 p0, 0x42400000    # 48.0f

    sub-float/2addr v0, p0

    mul-float p0, v0, v1

    :goto_0
    float-to-int p0, p0

    return p0
.end method

.method private init()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mFormat12:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 233
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/oneplus/aod/views/OpTextClock;->mFormat12:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 235
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/aod/views/OpTextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/oneplus/aod/views/OpTextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 238
    iget-object v0, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mFormat24:Ljava/lang/CharSequence;

    :cond_2
    const/4 v0, 0x1

    .line 242
    iput-boolean v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mShowCurrentUserTime:Z

    .line 244
    iget-object v1, p0, Lcom/oneplus/aod/views/OpTextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oneplus/aod/views/OpTextClock;->createTime(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 246
    invoke-direct {p0, v1}, Lcom/oneplus/aod/views/OpTextClock;->chooseFormat(Z)V

    .line 248
    iget-object v1, p0, Lcom/oneplus/aod/views/OpTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->clock_ten_digit_red:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/views/OpTextClock;->mDigitColorRed:I

    .line 249
    iget-object v1, p0, Lcom/oneplus/aod/views/OpTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->clock_ten_digit_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/views/OpTextClock;->mDigitColorWhite:I

    .line 251
    iget-object v1, p0, Lcom/oneplus/aod/views/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 252
    iget-object v1, p0, Lcom/oneplus/aod/views/OpTextClock;->mMinPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 253
    iget-object v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mMinPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/aod/views/OpTextClock;->mDigitColorWhite:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 255
    invoke-direct {p0}, Lcom/oneplus/aod/views/OpTextClock;->updateTypeface()V

    return-void
.end method

.method private onTimeChanged()V
    .locals 2

    .line 529
    iget-object v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mDescFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/oneplus/aod/views/OpTextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setupAttributes(Landroid/util/AttributeSet;)V
    .locals 3

    .line 599
    iget-object v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->TextClock:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 601
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/views/OpTextClock;->mFormat12:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    .line 602
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/views/OpTextClock;->mFormat24:Ljava/lang/CharSequence;

    const/4 v1, 0x2

    .line 603
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/views/OpTextClock;->mTimeZone:Ljava/lang/String;

    .line 604
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 606
    iget-object v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, -0x1

    .line 608
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/views/OpTextClock;->mFontSizeId:I

    const/16 v1, 0xc

    .line 610
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mFontFamilyId:I

    .line 612
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private updateTypeface()V
    .locals 2

    .line 618
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isMCLVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 619
    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->getMclTypeface(I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/aod/views/OpTextClock;->mFontFamilyId:I

    invoke-static {v0, v1}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    .line 623
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 625
    iput-boolean v1, v0, Landroid/graphics/Typeface;->isLikeDefault:Z

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x1

    const-string v1, "sans-serif"

    .line 629
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 631
    :cond_2
    iget-object v1, p0, Lcom/oneplus/aod/views/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 632
    iget-object v1, p0, Lcom/oneplus/aod/views/OpTextClock;->mMinPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 634
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 635
    invoke-direct {p0}, Lcom/oneplus/aod/views/OpTextClock;->getTextHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 636
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public applyLayoutParams(Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;)V
    .locals 2

    .line 260
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/oneplus/aod/views/OpTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginStart(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 264
    iget-object v1, p0, Lcom/oneplus/aod/views/OpTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginEnd(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 265
    iget-object v1, p0, Lcom/oneplus/aod/views/OpTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginTop(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 266
    iget-object v1, p0, Lcom/oneplus/aod/views/OpTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginEnd(Landroid/content/Context;)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 268
    invoke-direct {p0}, Lcom/oneplus/aod/views/OpTextClock;->getTextHeight()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 273
    :cond_0
    iget p1, p0, Lcom/oneplus/aod/views/OpTextClock;->mFontSizeId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget p1, Lcom/android/systemui/R$dimen;->aod_clock_default_font_size:I

    .line 274
    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx(Landroid/content/Context;I)I

    move-result p1

    .line 275
    iget-object v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 276
    iget-object p0, p0, Lcom/oneplus/aod/views/OpTextClock;->mMinPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public is24HourModeEnabled()Z
    .locals 1

    .line 417
    iget-boolean v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mShowCurrentUserTime:Z

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p0

    return p0

    .line 420
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 517
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 518
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 519
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/views/OpTextClock;->setTimeZone(Ljava/lang/String;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 534
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 535
    iget-object v0, p0, Lcom/oneplus/aod/views/OpTextClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 536
    invoke-direct {p0, p1}, Lcom/oneplus/aod/views/OpTextClock;->drawClockDefault(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTimeChanged(Ljava/util/Calendar;)V
    .locals 0

    .line 524
    invoke-direct {p0}, Lcom/oneplus/aod/views/OpTextClock;->onTimeChanged()V

    .line 525
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 455
    iput-object p1, p0, Lcom/oneplus/aod/views/OpTextClock;->mTimeZone:Ljava/lang/String;

    .line 457
    invoke-direct {p0, p1}, Lcom/oneplus/aod/views/OpTextClock;->createTime(Ljava/lang/String;)V

    .line 458
    invoke-direct {p0}, Lcom/oneplus/aod/views/OpTextClock;->onTimeChanged()V

    return-void
.end method
