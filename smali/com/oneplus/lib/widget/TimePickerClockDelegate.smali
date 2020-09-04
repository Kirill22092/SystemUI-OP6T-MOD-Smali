.class Lcom/oneplus/lib/widget/TimePickerClockDelegate;
.super Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;
.source "TimePickerClockDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;,
        Lcom/oneplus/lib/widget/TimePickerClockDelegate$ClickActionDelegate;
    }
.end annotation


# static fields
.field private static final ATTRS_DISABLED_ALPHA:[I

.field private static final ATTRS_TEXT_COLOR:[I


# instance fields
.field private mAllowAutoAdvance:Z

.field private final mAmLabel:Landroid/widget/RadioButton;

.field private final mAmPmLayout:Landroid/view/View;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private final mCommitHour:Ljava/lang/Runnable;

.field private final mCommitMinute:Ljava/lang/Runnable;

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private final mDigitEnteredListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

.field private mDuration:I

.field private final mFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private mHeaderOffset:I

.field private mHeaderPositionY:I

.field private mHourFormatShowLeadingZero:Z

.field private mHourFormatStartsAtZero:Z

.field private final mHourView:Lcom/oneplus/lib/widget/NumericTextView;

.field private final mImageSeparatorView:Landroid/view/View;

.field private mInputBlockPositionY:I

.field private mIs24Hour:Z

.field private mIsAmPmAtStart:Z

.field private mIsEnabled:Z

.field private mIsToggleTimeMode:Z

.field private mLastAnnouncedIsHour:Z

.field private mLastAnnouncedText:Ljava/lang/CharSequence;

.field private final mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

.field private final mOnValueSelectedListener:Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;

.field private final mOnValueTypedListener:Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;

.field private final mPmLabel:Landroid/widget/RadioButton;

.field private mRadialPickerModeEnabled:Z

.field private final mRadialTimePickerHeader:Landroid/widget/LinearLayout;

.field private final mRadialTimePickerModeButton:Landroid/widget/ImageButton;

.field private final mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

.field private mRadialTimeViewAlpha:F

.field private mRadialTimeViewScale:F

.field private final mSelectHours:Ljava/lang/String;

.field private final mSelectMinutes:Ljava/lang/String;

.field private final mSeparatorView:Landroid/widget/TextView;

.field private final mTempCalendar:Ljava/util/Calendar;

.field private final mTextInputPickerHeader:Landroid/view/View;

.field private final mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010098

    aput v3, v1, v2

    .line 60
    sput-object v1, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->ATTRS_TEXT_COLOR:[I

    new-array v0, v0, [I

    const v1, 0x1010033

    aput v1, v0, v2

    .line 61
    sput-object v0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->ATTRS_DISABLED_ALPHA:[I

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/lib/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;-><init>(Lcom/oneplus/lib/widget/TimePicker;Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    .line 90
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIsEnabled:Z

    .line 929
    new-instance v1, Lcom/oneplus/lib/widget/TimePickerClockDelegate$4;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$4;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mOnValueSelectedListener:Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;

    .line 961
    new-instance v1, Lcom/oneplus/lib/widget/TimePickerClockDelegate$5;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$5;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mOnValueTypedListener:Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;

    .line 979
    new-instance v1, Lcom/oneplus/lib/widget/TimePickerClockDelegate$6;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$6;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    .line 1015
    new-instance v1, Lcom/oneplus/lib/widget/TimePickerClockDelegate$7;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$7;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCommitHour:Ljava/lang/Runnable;

    .line 1022
    new-instance v1, Lcom/oneplus/lib/widget/TimePickerClockDelegate$8;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$8;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCommitMinute:Ljava/lang/Runnable;

    .line 1029
    new-instance v1, Lcom/oneplus/lib/widget/TimePickerClockDelegate$9;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$9;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 1051
    new-instance v1, Lcom/oneplus/lib/widget/TimePickerClockDelegate$10;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$10;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    .line 118
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->TimePicker:[I

    invoke-virtual {v1, p3, v2, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 120
    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 122
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 124
    sget v4, Lcom/oneplus/commonctrl/R$string;->select_hours:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    .line 125
    sget v4, Lcom/oneplus/commonctrl/R$string;->select_minutes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    .line 127
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->TimePicker_internalLayout:I

    sget v4, Lcom/oneplus/commonctrl/R$layout;->op_time_picker_material:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 129
    invoke-virtual {v2, v3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const/4 v2, 0x0

    .line 130
    invoke-virtual {p1, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 131
    sget v3, Lcom/oneplus/commonctrl/R$id;->time_header:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    .line 132
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate$1;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 134
    sget v3, Lcom/oneplus/commonctrl/R$id;->hours:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/NumericTextView;

    iput-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    .line 135
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 137
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/NumericTextView;->setOnDigitEnteredListener(Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;)V

    .line 138
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    new-instance v4, Lcom/oneplus/lib/widget/TimePickerClockDelegate$ClickActionDelegate;

    sget v6, Lcom/oneplus/commonctrl/R$string;->select_hours:I

    invoke-direct {v4, p2, v6}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 140
    sget v3, Lcom/oneplus/commonctrl/R$id;->separator:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    .line 141
    sget v3, Lcom/oneplus/commonctrl/R$id;->separator_shape:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mImageSeparatorView:Landroid/view/View;

    .line 142
    sget v3, Lcom/oneplus/commonctrl/R$id;->minutes:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/NumericTextView;

    iput-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    .line 143
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 145
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/NumericTextView;->setOnDigitEnteredListener(Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;)V

    .line 146
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    new-instance v4, Lcom/oneplus/lib/widget/TimePickerClockDelegate$ClickActionDelegate;

    sget v6, Lcom/oneplus/commonctrl/R$string;->select_minutes:I

    invoke-direct {v4, p2, v6}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 148
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    const/16 v4, 0x3b

    invoke-virtual {v3, v2, v4}, Lcom/oneplus/lib/widget/NumericTextView;->setRange(II)V

    .line 149
    sget v3, Lcom/oneplus/commonctrl/R$id;->separator:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setActivated(Z)V

    .line 150
    sget v3, Lcom/oneplus/commonctrl/R$id;->separator:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 152
    sget v3, Lcom/oneplus/commonctrl/R$id;->ampm_layout:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    .line 153
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    new-instance v4, Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;

    invoke-direct {v4, v5}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate$1;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 155
    invoke-static {p2}, Lcom/oneplus/lib/widget/TimePicker;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 156
    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    sget v6, Lcom/oneplus/commonctrl/R$id;->am_label:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    .line 157
    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    aget-object v6, v3, v2

    invoke-static {v6}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    iget-object v6, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-static {v4}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->ensureMinimumTextWidth(Landroid/widget/TextView;)V

    .line 161
    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    sget v6, Lcom/oneplus/commonctrl/R$id;->pm_label:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    .line 162
    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-static {v3}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->ensureMinimumTextWidth(Landroid/widget/TextView;)V

    .line 172
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->TimePicker_android_headerTimeTextAppearance:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->ATTRS_TEXT_COLOR:[I

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 177
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 179
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 183
    :cond_0
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->TimePicker_headerTextColor:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 186
    sget v4, Lcom/oneplus/commonctrl/R$id;->input_header:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 189
    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 190
    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 191
    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 192
    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 193
    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 204
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 206
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/oneplus/commonctrl/R$integer;->oneplus_contorl_time_part6:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDuration:I

    const/4 p2, 0x0

    .line 207
    iput p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimeViewScale:F

    .line 208
    iput p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimeViewAlpha:F

    .line 210
    sget p2, Lcom/oneplus/commonctrl/R$id;->radial_picker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oneplus/lib/widget/RadialTimePickerView;

    iput-object p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    .line 211
    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {p2, p3, p4, p5}, Lcom/oneplus/lib/widget/RadialTimePickerView;->applyAttributes(Landroid/util/AttributeSet;II)V

    .line 212
    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    iget-object p3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mOnValueSelectedListener:Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-virtual {p2, p3}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setOnValueSelectedListener(Lcom/oneplus/lib/widget/RadialTimePickerView$OnValueSelectedListener;)V

    .line 214
    sget p2, Lcom/oneplus/commonctrl/R$id;->input_mode:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oneplus/lib/widget/TextInputTimePickerView;

    iput-object p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    .line 215
    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    iget-object p3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mOnValueTypedListener:Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;

    invoke-virtual {p2, p3}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->setListener(Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;)V

    .line 217
    sget p2, Lcom/oneplus/commonctrl/R$id;->toggle_mode:I

    .line 218
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    .line 219
    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    new-instance p2, Lcom/oneplus/lib/widget/TimePickerClockDelegate$1;

    invoke-direct {p2, p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$1;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAllowAutoAdvance:Z

    .line 232
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHourFormat()V

    .line 235
    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    .line 236
    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 237
    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 p3, 0xc

    invoke-virtual {p2, p3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 238
    iget-boolean p3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->initialize(IIZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->toggleRadialPickerMode()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/lib/widget/TimePickerClockDelegate;IZZ)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/lib/widget/TimePickerClockDelegate;I)I
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/oneplus/lib/widget/TimePickerClockDelegate;II)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setMinuteInternal(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/lib/widget/TimePickerClockDelegate;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setAmOrPm(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/NumericTextView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCommitHour:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/NumericTextView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCommitMinute:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->tryVibrate()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/TextInputTimePickerView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/oneplus/lib/widget/TimePickerClockDelegate;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIsToggleTimeMode:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/RadialTimePickerView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Landroid/widget/LinearLayout;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Landroid/view/View;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAllowAutoAdvance:Z

    return p0
.end method

.method static synthetic access$900(Lcom/oneplus/lib/widget/TimePickerClockDelegate;IIZ)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setHourInternal(IIZ)V

    return-void
.end method

.method private animationInInputTimeField()V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 278
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimeViewScale:F

    .line 279
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimeViewScale:F

    .line 280
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimeViewAlpha:F

    .line 281
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDuration:I

    int-to-long v1, v1

    .line 282
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 283
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 284
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 285
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 286
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mInputBlockPositionY:I

    iget v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHeaderPositionY:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    .line 287
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHeaderOffset:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDuration:I

    int-to-long v1, v1

    .line 288
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/widget/TimePickerClockDelegate$2;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$2;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 314
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private animationOutInputTimeField()V
    .locals 5

    .line 319
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->getInputBlock()Landroid/view/View;

    .line 320
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 323
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDuration:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 325
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->showLabels(Z)V

    .line 326
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 327
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 328
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 329
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 330
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDuration:I

    int-to-long v3, v1

    .line 331
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 332
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 333
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 334
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mDuration:I

    int-to-long v1, v1

    .line 335
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/widget/TimePickerClockDelegate$3;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$3;-><init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    .line 336
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 362
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private static ensureMinimumTextWidth(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    .line 379
    invoke-virtual {p0, v0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 383
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 384
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 385
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinimumWidth(I)V

    return-void
.end method

.method private getCurrentItemShowing()I
    .locals 0

    .line 755
    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result p0

    return p0
.end method

.method private getLocalizedHour(I)I
    .locals 1

    .line 798
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-nez v0, :cond_0

    .line 800
    rem-int/lit8 p1, p1, 0xc

    .line 803
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    .line 805
    iget-boolean p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz p0, :cond_1

    const/16 p0, 0x18

    goto :goto_0

    :cond_1
    const/16 p0, 0xc

    :goto_0
    move p1, p0

    :cond_2
    return p1
.end method

.method private initialize(IIZI)V
    .locals 0

    .line 500
    iput p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 501
    iput p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentMinute:I

    .line 502
    iput-boolean p3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    .line 503
    invoke-direct {p0, p4}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateUI(I)V

    return-void
.end method

.method private static lastIndexOfAny(Ljava/lang/String;[C)I
    .locals 5

    .line 858
    array-length v0, p1

    if-lez v0, :cond_2

    .line 860
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 861
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 863
    aget-char v4, p1, v3

    if-ne v2, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method static final obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    .line 431
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v1, Landroid/text/style/TtsSpan$VerbatimBuilder;

    invoke-direct {v1, p0}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v1}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    const/4 v2, 0x0

    .line 431
    invoke-virtual {v0, p0, v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private onTimeChanged()V
    .locals 4

    .line 762
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    .line 763
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 764
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/oneplus/lib/widget/TimePicker;II)V

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mAutoFillChangeListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_1

    .line 767
    iget-object v1, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getMinute()I

    move-result p0

    invoke-interface {v0, v1, v2, p0}, Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/oneplus/lib/widget/TimePicker;II)V

    :cond_1
    return-void
.end method

.method private resetInputTimeTextAppearance(ILandroid/widget/TextView;)V
    .locals 1

    .line 909
    invoke-static {}, Lcom/oneplus/lib/util/SystemUtils;->isAtLeastM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    .line 912
    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method private setAmOrPm(I)V
    .locals 2

    .line 917
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    .line 919
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setAmOrPm(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 920
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getHour()I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 921
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 922
    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;

    if-eqz p1, :cond_0

    .line 923
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getHour()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getMinute()I

    move-result p0

    invoke-interface {p1, v0, v1, p0}, Lcom/oneplus/lib/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/oneplus/lib/widget/TimePicker;II)V

    :cond_0
    return-void
.end method

.method private setAmPmAtStart(Z)V
    .locals 1

    .line 545
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIsAmPmAtStart:Z

    if-eq v0, p1, :cond_1

    .line 546
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIsAmPmAtStart:Z

    if-eqz p1, :cond_0

    .line 549
    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 550
    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 553
    :cond_0
    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 554
    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setCurrentItemShowing(IZZ)V
    .locals 2

    .line 885
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentItemShowing(IZ)V

    if-nez p1, :cond_0

    if-eqz p3, :cond_1

    .line 889
    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    iget-object p3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 893
    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    iget-object p3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 897
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p3

    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 898
    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    if-ne p1, v0, :cond_3

    move p3, v0

    :cond_3
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setActivated(Z)V

    if-nez p1, :cond_4

    .line 900
    sget p1, Lcom/oneplus/commonctrl/R$style;->OPTextAppearance_Material_TimePicker_TimeLabel:I

    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->resetInputTimeTextAppearance(ILandroid/widget/TextView;)V

    .line 901
    sget p1, Lcom/oneplus/commonctrl/R$style;->OPTextAppearance_Material_TimePicker_TimeLabelUnActivated:I

    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->resetInputTimeTextAppearance(ILandroid/widget/TextView;)V

    goto :goto_2

    .line 903
    :cond_4
    sget p1, Lcom/oneplus/commonctrl/R$style;->OPTextAppearance_Material_TimePicker_TimeLabel:I

    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->resetInputTimeTextAppearance(ILandroid/widget/TextView;)V

    .line 904
    sget p1, Lcom/oneplus/commonctrl/R$style;->OPTextAppearance_Material_TimePicker_TimeLabelUnActivated:I

    iget-object p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->resetInputTimeTextAppearance(ILandroid/widget/TextView;)V

    :goto_2
    return-void
.end method

.method private setHourInternal(IIZ)V
    .locals 2

    .line 570
    iget v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    if-ne v0, p1, :cond_0

    return-void

    .line 574
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 575
    invoke-direct {p0, p1, p3}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    .line 576
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHeaderAmPm()V

    const/4 p3, 0x1

    if-eq p2, p3, :cond_2

    .line 579
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentHour(I)V

    .line 580
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    const/16 v1, 0xc

    if-ge p1, v1, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {v0, p3}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setAmOrPm(I)Z

    :cond_2
    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    .line 583
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 586
    :cond_3
    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 587
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->onTimeChanged()V

    return-void
.end method

.method private setInputAmPmAtStart(Z)V
    .locals 0

    .line 541
    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->setAmPmAtStart(Z)V

    return-void
.end method

.method private setMinuteInternal(II)V
    .locals 1

    .line 616
    iget v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentMinute:I

    if-ne v0, p1, :cond_0

    return-void

    .line 620
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentMinute:I

    const/4 v0, 0x1

    .line 621
    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHeaderMinute(IZ)V

    if-eq p2, v0, :cond_1

    .line 624
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/RadialTimePickerView;->setCurrentMinute(I)V

    :cond_1
    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    .line 627
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 630
    :cond_2
    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 631
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->onTimeChanged()V

    return-void
.end method

.method private toggleRadialPickerMode()V
    .locals 6

    .line 242
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIsToggleTimeMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 245
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHeaderPositionY:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 247
    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 248
    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/widget/LinearLayout;

    sget v3, Lcom/oneplus/commonctrl/R$id;->hours:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 249
    aget v3, v0, v1

    iput v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHeaderPositionY:I

    .line 250
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->getInputBlock()Landroid/view/View;

    move-result-object v3

    .line 251
    iget-object v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->getInputBlock()Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/oneplus/commonctrl/R$id;->input_hour:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v4, v2

    .line 252
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHeaderOffset:I

    .line 253
    iget v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHeaderOffset:I

    if-nez v2, :cond_1

    .line 254
    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHeaderOffset:I

    .line 256
    :cond_1
    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 257
    aget v0, v0, v1

    iput v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mInputBlockPositionY:I

    .line 259
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    if-eqz v0, :cond_3

    .line 261
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->animationInInputTimeField()V

    .line 262
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->op_btn_clock_material:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    const/4 v0, 0x0

    .line 263
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    goto :goto_0

    .line 265
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->animationOutInputTimeField()V

    .line 266
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    sget v2, Lcom/oneplus/commonctrl/R$drawable;->op_btn_keyboard_key_material:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 267
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    :goto_0
    return-void
.end method

.method private tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 873
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mLastAnnouncedIsHour:Z

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mLastAnnouncedText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 876
    iput-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mLastAnnouncedText:Ljava/lang/CharSequence;

    .line 877
    iput-boolean p2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mLastAnnouncedIsHour:Z

    :cond_1
    return-void
.end method

.method private tryVibrate()V
    .locals 1

    .line 772
    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    return-void
.end method

.method private updateAmPmLabelStates(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 777
    :goto_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setActivated(Z)V

    .line 778
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 779
    iget-object v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    if-ne p1, v1, :cond_1

    move v0, v1

    .line 782
    :cond_1
    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setActivated(Z)V

    .line 783
    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 784
    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method

.method private updateHeaderAmPm()V
    .locals 2

    .line 528
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v0, :cond_0

    .line 529
    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    const-string v1, "hm"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 534
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setAmPmAtStart(Z)V

    .line 535
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setInputAmPmAtStart(Z)V

    .line 536
    iget v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    :goto_1
    return-void
.end method

.method private updateHeaderHour(IZ)V
    .locals 1

    .line 812
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result p1

    .line 813
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumericTextView;->setValue(I)V

    if-eqz p2, :cond_0

    .line 816
    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method private updateHeaderMinute(IZ)V
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/NumericTextView;->setValue(I)V

    if-eqz p2, :cond_0

    .line 824
    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method private updateHeaderSeparator()V
    .locals 3

    .line 837
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    .line 838
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_0

    const-string v1, "Hm"

    goto :goto_0

    :cond_0
    const-string v1, "hm"

    .line 837
    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [C

    .line 841
    fill-array-data v1, :array_0

    .line 842
    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->lastIndexOfAny(Ljava/lang/String;[C)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const-string v0, ":"

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 851
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 854
    :goto_1
    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->updateSeparator(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 2
        0x48s
        0x68s
        0x4bs
        0x6bs
    .end array-data
.end method

.method private updateHourFormat()V
    .locals 9

    .line 395
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    .line 396
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_0

    const-string v1, "Hm"

    goto :goto_0

    :cond_0
    const-string v1, "hm"

    .line 395
    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    const/16 v4, 0x48

    const/16 v5, 0x4b

    const/4 v6, 0x1

    if-ge v3, v1, :cond_4

    .line 402
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v4, :cond_2

    const/16 v8, 0x68

    if-eq v7, v8, :cond_2

    if-eq v7, v5, :cond_2

    const/16 v8, 0x6b

    if-ne v7, v8, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/2addr v3, v6

    if-ge v3, v1, :cond_3

    .line 405
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v7, v0, :cond_3

    move v0, v6

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    move v7, v0

    .line 412
    :goto_3
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourFormatShowLeadingZero:Z

    if-eq v7, v5, :cond_5

    if-ne v7, v4, :cond_6

    :cond_5
    move v2, v6

    .line 413
    :cond_6
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    .line 416
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    xor-int/2addr v0, v6

    .line 417
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_7

    const/16 v1, 0x17

    goto :goto_4

    :cond_7
    const/16 v1, 0xb

    :goto_4
    add-int/2addr v1, v0

    .line 418
    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v2, v0, v1}, Lcom/oneplus/lib/widget/NumericTextView;->setRange(II)V

    .line 419
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourFormatShowLeadingZero:Z

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/NumericTextView;->setShowLeadingZeroes(Z)V

    .line 422
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_8

    .line 423
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v0, p0}, Lcom/oneplus/lib/widget/TimePickerCompat24;->setHourFormat(Lcom/oneplus/lib/widget/TextInputTimePickerView;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    .line 426
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_5
    return-void
.end method

.method private updateRadialPicker(I)V
    .locals 4

    .line 523
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    iget v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentMinute:I

    iget-boolean v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/lib/widget/RadialTimePickerView;->initialize(IIZ)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 524
    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    return-void
.end method

.method private updateTextInputPicker()V
    .locals 6

    .line 518
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mTextInputPickerView:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    iget v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentMinute:I

    .line 519
    iget v3, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    const/16 v4, 0xc

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    iget-boolean v5, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    .line 518
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->updateTextInputValues(IIIZZ)V

    return-void
.end method

.method private updateUI(I)V
    .locals 2

    .line 507
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHeaderAmPm()V

    .line 508
    iget v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentHour:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    .line 509
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHeaderSeparator()V

    .line 510
    iget v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mCurrentMinute:I

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateHeaderMinute(IZ)V

    .line 511
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateRadialPicker(I)V

    .line 512
    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 514
    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/oneplus/lib/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public getBaseline()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getHour()I
    .locals 2

    .line 595
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v0

    .line 596
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_0

    return v0

    .line 600
    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getAmOrPm()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 601
    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    return v0

    .line 603
    :cond_1
    rem-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getMinute()I
    .locals 0

    .line 639
    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result p0

    return p0
.end method

.method public is24Hour()Z
    .locals 0

    .line 667
    iget-boolean p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIs24Hour:Z

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 682
    iget-boolean p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIsEnabled:Z

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 699
    instance-of v0, p1, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    if-eqz v0, :cond_0

    .line 700
    check-cast p1, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    .line 701
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getHour()I

    move-result v0

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getMinute()I

    move-result v1

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->is24HourMode()Z

    move-result v2

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getCurrentItemShowing()I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->initialize(IIZI)V

    .line 702
    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 7

    .line 693
    new-instance v6, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    .line 694
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->is24Hour()Z

    move-result v4

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->getCurrentItemShowing()I

    move-result v5

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/widget/TimePicker$AbstractTimePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZI)V

    return-object v6
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mHourView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 673
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mMinuteView:Lcom/oneplus/lib/widget/NumericTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 674
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 675
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 676
    iget-object v0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mRadialTimePickerView:Lcom/oneplus/lib/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 677
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->mIsEnabled:Z

    return-void
.end method

.method public setHour(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 566
    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setHourInternal(IIZ)V

    return-void
.end method

.method public setMinute(I)V
    .locals 1

    const/4 v0, 0x0

    .line 612
    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->setMinuteInternal(II)V

    return-void
.end method
