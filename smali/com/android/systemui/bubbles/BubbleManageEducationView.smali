.class public Lcom/android/systemui/bubbles/BubbleManageEducationView;
.super Landroid/widget/LinearLayout;
.source "BubbleManageEducationView.java"


# instance fields
.field private mDescTextView:Landroid/widget/TextView;

.field private mManageView:Landroid/view/View;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleManageEducationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/bubbles/BubbleManageEducationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/bubbles/BubbleManageEducationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public getManageViewHeight()I
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleManageEducationView;->mManageView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 60
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 62
    sget v0, Lcom/android/systemui/R$id;->manage_education_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleManageEducationView;->mManageView:Landroid/view/View;

    .line 63
    sget v0, Lcom/android/systemui/R$id;->user_education_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleManageEducationView;->mTitleTextView:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/android/systemui/R$id;->user_education_description:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleManageEducationView;->mDescTextView:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 70
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    invoke-static {v3, v1, v2}, Lcom/android/internal/util/ContrastColorUtil;->ensureTextContrast(IIZ)I

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleManageEducationView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleManageEducationView;->mDescTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :array_0
    .array-data 4
        0x1010435
        0x1010039
    .end array-data
.end method

.method public setLayoutDirection(I)V
    .locals 1

    .line 95
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 96
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 97
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleManageEducationView;->mManageView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$drawable;->bubble_stack_user_education_bg_rtl:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 98
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleManageEducationView;->mTitleTextView:Landroid/widget/TextView;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 99
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleManageEducationView;->mDescTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleManageEducationView;->mManageView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$drawable;->bubble_stack_user_education_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 102
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleManageEducationView;->mTitleTextView:Landroid/widget/TextView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 103
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleManageEducationView;->mDescTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    return-void
.end method

.method public setManageViewPosition(II)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleManageEducationView;->mManageView:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 83
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleManageEducationView;->mManageView:Landroid/view/View;

    int-to-float p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
