.class public Lcom/android/systemui/qs/QSContainerImpl;
.super Landroid/widget/FrameLayout;
.source "QSContainerImpl.java"


# static fields
.field private static final BACKGROUND_BOTTOM:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/android/systemui/qs/QSContainerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final BACKGROUND_SPRING:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;


# instance fields
.field private mAnimateBottomOnNextLayout:Z

.field private mBackground:Landroid/view/View;

.field private mBackgroundBottom:I

.field private mBackgroundGradient:Landroid/view/View;

.field private mContentPaddingEnd:I

.field private mContentPaddingStart:I

.field private mDragHandle:Landroid/view/View;

.field private mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

.field private mHeightOverride:I

.field private mLastUpdateOrientation:I

.field private mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

.field private mQSDetail:Landroid/view/View;

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQSPanelContainer:Landroid/view/View;

.field private mQsDisabled:Z

.field private mQsExpansion:F

.field private mSideMargins:I

.field private final mSizePoint:Landroid/graphics/Point;

.field private mStatusBarBackground:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Lcom/android/systemui/qs/QSContainerImpl$1;

    const-string v1, "backgroundBottom"

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSContainerImpl$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/QSContainerImpl;->BACKGROUND_BOTTOM:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 60
    new-instance v0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    const v1, 0x44bb8000    # 1500.0f

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    sput-object v0, Lcom/android/systemui/qs/QSContainerImpl;->BACKGROUND_SPRING:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    const/4 p1, -0x1

    .line 63
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundBottom:I

    .line 64
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    .line 79
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentPaddingStart:I

    .line 80
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentPaddingEnd:I

    .line 84
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mLastUpdateOrientation:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSContainerImpl;)F
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getBackgroundBottom()F

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSContainerImpl;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setBackgroundBottom(I)V

    return-void
.end method

.method private getBackgroundBottom()F
    .locals 2

    .line 130
    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundBottom:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 131
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_0
    int-to-float p0, v0

    return p0
.end method

.method private getDisplayHeight()I
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_0

    .line 393
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 395
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    return p0
.end method

.method private synthetic lambda$onFinishInflate$0(Ljava/lang/Boolean;)V
    .locals 0

    .line 105
    iget-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeaderQsPanel()Lcom/android/systemui/qs/QuickQSPanel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 106
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mAnimateBottomOnNextLayout:Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$onFinishInflate$1(Ljava/lang/Boolean;)V
    .locals 0

    .line 110
    iget-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mAnimateBottomOnNextLayout:Z

    :cond_0
    return-void
.end method

.method private setBackgroundBottom(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundBottom:I

    .line 126
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBottom(I)V

    return-void
.end method

.method private setBackgroundGradientVisibility(Landroid/content/res/Configuration;)V
    .locals 3

    .line 348
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 349
    iget-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundGradient:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 350
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mStatusBarBackground:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 352
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundGradient:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsDisabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 353
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mStatusBarBackground:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private updateBackgroundBottom(IZ)V
    .locals 3

    .line 327
    sget-object v0, Lcom/android/systemui/qs/QSContainerImpl;->BACKGROUND_BOTTOM:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-static {p0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    move-result-object v1

    .line 328
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->isPropertyAnimating(Landroidx/dynamicanimation/animation/FloatPropertyCompat;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    .line 335
    invoke-virtual {v0, p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->setValue(Ljava/lang/Object;F)V

    goto :goto_1

    .line 332
    :cond_1
    :goto_0
    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    move-result p2

    invoke-virtual {v0, p0, p2}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->setValue(Ljava/lang/Object;F)V

    int-to-float p0, p1

    .line 333
    sget-object p1, Lcom/android/systemui/qs/QSContainerImpl;->BACKGROUND_SPRING:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v1, v0, p0, p1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    invoke-virtual {v1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->start()V

    :goto_1
    return-void
.end method

.method private updatePaddingsAndMargins()V
    .locals 6

    const/4 v0, 0x0

    .line 364
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 365
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 366
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mStatusBarBackground:Landroid/view/View;

    if-eq v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundGradient:Landroid/view/View;

    if-eq v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 371
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 372
    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSideMargins:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 373
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 374
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Landroid/view/View;

    if-ne v1, v2, :cond_1

    .line 376
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentPaddingStart:I

    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentPaddingEnd:I

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/qs/QSPanel;->setContentMargins(II)V

    goto :goto_1

    .line 377
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    if-ne v1, v2, :cond_2

    .line 380
    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentPaddingStart:I

    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentPaddingEnd:I

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setContentMargins(II)V

    goto :goto_1

    .line 382
    :cond_2
    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentPaddingStart:I

    .line 384
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentPaddingEnd:I

    .line 386
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 382
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private updateResources()V
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 266
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050218

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 268
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->op_notification_side_paddings:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSideMargins:I

    const/4 v0, 0x0

    .line 288
    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentPaddingStart:I

    .line 289
    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentPaddingEnd:I

    .line 290
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updatePaddingsAndMargins()V

    .line 293
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->setBackgroundGradientVisibility(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private updateThemeColor()V
    .locals 3

    .line 150
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isREDVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 152
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$drawable;->op_qs_red_all:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 153
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTop(I)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundBottom:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBottom(I)V

    .line 156
    sget v0, Lcom/android/systemui/R$id;->op_qs_drag_handle:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$color;->op_turquoise:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x9

    .line 164
    invoke-static {v0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    .line 165
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method protected calculateContainerHeight()I
    .locals 3

    .line 341
    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 342
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    goto :goto_1

    .line 344
    :cond_1
    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 343
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 344
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    add-int/2addr p0, v0

    :goto_1
    return p0
.end method

.method public disable(IIZ)V
    .locals 0

    const/4 p1, 0x1

    and-int/2addr p2, p1

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p3

    .line 249
    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsDisabled:Z

    if-ne p1, p2, :cond_1

    return-void

    .line 250
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsDisabled:Z

    .line 251
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setBackgroundGradientVisibility(Landroid/content/res/Configuration;)V

    .line 252
    iget-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsDisabled:Z

    if-eqz p0, :cond_2

    const/16 p3, 0x8

    :cond_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0

    return-void
.end method

.method public synthetic lambda$onFinishInflate$0$QSContainerImpl(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->lambda$onFinishInflate$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$1$QSContainerImpl(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->lambda$onFinishInflate$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 138
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 139
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setBackgroundGradientVisibility(Landroid/content/res/Configuration;)V

    .line 140
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateResources()V

    .line 141
    iget-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Point;->set(II)V

    .line 143
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateThemeColor()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 93
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 94
    sget v0, Lcom/android/systemui/R$id;->quick_settings_panel:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 95
    sget v0, Lcom/android/systemui/R$id;->expanded_qs_scroll_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Landroid/view/View;

    .line 96
    sget v0, Lcom/android/systemui/R$id;->qs_detail:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetail:Landroid/view/View;

    .line 97
    sget v0, Lcom/android/systemui/R$id;->header:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 98
    sget v0, Lcom/android/systemui/R$id;->qs_customize:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 99
    sget v0, Lcom/android/systemui/R$id;->qs_drag_handle_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mDragHandle:Landroid/view/View;

    .line 100
    sget v0, Lcom/android/systemui/R$id;->quick_settings_background:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    .line 101
    sget v0, Lcom/android/systemui/R$id;->quick_settings_status_bar_background:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mStatusBarBackground:Landroid/view/View;

    .line 102
    sget v0, Lcom/android/systemui/R$id;->quick_settings_gradient_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundGradient:Landroid/view/View;

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateResources()V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeaderQsPanel()Lcom/android/systemui/qs/QuickQSPanel;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/-$$Lambda$QSContainerImpl$SmgcCxPvK9MpCttxm75WvXCaB3s;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/-$$Lambda$QSContainerImpl$SmgcCxPvK9MpCttxm75WvXCaB3s;-><init>(Lcom/android/systemui/qs/QSContainerImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setMediaVisibilityChangedListener(Ljava/util/function/Consumer;)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    new-instance v1, Lcom/android/systemui/qs/-$$Lambda$QSContainerImpl$671EqL2XSP9H1_W3SpTM-CiE58Y;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/-$$Lambda$QSContainerImpl$671EqL2XSP9H1_W3SpTM-CiE58Y;-><init>(Lcom/android/systemui/qs/QSContainerImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setMediaVisibilityChangedListener(Ljava/util/function/Consumer;)V

    const/4 v0, 0x2

    .line 116
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 118
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateThemeColor()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 235
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 236
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mAnimateBottomOnNextLayout:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion(Z)V

    const/4 p1, 0x0

    .line 237
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mAnimateBottomOnNextLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 180
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    .line 181
    iget v0, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-ge v0, v1, :cond_1

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 183
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 187
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getDisplayHeight()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, v2

    .line 188
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    if-eqz p2, :cond_2

    .line 190
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/android/systemui/R$dimen;->navigation_bar_height:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr v1, p2

    .line 193
    :cond_2
    sget-boolean p2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p2, :cond_3

    .line 194
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMeasure: measured QS-Container\'s max-height as "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", displayHeight="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getDisplayHeight()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", paddingBottom="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", topMargin="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bottomMargin="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "QS"

    .line 194
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_3
    iget p2, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    add-int/2addr p2, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p2, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p2, v2

    .line 201
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p1, p2, v2}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v2

    .line 203
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Landroid/view/View;

    const/high16 v4, -0x80000000

    .line 204
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 203
    invoke-virtual {v3, v2, v1}, Landroid/view/View;->measure(II)V

    .line 206
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p2

    .line 207
    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Landroid/view/View;

    .line 208
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    .line 209
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 210
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 209
    invoke-super {p0, v1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 213
    iget-object p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 214
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getDisplayHeight()I

    move-result p0

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 213
    invoke-virtual {p2, p1, p0}, Landroid/widget/LinearLayout;->measure(II)V

    return-void
.end method

.method public performClick()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setExpansion(F)V
    .locals 2

    .line 358
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    .line 359
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mDragHandle:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 360
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    return-void
.end method

.method public setHeightOverride(I)V
    .locals 0

    .line 304
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    .line 305
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    return-void
.end method

.method public updateExpansion()V
    .locals 1

    const/4 v0, 0x0

    .line 309
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion(Z)V

    return-void
.end method

.method public updateExpansion(Z)V
    .locals 3

    .line 313
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->calculateContainerHeight()I

    move-result v0

    .line 314
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setBottom(I)V

    .line 315
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetail:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBottom(I)V

    .line 317
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mDragHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v2, v0, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 319
    sget v1, Lcom/android/systemui/R$id;->qs_footer:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 320
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v2, v0, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 322
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTop(I)V

    .line 323
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->updateBackgroundBottom(IZ)V

    return-void
.end method

.method public updateResources(Landroid/content/res/Configuration;)V
    .locals 1

    .line 257
    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mLastUpdateOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_0

    .line 258
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mLastUpdateOrientation:I

    .line 259
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateResources()V

    :cond_0
    return-void
.end method
