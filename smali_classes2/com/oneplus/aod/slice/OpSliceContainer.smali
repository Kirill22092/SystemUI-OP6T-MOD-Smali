.class public Lcom/oneplus/aod/slice/OpSliceContainer;
.super Landroid/widget/LinearLayout;
.source "OpSliceContainer.java"


# instance fields
.field private mEllipsize:Z

.field private mIcon:Landroid/view/View;

.field private mIsRTL:Z

.field private mLinePaddingY:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineWidth:I

.field private mPrimary:Landroid/widget/TextView;

.field private mRemark:Landroid/widget/TextView;

.field private mSecondary:Landroid/widget/TextView;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/slice/OpSliceContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/slice/OpSliceContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/aod/slice/OpSliceContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mEllipsize:Z

    .line 52
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mLinePaint:Landroid/graphics/Paint;

    const/4 p3, -0x1

    .line 53
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object p2, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->op_keyguard_clock_info_view_smart_space_line:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result p1

    iput p1, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mLineWidth:I

    .line 57
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->op_keyguard_clock_info_view_smart_space_line_y_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result p1

    iput p1, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mLinePaddingY:I

    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method private updateLayout()V
    .locals 6

    .line 145
    sget v0, Lcom/android/systemui/R$id;->slice_primary_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 147
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->aod_slice_layout_primary_margin_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 148
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->op_control_icon_size_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v0

    .line 151
    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mIcon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 152
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 153
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 154
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mPrimary:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 157
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->op_control_margin_space1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 158
    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mPrimary:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mPrimary:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    .line 159
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->aod_slice_view_primary_padding_end:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-static {v4}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mPrimary:Landroid/widget/TextView;

    .line 160
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    .line 158
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 161
    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mPrimary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mRemark:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 164
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->op_control_margin_space1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 165
    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mRemark:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->op_control_margin_space2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v0

    iget v1, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mLineWidth:I

    add-int/2addr v0, v1

    .line 169
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    return-void
.end method

.method private updateLayoutParams(Z)V
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mEllipsize:Z

    if-eq v0, p1, :cond_1

    .line 120
    iput-boolean p1, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mEllipsize:Z

    .line 121
    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mPrimary:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 123
    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 124
    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    .line 126
    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 p1, 0x0

    .line 127
    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_1
    :goto_0
    return-void
.end method

.method private updateTextSize()V
    .locals 3

    .line 133
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 135
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->aod_slice_text_size_primary:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mPrimary:Landroid/widget/TextView;

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 138
    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mRemark:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 140
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mSecondary:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->aod_slice_text_size_secondary:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, v2, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 74
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 76
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mIsRTL:Z

    .line 78
    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpSliceContainer;->updateLayout()V

    .line 79
    invoke-direct {p0}, Lcom/oneplus/aod/slice/OpSliceContainer;->updateTextSize()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 109
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 114
    iget-boolean v0, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mIsRTL:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mLineWidth:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-float v2, v0

    .line 115
    iget v1, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mLinePaddingY:I

    int-to-float v3, v1

    iget v1, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mLineWidth:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mLinePaddingY:I

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mLinePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 64
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 66
    sget v0, Lcom/android/systemui/R$id;->slice_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mIcon:Landroid/view/View;

    .line 67
    sget v0, Lcom/android/systemui/R$id;->slice_primary:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mPrimary:Landroid/widget/TextView;

    .line 68
    sget v0, Lcom/android/systemui/R$id;->slice_remark:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mRemark:Landroid/widget/TextView;

    .line 69
    sget v0, Lcom/android/systemui/R$id;->slice_secondary:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mSecondary:Landroid/widget/TextView;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 84
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 86
    iget-object p1, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mIcon:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 87
    iget-object p2, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mPrimary:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    .line 88
    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mPrimary:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 89
    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mRemark:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    .line 93
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mUserId:I

    invoke-static {v1, v2}, Lcom/oneplus/aod/OpAodUtils;->isDefaultAodClockStyle(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mIcon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 95
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    add-float/2addr v2, v3

    int-to-float p1, p1

    add-float/2addr v2, p1

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v2, p1

    .line 97
    iget-object p1, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mPrimary:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 98
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    add-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v2, p1

    .line 100
    iget-object p1, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mRemark:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 101
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v2, v0

    add-float/2addr v2, p2

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v2, p1

    .line 103
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, v2, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/oneplus/aod/slice/OpSliceContainer;->updateLayoutParams(Z)V

    :cond_1
    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 178
    iput p1, p0, Lcom/oneplus/aod/slice/OpSliceContainer;->mUserId:I

    return-void
.end method
