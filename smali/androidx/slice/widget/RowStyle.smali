.class public Landroidx/slice/widget/RowStyle;
.super Ljava/lang/Object;
.source "RowStyle.java"


# instance fields
.field private mActionDividerHeight:I

.field private mBottomDividerEndPadding:I

.field private mBottomDividerStartPadding:I

.field private mContentEndPadding:I

.field private mContentStartPadding:I

.field private mDisableRecyclerViewItemAnimator:Z

.field private mEndItemEndPadding:I

.field private mEndItemStartPadding:I

.field private mIconSize:I

.field private mProgressBarEndPadding:I

.field private mProgressBarInlineWidth:I

.field private mProgressBarStartPadding:I

.field private mSeekBarInlineWidth:I

.field private mSubContentEndPadding:I

.field private mSubContentStartPadding:I

.field private mTitleEndPadding:I

.field private mTitleItemEndPadding:I

.field private mTitleItemStartPadding:I

.field private mTitleStartPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Landroidx/slice/view/R$styleable;->RowStyle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Landroidx/slice/view/R$styleable;->RowStyle_titleItemStartPadding:I

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mTitleItemStartPadding:I

    sget p2, Landroidx/slice/view/R$styleable;->RowStyle_titleItemEndPadding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mTitleItemEndPadding:I

    sget p2, Landroidx/slice/view/R$styleable;->RowStyle_contentStartPadding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mContentStartPadding:I

    sget p2, Landroidx/slice/view/R$styleable;->RowStyle_contentEndPadding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mContentEndPadding:I

    sget p2, Landroidx/slice/view/R$styleable;->RowStyle_titleStartPadding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mTitleStartPadding:I

    sget p2, Landroidx/slice/view/R$styleable;->RowStyle_titleEndPadding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mTitleEndPadding:I

    sget p2, Landroidx/slice/view/R$styleable;->RowStyle_subContentStartPadding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mSubContentStartPadding:I

    sget p2, Landroidx/slice/view/R$styleable;->RowStyle_subContentEndPadding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mSubContentEndPadding:I

    sget p2, Landroidx/slice/view/R$styleable;->RowStyle_endItemStartPadding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mEndItemStartPadding:I

    sget p2, Landroidx/slice/view/R$styleable;->RowStyle_endItemEndPadding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mEndItemEndPadding:I

    sget p2, Landroidx/slice/view/R$styleable;->RowStyle_bottomDividerStartPadding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerStartPadding:I

    sget p2, Landroidx/slice/view/R$styleable;->RowStyle_bottomDividerEndPadding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerEndPadding:I

    sget p2, Landroidx/slice/view/R$styleable;->RowStyle_actionDividerHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mActionDividerHeight:I

    sget p2, Landroidx/slice/view/R$styleable;->RowStyle_seekBarInlineWidth:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mSeekBarInlineWidth:I

    sget p2, Landroidx/slice/view/R$styleable;->RowStyle_progressBarInlineWidth:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mProgressBarInlineWidth:I

    sget p2, Landroidx/slice/view/R$styleable;->RowStyle_progressBarStartPadding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mProgressBarStartPadding:I

    sget p2, Landroidx/slice/view/R$styleable;->RowStyle_progressBarEndPadding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mProgressBarEndPadding:I

    sget p2, Landroidx/slice/view/R$styleable;->RowStyle_iconSize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/slice/widget/RowStyle;->mIconSize:I

    sget p2, Landroidx/slice/view/R$styleable;->RowStyle_disableRecyclerViewItemAnimator:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/slice/widget/RowStyle;->mDisableRecyclerViewItemAnimator:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method


# virtual methods
.method public getActionDividerHeight()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mActionDividerHeight:I

    return p0
.end method

.method public getBottomDividerEndPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerEndPadding:I

    return p0
.end method

.method public getBottomDividerStartPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerStartPadding:I

    return p0
.end method

.method public getContentEndPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mContentEndPadding:I

    return p0
.end method

.method public getContentStartPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mContentStartPadding:I

    return p0
.end method

.method public getDisableRecyclerViewItemAnimator()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/slice/widget/RowStyle;->mDisableRecyclerViewItemAnimator:Z

    return p0
.end method

.method public getEndItemEndPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mEndItemEndPadding:I

    return p0
.end method

.method public getEndItemStartPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mEndItemStartPadding:I

    return p0
.end method

.method public getIconSize()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mIconSize:I

    return p0
.end method

.method public getProgressBarEndPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mProgressBarEndPadding:I

    return p0
.end method

.method public getProgressBarInlineWidth()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mProgressBarInlineWidth:I

    return p0
.end method

.method public getProgressBarStartPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mProgressBarStartPadding:I

    return p0
.end method

.method public getSeekBarInlineWidth()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mSeekBarInlineWidth:I

    return p0
.end method

.method public getSubContentEndPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mSubContentEndPadding:I

    return p0
.end method

.method public getSubContentStartPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mSubContentStartPadding:I

    return p0
.end method

.method public getTitleEndPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mTitleEndPadding:I

    return p0
.end method

.method public getTitleItemEndPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mTitleItemEndPadding:I

    return p0
.end method

.method public getTitleItemStartPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mTitleItemStartPadding:I

    return p0
.end method

.method public getTitleStartPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mTitleStartPadding:I

    return p0
.end method
