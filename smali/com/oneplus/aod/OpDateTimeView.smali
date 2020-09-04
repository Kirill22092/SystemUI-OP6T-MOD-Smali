.class public Lcom/oneplus/aod/OpDateTimeView;
.super Landroid/widget/GridLayout;
.source "OpDateTimeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/OpDateTimeView$Patterns;
    }
.end annotation


# instance fields
.field private mClockStyle:I

.field private mContext:Landroid/content/Context;

.field private mDateView:Lcom/oneplus/aod/OpTextDate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/aod/OpDateTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/OpDateTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput-object p1, p0, Lcom/oneplus/aod/OpDateTimeView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .line 79
    invoke-super {p0}, Landroid/widget/GridLayout;->onAttachedToWindow()V

    const-string v0, "DateTimeView"

    const-string v1, "onAttachedToWindow"

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 85
    iget v2, p0, Lcom/oneplus/aod/OpDateTimeView;->mClockStyle:I

    if-nez v2, :cond_0

    .line 86
    sget v2, Lcom/android/systemui/R$dimen;->date_time_view_default_marginTop:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 88
    sget v2, Lcom/android/systemui/R$dimen;->date_time_view_analog_marginTop:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 90
    sget v2, Lcom/android/systemui/R$dimen;->date_time_view_minimalism_marginTop:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 94
    :goto_0
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->getDeviceTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "17819"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 95
    sget v3, Lcom/android/systemui/R$dimen;->date_time_view_17819_additional_marginTop:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_1

    .line 96
    :cond_3
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->getDeviceTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "17801"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 97
    sget v3, Lcom/android/systemui/R$dimen;->date_time_view_17801_additional_marginTop:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_1

    .line 99
    :cond_4
    sget v3, Lcom/android/systemui/R$dimen;->date_time_view_additional_marginTop:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 101
    :goto_1
    iget v4, p0, Lcom/oneplus/aod/OpDateTimeView;->mClockStyle:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_5

    .line 102
    sget v2, Lcom/android/systemui/R$dimen;->op_aod_clock_analog_my_margin_top:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2

    :cond_5
    add-int/2addr v2, v3

    .line 104
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 106
    :goto_2
    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v1, p0, Lcom/oneplus/aod/OpDateTimeView;->mDateView:Lcom/oneplus/aod/OpTextDate;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 109
    sget v2, Lcom/android/systemui/R$dimen;->date_view_marginTop:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 110
    iget-object p0, p0, Lcom/oneplus/aod/OpDateTimeView;->mDateView:Lcom/oneplus/aod/OpTextDate;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 115
    invoke-super {p0}, Landroid/widget/GridLayout;->onDetachedFromWindow()V

    const-string p0, "DateTimeView"

    const-string v0, "onDetachedFromWindow"

    .line 116
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 55
    invoke-super {p0}, Landroid/widget/GridLayout;->onFinishInflate()V

    const-string v0, "DateTimeView"

    const-string v1, "onFinishInflate: "

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget v0, Lcom/android/systemui/R$id;->date_view:I

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/OpTextDate;

    iput-object v0, p0, Lcom/oneplus/aod/OpDateTimeView;->mDateView:Lcom/oneplus/aod/OpTextDate;

    .line 58
    iget-object p0, p0, Lcom/oneplus/aod/OpDateTimeView;->mDateView:Lcom/oneplus/aod/OpTextDate;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OpTextDate;->setShowCurrentUserTime(Z)V

    return-void
.end method

.method public refresh()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/oneplus/aod/OpDateTimeView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/aod/OpDateTimeView;->mClockStyle:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/oneplus/aod/OpDateTimeView$Patterns;->update(Landroid/content/Context;ZI)V

    .line 74
    invoke-virtual {p0}, Lcom/oneplus/aod/OpDateTimeView;->refreshTime()V

    return-void
.end method

.method public refreshTime()V
    .locals 2

    const-string v0, "DateTimeView"

    const-string v1, "refreshTime"

    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/oneplus/aod/OpDateTimeView;->mDateView:Lcom/oneplus/aod/OpTextDate;

    sget-object v1, Lcom/oneplus/aod/OpDateTimeView$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpTextDate;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 69
    iget-object p0, p0, Lcom/oneplus/aod/OpDateTimeView;->mDateView:Lcom/oneplus/aod/OpTextDate;

    sget-object v0, Lcom/oneplus/aod/OpDateTimeView$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OpTextDate;->setFormat12Hour(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setClockStyle(I)V
    .locals 0

    .line 174
    iput p1, p0, Lcom/oneplus/aod/OpDateTimeView;->mClockStyle:I

    .line 176
    invoke-virtual {p0}, Lcom/oneplus/aod/OpDateTimeView;->refresh()V

    return-void
.end method
