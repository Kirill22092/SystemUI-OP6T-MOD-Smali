.class public Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;
.super Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
.source "OPFloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/button/OPFloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<",
        "Lcom/oneplus/lib/widget/button/OPFloatingActionButton;",
        ">;"
    }
.end annotation


# instance fields
.field private mAutoHideEnabled:Z

.field private mInternalAutoHideListener:Lcom/oneplus/lib/widget/button/OPFloatingActionButton$OnVisibilityChangedListener;

.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 373
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x1

    .line 374
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->mAutoHideEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 378
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 379
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->OpFloatingActionButton_Behavior_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 381
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OpFloatingActionButton_Behavior_Layout_op_behavior_autoHide:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->mAutoHideEnabled:Z

    .line 384
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static isBottomSheet(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private offsetIfNeeded(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)V
    .locals 5

    .line 555
    invoke-static {p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->access$000(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 557
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    if-lez v0, :cond_5

    .line 559
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 563
    invoke-virtual {p2}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 565
    iget v1, p0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 566
    :cond_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-gt v1, v2, :cond_1

    .line 568
    iget v1, p0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 570
    :goto_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p1, v4

    if-lt v2, p1, :cond_2

    .line 572
    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 573
    :cond_2
    invoke-virtual {p2}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-gt p1, v0, :cond_3

    .line 575
    iget p0, p0, Landroid/graphics/Rect;->top:I

    neg-int v3, p0

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 579
    invoke-static {p2, v3}, Lcom/oneplus/support/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    :cond_4
    if-eqz v1, :cond_5

    .line 582
    invoke-static {p2, v1}, Lcom/oneplus/support/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    :cond_5
    return-void
.end method

.method private shouldUpdateVisibility(Landroid/view/View;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Z
    .locals 2

    .line 448
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 449
    iget-boolean p0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->mAutoHideEnabled:Z

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    .line 453
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getAnchorId()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    .line 460
    :cond_1
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getUserSetVisibility()I

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private updateFabVisibilityForAppBarLayout(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Z
    .locals 2

    .line 470
    invoke-direct {p0, p2, p3}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->shouldUpdateVisibility(Landroid/view/View;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->mTmpRect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 475
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->mTmpRect:Landroid/graphics/Rect;

    .line 479
    :cond_1
    iget-object p0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->mTmpRect:Landroid/graphics/Rect;

    .line 480
    invoke-static {p1, p2, p0}, Lcom/oneplus/lib/design/widget/Utils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 482
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getMinimumHeightForVisibleOverlappingContent()I

    move-result p1

    if-gt p0, p1, :cond_2

    .line 485
    invoke-virtual {p3, v1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->hide(Z)V

    goto :goto_0

    .line 489
    :cond_2
    invoke-virtual {p3, v1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->show(Z)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private updateFabVisibilityForBottomSheet(Landroid/view/View;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Z
    .locals 2

    .line 496
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->shouldUpdateVisibility(Landroid/view/View;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 500
    :cond_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 501
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, p0

    if-ge p1, v1, :cond_1

    .line 503
    invoke-virtual {p2, v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->hide(Z)V

    goto :goto_0

    .line 506
    :cond_1
    invoke-virtual {p2, v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->show(Z)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public bridge synthetic getInsetDodgeRect(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 0

    .line 365
    check-cast p2, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->getInsetDodgeRect(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public getInsetDodgeRect(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;Landroid/graphics/Rect;)Z
    .locals 3

    .line 541
    invoke-static {p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->access$000(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Landroid/graphics/Rect;

    move-result-object p0

    .line 542
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLeft()I

    move-result p1

    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    .line 543
    invoke-virtual {p2}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 544
    invoke-virtual {p2}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 545
    invoke-virtual {p2}, Landroid/widget/ImageView;->getBottom()I

    move-result p2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p0

    .line 542
    invoke-virtual {p3, p1, v0, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p0, 0x1

    return p0
.end method

.method public onAttachedToLayoutParams(Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;)V
    .locals 0

    .line 412
    iget p0, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-nez p0, :cond_0

    const/16 p0, 0x50

    .line 415
    iput p0, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    :cond_0
    return-void
.end method

.method public bridge synthetic onDependentViewChanged(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 365
    check-cast p2, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->onDependentViewChanged(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public onDependentViewChanged(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;Landroid/view/View;)Z
    .locals 1

    .line 422
    instance-of v0, p3, Lcom/oneplus/lib/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    .line 425
    check-cast p3, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-direct {p0, p1, p3, p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->updateFabVisibilityForAppBarLayout(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Z

    goto :goto_0

    .line 426
    :cond_0
    invoke-static {p3}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->isBottomSheet(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 427
    invoke-direct {p0, p3, p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->updateFabVisibilityForBottomSheet(Landroid/view/View;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Z

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    .line 365
    check-cast p2, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;I)Z

    move-result p0

    return p0
.end method

.method public onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;I)Z
    .locals 5

    .line 515
    invoke-virtual {p1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 516
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 517
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 518
    instance-of v4, v3, Lcom/oneplus/lib/design/widget/AppBarLayout;

    if-eqz v4, :cond_0

    .line 519
    check-cast v3, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-direct {p0, p1, v3, p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->updateFabVisibilityForAppBarLayout(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 523
    :cond_0
    invoke-static {v3}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->isBottomSheet(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 524
    invoke-direct {p0, v3, p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->updateFabVisibilityForBottomSheet(Landroid/view/View;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 530
    :cond_2
    :goto_1
    invoke-virtual {p1, p2, p3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 532
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->offsetIfNeeded(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)V

    const/4 p0, 0x1

    return p0
.end method

.method setInternalAutoHideListener(Lcom/oneplus/lib/widget/button/OPFloatingActionButton$OnVisibilityChangedListener;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->mInternalAutoHideListener:Lcom/oneplus/lib/widget/button/OPFloatingActionButton$OnVisibilityChangedListener;

    return-void
.end method
