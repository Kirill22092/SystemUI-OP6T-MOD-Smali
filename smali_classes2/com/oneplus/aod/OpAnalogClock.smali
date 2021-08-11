.class public Lcom/oneplus/aod/OpAnalogClock;
.super Landroid/widget/FrameLayout;
.source "OpAnalogClock.java"


# instance fields
.field private mClockSize:I

.field private mDateView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHour:Landroid/view/View;

.field private mMin:Landroid/view/View;

.field private mOuter:Landroid/view/View;

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSec:Landroid/view/View;

.field private mStartSchedule:Z

.field private mStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/oneplus/aod/OpAnalogClock$1;

    invoke-direct {p1, p0}, Lcom/oneplus/aod/OpAnalogClock$1;-><init>(Lcom/oneplus/aod/OpAnalogClock;)V

    iput-object p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/oneplus/aod/OpAnalogClock$1;

    invoke-direct {p1, p0}, Lcom/oneplus/aod/OpAnalogClock$1;-><init>(Lcom/oneplus/aod/OpAnalogClock;)V

    iput-object p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/oneplus/aod/OpAnalogClock$1;

    invoke-direct {p1, p0}, Lcom/oneplus/aod/OpAnalogClock$1;-><init>(Lcom/oneplus/aod/OpAnalogClock;)V

    iput-object p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/OpAnalogClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/OpAnalogClock;->scheduleNext()V

    return-void
.end method

.method private loadDimensions()V
    .locals 2

    iget v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->op_aod_clock_analog_my_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mClockSize:I

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->aod_clock_analog_numeral_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mClockSize:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->aod_clock_analog_min2_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mClockSize:I

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->clock_analog_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mClockSize:I

    :goto_1
    return-void
.end method

.method private scheduleNext()V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mStartSchedule:Z

    const-string v1, "OpAnalogClock"

    if-nez v0, :cond_0

    const-string p0, "end schedule, do not schedule next"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAnalogClock;->refreshTime()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rsub-int v0, v0, 0x3e8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheduleNext: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/aod/OpAnalogClock;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/aod/OpAnalogClock;->mRunnable:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateLayout()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget p0, p0, Lcom/oneplus/aod/OpAnalogClock;->mClockSize:I

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method


# virtual methods
.method public endSchedule()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/OpAnalogClock;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mStartSchedule:Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/oneplus/aod/OpAnalogClock;->refreshTime()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/aod/OpAnalogClock;->endSchedule()V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    sget v0, Lcom/android/systemui/R$id;->analog_hour:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mHour:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->analog_min:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mMin:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->analog_background:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$id;->analog_outer:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mOuter:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->analog_dot:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->analog_sec:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mSec:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->analog_date_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mDateView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/oneplus/aod/OpAnalogClock;->loadDimensions()V

    invoke-direct {p0}, Lcom/oneplus/aod/OpAnalogClock;->updateLayout()V

    return-void
.end method

.method public refreshTime()V
    .locals 6

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " hour = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", min = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sec = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "OpAnalogClock"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v0, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v0, v2

    const/high16 v4, 0x41400000    # 12.0f

    div-float/2addr v0, v4

    int-to-float v3, v3

    const/high16 v4, 0x41f00000    # 30.0f

    mul-float/2addr v4, v3

    const/high16 v5, 0x42700000    # 60.0f

    div-float/2addr v4, v5

    add-float/2addr v0, v4

    mul-float/2addr v3, v2

    div-float/2addr v3, v5

    int-to-float v1, v1

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    iget-object v2, p0, Lcom/oneplus/aod/OpAnalogClock;->mHour:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setRotation(F)V

    iget-object v2, p0, Lcom/oneplus/aod/OpAnalogClock;->mMin:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setRotation(F)V

    iget-object v2, p0, Lcom/oneplus/aod/OpAnalogClock;->mOuter:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setRotation(F)V

    iget-object v2, p0, Lcom/oneplus/aod/OpAnalogClock;->mSec:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setRotation(F)V

    iget-object v2, p0, Lcom/oneplus/aod/OpAnalogClock;->mHour:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setRotation(F)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mMin:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setRotation(F)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mOuter:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setRotation(F)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mSec:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MMMMd"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v0, "MMM d"

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/aod/OpAnalogClock;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
