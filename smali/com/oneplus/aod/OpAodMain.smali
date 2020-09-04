.class public Lcom/oneplus/aod/OpAodMain;
.super Landroid/widget/RelativeLayout;
.source "OpAodMain.java"


# instance fields
.field private mBatteryAnalogContainer:Landroid/widget/LinearLayout;

.field private mBatteryContainer:Landroid/widget/LinearLayout;

.field private mBatteryDefaultContainer:Landroid/widget/LinearLayout;

.field private mClockStyle:I

.field private mDateTimeView:Landroid/view/View;

.field private mNotificationIconContainer:Landroid/widget/LinearLayout;

.field private mSliceInfoContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/oneplus/aod/OpAodMain;->mClockStyle:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/oneplus/aod/OpAodMain;->mClockStyle:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/oneplus/aod/OpAodMain;->mClockStyle:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/oneplus/aod/OpAodMain;->mClockStyle:I

    return-void
.end method

.method private updateClockStyle()V
    .locals 5

    .line 104
    iget v0, p0, Lcom/oneplus/aod/OpAodMain;->mClockStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto/16 :goto_4

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 119
    iget v2, p0, Lcom/oneplus/aod/OpAodMain;->mClockStyle:I

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v1

    .line 121
    :goto_0
    iget v3, p0, Lcom/oneplus/aod/OpAodMain;->mClockStyle:I

    if-eqz v3, :cond_4

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    if-ne v3, v4, :cond_6

    .line 131
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->battery_status_view_margin_left_with_date_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 132
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->date_view_analog_marginTop:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 133
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryAnalogContainer:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 123
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->aod_mcl_battery_marginTop:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_2

    .line 125
    :cond_5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->battery_empty_view_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 127
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 128
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryDefaultContainer:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    :goto_3
    return-void

    .line 106
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    iget-object p0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private updateLayout()V
    .locals 4

    .line 88
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->main_view_horizontal_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v0

    .line 89
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mDateTimeView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 90
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 91
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 93
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryDefaultContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 94
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 95
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 97
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->aod_slice_view_horizontal_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mSliceInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 99
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/android/systemui/R$dimen;->aod_main_layout_margin_bottom:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result p0

    invoke-virtual {v1, v0, v2, v0, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    return-void
.end method

.method private updateRTL()V
    .locals 1

    .line 63
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OpAodMain;->updateRTL(I)V

    return-void
.end method


# virtual methods
.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodMain;->updateLayout()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 43
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 45
    sget v0, Lcom/android/systemui/R$id;->battery_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    .line 46
    sget v0, Lcom/android/systemui/R$id;->battery_default_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryDefaultContainer:Landroid/widget/LinearLayout;

    .line 47
    sget v0, Lcom/android/systemui/R$id;->battery_analog_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryAnalogContainer:Landroid/widget/LinearLayout;

    .line 48
    sget v0, Lcom/android/systemui/R$id;->notification_icon_area_inner:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    .line 49
    sget v0, Lcom/android/systemui/R$id;->slice_info_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mSliceInfoContainer:Landroid/widget/LinearLayout;

    .line 50
    sget v0, Lcom/android/systemui/R$id;->date_time_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mDateTimeView:Landroid/view/View;

    .line 52
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodMain;->updateRTL()V

    .line 53
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodMain;->updateLayout()V

    .line 54
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodMain;->updateClockStyle()V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodMain;->updateClockStyle()V

    .line 59
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodMain;->updateRTL()V

    return-void
.end method

.method public setClockStyle(I)V
    .locals 0

    .line 139
    iput p1, p0, Lcom/oneplus/aod/OpAodMain;->mClockStyle:I

    .line 140
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodMain;->updateClockStyle()V

    return-void
.end method

.method protected updateRTL(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 70
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 71
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryDefaultContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 72
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryAnalogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 73
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mSliceInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    goto :goto_1

    .line 75
    :cond_1
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 76
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryDefaultContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 77
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryAnalogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 78
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mSliceInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 80
    :goto_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method
