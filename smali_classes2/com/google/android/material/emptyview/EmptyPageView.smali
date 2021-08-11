.class public Lcom/google/android/material/emptyview/EmptyPageView;
.super Landroid/widget/LinearLayout;
.source "EmptyPageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/emptyview/EmptyPageView$OnEmptyViewActionButtonClickedListener;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mBaseView:Landroid/widget/LinearLayout;

.field private mBottomActionTextView:Landroid/widget/TextView;

.field private mContentView:Landroid/widget/LinearLayout;

.field private mEmptyBottomPadding:I

.field private mHadScroll:Z

.field private mImageView:Lcom/google/android/material/emptyview/EmptyImageView;

.field private mIsHomePageStatus:Z

.field private mLastMotionX:I

.field private mLastMotionY:I

.field private mMiddleActionTextView:Landroid/widget/TextView;

.field private mResetPadding:Z

.field private mResetUnVisiblePadding:Z

.field private final mScrollConsumed:[I

.field private mScrollDirection:I

.field private final mScrollOffset:[I

.field private mSetPadding:I

.field private mShowInDetail:Z

.field private mTextView:Landroid/widget/TextView;

.field private mTopActionTextView:Landroid/widget/TextView;

.field private onActionButtonClickedListener:Lcom/google/android/material/emptyview/EmptyPageView$OnEmptyViewActionButtonClickedListener;

.field private scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

.field private spaceView:Landroid/widget/Space;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/google/android/material/R$attr;->emptyPageStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/emptyview/EmptyPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/emptyview/EmptyPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mActivePointerId:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mScrollOffset:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mScrollConsumed:[I

    iput v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mScrollDirection:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$layout;->control_empty_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/google/android/material/emptyview/EmptyPageView;->initView()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/emptyview/EmptyPageView;->initTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private disallowInterceptParent()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private initTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    sget-object v0, Lcom/google/android/material/R$styleable;->EmptyPageView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/google/android/material/R$styleable;->EmptyPageView_emptyDrawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget p3, Lcom/google/android/material/R$styleable;->EmptyPageView_emptyText:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    sget p4, Lcom/google/android/material/R$styleable;->EmptyPageView_topActionText:I

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    sget v0, Lcom/google/android/material/R$styleable;->EmptyPageView_topActionClick:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    sget v2, Lcom/google/android/material/R$styleable;->EmptyPageView_middleActionText:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$styleable;->EmptyPageView_middleActionClick:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    sget v4, Lcom/google/android/material/R$styleable;->EmptyPageView_bottomActionText:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$styleable;->EmptyPageView_bottomActionClick:I

    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, p2}, Lcom/google/android/material/emptyview/EmptyPageView;->setEmptyDrawable(Landroid/graphics/drawable/Drawable;)V

    sget p2, Lcom/google/android/material/R$styleable;->EmptyPageView_topActionColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lcom/google/android/material/R$styleable;->EmptyPageView_topActionColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/emptyview/EmptyPageView;->setTopActionColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    sget p2, Lcom/google/android/material/R$styleable;->EmptyPageView_middleActionColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    sget p2, Lcom/google/android/material/R$styleable;->EmptyPageView_middleActionColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/emptyview/EmptyPageView;->setMiddleActionColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    sget p2, Lcom/google/android/material/R$styleable;->EmptyPageView_bottomActionColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    sget p2, Lcom/google/android/material/R$styleable;->EmptyPageView_bottomActionColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/emptyview/EmptyPageView;->setBottomActionColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    invoke-virtual {p0, p3}, Lcom/google/android/material/emptyview/EmptyPageView;->setEmptyText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p4}, Lcom/google/android/material/emptyview/EmptyPageView;->setTopActionText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {p0, v2}, Lcom/google/android/material/emptyview/EmptyPageView;->setMiddleActionText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {p0, v4}, Lcom/google/android/material/emptyview/EmptyPageView;->setBottomActionText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initView()V
    .locals 2

    const-string v0, "OPEmptyPageView"

    const-string v1, "initView !!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/google/android/material/R$id;->empty_base:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mBaseView:Landroid/widget/LinearLayout;

    sget v0, Lcom/google/android/material/R$id;->empty_image:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/emptyview/EmptyImageView;

    iput-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mImageView:Lcom/google/android/material/emptyview/EmptyImageView;

    sget v0, Lcom/google/android/material/R$id;->control_empty_space1:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->spaceView:Landroid/widget/Space;

    sget v0, Lcom/google/android/material/R$id;->empty_temp:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    sget v0, Lcom/google/android/material/R$id;->empty_content:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mTextView:Landroid/widget/TextView;

    sget v0, Lcom/google/android/material/R$id;->content_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mContentView:Landroid/widget/LinearLayout;

    sget v0, Lcom/google/android/material/R$id;->empty_top_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    sget v0, Lcom/google/android/material/R$id;->empty_middle_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    sget v0, Lcom/google/android/material/R$id;->empty_bottom_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mLastMotionX:I

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mLastMotionY:I

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mActivePointerId:I

    :cond_1
    return-void
.end method


# virtual methods
.method public getEmptyPaddingBottom()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mEmptyBottomPadding:I

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/common/OPViewGroupUtils;->getAllChildViews(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    instance-of v1, v1, Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mShowInDetail:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->spaceView:Landroid/widget/Space;

    if-eqz v1, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Space;->setVisibility(I)V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mIsHomePageStatus:Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->onActionButtonClickedListener:Lcom/google/android/material/emptyview/EmptyPageView$OnEmptyViewActionButtonClickedListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    if-ne v0, p1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_3
    iget-object p0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->onActionButtonClickedListener:Lcom/google/android/material/emptyview/EmptyPageView$OnEmptyViewActionButtonClickedListener;

    invoke-interface {p0, v0, v1}, Lcom/google/android/material/emptyview/EmptyPageView$OnEmptyViewActionButtonClickedListener;->onEmptyViewActionButtonClicked(II)V

    :cond_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->stopNestedScroll()V

    iput v1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mScrollDirection:I

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mScrollDirection:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->startNestedScroll(I)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mLastMotionX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mLastMotionY:I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mActivePointerId:I

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mImageView:Lcom/google/android/material/emptyview/EmptyImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mImageView:Lcom/google/android/material/emptyview/EmptyImageView;

    invoke-virtual {v0}, Lcom/google/android/material/emptyview/EmptyImageView;->isSetGoneFromUser()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mImageView:Lcom/google/android/material/emptyview/EmptyImageView;

    invoke-virtual {v0, v2}, Lcom/google/android/material/emptyview/EmptyImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mBaseView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mBaseView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v3, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_7

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object p1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mImageView:Lcom/google/android/material/emptyview/EmptyImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mBaseView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mBaseView:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mBaseView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->forceLayout()V

    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mBaseView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    add-int/lit8 v5, p2, 0x1

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->measure(II)V

    move v0, v2

    move v3, v0

    :goto_0
    if-ge v0, p1, :cond_3

    iget-object v5, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mBaseView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v1, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v3, v5

    iget v5, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v5

    iget v5, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v5

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mIsHomePageStatus:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$dimen;->control_empty_image_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/google/android/material/R$dimen;->op_control_margin_space3:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/google/android/material/R$dimen;->control_empty_base_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/google/android/material/R$dimen;->op_control_margin_space2:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/google/android/material/R$dimen;->control_empty_home_status_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int v3, p1, v0

    :cond_4
    if-le v3, p2, :cond_6

    iget-object p1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->spaceView:Landroid/widget/Space;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v2}, Landroid/widget/Space;->setVisibility(I)V

    :cond_5
    iget-object p1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mImageView:Lcom/google/android/material/emptyview/EmptyImageView;

    invoke-virtual {p1}, Lcom/google/android/material/emptyview/EmptyImageView;->setHideForNoSpace()V

    iget-object p1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    if-eqz p1, :cond_6

    sget v0, Lcom/google/android/material/R$id;->empty_image:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    iget-object p1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mBaseView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->forceLayout()V

    iget-object p0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mBaseView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measure(II)V

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mBaseView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object p1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mImageView:Lcom/google/android/material/emptyview/EmptyImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mContentView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mBaseView:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mBaseView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    iget-object v5, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->forceLayout()V

    iget-object v5, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    add-int/lit8 v7, v3, 0x1

    invoke-static {v7, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->measure(II)V

    move v5, v2

    :goto_1
    if-ge v2, p1, :cond_9

    iget-object v6, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v1, :cond_8

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    if-le v5, v3, :cond_a

    iget-object p1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mImageView:Lcom/google/android/material/emptyview/EmptyImageView;

    invoke-virtual {p1}, Lcom/google/android/material/emptyview/EmptyImageView;->setHideForNoSpace()V

    iget-object p1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mBaseView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->forceLayout()V

    iget-object p0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mBaseView:Landroid/widget/LinearLayout;

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measure(II)V

    goto :goto_2

    :cond_a
    iget-object p1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->forceLayout()V

    iget-object p0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measure(II)V

    goto :goto_2

    :cond_b
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_c
    :goto_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->startNestedScroll(I)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_9

    if-eq v1, v4, :cond_8

    if-eq v1, v0, :cond_2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_8

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/emptyview/EmptyPageView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    :cond_1
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mLastMotionX:I

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mLastMotionY:I

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mActivePointerId:I

    goto/16 :goto_3

    :cond_2
    iget v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mActivePointerId:I

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    :try_start_0
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget v5, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mLastMotionX:I

    int-to-float v5, v5

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    iget v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mLastMotionY:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v5, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mScrollDirection:I

    if-ne v5, v2, :cond_4

    cmpg-float v1, v1, v0

    if-gez v1, :cond_3

    iput v3, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mScrollDirection:I

    goto :goto_0

    :cond_3
    iput v4, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mScrollDirection:I

    :goto_0
    move v1, v4

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    iget v2, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mScrollDirection:I

    if-nez v2, :cond_a

    if-nez v1, :cond_6

    iget v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mLastMotionY:I

    float-to-int p1, p1

    sub-int/2addr v0, p1

    iput p1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mLastMotionY:I

    iget-object p1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mScrollConsumed:[I

    iget-object v1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mScrollOffset:[I

    invoke-virtual {p0, v3, v0, p1, v1}, Landroid/widget/LinearLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mScrollOffset:[I

    aget v1, p1, v4

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mLastMotionY:I

    aget p1, p1, v4

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mLastMotionY:I

    :cond_5
    move v9, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v10, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mScrollOffset:[I

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/widget/LinearLayout;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mLastMotionY:I

    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mScrollOffset:[I

    aget v0, v0, v4

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mLastMotionY:I

    goto :goto_2

    :cond_6
    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_7

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mLastMotionY:I

    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/emptyview/EmptyPageView;->disallowInterceptParent()V

    goto :goto_3

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTouchEvent MotionEventCompat.getX Exception e = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPEmptyPageView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_8
    iput v2, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mScrollDirection:I

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mLastMotionX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mLastMotionY:I

    invoke-static {p1, v3}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mActivePointerId:I

    iput v2, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mScrollDirection:I

    :cond_a
    :goto_3
    return v4

    :cond_b
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setBottomActionColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setBottomActionText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setEmptyDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mImageView:Lcom/google/android/material/emptyview/EmptyImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setEmptyPadding(IIII)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    if-eqz v0, :cond_a

    sget p4, Lcom/google/android/material/R$id;->empty_base:I

    invoke-virtual {v0, p4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p4, p1, p2, p3, v0}, Landroid/view/View;->setPadding(IIII)V

    const/16 v1, 0x64

    const/4 v2, 0x1

    if-le p2, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/google/android/material/R$dimen;->control_empty_image_margin_top:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    if-ge p2, v1, :cond_0

    iput-boolean v2, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mHadScroll:Z

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/google/android/material/R$dimen;->control_empty_image_margin_top:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    if-ne p2, v1, :cond_9

    iget-object v1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    sget v3, Lcom/google/android/material/R$id;->empty_image:I

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1, v3, v0, v4, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v3, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    const/16 v4, 0x38d

    const/16 v5, 0x8

    if-ge v1, v3, :cond_6

    iget-boolean v1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mResetPadding:Z

    if-nez v1, :cond_6

    iput-boolean v2, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mResetPadding:Z

    iget-object v1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    sget v3, Lcom/google/android/material/R$id;->empty_image:I

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p4, p1, v0, p3, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p3

    iget-object p0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p0

    invoke-virtual {p1, p3, p2, p0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-gt v1, v4, :cond_5

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/16 v3, 0x1c2

    if-le v1, v3, :cond_5

    iget-object v1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    sget v3, Lcom/google/android/material/R$id;->control_empty_space1:I

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mEmptyBottomPadding:I

    sub-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-boolean v3, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mHadScroll:Z

    if-eqz v3, :cond_3

    invoke-virtual {p4, p1, p2, p3, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p2

    iget-object p3, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p3

    invoke-virtual {p1, p2, v0, p3, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mSetPadding:I

    if-le v3, v2, :cond_4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/16 v4, 0x320

    if-le v3, v4, :cond_4

    iget-object v3, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    sget v4, Lcom/google/android/material/R$id;->empty_middle_text:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_4

    iget-object p1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p3

    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mEmptyBottomPadding:I

    sub-int/2addr v4, p2

    invoke-virtual {p1, p3, v0, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_0

    :cond_4
    invoke-virtual {p4, p1, v0, p3, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p3

    iget-object v3, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    invoke-virtual {p1, p3, p2, v3, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :goto_0
    invoke-virtual {p4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p3

    iget-object p4, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p4

    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mEmptyBottomPadding:I

    sub-int/2addr v1, p2

    invoke-virtual {p1, p3, p4, v0, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :goto_1
    iput-boolean v2, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mResetUnVisiblePadding:Z

    goto :goto_2

    :cond_6
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_7

    iget-boolean v1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mResetUnVisiblePadding:Z

    if-eqz v1, :cond_b

    :cond_7
    iget-object v1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    sget v2, Lcom/google/android/material/R$id;->empty_image:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v5, :cond_8

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-gt v1, v4, :cond_8

    iput-boolean v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mResetUnVisiblePadding:Z

    iget-object p1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p2

    iget-object p0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p0

    invoke-virtual {p1, p2, v0, p0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_2

    :cond_8
    invoke-virtual {p4, p1, p2, p3, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p2

    iget-object p0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p0

    invoke-virtual {p1, p2, v0, p0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p3

    iget-object p4, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p4

    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v0

    iget p0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mEmptyBottomPadding:I

    sub-int/2addr p0, p2

    invoke-virtual {p1, p3, p4, v0, p0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_2

    :cond_a
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_b
    :goto_2
    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setMiddleActionColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setMiddleActionText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mSetPadding:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mSetPadding:I

    iput p4, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mEmptyBottomPadding:I

    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->scrollView:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    if-eqz v0, :cond_0

    const/4 p4, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method public setTopActionColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTopActionText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/google/android/material/emptyview/EmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
