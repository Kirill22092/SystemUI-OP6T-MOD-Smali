.class Lcom/oneplus/lib/widget/DayPickerPagerAdapter;
.super Lcom/oneplus/support/viewpager/widget/PagerAdapter;
.source "DayPickerPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/DayPickerPagerAdapter$OnDaySelectedListener;,
        Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mCalendarTextColor:Landroid/content/res/ColorStateList;

.field private final mCalendarViewId:I

.field private mCount:I

.field private mDayHighlightColor:Landroid/content/res/ColorStateList;

.field private mDayOfWeekTextAppearance:I

.field private mDaySelectorColor:Landroid/content/res/ColorStateList;

.field private mDayTextAppearance:I

.field private mFirstDayOfWeek:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutResId:I

.field private final mMaxDate:Ljava/util/Calendar;

.field private final mMinDate:Ljava/util/Calendar;

.field private mMonthTextAppearance:I

.field private final mOnDayClickListener:Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;

.field private mOnDaySelectedListener:Lcom/oneplus/lib/widget/DayPickerPagerAdapter$OnDaySelectedListener;

.field private mSelectedDay:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;-><init>()V

    .line 25
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    .line 26
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    .line 297
    new-instance v0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$1;-><init>(Lcom/oneplus/lib/widget/DayPickerPagerAdapter;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mOnDayClickListener:Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 52
    iput p2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mLayoutResId:I

    .line 53
    iput p3, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mCalendarViewId:I

    const/4 p2, 0x1

    new-array p2, p2, [I

    const/4 p3, 0x0

    const v0, 0x101042c

    aput v0, p2, p3

    .line 55
    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 57
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mDayHighlightColor:Landroid/content/res/ColorStateList;

    .line 58
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/DayPickerPagerAdapter;)Lcom/oneplus/lib/widget/DayPickerPagerAdapter$OnDaySelectedListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mOnDaySelectedListener:Lcom/oneplus/lib/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    return-object p0
.end method

.method private getMonthForPosition(I)I
    .locals 1

    .line 188
    iget-object p0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr p1, p0

    rem-int/lit8 p1, p1, 0xc

    return p1
.end method

.method private getPositionForDay(Ljava/util/Calendar;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 201
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v1, v0

    const/4 v0, 0x2

    .line 202
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object p0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr p1, p0

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v1, p1

    return v1
.end method

.method private getYearForPosition(I)I
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr p1, v0

    div-int/lit8 p1, p1, 0xc

    .line 193
    iget-object p0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 268
    check-cast p3, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;

    .line 269
    iget-object p3, p3, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;->container:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 271
    iget-object p0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public getCount()I
    .locals 0

    .line 178
    iget p0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mCount:I

    return p0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    .line 276
    check-cast p1, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;

    .line 277
    iget p0, p1, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;->position:I

    return p0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;

    iget-object p0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Lcom/oneplus/lib/widget/SimpleMonthView;

    if-eqz p0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->getMonthYearLabel()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 10

    .line 209
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mLayoutResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 211
    iget v1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mCalendarViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/SimpleMonthView;

    .line 212
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mOnDayClickListener:Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/SimpleMonthView;->setOnDayClickListener(Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;)V

    .line 213
    iget v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMonthTextAppearance:I

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/SimpleMonthView;->setMonthTextAppearance(I)V

    .line 214
    iget v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mDayOfWeekTextAppearance:I

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/SimpleMonthView;->setDayOfWeekTextAppearance(I)V

    .line 215
    iget v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mDayTextAppearance:I

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/SimpleMonthView;->setDayTextAppearance(I)V

    .line 217
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mDaySelectorColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 218
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/SimpleMonthView;->setDaySelectorColor(Landroid/content/res/ColorStateList;)V

    .line 221
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mDayHighlightColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 222
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/SimpleMonthView;->setDayHighlightColor(Landroid/content/res/ColorStateList;)V

    .line 225
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    .line 226
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/SimpleMonthView;->setMonthTextColor(Landroid/content/res/ColorStateList;)V

    .line 227
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/SimpleMonthView;->setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V

    .line 228
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/SimpleMonthView;->setDayTextColor(Landroid/content/res/ColorStateList;)V

    .line 231
    :cond_2
    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->getMonthForPosition(I)I

    move-result v4

    .line 232
    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->getYearForPosition(I)I

    move-result v5

    .line 235
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    const/4 v3, 0x5

    const/4 v6, 0x2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 236
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    :goto_0
    move v7, v2

    .line 242
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 243
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move v9, v2

    goto :goto_1

    :cond_4
    move v9, v8

    .line 249
    :goto_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 250
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    goto :goto_2

    :cond_5
    const/16 v2, 0x1f

    :goto_2
    move v8, v2

    .line 255
    iget v6, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mFirstDayOfWeek:I

    move-object v2, v1

    move v3, v7

    move v7, v9

    invoke-virtual/range {v2 .. v8}, Lcom/oneplus/lib/widget/SimpleMonthView;->setMonthParams(IIIIII)V

    .line 258
    new-instance v2, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;

    invoke-direct {v2, p2, v0, v1}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;-><init>(ILandroid/view/View;Lcom/oneplus/lib/widget/SimpleMonthView;)V

    .line 259
    iget-object p0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 261
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 183
    check-cast p2, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;

    .line 184
    iget-object p0, p2, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;->container:Landroid/view/View;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method setDayOfWeekTextAppearance(I)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mDayOfWeekTextAppearance:I

    .line 160
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method setDaySelectorColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mDaySelectorColor:Landroid/content/res/ColorStateList;

    .line 150
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method setDayTextAppearance(I)V
    .locals 0

    .line 168
    iput p1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mDayTextAppearance:I

    .line 169
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 3

    .line 80
    iput p1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mFirstDayOfWeek:I

    .line 83
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 85
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;

    iget-object v2, v2, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Lcom/oneplus/lib/widget/SimpleMonthView;

    .line 86
    invoke-virtual {v2, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->setFirstDayOfWeek(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setMonthTextAppearance(I)V
    .locals 0

    .line 154
    iput p1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMonthTextAppearance:I

    .line 155
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnDaySelectedListener(Lcom/oneplus/lib/widget/DayPickerPagerAdapter$OnDaySelectedListener;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mOnDaySelectedListener:Lcom/oneplus/lib/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    return-void
.end method

.method public setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 63
    iget-object p1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 65
    iget-object p1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr p1, v0

    .line 66
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit8 p1, p1, 0xc

    add-int/2addr v0, p1

    add-int/2addr v0, p2

    .line 67
    iput v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mCount:I

    .line 70
    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectedDay(Ljava/util/Calendar;)V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->getPositionForDay(Ljava/util/Calendar;)I

    move-result v0

    .line 112
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->getPositionForDay(Ljava/util/Calendar;)I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    if-ltz v0, :cond_0

    .line 116
    iget-object v3, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, v0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Lcom/oneplus/lib/widget/SimpleMonthView;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/widget/SimpleMonthView;->setSelectedDay(I)V

    :cond_0
    if-ltz v1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    .line 126
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 127
    iget-object v0, v0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Lcom/oneplus/lib/widget/SimpleMonthView;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/SimpleMonthView;->setSelectedDay(I)V

    .line 131
    :cond_1
    iput-object p1, p0, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    return-void
.end method
