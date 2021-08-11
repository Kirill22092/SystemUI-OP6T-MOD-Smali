.class public Lcom/android/systemui/globalactions/GlobalActionsFlatLayout;
.super Lcom/android/systemui/globalactions/GlobalActionsLayout;
.source "GlobalActionsFlatLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/globalactions/GlobalActionsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected addToListView(Landroid/view/View;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->addToListView(Landroid/view/View;Z)V

    return-void
.end method

.method protected getAnimationDistance()F
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsFlatLayout;->getGridItemSize()F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public getAnimationOffsetX()F
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsFlatLayout;->getAnimationDistance()F

    move-result p0

    return p0
.end method

.method protected getBackgroundDrawable(I)Lcom/android/systemui/HardwareBgDrawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getGridItemSize()F
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->global_actions_grid_item_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getListView()Landroid/view/ViewGroup;

    move-result-object p0

    const/4 p1, 0x0

    move p2, p1

    move p3, p2

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    const/4 p5, 0x1

    if-ge p2, p4, :cond_3

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    instance-of v0, p4, Lcom/android/systemui/globalactions/GlobalActionsItem;

    if-eqz v0, :cond_2

    check-cast p4, Lcom/android/systemui/globalactions/GlobalActionsItem;

    if-nez p3, :cond_1

    invoke-virtual {p4}, Lcom/android/systemui/globalactions/GlobalActionsItem;->isTruncated()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    move p3, p1

    goto :goto_2

    :cond_1
    :goto_1
    move p3, p5

    :cond_2
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_5

    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_5

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    instance-of p3, p2, Lcom/android/systemui/globalactions/GlobalActionsItem;

    if-eqz p3, :cond_4

    check-cast p2, Lcom/android/systemui/globalactions/GlobalActionsItem;

    invoke-virtual {p2, p5}, Lcom/android/systemui/globalactions/GlobalActionsItem;->setMarquee(Z)V

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method protected removeAllListViews()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/MultiListLayout;->removeAllListViews()V

    return-void
.end method

.method protected shouldReverseListItems()Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getCurrentRotation()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getCurrentLayoutDirection()I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_2

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x2

    if-ne v0, p0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method
