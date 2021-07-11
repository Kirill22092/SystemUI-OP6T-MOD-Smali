.class public Lcom/android/systemui/bubbles/BubbleFlyoutView;
.super Landroid/widget/FrameLayout;
.source "BubbleFlyoutView.java"


# instance fields
.field private final mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private mArrowPointingLeft:Z

.field private final mBgPaint:Landroid/graphics/Paint;

.field private final mBgRect:Landroid/graphics/RectF;

.field private mBgTranslationX:F

.field private mBgTranslationY:F

.field private final mBubbleBitmapSize:I

.field private final mBubbleElevation:I

.field private final mBubbleIconTopPadding:F

.field private final mBubbleSize:I

.field private final mCornerRadius:F

.field private mDotCenter:[F

.field private mDotColor:I

.field private final mFloatingBackgroundColor:I

.field private final mFlyoutElevation:I

.field private final mFlyoutPadding:I

.field private final mFlyoutSpaceFromBubble:I

.field private final mFlyoutTextContainer:Landroid/view/ViewGroup;

.field private mFlyoutToDotHeightDelta:F

.field private mFlyoutToDotWidthDelta:F

.field private final mLeftTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

.field private final mMessageText:Landroid/widget/TextView;

.field private final mNewDotRadius:F

.field private final mNewDotSize:F

.field private mOnHide:Ljava/lang/Runnable;

.field private final mOriginalDotSize:F

.field private mPercentStillFlyout:F

.field private mPercentTransitionedToDot:F

.field private final mPointerSize:I

.field private mRestingTranslationX:F

.field private final mRightTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

.field private final mSenderAvatar:Landroid/widget/ImageView;

.field private final mSenderText:Landroid/widget/TextView;

.field private mTranslationXWhenDot:F

.field private mTranslationYWhenDot:F

.field private final mTriangleOutline:Landroid/graphics/Outline;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 146
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgPaint:Landroid/graphics/Paint;

    .line 85
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    .line 101
    new-instance v2, Landroid/graphics/Outline;

    invoke-direct {v2}, Landroid/graphics/Outline;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTriangleOutline:Landroid/graphics/Outline;

    .line 104
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgRect:Landroid/graphics/RectF;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 111
    iput v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    const/4 v3, 0x0

    .line 112
    iput v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    .line 118
    iput v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutToDotWidthDelta:F

    .line 119
    iput v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutToDotHeightDelta:F

    .line 122
    iput v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTranslationXWhenDot:F

    .line 123
    iput v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTranslationYWhenDot:F

    .line 135
    iput v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mRestingTranslationX:F

    .line 147
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v3, Lcom/android/systemui/R$layout;->bubble_flyout:I

    invoke-virtual {p1, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 149
    sget p1, Lcom/android/systemui/R$id;->bubble_flyout_text_container:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutTextContainer:Landroid/view/ViewGroup;

    .line 150
    sget p1, Lcom/android/systemui/R$id;->bubble_flyout_name:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    .line 151
    sget p1, Lcom/android/systemui/R$id;->bubble_flyout_avatar:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    .line 152
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutTextContainer:Landroid/view/ViewGroup;

    sget v3, Lcom/android/systemui/R$id;->bubble_flyout_text:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    .line 154
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 155
    sget v3, Lcom/android/systemui/R$dimen;->bubble_flyout_padding_x:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutPadding:I

    .line 156
    sget v3, Lcom/android/systemui/R$dimen;->bubble_flyout_space_from_bubble:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutSpaceFromBubble:I

    .line 157
    sget v3, Lcom/android/systemui/R$dimen;->bubble_flyout_pointer_size:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPointerSize:I

    .line 159
    sget v3, Lcom/android/systemui/R$dimen;->individual_bubble_size:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBubbleSize:I

    .line 160
    sget v3, Lcom/android/systemui/R$dimen;->bubble_bitmap_size:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBubbleBitmapSize:I

    .line 161
    iget v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBubbleSize:I

    sub-int/2addr v4, v3

    int-to-float v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBubbleIconTopPadding:F

    .line 163
    sget v3, Lcom/android/systemui/R$dimen;->bubble_elevation:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBubbleElevation:I

    .line 164
    sget v3, Lcom/android/systemui/R$dimen;->bubble_flyout_elevation:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutElevation:I

    .line 166
    iget p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBubbleBitmapSize:I

    int-to-float p1, p1

    const v3, 0x3e6978d5    # 0.228f

    mul-float/2addr p1, v3

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mOriginalDotSize:F

    mul-float/2addr p1, v2

    div-float/2addr p1, v4

    .line 167
    iput p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mNewDotRadius:F

    mul-float/2addr p1, v4

    .line 168
    iput p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mNewDotSize:F

    .line 170
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 174
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFloatingBackgroundColor:I

    .line 175
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mCornerRadius:F

    .line 176
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 179
    iget p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPointerSize:I

    invoke-virtual {p0, p1, v2, p1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 180
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 181
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 182
    iget p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutElevation:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    .line 183
    new-instance p1, Lcom/android/systemui/bubbles/BubbleFlyoutView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/bubbles/BubbleFlyoutView$1;-><init>(Lcom/android/systemui/bubbles/BubbleFlyoutView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 191
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 193
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFloatingBackgroundColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPointerSize:I

    int-to-float v3, v1

    int-to-float v1, v1

    .line 196
    invoke-static {v3, v1, v0}, Lcom/android/systemui/recents/TriangleShape;->createHorizontal(FFZ)Lcom/android/systemui/recents/TriangleShape;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mLeftTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    .line 198
    iget v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPointerSize:I

    invoke-virtual {p1, v2, v2, v0, v0}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 199
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mLeftTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFloatingBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    iget v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPointerSize:I

    int-to-float v1, v0

    int-to-float v0, v0

    .line 202
    invoke-static {v1, v0, v2}, Lcom/android/systemui/recents/TriangleShape;->createHorizontal(FFZ)Lcom/android/systemui/recents/TriangleShape;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mRightTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    .line 204
    iget v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPointerSize:I

    invoke-virtual {p1, v2, v2, v0, v0}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 205
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mRightTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFloatingBackgroundColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :array_0
    .array-data 4
        0x10104e2
        0x1010571
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/bubbles/BubbleFlyoutView;Landroid/graphics/Outline;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method

.method private clampPercentage(F)F
    .locals 0

    const/4 p0, 0x0

    .line 360
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private getInterpolatedRadius()F
    .locals 3

    .line 473
    iget v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mNewDotRadius:F

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    mul-float/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mCornerRadius:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float/2addr p0, v2

    add-float/2addr v0, p0

    return v0
.end method

.method private getOutline(Landroid/graphics/Outline;)V
    .locals 4

    .line 436
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTriangleOutline:Landroid/graphics/Outline;

    invoke-virtual {v0}, Landroid/graphics/Outline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 438
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 439
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->getInterpolatedRadius()F

    move-result v1

    .line 440
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 442
    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    .line 445
    iget v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 446
    iget-object v0, p1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTriangleOutline:Landroid/graphics/Outline;

    iget-object v1, v1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 450
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 451
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgTranslationX:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgTranslationY:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 457
    iget v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    const v2, 0x3f7ae148    # 0.98f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    sub-float/2addr v1, v2

    const v2, 0x3ca3d70a    # 0.02f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    .line 462
    iget p0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mNewDotRadius:F

    mul-float v3, p0, v1

    mul-float/2addr p0, v1

    invoke-virtual {v0, v3, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 465
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 468
    :cond_1
    iget-object p0, p1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$setupFlyoutStartingAsDot$0(Landroid/graphics/PointF;ZLjava/lang/Runnable;)V
    .locals 6

    .line 267
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 268
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBubbleIconTopPadding:F

    goto :goto_0

    .line 271
    :cond_0
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBubbleSize:I

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutTextContainer:Landroid/view/ViewGroup;

    .line 272
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v1

    :goto_0
    add-float/2addr v0, v3

    .line 274
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 278
    iget-boolean v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    if-eqz v3, :cond_1

    .line 279
    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBubbleSize:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutSpaceFromBubble:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    goto :goto_1

    .line 280
    :cond_1
    iget v3, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutSpaceFromBubble:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    :goto_1
    iput v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mRestingTranslationX:F

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    move v4, v3

    goto :goto_2

    .line 284
    :cond_2
    iget v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mNewDotSize:F

    .line 285
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    iput v5, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutToDotWidthDelta:F

    .line 286
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    iput v5, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutToDotHeightDelta:F

    if-eqz p2, :cond_3

    goto :goto_3

    .line 289
    :cond_3
    iget p2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mOriginalDotSize:F

    div-float v3, p2, v1

    .line 290
    :goto_3
    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mDotCenter:[F

    const/4 v4, 0x0

    aget v4, v1, v4

    add-float/2addr p2, v4

    sub-float/2addr p2, v3

    .line 291
    iget p1, p1, Landroid/graphics/PointF;->y:F

    aget v1, v1, v2

    add-float/2addr p1, v1

    sub-float/2addr p1, v3

    .line 293
    iget v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mRestingTranslationX:F

    sub-float/2addr v1, p2

    sub-float/2addr v0, p1

    neg-float p1, v1

    .line 296
    iput p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTranslationXWhenDot:F

    neg-float p1, v0

    .line 297
    iput p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTranslationYWhenDot:F

    if-eqz p3, :cond_4

    .line 299
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void
.end method

.method private renderBackground(Landroid/graphics/Canvas;)V
    .locals 8

    .line 370
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutToDotWidthDelta:F

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 371
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutToDotHeightDelta:F

    iget v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 372
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->getInterpolatedRadius()F

    move-result v2

    .line 375
    iget v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTranslationXWhenDot:F

    iget v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgTranslationX:F

    .line 376
    iget v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTranslationYWhenDot:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgTranslationY:F

    .line 383
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPointerSize:I

    int-to-float v5, v4

    iget v6, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    mul-float/2addr v5, v6

    int-to-float v4, v4

    mul-float/2addr v4, v6

    sub-float v4, v0, v4

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 389
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    iget v5, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    iget v6, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFloatingBackgroundColor:I

    .line 391
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mDotColor:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 390
    invoke-virtual {v4, v5, v6, v7}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 389
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 393
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 394
    iget v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgTranslationX:F

    iget v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgTranslationY:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 395
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->renderPointerTriangle(Landroid/graphics/Canvas;FF)V

    .line 396
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 397
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private renderPointerTriangle(Landroid/graphics/Canvas;FF)V
    .locals 4

    .line 403
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 407
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPointerSize:I

    int-to-float v3, v2

    mul-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    mul-float/2addr v0, v1

    .line 412
    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    int-to-float v1, v2

    sub-float/2addr p2, v1

    add-float/2addr v0, p2

    :goto_1
    div-float/2addr p3, v3

    .line 417
    iget p2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPointerSize:I

    int-to-float p2, p2

    div-float/2addr p2, v3

    sub-float/2addr p3, p2

    .line 421
    iget-boolean p2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mLeftTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mRightTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    .line 422
    :goto_2
    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x437f0000    # 255.0f

    .line 423
    iget v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    .line 424
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 428
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTriangleOutline:Landroid/graphics/Outline;

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/ShapeDrawable;->getOutline(Landroid/graphics/Outline;)V

    .line 429
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTriangleOutline:Landroid/graphics/Outline;

    float-to-int p2, v0

    float-to-int p3, p3

    invoke-virtual {p0, p2, p3}, Landroid/graphics/Outline;->offset(II)V

    .line 431
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method getRestingTranslationX()F
    .locals 0

    .line 355
    iget p0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mRestingTranslationX:F

    return p0
.end method

.method hideFlyout()V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mOnHide:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 311
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 312
    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mOnHide:Ljava/lang/Runnable;

    :cond_0
    const/16 v0, 0x8

    .line 315
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$setupFlyoutStartingAsDot$0$BubbleFlyoutView(Landroid/graphics/PointF;ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->lambda$setupFlyoutStartingAsDot$0(Landroid/graphics/PointF;ZLjava/lang/Runnable;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->renderBackground(Landroid/graphics/Canvas;)V

    .line 211
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 212
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method setCollapsePercent(F)V
    .locals 2

    .line 323
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 327
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    sub-float/2addr v1, p1

    .line 328
    iput v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    .line 332
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    mul-float/2addr p1, v0

    .line 333
    iget v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    const/high16 v1, 0x3f400000    # 0.75f

    sub-float/2addr v0, v1

    const/high16 v1, 0x3e800000    # 0.25f

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->clampPercentage(F)F

    move-result v0

    .line 337
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 338
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 340
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 341
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 343
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 344
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 347
    iget p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutElevation:I

    int-to-float v0, p1

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBubbleElevation:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    .line 350
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method setupFlyoutStartingAsDot(Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;Landroid/graphics/PointF;FZILjava/lang/Runnable;Ljava/lang/Runnable;[FZ)V
    .locals 4

    .line 227
    iget-object v0, p1, Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;->senderAvatar:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 228
    iget-boolean v3, p1, Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;->isGroupChat:Z

    if-eqz v3, :cond_0

    .line 229
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTranslationX(F)V

    :goto_0
    const v0, 0x3f19999a    # 0.6f

    mul-float/2addr p3, v0

    float-to-int p3, p3

    .line 238
    iget v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutPadding:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    .line 242
    iget-object v0, p1, Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;->senderName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 244
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;->senderName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    :goto_1
    iput-boolean p4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    .line 251
    iput p5, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mDotColor:I

    .line 252
    iput-object p7, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mOnHide:Ljava/lang/Runnable;

    .line 253
    iput-object p8, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mDotCenter:[F

    const/high16 p4, 0x3f800000    # 1.0f

    .line 255
    invoke-virtual {p0, p4}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->setCollapsePercent(F)V

    .line 260
    iget-object p4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 261
    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    new-instance p1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleFlyoutView$MmTh2kLTzOgAqdKgn0YGS6zixjU;

    invoke-direct {p1, p0, p2, p9, p6}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleFlyoutView$MmTh2kLTzOgAqdKgn0YGS6zixjU;-><init>(Lcom/android/systemui/bubbles/BubbleFlyoutView;Landroid/graphics/PointF;ZLjava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
