.class public Lcom/google/android/material/emptyview/EmptyTextView;
.super Landroid/widget/LinearLayout;
.source "EmptyTextView.java"


# static fields
.field private static final DEF_STYLE:I


# instance fields
.field private mBodyView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/material/R$style;->OnePlus_Widget_AppCompat_EmptyText_Default:I

    sput v0, Lcom/google/android/material/emptyview/EmptyTextView;->DEF_STYLE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/google/android/material/R$attr;->emptyTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/emptyview/EmptyTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$layout;->control_empty_text_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/google/android/material/emptyview/EmptyTextView;->initView()V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/emptyview/EmptyTextView;->initTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private initTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    sget-object v0, Lcom/google/android/material/R$styleable;->EmptyTextView:[I

    sget v1, Lcom/google/android/material/emptyview/EmptyTextView;->DEF_STYLE:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/google/android/material/R$styleable;->EmptyTextView_titleLineHeight:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/emptyview/EmptyTextView;->setTitleLineHeight(I)V

    sget p2, Lcom/google/android/material/R$styleable;->EmptyTextView_titleGravity:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/google/android/material/emptyview/EmptyTextView;->setTitleGravity(I)V

    sget p2, Lcom/google/android/material/R$styleable;->EmptyTextView_titleGravity:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/google/android/material/emptyview/EmptyTextView;->setBodyGravity(I)V

    sget p2, Lcom/google/android/material/R$styleable;->EmptyTextView_bodyAppearance:I

    sget p3, Lcom/google/android/material/R$style;->op_control_text_style_body1:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getSourceResourceId(II)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/google/android/material/emptyview/EmptyTextView;->setBodyAppearance(I)V

    sget p2, Lcom/google/android/material/R$styleable;->EmptyTextView_emptyTitle:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/android/material/emptyview/EmptyTextView;->setTitle(Ljava/lang/String;)V

    sget p2, Lcom/google/android/material/R$styleable;->EmptyTextView_emptyBody:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/android/material/emptyview/EmptyTextView;->setBody(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initView()V
    .locals 1

    sget v0, Lcom/google/android/material/R$id;->empty_text_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/emptyview/EmptyTextView;->mTitleView:Landroid/widget/TextView;

    sget v0, Lcom/google/android/material/R$id;->empty_text_body:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/emptyview/EmptyTextView;->mBodyView:Landroid/widget/TextView;

    return-void
.end method

.method private setBody(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/emptyview/EmptyTextView;->mBodyView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setBodyAppearance(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/emptyview/EmptyTextView;->mBodyView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_0
    return-void
.end method

.method private setBodyGravity(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/emptyview/EmptyTextView;->mBodyView:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    const p1, 0x800003

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/emptyview/EmptyTextView;->mBodyView:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/emptyview/EmptyTextView;->mTitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setTitleGravity(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/emptyview/EmptyTextView;->mTitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    const p1, 0x800003

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/emptyview/EmptyTextView;->mTitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public setTitleLineHeight(I)V
    .locals 0

    if-lez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/emptyview/EmptyTextView;->mTitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLineHeight(I)V

    :cond_0
    return-void
.end method
