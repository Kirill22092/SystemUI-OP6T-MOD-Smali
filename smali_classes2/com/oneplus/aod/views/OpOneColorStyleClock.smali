.class public Lcom/oneplus/aod/views/OpOneColorStyleClock;
.super Landroid/widget/TextView;
.source "OpOneColorStyleClock.java"

# interfaces
.implements Lcom/oneplus/aod/views/IOpAodClock;


# instance fields
.field private mFontSizeId:I

.field private mFormat12:Ljava/lang/CharSequence;

.field private mFormat24:Ljava/lang/CharSequence;

.field private mMclFontSizeId:I

.field private mSpecialColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/views/OpOneColorStyleClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/views/OpOneColorStyleClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-direct {p0, p2}, Lcom/oneplus/aod/views/OpOneColorStyleClock;->setupAttributes(Landroid/util/AttributeSet;)V

    .line 52
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private is24HourModeEnabled()Z
    .locals 1

    .line 103
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 104
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 103
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method private setupAttributes(Landroid/util/AttributeSet;)V
    .locals 5

    .line 109
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/R$styleable;->OpOneColorStyleClock:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 111
    sget v1, Lcom/android/systemui/R$styleable;->OpOneColorStyleClock_specialColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/views/OpOneColorStyleClock;->mSpecialColor:I

    .line 112
    sget v1, Lcom/android/systemui/R$styleable;->OpOneColorStyleClock_mclTextSize:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/views/OpOneColorStyleClock;->mMclFontSizeId:I

    .line 113
    sget v1, Lcom/android/systemui/R$styleable;->OpOneColorStyleClock_mclFontStyle:I

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 114
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/R$styleable;->TextClock:[I

    invoke-virtual {v0, p1, v4, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 118
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/aod/views/OpOneColorStyleClock;->mFormat12:Ljava/lang/CharSequence;

    const/4 v4, 0x1

    .line 119
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/aod/views/OpOneColorStyleClock;->mFormat24:Ljava/lang/CharSequence;

    .line 120
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v0, p1, v4, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 124
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/OpOneColorStyleClock;->mFontSizeId:I

    .line 126
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isMCLVersion()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->getMclTypeface(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 130
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public applyLayoutParams(Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;)V
    .locals 3

    .line 67
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 70
    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginStart(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 71
    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginEnd(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 72
    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginTop(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 73
    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginEnd(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 75
    iget v0, p0, Lcom/oneplus/aod/views/OpOneColorStyleClock;->mFontSizeId:I

    .line 76
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isMCLVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oneplus/aod/views/OpOneColorStyleClock;->mMclFontSizeId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    :cond_0
    const/4 v1, 0x0

    .line 79
    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {p1, v2, v0}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getSize(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    .line 79
    invoke-virtual {p0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 60
    sget-object v0, Lcom/oneplus/aod/OpDateTimeView$Patterns;->clockView12:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/aod/views/OpOneColorStyleClock;->mFormat12:Ljava/lang/CharSequence;

    .line 61
    sget-object v0, Lcom/oneplus/aod/OpDateTimeView$Patterns;->clockView24:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/aod/views/OpOneColorStyleClock;->mFormat24:Ljava/lang/CharSequence;

    return-void
.end method

.method public onTimeChanged(Ljava/util/Calendar;)V
    .locals 6

    .line 87
    invoke-direct {p0}, Lcom/oneplus/aod/views/OpOneColorStyleClock;->is24HourModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/oneplus/aod/views/OpOneColorStyleClock;->mFormat24:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/views/OpOneColorStyleClock;->mFormat12:Ljava/lang/CharSequence;

    .line 89
    :goto_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 91
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    const/16 v3, 0x31

    .line 93
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_1

    .line 94
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget v4, p0, Lcom/oneplus/aod/views/OpOneColorStyleClock;->mSpecialColor:I

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x21

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-array p1, v1, [Ljava/lang/CharSequence;

    .line 99
    invoke-static {v0, p1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
