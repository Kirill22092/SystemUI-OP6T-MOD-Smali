.class public Lcom/oneplus/plugin/OpPreventModeView;
.super Landroid/widget/RelativeLayout;
.source "OpPreventModeView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInnerView:Landroid/widget/LinearLayout;

.field private mPhone:Landroid/widget/ImageView;

.field private mResources:Landroid/content/res/Resources;

.field private mRippleView:Lcom/oneplus/plugin/OpRippleView;

.field private mTag:Landroid/widget/TextView;

.field private mTag2:Landroid/widget/TextView;

.field private mTagNum1:Landroid/widget/TextView;

.field private mTagNum2:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleCancel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method private playRippleAniamor()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mRippleView:Lcom/oneplus/plugin/OpRippleView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpRippleView;->prepare()V

    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mRippleView:Lcom/oneplus/plugin/OpRippleView;

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpRippleView;->startRipple()V

    :cond_0
    return-void
.end method

.method private updateLayout()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mInnerView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/systemui/R$dimen;->prevent_view_inner_view_margin_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_0
    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/systemui/R$dimen;->prevent_view_title_margin_horizontal:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->prevent_view_title_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1, v0}, Lcom/oneplus/util/OpUtils;->convertSpToFixedPx(FF)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTitle:Landroid/widget/TextView;

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mPhone:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->prevent_view_img_margin_top:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->prevent_view_img_width:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->prevent_view_img_height:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTitleCancel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->prevent_view_title_cancel_margin_top:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->prevent_view_cancel_margin_horizontal:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->prevent_view_title_cancel_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1, v0}, Lcom/oneplus/util/OpUtils;->convertSpToFixedPx(FF)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTitleCancel:Landroid/widget/TextView;

    int-to-float v1, v1

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->prevent_view_top_tag_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1, v0}, Lcom/oneplus/util/OpUtils;->convertSpToFixedPx(FF)I

    move-result v0

    sget v1, Lcom/android/systemui/R$id;->prevent_view_top_tag_view1:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->prevent_view_top_tag_view1_margin_top:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->prevent_view_cancel_margin_horizontal:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTag:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTagNum1:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v1, Lcom/android/systemui/R$id;->prevent_view_top_tag_view2:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/android/systemui/R$dimen;->prevent_view_top_tag_view2_margin_top:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-static {v4}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTag2:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTagNum2:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mInnerView:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mRippleView:Lcom/oneplus/plugin/OpRippleView;

    return-void
.end method

.method public create()V
    .locals 2

    sget v0, Lcom/android/systemui/R$id;->prevent_mode_inner_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mInnerView:Landroid/widget/LinearLayout;

    sget v0, Lcom/android/systemui/R$id;->rippleview_first:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/plugin/OpRippleView;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mRippleView:Lcom/oneplus/plugin/OpRippleView;

    sget v0, Lcom/android/systemui/R$id;->scrim_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    invoke-direct {p0}, Lcom/oneplus/plugin/OpPreventModeView;->updateLayout()V

    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTitle:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->prevent_view_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTitleCancel:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->prevent_view_title_cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTag:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->prevent_view_top_tag_cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTag2:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$string;->prevent_view_top_tag_cancel2:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public init()V
    .locals 2

    sget v0, Lcom/android/systemui/R$id;->prevent_mode_inner_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mInnerView:Landroid/widget/LinearLayout;

    sget v0, Lcom/android/systemui/R$id;->prevent_view_title:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTitle:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->prevent_mode_phone:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mPhone:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$id;->prevent_view_title_cancel:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTitleCancel:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->prevent_view_top_tag_cancel:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTag:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->prevent_view_top_tag_cancel2:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTag2:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->prevent_view_top_tag_number1:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTagNum1:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->prevent_view_top_tag_number2:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTagNum2:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->rippleview_first:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/plugin/OpRippleView;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mRippleView:Lcom/oneplus/plugin/OpRippleView;

    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    sget v0, Lcom/android/systemui/R$id;->scrim_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mPhone:Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/R$drawable;->prevent_mode_img:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/oneplus/plugin/OpPreventModeView;->updateLayout()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTitle:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$string;->prevent_view_title:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTitleCancel:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$string;->prevent_view_title_cancel:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTag:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$string;->prevent_view_top_tag_cancel:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTag2:Landroid/widget/TextView;

    sget p1, Lcom/android/systemui/R$string;->prevent_view_top_tag_cancel2:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTitleCancel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTag:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-ne p1, p0, :cond_1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mRippleView:Lcom/oneplus/plugin/OpRippleView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpRippleView;->stopRipple()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/plugin/OpPreventModeView;->playRippleAniamor()V

    :cond_1
    :goto_0
    return-void
.end method
