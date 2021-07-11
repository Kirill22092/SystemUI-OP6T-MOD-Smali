.class public Lcom/oneplus/aod/OpTextDate;
.super Landroid/view/View;
.source "OpTextDate.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mDateFontBaseLineY:F

.field private mDatePaint:Landroid/graphics/Paint;

.field private mDescFormat:Ljava/lang/CharSequence;

.field private mDescFormat12:Ljava/lang/CharSequence;

.field private mDescFormat24:Ljava/lang/CharSequence;

.field private mFormat:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mFormat12:Ljava/lang/CharSequence;

.field private mFormat24:Ljava/lang/CharSequence;

.field private mFormatString:Ljava/lang/String;

.field private mHasSeconds:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mLocale:Ljava/lang/String;

.field private mShowCurrentUserTime:Z

.field private final mTicker:Ljava/lang/Runnable;

.field private mTime:Ljava/util/Calendar;

.field private mTimeZone:Ljava/lang/String;

.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 183
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 147
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    .line 164
    new-instance p1, Lcom/oneplus/aod/OpTextDate$1;

    invoke-direct {p1, p0}, Lcom/oneplus/aod/OpTextDate$1;-><init>(Lcom/oneplus/aod/OpTextDate;)V

    iput-object p1, p0, Lcom/oneplus/aod/OpTextDate;->mTicker:Ljava/lang/Runnable;

    .line 184
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 200
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/OpTextDate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 215
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/aod/OpTextDate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 219
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 147
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    .line 164
    new-instance v0, Lcom/oneplus/aod/OpTextDate$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpTextDate$1;-><init>(Lcom/oneplus/aod/OpTextDate;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mTicker:Ljava/lang/Runnable;

    .line 221
    sget-object v0, Lcom/android/internal/R$styleable;->TextClock:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 224
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/aod/OpTextDate;->mFormat12:Ljava/lang/CharSequence;

    const/4 p2, 0x1

    .line 225
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/aod/OpTextDate;->mFormat24:Ljava/lang/CharSequence;

    const/4 p2, 0x2

    .line 226
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/aod/OpTextDate;->mTimeZone:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 231
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->init()V

    return-void

    :catchall_0
    move-exception p0

    .line 228
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 229
    throw p0
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

.method static synthetic access$000(Lcom/oneplus/aod/OpTextDate;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/aod/OpTextDate;)Ljava/lang/Runnable;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/oneplus/aod/OpTextDate;->mTicker:Ljava/lang/Runnable;

    return-object p0
.end method

.method private chooseFormat()V
    .locals 1

    const/4 v0, 0x1

    .line 443
    invoke-direct {p0, v0}, Lcom/oneplus/aod/OpTextDate;->chooseFormat(Z)V

    return-void
.end method

.method private chooseFormat(Z)V
    .locals 3

    .line 464
    invoke-virtual {p0}, Lcom/oneplus/aod/OpTextDate;->is24HourModeEnabled()Z

    move-result v0

    .line 466
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

    .line 468
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mFormat24:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/oneplus/aod/OpTextDate;->mFormat12:Ljava/lang/CharSequence;

    iget-object v1, v1, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/oneplus/aod/OpTextDate;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mFormat:Ljava/lang/CharSequence;

    .line 469
    iget-object v1, p0, Lcom/oneplus/aod/OpTextDate;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/oneplus/aod/OpTextDate;->mDescFormat12:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v0}, Lcom/oneplus/aod/OpTextDate;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mDescFormat:Ljava/lang/CharSequence;

    goto :goto_0

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mFormat12:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/oneplus/aod/OpTextDate;->mFormat24:Ljava/lang/CharSequence;

    iget-object v1, v1, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/oneplus/aod/OpTextDate;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mFormat:Ljava/lang/CharSequence;

    .line 472
    iget-object v1, p0, Lcom/oneplus/aod/OpTextDate;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/oneplus/aod/OpTextDate;->mDescFormat24:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v0}, Lcom/oneplus/aod/OpTextDate;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mDescFormat:Ljava/lang/CharSequence;

    .line 474
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/aod/OpTextDate;->mHasSeconds:Z

    .line 475
    iget-object v1, p0, Lcom/oneplus/aod/OpTextDate;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/format/DateFormat;->hasSeconds(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/aod/OpTextDate;->mHasSeconds:Z

    if-eqz p1, :cond_2

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    .line 478
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/aod/OpTextDate;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 479
    :cond_1
    iget-object p0, p0, Lcom/oneplus/aod/OpTextDate;->mTicker:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_1
    return-void
.end method

.method private createTime(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 258
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/OpTextDate;->mTime:Ljava/util/Calendar;

    goto :goto_0

    .line 260
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/OpTextDate;->mTime:Ljava/util/Calendar;

    :goto_0
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 7

    .line 524
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 525
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 528
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 531
    iget-object v3, p0, Lcom/oneplus/aod/OpTextDate;->mLocale:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 532
    new-instance v3, Ljava/util/Locale;

    iget-object v4, p0, Lcom/oneplus/aod/OpTextDate;->mLocale:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 534
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 538
    :goto_0
    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "zh_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 542
    iget-object v5, p0, Lcom/oneplus/aod/OpTextDate;->mFormatString:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 543
    iget-object v5, p0, Lcom/oneplus/aod/OpTextDate;->mFormatString:Ljava/lang/String;

    const-string v6, "keyguardStyle"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 547
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$string;->system_ui_aod_date_pattern:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 546
    invoke-static {v5, v3}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v5

    .line 548
    sget-object v6, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v5, v6}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 549
    iget-object v6, p0, Lcom/oneplus/aod/OpTextDate;->mTime:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    .line 551
    iget-object v5, p0, Lcom/oneplus/aod/OpTextDate;->mFormatString:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 552
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 553
    iget-object v5, p0, Lcom/oneplus/aod/OpTextDate;->mTime:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 557
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v4, :cond_3

    const-string v4, "MMMMd"

    .line 559
    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "EEE"

    .line 560
    invoke-static {v3, v5}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 561
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 562
    iget-object v4, p0, Lcom/oneplus/aod/OpTextDate;->mTime:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 563
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 564
    iget-object v3, p0, Lcom/oneplus/aod/OpTextDate;->mTime:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 569
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    const-string v4, "EEE, MMM d"

    .line 571
    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 572
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 573
    iget-object v3, p0, Lcom/oneplus/aod/OpTextDate;->mTime:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    :cond_4
    :goto_2
    int-to-float v0, v0

    .line 576
    iget v3, p0, Lcom/oneplus/aod/OpTextDate;->mDateFontBaseLineY:F

    iget-object v4, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 577
    iget-object p1, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v5, v0, v3, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 578
    iget-object p1, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 580
    iget-object p1, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 581
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 582
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isMCLVersion()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 583
    iget p1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int/lit8 p1, p1, 0x4

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_3

    .line 585
    :cond_5
    iget p1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int/lit8 p1, p1, 0x6

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 587
    :goto_3
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private init()V
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mFormat12:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mFormat24:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 236
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

    .line 237
    iget-object v1, p0, Lcom/oneplus/aod/OpTextDate;->mFormat12:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 238
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/aod/OpTextDate;->mFormat12:Ljava/lang/CharSequence;

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/oneplus/aod/OpTextDate;->mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 241
    iget-object v0, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mFormat24:Ljava/lang/CharSequence;

    .line 245
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->reloadDimen()V

    .line 246
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/aod/OpTextDate;->createTime(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 248
    invoke-direct {p0, v0}, Lcom/oneplus/aod/OpTextDate;->chooseFormat(Z)V

    .line 250
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 251
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    const-string v1, "0.025"

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 252
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->date_view_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 253
    iget-object p0, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private onTimeChanged()V
    .locals 2

    .line 502
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mDescFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/oneplus/aod/OpTextDate;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 503
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private reloadDimen()V
    .locals 2

    .line 517
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->date_view_font_base_line_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpTextDate;->mDateFontBaseLineY:F

    .line 518
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->date_view_default_marginTop:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 519
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->date_view_analog_marginTop:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 520
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->date_view_analog_mcl_marginTop:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    return-void
.end method


# virtual methods
.method public is24HourModeEnabled()Z
    .locals 1

    .line 392
    iget-boolean v0, p0, Lcom/oneplus/aod/OpTextDate;->mShowCurrentUserTime:Z

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p0

    return p0

    .line 395
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 492
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 493
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 494
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OpTextDate;->setTimeZone(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/oneplus/aod/OpTextDate;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 508
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 510
    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpTextDate;->drawText(Landroid/graphics/Canvas;)V

    .line 512
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setShowCurrentUserTime(Z)V
    .locals 0

    .line 367
    iput-boolean p1, p0, Lcom/oneplus/aod/OpTextDate;->mShowCurrentUserTime:Z

    .line 369
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->chooseFormat()V

    .line 370
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->onTimeChanged()V

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 430
    iput-object p1, p0, Lcom/oneplus/aod/OpTextDate;->mTimeZone:Ljava/lang/String;

    .line 432
    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpTextDate;->createTime(Ljava/lang/String;)V

    .line 433
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->onTimeChanged()V

    return-void
.end method
