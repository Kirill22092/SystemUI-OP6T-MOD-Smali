.class public Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Lcom/oneplus/lib/app/appcompat/DecorContentParent;
.implements Lcom/oneplus/support/core/view/NestedScrollingParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;,
        Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final ATTRS:[I


# instance fields
.field private final ACTION_BAR_ANIMATE_DELAY:I

.field private mActionBarHeight:I

.field mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

.field private mActionBarVisibilityCallback:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;

.field private final mAddActionBarHideOffset:Ljava/lang/Runnable;

.field mAnimatingForFling:Z

.field private final mBaseContentInsets:Landroid/graphics/Rect;

.field private final mBaseInnerInsets:Landroid/graphics/Rect;

.field private mContent:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

.field private final mContentInsets:Landroid/graphics/Rect;

.field mCurrentActionBarTopAnimator:Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

.field private mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

.field private mFlingEstimator:Lcom/oneplus/support/core/widget/ScrollerCompat;

.field private mHasNonEmbeddedTabs:Z

.field private mHideOnContentScroll:Z

.field private mHideOnContentScrollReference:I

.field private mIgnoreWindowContentOverlay:Z

.field private final mInnerInsets:Landroid/graphics/Rect;

.field private final mLastBaseContentInsets:Landroid/graphics/Rect;

.field private final mLastInnerInsets:Landroid/graphics/Rect;

.field private mLastSystemUiVisibility:I

.field private mOverlayMode:Z

.field private final mParentHelper:Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

.field private final mRemoveActionBarHideOffset:Ljava/lang/Runnable;

.field final mTopAnimatorListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

.field private mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

.field private mWindowVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 107
    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10102eb
        0x1010059
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 41
    iput p2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 60
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 61
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 62
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 63
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 64
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 65
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    const/16 p2, 0x258

    .line 69
    iput p2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->ACTION_BAR_ANIMATE_DELAY:I

    .line 75
    new-instance p2, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$1;

    invoke-direct {p2, p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$1;-><init>(Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;)V

    iput-object p2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mTopAnimatorListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

    .line 90
    new-instance p2, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$2;

    invoke-direct {p2, p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$2;-><init>(Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;)V

    iput-object p2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    .line 98
    new-instance p2, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$3;

    invoke-direct {p2, p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$3;-><init>(Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;)V

    iput-object p2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    .line 120
    invoke-direct {p0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 122
    new-instance p1, Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

    invoke-direct {p1, p0}, Lcom/oneplus/support/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mParentHelper:Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

    return-void
.end method

.method private addActionBarHideOffset()V
    .locals 0

    .line 577
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 578
    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 1

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;

    const/4 p1, 0x1

    if-eqz p3, :cond_0

    .line 242
    iget p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-eq p3, v0, :cond_0

    .line 244
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move p3, p1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p4, :cond_1

    .line 246
    iget p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-eq p4, v0, :cond_1

    .line 248
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move p3, p1

    :cond_1
    if-eqz p6, :cond_2

    .line 250
    iget p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p6, p2, Landroid/graphics/Rect;->right:I

    if-eq p4, p6, :cond_2

    .line 252
    iput p6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move p3, p1

    :cond_2
    if-eqz p5, :cond_3

    .line 254
    iget p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-eq p4, p2, :cond_3

    .line 256
    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_3
    move p1, p3

    :goto_1
    return p1
.end method

.method private getDecorToolbar(Landroid/view/View;)Lcom/oneplus/lib/widget/actionbar/DecorToolbar;
    .locals 2

    .line 518
    instance-of p0, p1, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz p0, :cond_0

    .line 519
    check-cast p1, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    return-object p1

    .line 520
    :cond_0
    instance-of p0, p1, Lcom/oneplus/lib/widget/actionbar/Toolbar;

    if-eqz p0, :cond_1

    .line 521
    check-cast p1, Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getSupportWrap()Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    move-result-object p0

    return-object p0

    .line 523
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t make a decor toolbar out of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    .line 126
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->ATTRS:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 127
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarHeight:I

    const/4 v2, 0x1

    .line 128
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    .line 129
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 130
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x13

    if-ge v0, v3, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    .line 135
    invoke-static {p1}, Lcom/oneplus/support/core/widget/ScrollerCompat;->create(Landroid/content/Context;)Lcom/oneplus/support/core/widget/ScrollerCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mFlingEstimator:Lcom/oneplus/support/core/widget/ScrollerCompat;

    return-void
.end method

.method private postAddActionBarHideOffset()V
    .locals 3

    .line 567
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 568
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postRemoveActionBarHideOffset()V
    .locals 3

    .line 562
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 563
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private removeActionBarHideOffset()V
    .locals 0

    .line 572
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 573
    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private shouldHideActionBarOnFling(FF)Z
    .locals 9

    .line 582
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mFlingEstimator:Lcom/oneplus/support/core/widget/ScrollerCompat;

    float-to-int v4, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    invoke-virtual/range {v0 .. v8}, Lcom/oneplus/support/core/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 583
    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mFlingEstimator:Lcom/oneplus/support/core/widget/ScrollerCompat;

    invoke-virtual {p1}, Lcom/oneplus/support/core/widget/ScrollerCompat;->getFinalY()I

    move-result p1

    .line 584
    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 307
    instance-of p0, p1, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 425
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 426
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    if-nez v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-static {v2}, Lcom/oneplus/support/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v2

    add-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 430
    :goto_0
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    .line 431
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 430
    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 432
    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 8

    .line 263
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->pullChildren()V

    .line 265
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    .line 270
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    .line 272
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 273
    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-static {p0, p1, v1}, Lcom/oneplus/lib/widget/util/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 274
    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 276
    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move v0, v1

    :cond_0
    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_1
    return v1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->generateDefaultLayoutParams()Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;
    .locals 1

    .line 292
    new-instance p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 302
    new-instance p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;
    .locals 1

    .line 297
    new-instance v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getActionBarHideOffset()I
    .locals 0

    .line 543
    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result p0

    float-to-int p0, p0

    neg-int p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getNestedScrollAxes()I
    .locals 0

    .line 506
    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mParentHelper:Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

    invoke-virtual {p0}, Lcom/oneplus/support/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result p0

    return p0
.end method

.method haltActionBarHideOffsetAnimations()V
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 555
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 556
    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    if-eqz p0, :cond_0

    .line 557
    invoke-virtual {p0}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->cancel()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 200
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 201
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 202
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 140
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 141
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 399
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 401
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    .line 402
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 404
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    .line 405
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_1

    .line 408
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 409
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 410
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;

    .line 412
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 413
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 415
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, p2

    .line 416
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, p3

    add-int/2addr v1, v3

    add-int/2addr v2, v0

    .line 418
    invoke-virtual {p5, v3, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 312
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->pullChildren()V

    .line 321
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 322
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;

    .line 323
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    .line 324
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    .line 323
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 325
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    .line 326
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v0

    .line 325
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 327
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    .line 328
    invoke-static {v3}, Lcom/oneplus/support/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    .line 327
    invoke-static {v2, v3}, Lcom/oneplus/lib/widget/util/ViewUtils;->combineMeasuredStates(II)I

    move-result v3

    .line 330
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v4

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v4, :cond_1

    .line 336
    iget v5, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarHeight:I

    .line 337
    iget-boolean v6, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    if-eqz v6, :cond_3

    .line 338
    iget-object v6, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v6}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 341
    iget v6, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarHeight:I

    add-int/2addr v5, v6

    goto :goto_1

    .line 344
    :cond_1
    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    .line 347
    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    goto :goto_1

    :cond_2
    move v5, v2

    .line 354
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 355
    iget-object v6, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 356
    iget-boolean v6, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v6, :cond_4

    if-nez v4, :cond_4

    .line 357
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v5

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 358
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 360
    :cond_4
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v5

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 361
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 363
    :goto_2
    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mContent:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    iget-object v8, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 365
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 369
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 371
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mContent:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->dispatchFitSystemWindows(Landroid/graphics/Rect;)V

    .line 374
    :cond_5
    iget-object v6, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mContent:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move v7, p1

    move v9, p2

    invoke-virtual/range {v5 .. v10}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 375
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mContent:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;

    .line 376
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mContent:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    .line 377
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 376
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 378
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mContent:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    .line 379
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v2

    .line 378
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 380
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mContent:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    .line 381
    invoke-static {v2}, Lcom/oneplus/support/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v2

    .line 380
    invoke-static {v3, v2}, Lcom/oneplus/lib/widget/util/ViewUtils;->combineMeasuredStates(II)I

    move-result v2

    .line 384
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 385
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 388
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 389
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 392
    invoke-static {v1, p1, v2}, Lcom/oneplus/support/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result p1

    shl-int/lit8 v1, v2, 0x10

    .line 393
    invoke-static {v0, p2, v1}, Lcom/oneplus/support/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result p2

    .line 391
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    .line 482
    iget-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz p1, :cond_2

    if-nez p4, :cond_0

    goto :goto_1

    .line 485
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->shouldHideActionBarOnFling(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 486
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->addActionBarHideOffset()V

    goto :goto_0

    .line 488
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->removeActionBarHideOffset()V

    :goto_0
    const/4 p1, 0x1

    .line 490
    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mAnimatingForFling:Z

    return p1

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    .line 462
    iget p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    .line 463
    iget p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mParentHelper:Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/support/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 452
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    .line 453
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 454
    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz p0, :cond_0

    .line 455
    invoke-interface {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStarted()V

    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_1

    .line 443
    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    iget-boolean p0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    .line 468
    iget-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mAnimatingForFling:Z

    if-nez p1, :cond_1

    .line 469
    iget p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 470
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->postRemoveActionBarHideOffset()V

    goto :goto_0

    .line 472
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->postAddActionBarHideOffset()V

    .line 475
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz p0, :cond_2

    .line 476
    invoke-interface {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStopped()V

    :cond_2
    return-void
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 4

    .line 206
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 207
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowSystemUiVisibilityChanged(I)V

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->pullChildren()V

    .line 210
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    xor-int/2addr v0, p1

    .line 211
    iput p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_2

    move v2, v3

    .line 214
    :cond_2
    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz p1, :cond_5

    xor-int/lit8 v3, v2, 0x1

    .line 218
    invoke-interface {p1, v3}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;->enableContentAnimations(Z)V

    if-nez v1, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    .line 220
    :cond_3
    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {p1}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;->hideForSystem()V

    goto :goto_2

    .line 219
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {p1}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;->showForSystem()V

    :cond_5
    :goto_2
    and-int/lit16 p1, v0, 0x100

    if-eqz p1, :cond_6

    .line 223
    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz p1, :cond_6

    .line 224
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_6
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 231
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 232
    iput p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 233
    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz p0, :cond_0

    .line 234
    invoke-interface {p0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method pullChildren()V
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mContent:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    if-nez v0, :cond_0

    .line 511
    sget v0, Lcom/oneplus/commonctrl/R$id;->action_bar_activity_content:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mContent:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    .line 512
    sget v0, Lcom/oneplus/commonctrl/R$id;->action_bar_container:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    .line 513
    sget v0, Lcom/oneplus/commonctrl/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->getDecorToolbar(Landroid/view/View;)Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    :cond_0
    return-void
.end method

.method public setActionBarHideOffset(I)V
    .locals 1

    .line 547
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 548
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    .line 549
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 550
    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    neg-int p1, p1

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/oneplus/support/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
