.class public Lcom/oneplus/aod/OpTextDate;
.super Landroid/view/View;
.source "OpTextDate.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

.field public static final DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;


# instance fields
.field private mClockStyle:I

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

.field private mHasSeconds:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mMarginTopAnalog:I

.field private mMarginTopAnalogMcl:I

.field private mMarginTopDefault:I

.field private mShowCurrentUserTime:Z

.field private mTextSize:F

.field private final mTicker:Ljava/lang/Runnable;

.field private mTime:Ljava/util/Calendar;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "h:mm a"

    .line 103
    sput-object v0, Lcom/oneplus/aod/OpTextDate;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    const-string v0, "H:mm"

    .line 117
    sput-object v0, Lcom/oneplus/aod/OpTextDate;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 169
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 139
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    .line 150
    new-instance p1, Lcom/oneplus/aod/OpTextDate$1;

    invoke-direct {p1, p0}, Lcom/oneplus/aod/OpTextDate$1;-><init>(Lcom/oneplus/aod/OpTextDate;)V

    iput-object p1, p0, Lcom/oneplus/aod/OpTextDate;->mTicker:Ljava/lang/Runnable;

    .line 170
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 186
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/OpTextDate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 201
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/aod/OpTextDate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 205
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 139
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    .line 150
    new-instance v0, Lcom/oneplus/aod/OpTextDate$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpTextDate$1;-><init>(Lcom/oneplus/aod/OpTextDate;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mTicker:Ljava/lang/Runnable;

    .line 207
    sget-object v0, Lcom/android/internal/R$styleable;->TextClock:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 210
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/aod/OpTextDate;->mFormat12:Ljava/lang/CharSequence;

    const/4 p2, 0x1

    .line 211
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/aod/OpTextDate;->mFormat24:Ljava/lang/CharSequence;

    const/4 p2, 0x2

    .line 212
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/aod/OpTextDate;->mTimeZone:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 217
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->init()V

    return-void

    :catchall_0
    move-exception p0

    .line 214
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

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

    .line 89
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/aod/OpTextDate;)Ljava/lang/Runnable;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/oneplus/aod/OpTextDate;->mTicker:Ljava/lang/Runnable;

    return-object p0
.end method

.method private chooseFormat()V
    .locals 1

    const/4 v0, 0x1

    .line 429
    invoke-direct {p0, v0}, Lcom/oneplus/aod/OpTextDate;->chooseFormat(Z)V

    return-void
.end method

.method private chooseFormat(Z)V
    .locals 3

    .line 450
    invoke-virtual {p0}, Lcom/oneplus/aod/OpTextDate;->is24HourModeEnabled()Z

    move-result v0

    .line 452
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

    .line 454
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mFormat24:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/oneplus/aod/OpTextDate;->mFormat12:Ljava/lang/CharSequence;

    iget-object v1, v1, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/oneplus/aod/OpTextDate;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mFormat:Ljava/lang/CharSequence;

    .line 455
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/oneplus/aod/OpTextDate;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/oneplus/aod/OpTextDate;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/oneplus/aod/OpTextDate;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mDescFormat:Ljava/lang/CharSequence;

    goto :goto_0

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mFormat12:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/oneplus/aod/OpTextDate;->mFormat24:Ljava/lang/CharSequence;

    iget-object v1, v1, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/oneplus/aod/OpTextDate;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mFormat:Ljava/lang/CharSequence;

    .line 458
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/oneplus/aod/OpTextDate;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/oneplus/aod/OpTextDate;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/oneplus/aod/OpTextDate;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mDescFormat:Ljava/lang/CharSequence;

    .line 460
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/aod/OpTextDate;->mHasSeconds:Z

    .line 461
    iget-object v1, p0, Lcom/oneplus/aod/OpTextDate;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/format/DateFormat;->hasSeconds(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/aod/OpTextDate;->mHasSeconds:Z

    if-eqz p1, :cond_2

    .line 463
    iget-boolean p1, p0, Lcom/oneplus/aod/OpTextDate;->mHasSeconds:Z

    if-eq v0, p1, :cond_2

    if-eqz v0, :cond_1

    .line 464
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/aod/OpTextDate;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 465
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

    .line 244
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/OpTextDate;->mTime:Ljava/util/Calendar;

    goto :goto_0

    .line 246
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/OpTextDate;->mTime:Ljava/util/Calendar;

    :goto_0
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v14

    div-int/lit8 v8, v14, 0x2

    .line 143
    .local v8, "n":I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 144
    .local v9, "rect":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/aod/OpTextDate;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 145
    .local v7, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 147
    .local v4, "default1":Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "zh_"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 148
    const-string v14, "MMMMd"

    invoke-static {v4, v14}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "bestDateTimePattern":Ljava/lang/String;
    const-string v14, "EEE"

    invoke-static {v4, v14}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "bestDateTimePattern2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/aod/OpTextDate;->mTime:Ljava/util/Calendar;

    invoke-static {v2, v14}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 151
    .local v12, "string":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/aod/OpTextDate;->mTime:Ljava/util/Calendar;

    invoke-static {v3, v14}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 152
    .local v13, "string2":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v11, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v14, " "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 163
    .end local v2    # "bestDateTimePattern":Ljava/lang/String;
    .end local v3    # "bestDateTimePattern2":Ljava/lang/String;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v12    # "string":Ljava/lang/String;
    .end local v13    # "string2":Ljava/lang/String;
    .local v10, "s":Ljava/lang/String;
    :goto_0
    int-to-float v14, v8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/oneplus/aod/OpTextDate;->mDateFontBaseLineY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v10, v14, v15, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    const/4 v15, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v10, v15, v0, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v14

    float-to-int v14, v14

    iput v14, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 166
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    .line 167
    .local v5, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v14, v5, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v15, v5, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    iput v14, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 168
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isMCLVersion()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 169
    iget v14, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int/lit8 v14, v14, 0x4

    iput v14, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 171
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/oneplus/aod/OpTextDate;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    return-void

    .line 159
    .end local v5    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .end local v10    # "s":Ljava/lang/String;
    :cond_1
    const-string v14, "sys.aod.custom_data_format"

    invoke-static {v14}, Lcom/android/wubydax/GearUtils;->getDbStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, "format":Ljava/lang/String;
    if-nez v6, :cond_2

    const-string v6, "EEE, MMM d"

    .line 161
    :cond_2
    invoke-static {v4, v6}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/aod/OpTextDate;->mTime:Ljava/util/Calendar;

    invoke-static {v14, v15}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "s":Ljava/lang/String;
    goto :goto_0
.end method

.method private init()V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mFormat12:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mFormat24:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 222
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

    .line 223
    iget-object v1, p0, Lcom/oneplus/aod/OpTextDate;->mFormat12:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 224
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/aod/OpTextDate;->mFormat12:Ljava/lang/CharSequence;

    .line 226
    :cond_1
    iget-object v1, p0, Lcom/oneplus/aod/OpTextDate;->mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 227
    iget-object v0, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mFormat24:Ljava/lang/CharSequence;

    .line 231
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->reloadDimen()V

    .line 232
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/aod/OpTextDate;->createTime(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 234
    invoke-direct {p0, v0}, Lcom/oneplus/aod/OpTextDate;->chooseFormat(Z)V

    .line 236
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 237
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    const-string v1, "0.025"

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 238
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->date_view_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    iget-object p0, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private onTimeChanged()V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mDescFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/oneplus/aod/OpTextDate;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 487
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private reloadDimen()V
    .locals 2

    .line 501
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->date_view_font_base_line_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpTextDate;->mDateFontBaseLineY:F

    .line 502
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->date_view_default_marginTop:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpTextDate;->mMarginTopDefault:I

    .line 503
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->date_view_analog_marginTop:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpTextDate;->mMarginTopAnalog:I

    .line 504
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->date_view_analog_mcl_marginTop:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpTextDate;->mMarginTopAnalogMcl:I

    .line 505
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->date_view_font_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oneplus/aod/OpTextDate;->mTextSize:F

    .line 506
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/aod/OpTextDate;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 509
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isMCLVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 510
    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->getMclTypeface(I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "sans-serif-medium"

    .line 513
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 515
    :cond_1
    iget-object p0, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method private updateMarginTop()V
    .locals 3

    .line 565
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 567
    iget v1, p0, Lcom/oneplus/aod/OpTextDate;->mClockStyle:I

    if-nez v1, :cond_0

    .line 568
    iget v1, p0, Lcom/oneplus/aod/OpTextDate;->mMarginTopDefault:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 570
    iget v1, p0, Lcom/oneplus/aod/OpTextDate;->mMarginTopAnalog:I

    goto :goto_0

    :cond_1
    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 572
    iget v1, p0, Lcom/oneplus/aod/OpTextDate;->mMarginTopAnalogMcl:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 574
    :goto_0
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 575
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isMCLVersion()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 576
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/lit8 v1, v1, -0x4

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 578
    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public is24HourModeEnabled()Z
    .locals 1

    .line 378
    iget-boolean v0, p0, Lcom/oneplus/aod/OpTextDate;->mShowCurrentUserTime:Z

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p0

    return p0

    .line 381
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 478
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 479
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 480
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OpTextDate;->setTimeZone(Ljava/lang/String;)V

    .line 482
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->updateMarginTop()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 492
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 494
    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpTextDate;->drawText(Landroid/graphics/Canvas;)V

    .line 496
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setClockStyle(I)V
    .locals 1

    .line 556
    iget v0, p0, Lcom/oneplus/aod/OpTextDate;->mClockStyle:I

    if-eq v0, p1, :cond_0

    .line 557
    iput p1, p0, Lcom/oneplus/aod/OpTextDate;->mClockStyle:I

    .line 560
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->updateMarginTop()V

    :cond_0
    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 292
    iput-object p1, p0, Lcom/oneplus/aod/OpTextDate;->mFormat12:Ljava/lang/CharSequence;

    .line 294
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->chooseFormat()V

    .line 295
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->onTimeChanged()V

    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 339
    iput-object p1, p0, Lcom/oneplus/aod/OpTextDate;->mFormat24:Ljava/lang/CharSequence;

    .line 341
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->chooseFormat()V

    .line 342
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->onTimeChanged()V

    return-void
.end method

.method public setShowCurrentUserTime(Z)V
    .locals 0

    .line 353
    iput-boolean p1, p0, Lcom/oneplus/aod/OpTextDate;->mShowCurrentUserTime:Z

    .line 355
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->chooseFormat()V

    .line 356
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->onTimeChanged()V

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 416
    iput-object p1, p0, Lcom/oneplus/aod/OpTextDate;->mTimeZone:Ljava/lang/String;

    .line 418
    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpTextDate;->createTime(Ljava/lang/String;)V

    .line 419
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->onTimeChanged()V

    return-void
.end method
