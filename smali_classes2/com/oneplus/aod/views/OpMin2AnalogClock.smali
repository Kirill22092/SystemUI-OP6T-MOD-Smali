.class public Lcom/oneplus/aod/views/OpMin2AnalogClock;
.super Lcom/oneplus/aod/views/OpAnalogClock;
.source "OpMin2AnalogClock.java"


# instance fields
.field private mDateMarginLeftId:I

.field private mDateTextColor:I

.field private mDateTextSizeId:I

.field private mDateView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/views/OpMin2AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/views/OpMin2AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/aod/views/OpAnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    iget-object p1, p0, Lcom/oneplus/aod/views/OpMin2AnalogClock;->mDateView:Landroid/widget/TextView;

    iget p0, p0, Lcom/oneplus/aod/views/OpMin2AnalogClock;->mDateTextColor:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public applyLayoutParams(Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;)V
    .locals 2

    .line 51
    invoke-super {p0, p1}, Lcom/oneplus/aod/views/OpAnalogClock;->applyLayoutParams(Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;)V

    .line 53
    iget-object p1, p0, Lcom/oneplus/aod/views/OpMin2AnalogClock;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_0

    .line 55
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/aod/views/OpMin2AnalogClock;->mDateMarginLeftId:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 56
    iget-object v0, p0, Lcom/oneplus/aod/views/OpMin2AnalogClock;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object p1, p0, Lcom/oneplus/aod/views/OpMin2AnalogClock;->mDateView:Landroid/widget/TextView;

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/oneplus/aod/views/OpMin2AnalogClock;->mDateTextSizeId:I

    .line 58
    invoke-static {v1, p0}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx(Landroid/content/Context;I)I

    move-result p0

    int-to-float p0, p0

    .line 57
    invoke-virtual {p1, v0, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method protected getLayoutId()I
    .locals 0

    .line 94
    sget p0, Lcom/android/systemui/R$layout;->op_min2_analog_clock:I

    return p0
.end method

.method protected initViews(Landroid/view/View;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Lcom/oneplus/aod/views/OpAnalogClock;->initViews(Landroid/view/View;)V

    .line 89
    sget v0, Lcom/android/systemui/R$id;->analog_dateView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/aod/views/OpMin2AnalogClock;->mDateView:Landroid/widget/TextView;

    return-void
.end method

.method public onTimeChanged(Ljava/util/Calendar;)V
    .locals 2

    .line 64
    invoke-super {p0, p1}, Lcom/oneplus/aod/views/OpAnalogClock;->onTimeChanged(Ljava/util/Calendar;)V

    .line 68
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_"

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ko_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ja_"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "MMM d"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "MMMMd"

    .line 75
    invoke-static {p1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object p1, v1

    .line 81
    :goto_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 82
    iget-object p0, p0, Lcom/oneplus/aod/views/OpMin2AnalogClock;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setupAttributes(Landroid/util/AttributeSet;)V
    .locals 3

    .line 98
    invoke-super {p0, p1}, Lcom/oneplus/aod/views/OpAnalogClock;->setupAttributes(Landroid/util/AttributeSet;)V

    .line 100
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/R$styleable;->OpMin2AnalogClock:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    sget v1, Lcom/android/systemui/R$styleable;->OpMin2AnalogClock_dateMarginLeft:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/views/OpMin2AnalogClock;->mDateMarginLeftId:I

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, -0x1

    .line 107
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/views/OpMin2AnalogClock;->mDateTextSizeId:I

    const/4 v1, 0x3

    .line 108
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/OpMin2AnalogClock;->mDateTextColor:I

    .line 109
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
