.class Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;
.super Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;
.source "DatePickerCalendarDelegate.java"


# static fields
.field private static final ATTRS_DISABLED_ALPHA:[I

.field private static final ATTRS_TEXT_COLOR:[I

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private mAnimator:Landroid/widget/ViewAnimator;

.field private mContainer:Landroid/view/ViewGroup;

.field private mCurrentView:I

.field private mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

.field private mFirstDayOfWeek:I

.field private mHeaderMonthDay:Landroid/widget/TextView;

.field private mHeaderYear:Landroid/widget/TextView;

.field private final mMaxDate:Ljava/util/Calendar;

.field private final mMinDate:Ljava/util/Calendar;

.field private mMonthDayFormat:Ljava/text/SimpleDateFormat;

.field private final mOnDaySelectedListener:Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;

.field private final mOnHeaderClickListener:Landroid/view/View$OnClickListener;

.field private final mOnYearSelectedListener:Lcom/oneplus/lib/widget/YearPickerView$OnYearSelectedListener;

.field private mSelectDay:Ljava/lang/String;

.field private mSelectYear:Ljava/lang/String;

.field private final mTempDate:Ljava/util/Calendar;

.field private mYearFormat:Ljava/text/SimpleDateFormat;

.field private mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010098

    aput v3, v1, v2

    .line 48
    sput-object v1, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->ATTRS_TEXT_COLOR:[I

    new-array v0, v0, [I

    const v1, 0x1010033

    aput v1, v0, v2

    .line 49
    sput-object v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->ATTRS_DISABLED_ALPHA:[I

    .line 569
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 570
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 571
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 572
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/lib/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;-><init>(Lcom/oneplus/lib/widget/DatePicker;Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 70
    iput p1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    const/4 p1, 0x0

    .line 76
    iput p1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    .line 181
    new-instance p2, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$1;

    invoke-direct {p2, p0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$1;-><init>(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;)V

    iput-object p2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnDaySelectedListener:Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;

    .line 203
    new-instance p2, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$2;

    invoke-direct {p2, p0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$2;-><init>(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;)V

    iput-object p2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnYearSelectedListener:Lcom/oneplus/lib/widget/YearPickerView$OnYearSelectedListener;

    .line 232
    new-instance p2, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$3;

    invoke-direct {p2, p0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate$3;-><init>(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;)V

    iput-object p2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 82
    iget-object p2, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    .line 83
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 84
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    .line 85
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    .line 86
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 88
    iget-object p2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    const/4 v0, 0x1

    const/16 v1, 0x76c

    invoke-virtual {p2, v1, p1, v0}, Ljava/util/Calendar;->set(III)V

    .line 89
    iget-object p2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    const/16 v1, 0x834

    const/16 v2, 0xb

    const/16 v3, 0x1f

    invoke-virtual {p2, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 91
    iget-object p2, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 92
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->DatePicker:[I

    invoke-virtual {v1, p3, v2, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 94
    iget-object p4, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    const-string p5, "layout_inflater"

    invoke-virtual {p4, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/LayoutInflater;

    .line 96
    sget p5, Lcom/oneplus/commonctrl/R$styleable;->DatePicker_internalLayout:I

    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_date_picker_material:I

    invoke-virtual {p3, p5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p5

    .line 100
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-virtual {p4, p5, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    .line 101
    iget-object p4, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p4, p1}, Landroid/view/ViewGroup;->setSaveFromParentEnabled(Z)V

    .line 102
    iget-object p4, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    iget-object p5, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p4, p5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 105
    iget-object p4, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    sget p5, Lcom/oneplus/commonctrl/R$id;->date_picker_header:I

    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    .line 106
    sget p5, Lcom/oneplus/commonctrl/R$id;->date_picker_header_year:I

    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    .line 107
    iget-object p5, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    sget p5, Lcom/oneplus/commonctrl/R$id;->date_picker_header_date:I

    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    .line 109
    iget-object p4, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    iget-object p5, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    sget p4, Lcom/oneplus/commonctrl/R$styleable;->DatePicker_android_headerMonthTextAppearance:I

    invoke-virtual {p3, p4, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    if-eqz p4, :cond_0

    .line 120
    iget-object p5, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->ATTRS_TEXT_COLOR:[I

    invoke-virtual {p5, v1, v2, p1, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p4

    .line 122
    invoke-virtual {p4, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 123
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    :cond_0
    sget p4, Lcom/oneplus/commonctrl/R$styleable;->DatePicker_headerTextColor:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 131
    iget-object p5, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {p5, p4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 132
    iget-object p5, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {p5, p4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 140
    :cond_1
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    iget-object p3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    sget p4, Lcom/oneplus/commonctrl/R$id;->animator:I

    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ViewAnimator;

    iput-object p3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    .line 146
    iget-object p3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    sget p4, Lcom/oneplus/commonctrl/R$id;->date_picker_day_picker:I

    invoke-virtual {p3, p4}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/oneplus/lib/widget/DayPickerView;

    iput-object p3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    .line 147
    iget-object p3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    iget p4, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    invoke-virtual {p3, p4}, Lcom/oneplus/lib/widget/DayPickerView;->setFirstDayOfWeek(I)V

    .line 148
    iget-object p3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    iget-object p4, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lcom/oneplus/lib/widget/DayPickerView;->setMinDate(J)V

    .line 149
    iget-object p3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    iget-object p4, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lcom/oneplus/lib/widget/DayPickerView;->setMaxDate(J)V

    .line 150
    iget-object p3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    iget-object p4, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lcom/oneplus/lib/widget/DayPickerView;->setDate(J)V

    .line 151
    iget-object p3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    iget-object p4, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnDaySelectedListener:Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;

    invoke-virtual {p3, p4}, Lcom/oneplus/lib/widget/DayPickerView;->setOnDaySelectedListener(Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;)V

    .line 154
    iget-object p3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    sget p4, Lcom/oneplus/commonctrl/R$id;->date_picker_year_picker:I

    invoke-virtual {p3, p4}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/oneplus/lib/widget/YearPickerView;

    iput-object p3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    .line 155
    iget-object p3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    iget-object p4, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    iget-object p5, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p3, p4, p5}, Lcom/oneplus/lib/widget/YearPickerView;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 156
    iget-object p3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    iget-object p4, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p4, v0}, Ljava/util/Calendar;->get(I)I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/oneplus/lib/widget/YearPickerView;->setYear(I)V

    .line 157
    iget-object p3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    iget-object p4, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mOnYearSelectedListener:Lcom/oneplus/lib/widget/YearPickerView$OnYearSelectedListener;

    invoke-virtual {p3, p4}, Lcom/oneplus/lib/widget/YearPickerView;->setOnYearSelectedListener(Lcom/oneplus/lib/widget/YearPickerView$OnYearSelectedListener;)V

    .line 160
    sget p3, Lcom/oneplus/commonctrl/R$string;->select_day:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mSelectDay:Ljava/lang/String;

    .line 161
    sget p3, Lcom/oneplus/commonctrl/R$string;->select_year:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mSelectYear:Ljava/lang/String;

    .line 165
    iget-object p2, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onLocaleChanged(Ljava/util/Locale;)V

    .line 167
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;ZZ)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->tryVibrate()V

    return-void
.end method

.method private onCurrentDateChanged(Z)V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMonthDayFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    .line 278
    iget-object p1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->getFormattedCurrentDate()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private onDateChanged(ZZ)V
    .locals 4

    .line 348
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eqz p2, :cond_2

    .line 350
    iget-object p2, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mOnDateChangedListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mAutoFillChangeListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    if-eqz p2, :cond_2

    .line 352
    :cond_0
    iget-object p2, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 353
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 354
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mOnDateChangedListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    if-eqz v2, :cond_1

    .line 355
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-interface {v2, v3, v0, p2, v1}, Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/oneplus/lib/widget/DatePicker;III)V

    .line 357
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mAutoFillChangeListener:Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;

    if-eqz v2, :cond_2

    .line 358
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    invoke-interface {v2, v3, v0, p2, v1}, Lcom/oneplus/lib/widget/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/oneplus/lib/widget/DatePicker;III)V

    .line 362
    :cond_2
    iget-object p2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/oneplus/lib/widget/DayPickerView;->setDate(J)V

    .line 363
    iget-object p2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    invoke-virtual {p2, v0}, Lcom/oneplus/lib/widget/YearPickerView;->setYear(I)V

    .line 365
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    if-eqz p1, :cond_3

    .line 368
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->tryVibrate()V

    :cond_3
    return-void
.end method

.method private setCurrentView(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 300
    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/YearPickerView;->setYear(I)V

    .line 312
    iget v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-eq v2, p1, :cond_1

    .line 313
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setActivated(Z)V

    .line 314
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 315
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 316
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 317
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 318
    iput p1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    .line 321
    :cond_1
    iget-object p1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mSelectYear:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 285
    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    iget-object v3, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/lib/widget/DayPickerView;->setDate(J)V

    .line 287
    iget v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-eq v2, p1, :cond_3

    .line 288
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 289
    iget-object v2, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 290
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setActivated(Z)V

    .line 291
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 292
    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v1, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 293
    iput p1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    .line 296
    :cond_3
    iget-object p1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mSelectDay:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private tryVibrate()V
    .locals 7

    .line 575
    invoke-static {}, Lcom/oneplus/lib/util/OPFeaturesUtils;->isSupportZVibrate()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_0

    .line 577
    :try_start_0
    const-class v0, Landroid/os/VibrationEffect;

    const-string v1, "EFFECT_CLICK"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 578
    const-class v1, Landroid/os/VibrationEffect;

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 579
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 580
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 581
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    .line 582
    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    .line 583
    sget-object v1, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 585
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 588
    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/DatePicker;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 487
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method protected onLocaleChanged(Ljava/util/Locale;)V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "EMMMd"

    .line 255
    invoke-static {p1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMonthDayFormat:Ljava/text/SimpleDateFormat;

    .line 257
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "y"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearFormat:Ljava/text/SimpleDateFormat;

    const/4 p1, 0x0

    .line 260
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 512
    instance-of v0, p1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    if-eqz v0, :cond_1

    .line 513
    check-cast p1, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    .line 516
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedYear()I

    move-result v1

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedMonth()I

    move-result v2

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedDay()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 517
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getMinDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 518
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getMaxDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x0

    .line 520
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    .line 522
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getCurrentView()I

    move-result v0

    .line 523
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    .line 525
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getListPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-nez v0, :cond_0

    .line 528
    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/DayPickerView;->setPosition(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    if-ne v0, p0, :cond_1

    .line 530
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getListPositionOffset()I

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 14

    .line 492
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 493
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 494
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 499
    iget v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DayPickerView;->getMostVisiblePosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    move v12, v0

    .line 506
    new-instance v0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    iget-object v1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    .line 507
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    iget v11, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mCurrentView:I

    const/4 v13, -0x1

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v13}, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJIII)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 449
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 450
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/oneplus/lib/widget/YearPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 451
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 452
    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 0

    .line 433
    iput p1, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    .line 435
    iget-object p0, p0, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->mDayPickerView:Lcom/oneplus/lib/widget/DayPickerView;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/DayPickerView;->setFirstDayOfWeek(I)V

    return-void
.end method

.method public updateDate(III)V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 341
    iget-object p1, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 342
    iget-object p1, p0, Lcom/oneplus/lib/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x0

    .line 344
    invoke-direct {p0, p1, v1}, Lcom/oneplus/lib/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    return-void
.end method
