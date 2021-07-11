.class public Lcom/oneplus/aod/views/OpTypoGraphicClock;
.super Landroid/widget/TextView;
.source "OpTypoGraphicClock.java"

# interfaces
.implements Lcom/oneplus/aod/views/IOpAodClock;


# instance fields
.field private mColors:[I

.field private mFontFamily2Id:I

.field private mFontSizeId:I

.field private final mHours:[Ljava/lang/String;

.field private mLineHeights:[I

.field private final mMinutes:[Ljava/lang/String;

.field private mTextClockStringTemplate:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/views/OpTypoGraphicClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/views/OpTypoGraphicClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 45
    iput p3, p0, Lcom/oneplus/aod/views/OpTypoGraphicClock;->mTextClockStringTemplate:I

    .line 46
    iput p3, p0, Lcom/oneplus/aod/views/OpTypoGraphicClock;->mFontSizeId:I

    .line 47
    iput p3, p0, Lcom/oneplus/aod/views/OpTypoGraphicClock;->mFontFamily2Id:I

    .line 60
    invoke-direct {p0, p2}, Lcom/oneplus/aod/views/OpTypoGraphicClock;->setupAttributes(Landroid/util/AttributeSet;)V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/systemui/R$array;->type_clock_hours:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/oneplus/aod/views/OpTypoGraphicClock;->mHours:[Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/systemui/R$array;->type_clock_minutes:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/oneplus/aod/views/OpTypoGraphicClock;->mMinutes:[Ljava/lang/String;

    .line 65
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private readColors(I)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 150
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 151
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oneplus/aod/views/OpTypoGraphicClock;->mColors:[I

    const/4 v0, 0x0

    move v1, v0

    .line 152
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/oneplus/aod/views/OpTypoGraphicClock;->mColors:[I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method

.method private readLineHeights(I)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 161
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 162
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oneplus/aod/views/OpTypoGraphicClock;->mLineHeights:[I

    const/4 v0, 0x0

    move v1, v0

    .line 163
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/oneplus/aod/views/OpTypoGraphicClock;->mLineHeights:[I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method

.method private setupAttributes(Landroid/util/AttributeSet;)V
    .locals 4

    .line 131
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/R$styleable;->OpTypoGraphicClock:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 133
    sget v1, Lcom/android/systemui/R$styleable;->OpTypoGraphicClock_colors:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/aod/views/OpTypoGraphicClock;->readColors(I)V

    .line 134
    sget v1, Lcom/android/systemui/R$styleable;->OpTypoGraphicClock_lineHeights:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/aod/views/OpTypoGraphicClock;->readLineHeights(I)V

    .line 135
    sget v1, Lcom/android/systemui/R$styleable;->OpTypoGraphicClock_textClockStringTemplate:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/views/OpTypoGraphicClock;->mTextClockStringTemplate:I

    .line 137
    sget v1, Lcom/android/systemui/R$styleable;->OpTypoGraphicClock_textFont2:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/views/OpTypoGraphicClock;->mFontFamily2Id:I

    .line 139
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 143
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/OpTypoGraphicClock;->mFontSizeId:I

    .line 145
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public applyLayoutParams(Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;)V
    .locals 3

    .line 70
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 73
    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginStart(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 74
    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginEnd(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 75
    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginTop(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 76
    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginEnd(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v0, 0x0

    .line 79
    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/aod/views/OpTypoGraphicClock;->mFontSizeId:I

    .line 80
    invoke-virtual {p1, v1, v2}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getSize(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    .line 79
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public onTimeChanged(Ljava/util/Calendar;)V
    .locals 14

    const/16 v0, 0xa

    .line 90
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xc

    rem-int/2addr v0, v1

    .line 91
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    rem-int/lit8 p1, p1, 0x3c

    .line 93
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/aod/views/OpTypoGraphicClock;->mTextClockStringTemplate:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    const-class v3, Landroid/text/Annotation;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/Annotation;

    .line 97
    array-length v3, v2

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v8, v2, v5

    .line 98
    invoke-virtual {v8}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v9

    const-string v10, "color"

    .line 99
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/16 v11, 0x21

    if-eqz v10, :cond_0

    .line 100
    iget-object v9, p0, Lcom/oneplus/aod/views/OpTypoGraphicClock;->mColors:[I

    if-eqz v9, :cond_2

    array-length v9, v9

    if-ge v6, v9, :cond_2

    .line 101
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    iget-object v10, p0, Lcom/oneplus/aod/views/OpTypoGraphicClock;->mColors:[I

    aget v10, v10, v6

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 102
    invoke-virtual {v1, v8}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v1, v8}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 101
    invoke-virtual {v1, v9, v10, v8, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_0
    const-string v10, "bold"

    .line 105
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 107
    :try_start_0
    new-instance v9, Landroid/graphics/fonts/Font$Builder;

    iget-object v10, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v12, p0, Lcom/oneplus/aod/views/OpTypoGraphicClock;->mFontFamily2Id:I

    invoke-direct {v9, v10, v12}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    .line 108
    invoke-virtual {v9}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v9

    .line 109
    new-instance v10, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v10, v9}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    invoke-virtual {v10}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v9

    .line 110
    new-instance v10, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v10, v9}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    invoke-virtual {v10}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v9

    .line 111
    new-instance v10, Landroid/text/style/TypefaceSpan;

    invoke-direct {v10, v9}, Landroid/text/style/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    .line 112
    invoke-virtual {v1, v8}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v1, v8}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 111
    invoke-virtual {v1, v10, v9, v8, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    const-string v10, "line-height"

    .line 115
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 116
    iget-object v9, p0, Lcom/oneplus/aod/views/OpTypoGraphicClock;->mLineHeights:[I

    if-eqz v9, :cond_2

    array-length v9, v9

    if-ge v7, v9, :cond_2

    .line 117
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v9

    .line 118
    iget v10, v9, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v12, v9, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v10, v12

    .line 119
    iget-object v12, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/oneplus/aod/views/OpTypoGraphicClock;->mLineHeights:[I

    aget v13, v13, v7

    invoke-static {v12, v13}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx(Landroid/content/Context;I)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v10, v12

    .line 120
    iget v12, v9, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v9, v9, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v12, v9

    sub-float/2addr v10, v12

    .line 121
    new-instance v9, Landroid/text/style/LineHeightSpan$Standard;

    float-to-int v10, v10

    invoke-direct {v9, v10}, Landroid/text/style/LineHeightSpan$Standard;-><init>(I)V

    .line 122
    invoke-virtual {v1, v8}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v1, v8}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 121
    invoke-virtual {v1, v9, v10, v8, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v7, v7, 0x1

    :catch_0
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 127
    iget-object v3, p0, Lcom/oneplus/aod/views/OpTypoGraphicClock;->mHours:[Ljava/lang/String;

    aget-object v0, v3, v0

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/oneplus/aod/views/OpTypoGraphicClock;->mMinutes:[Ljava/lang/String;

    aget-object p1, v0, p1

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
