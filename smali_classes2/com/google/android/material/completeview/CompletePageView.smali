.class public Lcom/google/android/material/completeview/CompletePageView;
.super Landroid/widget/LinearLayout;
.source "CompletePageView.java"


# instance fields
.field private mBottomFixActionButton:Landroid/widget/Button;

.field private mBottomLeftActionButton:Landroid/widget/Button;

.field private mBottomMediumActionButton:Landroid/widget/Button;

.field private mBottomRightActionButton:Landroid/widget/Button;

.field private mButtonLayout:Landroid/widget/LinearLayout;

.field private mContentText:Landroid/widget/TextView;

.field private mIconColor:Landroid/content/res/ColorStateList;

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconView:Landroid/widget/ImageView;

.field private mMiddleBottomActionButton:Landroid/widget/Button;

.field private mMiddleTopActionButton:Landroid/widget/Button;

.field private mPreBottomMargin:I

.field private mStatus:I

.field private mSubHeadingText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/google/android/material/R$attr;->completePageStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/completeview/CompletePageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/completeview/CompletePageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/completeview/CompletePageView;->mStatus:I

    iput v0, p0, Lcom/google/android/material/completeview/CompletePageView;->mPreBottomMargin:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$layout;->op_complete_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/google/android/material/completeview/CompletePageView;->initView()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/completeview/CompletePageView;->initArrayTyped(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private checkStatus()V
    .locals 2

    iget v0, p0, Lcom/google/android/material/completeview/CompletePageView;->mStatus:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$drawable;->ic_success_icon:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/completeview/CompletePageView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$drawable;->ic_error_icon:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/completeview/CompletePageView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$drawable;->ic_success_icon:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/completeview/CompletePageView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method private initArrayTyped(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    sget-object v0, Lcom/google/android/material/R$styleable;->CompletePageView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/google/android/material/R$styleable;->CompletePageView_completeDrawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget p3, Lcom/google/android/material/R$styleable;->CompletePageView_completeTitle:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    sget p4, Lcom/google/android/material/R$styleable;->CompletePageView_completeSubHeading:I

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    sget v0, Lcom/google/android/material/R$styleable;->CompletePageView_completeMiddleTopActionText:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$styleable;->CompletePageView_completeMiddleBottomActionText:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$styleable;->CompletePageView_completeBottomFixActionText:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$styleable;->CompletePageView_completeBottomMediumActionText:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$styleable;->CompletePageView_completeBottomLeftActionText:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$styleable;->CompletePageView_completeBottomRightActionText:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p3}, Lcom/google/android/material/completeview/CompletePageView;->setCompleteTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p4}, Lcom/google/android/material/completeview/CompletePageView;->setCompleteSubHeading(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/google/android/material/completeview/CompletePageView;->mMiddleTopActionButton:Landroid/widget/Button;

    invoke-direct {p0, p3, v0}, Lcom/google/android/material/completeview/CompletePageView;->setActionText(Landroid/widget/Button;Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/google/android/material/completeview/CompletePageView;->mMiddleBottomActionButton:Landroid/widget/Button;

    invoke-direct {p0, p3, v1}, Lcom/google/android/material/completeview/CompletePageView;->setActionText(Landroid/widget/Button;Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/google/android/material/completeview/CompletePageView;->mBottomFixActionButton:Landroid/widget/Button;

    invoke-direct {p0, p3, v2}, Lcom/google/android/material/completeview/CompletePageView;->setActionText(Landroid/widget/Button;Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/google/android/material/completeview/CompletePageView;->mBottomMediumActionButton:Landroid/widget/Button;

    invoke-direct {p0, p3, v3}, Lcom/google/android/material/completeview/CompletePageView;->setActionText(Landroid/widget/Button;Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/google/android/material/completeview/CompletePageView;->mBottomLeftActionButton:Landroid/widget/Button;

    invoke-direct {p0, p3, v4}, Lcom/google/android/material/completeview/CompletePageView;->setActionText(Landroid/widget/Button;Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/google/android/material/completeview/CompletePageView;->mBottomRightActionButton:Landroid/widget/Button;

    invoke-direct {p0, p3, v5}, Lcom/google/android/material/completeview/CompletePageView;->setActionText(Landroid/widget/Button;Ljava/lang/CharSequence;)V

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/completeview/CompletePageView;->checkStatus()V

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/google/android/material/completeview/CompletePageView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget-object p2, p0, Lcom/google/android/material/completeview/CompletePageView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p2}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget p3, Lcom/google/android/material/R$styleable;->CompletePageView_completeIconColor:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_1

    sget p3, Lcom/google/android/material/R$styleable;->CompletePageView_completeIconColor:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/completeview/CompletePageView;->mIconColor:Landroid/content/res/ColorStateList;

    invoke-static {p2, p3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    invoke-virtual {p0, p2}, Lcom/google/android/material/completeview/CompletePageView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initView()V
    .locals 1

    sget v0, Lcom/google/android/material/R$id;->complete_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/material/completeview/CompletePageView;->mIconView:Landroid/widget/ImageView;

    sget v0, Lcom/google/android/material/R$id;->complete_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/completeview/CompletePageView;->mContentText:Landroid/widget/TextView;

    sget v0, Lcom/google/android/material/R$id;->complete_subheading_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/completeview/CompletePageView;->mSubHeadingText:Landroid/widget/TextView;

    sget v0, Lcom/google/android/material/R$id;->complete_middle_top_action:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/material/completeview/CompletePageView;->mMiddleTopActionButton:Landroid/widget/Button;

    sget v0, Lcom/google/android/material/R$id;->complete_middle_bottom_action:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/material/completeview/CompletePageView;->mMiddleBottomActionButton:Landroid/widget/Button;

    sget v0, Lcom/google/android/material/R$id;->complete_bottom_single_medium_action:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/material/completeview/CompletePageView;->mBottomMediumActionButton:Landroid/widget/Button;

    sget v0, Lcom/google/android/material/R$id;->complete_bottom_single_fix_action:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/material/completeview/CompletePageView;->mBottomFixActionButton:Landroid/widget/Button;

    sget v0, Lcom/google/android/material/R$id;->complete_bottom_left_action:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/material/completeview/CompletePageView;->mBottomLeftActionButton:Landroid/widget/Button;

    sget v0, Lcom/google/android/material/R$id;->complete_bottom_right_action:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/material/completeview/CompletePageView;->mBottomRightActionButton:Landroid/widget/Button;

    sget v0, Lcom/google/android/material/R$id;->complete_button_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/material/completeview/CompletePageView;->mButtonLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method private setActionText(Landroid/widget/Button;Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/completeview/CompletePageView;->mButtonLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/common/NavigationButtonUtils;->isGestureNavigationBar(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/common/NavigationButtonUtils;->isGestureButtonShowOnCreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1a

    goto :goto_0

    :cond_0
    const/16 p1, 0x2a

    :goto_0
    iget p2, p0, Lcom/google/android/material/completeview/CompletePageView;->mPreBottomMargin:I

    if-eq p1, p2, :cond_1

    sget p2, Lcom/google/android/material/R$id;->complete_buttons:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, p1}, Lcom/oneplus/common/AppUtils;->dpToPx(Landroid/content/Context;I)F

    move-result p4

    float-to-int p4, p4

    iput p4, p3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput p1, p0, Lcom/google/android/material/completeview/CompletePageView;->mPreBottomMargin:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setCompleteSubHeading(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/completeview/CompletePageView;->mSubHeadingText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/completeview/CompletePageView;->mSubHeadingText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/completeview/CompletePageView;->mSubHeadingText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/google/android/material/completeview/CompletePageView;->mSubHeadingText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setCompleteTitle(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/completeview/CompletePageView;->mContentText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/completeview/CompletePageView;->mContentText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/completeview/CompletePageView;->mContentText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/google/android/material/completeview/CompletePageView;->mContentText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/completeview/CompletePageView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/google/android/material/completeview/CompletePageView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method
