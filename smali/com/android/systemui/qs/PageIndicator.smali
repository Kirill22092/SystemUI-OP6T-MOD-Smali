.class public Lcom/android/systemui/qs/PageIndicator;
.super Landroid/view/ViewGroup;
.source "PageIndicator.java"


# instance fields
.field private mAnimating:Z

.field private final mAnimationDone:Ljava/lang/Runnable;

.field private mColor:I

.field private final mPageDotWidth:I

.field private final mPageIndicatorHeight:I

.field private final mPageIndicatorWidth:I

.field private mPosition:I

.field private final mQueuedPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    .line 253
    new-instance p1, Lcom/android/systemui/qs/PageIndicator$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/PageIndicator$1;-><init>(Lcom/android/systemui/qs/PageIndicator;)V

    iput-object p1, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimationDone:Ljava/lang/Runnable;

    .line 45
    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->qs_page_indicator_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    .line 47
    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->qs_page_indicator_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    .line 49
    iget p1, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    int-to-float p1, p1

    const p2, 0x3ecccccd    # 0.4f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotWidth:I

    const/16 p1, 0x64

    .line 53
    invoke-static {p1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/PageIndicator;->mColor:I

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/PageIndicator;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/PageIndicator;)Ljava/util/ArrayList;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/PageIndicator;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/PageIndicator;->setPosition(I)V

    return-void
.end method

.method private animate(II)V
    .locals 6

    shr-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x1

    .line 150
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/PageIndicator;->setIndex(I)V

    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    if-le p1, p2, :cond_2

    goto :goto_1

    :cond_1
    if-ge p1, p2, :cond_2

    :goto_1
    move p1, v4

    goto :goto_2

    :cond_2
    move p1, v3

    .line 154
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 155
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne v0, p2, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 159
    :cond_3
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 160
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p2, :cond_5

    if-nez v0, :cond_4

    goto :goto_3

    .line 166
    :cond_4
    invoke-virtual {p2}, Landroid/widget/ImageView;->getX()F

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v5

    sub-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 168
    invoke-direct {p0, v2, p1, v3}, Lcom/android/systemui/qs/PageIndicator;->getTransition(ZZZ)I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/android/systemui/qs/PageIndicator;->playAnimation(Landroid/widget/ImageView;I)V

    .line 169
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/PageIndicator;->getAlpha(Z)F

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 171
    invoke-direct {p0, v2, p1, v4}, Lcom/android/systemui/qs/PageIndicator;->getTransition(ZZZ)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/PageIndicator;->playAnimation(Landroid/widget/ImageView;I)V

    .line 172
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/PageIndicator;->getAlpha(Z)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 174
    iput-boolean v4, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimating:Z

    :cond_5
    :goto_3
    return-void
.end method

.method private getAlpha(Z)F
    .locals 0

    if-eqz p1, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f000000    # 0.5f

    :goto_0
    return p0
.end method

.method private getTransition(ZZZ)I
    .locals 0

    if-eqz p3, :cond_3

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 195
    sget p0, Lcom/android/systemui/R$drawable;->op_major_b_a_animation:I

    return p0

    .line 197
    :cond_0
    sget p0, Lcom/android/systemui/R$drawable;->op_major_b_c_animation:I

    return p0

    :cond_1
    if-eqz p2, :cond_2

    .line 201
    sget p0, Lcom/android/systemui/R$drawable;->op_major_a_b_animation:I

    return p0

    .line 203
    :cond_2
    sget p0, Lcom/android/systemui/R$drawable;->op_major_c_b_animation:I

    return p0

    :cond_3
    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 209
    sget p0, Lcom/android/systemui/R$drawable;->op_minor_b_c_animation:I

    return p0

    .line 211
    :cond_4
    sget p0, Lcom/android/systemui/R$drawable;->op_minor_b_a_animation:I

    return p0

    :cond_5
    if-eqz p2, :cond_6

    .line 215
    sget p0, Lcom/android/systemui/R$drawable;->op_minor_c_b_animation:I

    return p0

    .line 217
    :cond_6
    sget p0, Lcom/android/systemui/R$drawable;->op_minor_a_b_animation:I

    return p0
.end method

.method private playAnimation(Landroid/widget/ImageView;I)V
    .locals 2

    .line 182
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 183
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    .line 185
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 188
    iget-object p1, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimationDone:Ljava/lang/Runnable;

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setIndex(I)V
    .locals 5

    .line 128
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 130
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v4, 0x0

    .line 132
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 133
    sget v4, Lcom/android/systemui/R$drawable;->op_minor_a_b:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    iget v4, p0, Lcom/android/systemui/qs/PageIndicator;->mColor:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    .line 137
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/PageIndicator;->getAlpha(Z)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setPosition(I)V
    .locals 2

    .line 115
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 116
    iget v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/PageIndicator;->animate(II)V

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p1, 0x1

    .line 122
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/PageIndicator;->setIndex(I)V

    .line 124
    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2

    .line 243
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_1

    .line 248
    iget p4, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    iget p5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotWidth:I

    sub-int/2addr p4, p5

    mul-int/2addr p4, p3

    .line 249
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    iget v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    add-int/2addr v0, p4

    iget v1, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    invoke-virtual {p5, p4, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 225
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 227
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void

    .line 230
    :cond_0
    iget p1, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 232
    iget v1, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 235
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    :cond_1
    iget p1, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    iget p2, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotWidth:I

    sub-int/2addr p1, p2

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    .line 238
    iget p2, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 268
    iput p1, p0, Lcom/android/systemui/qs/PageIndicator;->mColor:I

    return-void
.end method

.method public setLocation(F)V
    .locals 7

    float-to-int v0, p1

    .line 89
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->accessibility_quick_settings_page:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    .line 90
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 89
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    shl-int/lit8 v1, v0, 0x1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    move v5, v6

    :cond_0
    or-int p1, v1, v5

    .line 96
    iget v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    .line 97
    iget-object v1, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1
    if-ne p1, v0, :cond_2

    return-void

    .line 103
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimating:Z

    if-eqz v0, :cond_3

    .line 107
    iget-object p0, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 111
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/PageIndicator;->setPosition(I)V

    return-void
.end method

.method public setNumPages(I)V
    .locals 4

    .line 58
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x101042a

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(II)V

    return-void
.end method

.method public setNumPages(II)V
    .locals 5

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 67
    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 68
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ne p1, v1, :cond_1

    return-void

    .line 71
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimating:Z

    if-eqz v1, :cond_2

    const-string v1, "PageIndicator"

    const-string/jumbo v2, "setNumPages during animation"

    .line 72
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 75
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_1

    .line 77
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-le p1, v1, :cond_4

    .line 78
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 79
    sget v2, Lcom/android/systemui/R$drawable;->op_minor_a_b:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 81
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget v3, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    iget v4, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 84
    :cond_4
    iget p1, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    shr-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/PageIndicator;->setIndex(I)V

    return-void
.end method
