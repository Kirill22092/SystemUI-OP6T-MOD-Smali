.class public Lcom/android/systemui/statusbar/notification/stack/WLBBreakModeView;
.super Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;
.source "WLBBreakModeView.java"


# instance fields
.field private mContents:Landroid/view/ViewGroup;

.field private mEnableBreakText:Landroid/widget/TextView;

.field private mLabelClickListener:Landroid/view/View$OnClickListener;

.field private mLabelTextId:Ljava/lang/Integer;

.field private mLabelView:Landroid/widget/TextView;

.field private mOnEnableBreakClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/WLBBreakModeView;->mLabelClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/WLBBreakModeView;->mOnEnableBreakClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private bindContents()V
    .locals 2

    sget v0, Lcom/android/systemui/R$id;->wlb_break_mode_label:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/WLBBreakModeView;->mLabelView:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->wlb_enable_break_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/WLBBreakModeView;->mEnableBreakText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/WLBBreakModeView;->mOnEnableBreakClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/WLBBreakModeView;->mLabelClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/WLBBreakModeView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/WLBBreakModeView;->mLabelTextId:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/WLBBreakModeView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected applyContentTransformation(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->applyContentTransformation(FF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/WLBBreakModeView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/WLBBreakModeView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/WLBBreakModeView;->mEnableBreakText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/WLBBreakModeView;->mEnableBreakText:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method

.method protected findContentView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/WLBBreakModeView;->mContents:Landroid/view/ViewGroup;

    return-object p0
.end method

.method protected findSecondaryView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isTransparent()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public needsClippingToShelf()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->content:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/WLBBreakModeView;->mContents:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/WLBBreakModeView;->bindContents()V

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->onFinishInflate()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setVisible(ZZ)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
