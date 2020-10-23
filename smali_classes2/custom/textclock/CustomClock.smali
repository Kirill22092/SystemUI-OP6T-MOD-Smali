.class public Lcustom/textclock/CustomClock;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "CustomClock.java"


# instance fields
.field private PaddingKeyLeft:Ljava/lang/String;

.field private PaddingKeyTop:Ljava/lang/String;

.field private SizeKey:Ljava/lang/String;

.field private final fadeIn:Landroid/view/animation/Animation;

.field private final fadeOut:Landroid/view/animation/Animation;

.field private mAccentColor:I

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private mDescFormat:Ljava/lang/String;

.field private mHours:[Ljava/lang/String;

.field private mMinutes:[Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private final mTicker:Ljava/lang/Runnable;

.field private final mTime:Ljava/util/Calendar;

.field private mTimeZone:Ljava/util/TimeZone;

.field private final mTimeZoneChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mTransition:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcustom/textclock/CustomClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcustom/textclock/CustomClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "n"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iput v0, p0, Lcustom/textclock/CustomClock;->mCurrentHour:I

    .line 55
    iput v0, p0, Lcustom/textclock/CustomClock;->mCurrentMinute:I

    .line 56
    iput-boolean v3, p0, Lcustom/textclock/CustomClock;->mTransition:Z

    move-object v0, v1

    .line 57
    check-cast v0, Ljava/lang/String;

    const-string v2, "PaddingKeyLeft"

    invoke-interface {p2, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcustom/textclock/CustomClock;->PaddingKeyLeft:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcustom/textclock/CustomClock;->PaddingKeyLeft:Ljava/lang/String;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcustom/textclock/CustomClock;->PaddingKeyLeft:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2a

    .line 59
    :cond_26
    const-string v0, "text.clock_padding_left"

    iput-object v0, p0, Lcustom/textclock/CustomClock;->PaddingKeyLeft:Ljava/lang/String;

    :cond_2a
    move-object v0, v1

    .line 61
    check-cast v0, Ljava/lang/String;

    const-string v2, "PaddingKeyTop"

    invoke-interface {p2, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcustom/textclock/CustomClock;->PaddingKeyTop:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcustom/textclock/CustomClock;->PaddingKeyTop:Ljava/lang/String;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcustom/textclock/CustomClock;->PaddingKeyTop:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_45

    .line 63
    :cond_41
    const-string v0, "text.clock_padding_top"

    iput-object v0, p0, Lcustom/textclock/CustomClock;->PaddingKeyTop:Ljava/lang/String;

    :cond_45
    move-object v0, v1

    .line 65
    check-cast v0, Ljava/lang/String;

    const-string v2, "SizeKey"

    invoke-interface {p2, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcustom/textclock/CustomClock;->SizeKey:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcustom/textclock/CustomClock;->SizeKey:Ljava/lang/String;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcustom/textclock/CustomClock;->SizeKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_60

    .line 67
    :cond_5c
    const-string v0, "text.clock_size"

    iput-object v0, p0, Lcustom/textclock/CustomClock;->SizeKey:Ljava/lang/String;

    .line 69
    :cond_60
    new-instance v0, Lcustom/textclock/CustomClock$1;

    invoke-direct {v0, p0}, Lcustom/textclock/CustomClock$1;-><init>(Lcustom/textclock/CustomClock;)V

    iput-object v0, p0, Lcustom/textclock/CustomClock;->mTimeZoneChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    new-instance v0, Lcustom/textclock/CustomClock$2;

    invoke-direct {v0, p0}, Lcustom/textclock/CustomClock$2;-><init>(Lcustom/textclock/CustomClock;)V

    iput-object v0, p0, Lcustom/textclock/CustomClock;->mTicker:Ljava/lang/Runnable;

    .line 95
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcustom/textclock/CustomClock;->mTime:Ljava/util/Calendar;

    .line 96
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcustom/textclock/CustomClock;->mDescFormat:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcustom/textclock/CustomClock;->mResources:Landroid/content/res/Resources;

    .line 98
    iget-object v0, p0, Lcustom/textclock/CustomClock;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f03013c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcustom/textclock/CustomClock;->mHours:[Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcustom/textclock/CustomClock;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f03013d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcustom/textclock/CustomClock;->mMinutes:[Ljava/lang/String;

    .line 100
    const-string v0, "text.clock_accent_switch"

    invoke-static {v0, v3}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e8

    .line 101
    const-string v0, "text.clock_accent_color"

    const v1, -0xcc4a1b

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcustom/textclock/CustomClock;->mAccentColor:I

    .line 104
    :goto_b4
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcustom/textclock/CustomClock;->fadeIn:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 105
    iget-object v0, p0, Lcustom/textclock/CustomClock;->fadeIn:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 106
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcustom/textclock/CustomClock;->fadeOut:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 107
    iget-object v0, p0, Lcustom/textclock/CustomClock;->fadeOut:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 108
    iget-object v0, p0, Lcustom/textclock/CustomClock;->fadeOut:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 109
    return-void

    .line 103
    :cond_e8
    iget-object v0, p0, Lcustom/textclock/CustomClock;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0604af

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcustom/textclock/CustomClock;->mAccentColor:I

    goto :goto_b4
.end method

.method static synthetic access$000(Lcustom/textclock/CustomClock;)Landroid/content/res/Resources;
    .registers 2
    .param p0, "x0"    # Lcustom/textclock/CustomClock;

    .prologue
    .line 21
    iget-object v0, p0, Lcustom/textclock/CustomClock;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$002(Lcustom/textclock/CustomClock;Landroid/content/res/Resources;)Landroid/content/res/Resources;
    .registers 2
    .param p0, "x0"    # Lcustom/textclock/CustomClock;
    .param p1, "x1"    # Landroid/content/res/Resources;

    .prologue
    .line 21
    iput-object p1, p0, Lcustom/textclock/CustomClock;->mResources:Landroid/content/res/Resources;

    return-object p1
.end method

.method static synthetic access$100(Lcustom/textclock/CustomClock;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcustom/textclock/CustomClock;

    .prologue
    .line 21
    iget-object v0, p0, Lcustom/textclock/CustomClock;->mHours:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcustom/textclock/CustomClock;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcustom/textclock/CustomClock;

    .prologue
    .line 21
    iget-object v0, p0, Lcustom/textclock/CustomClock;->PaddingKeyTop:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcustom/textclock/CustomClock;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcustom/textclock/CustomClock;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcustom/textclock/CustomClock;->mHours:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcustom/textclock/CustomClock;)Landroid/view/animation/Animation;
    .registers 2
    .param p0, "x0"    # Lcustom/textclock/CustomClock;

    .prologue
    .line 21
    iget-object v0, p0, Lcustom/textclock/CustomClock;->fadeIn:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$200(Lcustom/textclock/CustomClock;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcustom/textclock/CustomClock;

    .prologue
    .line 21
    iget-object v0, p0, Lcustom/textclock/CustomClock;->mMinutes:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcustom/textclock/CustomClock;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcustom/textclock/CustomClock;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcustom/textclock/CustomClock;->mMinutes:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcustom/textclock/CustomClock;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcustom/textclock/CustomClock;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcustom/textclock/CustomClock;->mDescFormat:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcustom/textclock/CustomClock;Z)Z
    .registers 2
    .param p0, "x0"    # Lcustom/textclock/CustomClock;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcustom/textclock/CustomClock;->mTransition:Z

    return p1
.end method

.method static synthetic access$500(Lcustom/textclock/CustomClock;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcustom/textclock/CustomClock;

    .prologue
    .line 21
    iget-object v0, p0, Lcustom/textclock/CustomClock;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcustom/textclock/CustomClock;)I
    .registers 2
    .param p0, "x0"    # Lcustom/textclock/CustomClock;

    .prologue
    .line 21
    iget v0, p0, Lcustom/textclock/CustomClock;->mCurrentHour:I

    return v0
.end method

.method static synthetic access$700(Lcustom/textclock/CustomClock;)I
    .registers 2
    .param p0, "x0"    # Lcustom/textclock/CustomClock;

    .prologue
    .line 21
    iget v0, p0, Lcustom/textclock/CustomClock;->mCurrentMinute:I

    return v0
.end method

.method static synthetic access$800(Lcustom/textclock/CustomClock;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcustom/textclock/CustomClock;

    .prologue
    .line 21
    iget-object v0, p0, Lcustom/textclock/CustomClock;->SizeKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcustom/textclock/CustomClock;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcustom/textclock/CustomClock;

    .prologue
    .line 21
    iget-object v0, p0, Lcustom/textclock/CustomClock;->PaddingKeyLeft:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 6

    .prologue
    .line 116
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onAttachedToWindow()V

    .line 117
    iget-object v1, p0, Lcustom/textclock/CustomClock;->mTime:Ljava/util/Calendar;

    .line 118
    .local v1, "mTime":Ljava/util/Calendar;
    iget-object v2, p0, Lcustom/textclock/CustomClock;->mTimeZone:Ljava/util/TimeZone;

    .line 119
    .local v2, "timeZone":Ljava/util/TimeZone;
    if-nez v2, :cond_d

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 120
    :cond_d
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 121
    invoke-virtual {p0}, Lcustom/textclock/CustomClock;->onTimeChanged()V

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 123
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcustom/textclock/CustomClock;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcustom/textclock/CustomClock;->mTimeZoneChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    iget-object v3, p0, Lcustom/textclock/CustomClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 128
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 131
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onDetachedFromWindow()V

    .line 132
    invoke-virtual {p0}, Lcustom/textclock/CustomClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcustom/textclock/CustomClock;->mTimeZoneChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 133
    invoke-virtual {p0}, Lcustom/textclock/CustomClock;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcustom/textclock/CustomClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

.method public onTimeChanged()V
    .registers 19

    .prologue
    .line 137
    move-object/from16 v0, p0

    iget-object v12, v0, Lcustom/textclock/CustomClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 138
    move-object/from16 v0, p0

    iget-object v12, v0, Lcustom/textclock/CustomClock;->mDescFormat:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcustom/textclock/CustomClock;->mTime:Ljava/util/Calendar;

    invoke-static {v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcustom/textclock/CustomClock;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcustom/textclock/CustomClock;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    .line 140
    .local v4, "is24HourFormat":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcustom/textclock/CustomClock;->mTime:Ljava/util/Calendar;

    const/16 v13, 0xb

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 142
    .local v11, "value":I
    if-eqz v4, :cond_b6

    const/16 v7, 0x18

    .line 144
    .local v7, "n":I
    :goto_32
    rem-int v8, v11, v7

    .line 145
    .local v8, "n2":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcustom/textclock/CustomClock;->mTime:Ljava/util/Calendar;

    const/16 v13, 0xc

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    rem-int/lit8 v6, v12, 0x3c

    .line 146
    .local v6, "mCurrentMinute":I
    move v5, v8

    .line 147
    .local v5, "mCurrentHour":I
    if-nez v8, :cond_47

    if-nez v4, :cond_47

    const/16 v5, 0xc

    .line 148
    :cond_47
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcustom/textclock/CustomClock;->mTransition:Z

    move-object/from16 v0, p0

    iget v12, v0, Lcustom/textclock/CustomClock;->mCurrentHour:I

    if-ne v12, v5, :cond_57

    move-object/from16 v0, p0

    iget v12, v0, Lcustom/textclock/CustomClock;->mCurrentMinute:I

    if-eq v12, v6, :cond_ba

    :cond_57
    const/4 v12, 0x1

    :goto_58
    or-int/2addr v12, v13

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcustom/textclock/CustomClock;->mTransition:Z

    .line 149
    move-object/from16 v0, p0

    iput v5, v0, Lcustom/textclock/CustomClock;->mCurrentHour:I

    .line 150
    move-object/from16 v0, p0

    iput v6, v0, Lcustom/textclock/CustomClock;->mCurrentMinute:I

    .line 151
    move-object/from16 v0, p0

    iget-object v12, v0, Lcustom/textclock/CustomClock;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f110789

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    check-cast v10, Landroid/text/SpannedString;

    .line 152
    .local v10, "spannedString":Landroid/text/SpannedString;
    const/4 v12, 0x0

    invoke-virtual {v10}, Landroid/text/SpannedString;->length()I

    move-result v13

    const-class v14, Landroid/text/Annotation;

    invoke-virtual {v10, v12, v13, v14}, Landroid/text/SpannedString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/Annotation;

    move-object v3, v12

    check-cast v3, [Landroid/text/Annotation;

    .line 153
    .local v3, "array":[Landroid/text/Annotation;
    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 154
    .local v9, "spannableString":Landroid/text/SpannableString;
    array-length v13, v3

    const/4 v12, 0x0

    :goto_89
    if-ge v12, v13, :cond_bc

    aget-object v2, v3, v12

    .line 155
    .local v2, "annotation":Landroid/text/Annotation;
    const-string v14, "header_color"

    invoke-virtual {v2}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b3

    .line 156
    new-instance v14, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v15, v0, Lcustom/textclock/CustomClock;->mAccentColor:I

    invoke-direct {v14, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v9, v2}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    invoke-virtual {v9, v2}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v16

    const/16 v17, 0x22

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 154
    :cond_b3
    add-int/lit8 v12, v12, 0x1

    goto :goto_89

    .line 143
    .end local v2    # "annotation":Landroid/text/Annotation;
    .end local v3    # "array":[Landroid/text/Annotation;
    .end local v5    # "mCurrentHour":I
    .end local v6    # "mCurrentMinute":I
    .end local v7    # "n":I
    .end local v8    # "n2":I
    .end local v9    # "spannableString":Landroid/text/SpannableString;
    .end local v10    # "spannedString":Landroid/text/SpannedString;
    :cond_b6
    const/16 v7, 0xc

    .restart local v7    # "n":I
    goto/16 :goto_32

    .line 148
    .restart local v5    # "mCurrentHour":I
    .restart local v6    # "mCurrentMinute":I
    .restart local v8    # "n2":I
    :cond_ba
    const/4 v12, 0x0

    goto :goto_58

    .line 159
    .restart local v3    # "array":[Landroid/text/Annotation;
    .restart local v9    # "spannableString":Landroid/text/SpannableString;
    .restart local v10    # "spannedString":Landroid/text/SpannedString;
    :cond_bc
    move-object/from16 v0, p0

    iget-object v12, v0, Lcustom/textclock/CustomClock;->fadeOut:Landroid/view/animation/Animation;

    new-instance v13, Lcustom/textclock/CustomClock$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v9}, Lcustom/textclock/CustomClock$3;-><init>(Lcustom/textclock/CustomClock;Landroid/text/SpannableString;)V

    invoke-virtual {v12, v13}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 176
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcustom/textclock/CustomClock;->mTransition:Z

    if-eqz v12, :cond_d9

    .line 177
    move-object/from16 v0, p0

    iget-object v12, v0, Lcustom/textclock/CustomClock;->fadeOut:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcustom/textclock/CustomClock;->startAnimation(Landroid/view/animation/Animation;)V

    .line 179
    :cond_d9
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcustom/textclock/CustomClock;->mTransition:Z

    .line 180
    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .registers 3
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 183
    iput-object p1, p0, Lcustom/textclock/CustomClock;->mTimeZone:Ljava/util/TimeZone;

    .line 184
    iget-object v0, p0, Lcustom/textclock/CustomClock;->mTime:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 185
    return-void
.end method
