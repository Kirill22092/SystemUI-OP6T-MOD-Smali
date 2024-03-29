.class public Lcom/google/android/material/tabbar/TabBarMenuView;
.super Landroid/widget/LinearLayout;
.source "TabBarMenuView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuView;


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DISABLED_STATE_SET:[I


# instance fields
.field private final activeItemMaxWidth:I

.field private final activeItemMinWidth:I

.field private badgeDrawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/BadgeDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private buttons:[Lcom/google/android/material/tabbar/TabBarItemView;

.field private final inactiveItemMaxWidth:I

.field private final inactiveItemMinWidth:I

.field private itemBackground:Landroid/graphics/drawable/Drawable;

.field private itemBackgroundRes:I

.field private final itemHeight:I

.field private itemHorizontalTranslationEnabled:Z

.field private itemIconSize:I

.field private itemIconTint:Landroid/content/res/ColorStateList;

.field private final itemPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/google/android/material/tabbar/TabBarItemView;",
            ">;"
        }
    .end annotation
.end field

.field private labelVisibilityMode:I

.field private mDisplayAnim:Z

.field private menu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private presenter:Lcom/google/android/material/tabbar/TabBarPresenter;

.field private selectedItemId:I

.field private selectedItemPosition:I

.field private final set:Landroidx/transition/TransitionSet;

.field private tempChildWidths:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a0

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/google/android/material/tabbar/TabBarMenuView;->CHECKED_STATE_SET:[I

    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/material/tabbar/TabBarMenuView;->DISABLED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/tabbar/TabBarMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 p2, 0xf

    invoke-direct {p1, p2}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->itemPool:Landroidx/core/util/Pools$Pool;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->selectedItemId:I

    iput p1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->selectedItemPosition:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->mDisplayAnim:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$dimen;->design_tab_bar_item_max_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->inactiveItemMaxWidth:I

    sget v2, Lcom/google/android/material/R$dimen;->design_tab_bar_item_min_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->inactiveItemMinWidth:I

    sget v2, Lcom/google/android/material/R$dimen;->design_tab_bar_active_item_max_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->activeItemMaxWidth:I

    sget v2, Lcom/google/android/material/R$dimen;->design_tab_bar_active_item_min_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->activeItemMinWidth:I

    sget v2, Lcom/google/android/material/R$dimen;->design_tab_bar_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->itemHeight:I

    const v1, 0x1010038

    invoke-virtual {p0, v1}, Lcom/google/android/material/tabbar/TabBarMenuView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    new-instance v1, Landroidx/transition/AutoTransition;

    invoke-direct {v1}, Landroidx/transition/AutoTransition;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->set:Landroidx/transition/TransitionSet;

    invoke-virtual {v1, p1}, Landroidx/transition/TransitionSet;->setOrdering(I)Landroidx/transition/TransitionSet;

    iget-object p1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->set:Landroidx/transition/TransitionSet;

    const-wide/16 v1, 0x73

    invoke-virtual {p1, v1, v2}, Landroidx/transition/TransitionSet;->setDuration(J)Landroidx/transition/TransitionSet;

    iget-object p1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->set:Landroidx/transition/TransitionSet;

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroidx/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/TransitionSet;

    iget-object p1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->set:Landroidx/transition/TransitionSet;

    new-instance v1, Lcom/google/android/material/internal/TextScale;

    invoke-direct {v1}, Lcom/google/android/material/internal/TextScale;-><init>()V

    invoke-virtual {p1, v1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    new-instance p1, Lcom/google/android/material/tabbar/TabBarMenuView$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/tabbar/TabBarMenuView$1;-><init>(Lcom/google/android/material/tabbar/TabBarMenuView;)V

    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->onClickListener:Landroid/view/View$OnClickListener;

    new-array p1, p2, [I

    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->tempChildWidths:[I

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/tabbar/TabBarMenuView;)Lcom/google/android/material/tabbar/TabBarPresenter;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->presenter:Lcom/google/android/material/tabbar/TabBarPresenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/tabbar/TabBarMenuView;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method

.method private getNewItem()Lcom/google/android/material/tabbar/TabBarItemView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->itemPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabbar/TabBarItemView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/material/tabbar/TabBarItemView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/material/tabbar/TabBarItemView;-><init>(Landroid/content/Context;)V

    :cond_0
    return-object v0
.end method

.method private isShifting(II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const/4 p1, 0x6

    if-le p2, p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private isValidId(I)Z
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private removeUnusedBadges()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->delete(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private setBadgeIfNeeded(Lcom/google/android/material/tabbar/TabBarItemView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/tabbar/TabBarMenuView;->isValidId(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, Lcom/google/android/material/tabbar/TabBarItemView;->setBadge(Lcom/google/android/material/badge/BadgeDrawable;)V

    :cond_1
    return-void
.end method

.method private validateMenuItemId(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/material/tabbar/TabBarMenuView;->isValidId(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid view id"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public buildMenuView(Z)V
    .locals 9

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->buttons:[Lcom/google/android/material/tabbar/TabBarItemView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->itemPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v5, v4}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/google/android/material/tabbar/TabBarItemView;->removeBadge()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    if-nez v0, :cond_2

    iput v1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->selectedItemId:I

    iput v1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->selectedItemPosition:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->buttons:[Lcom/google/android/material/tabbar/TabBarItemView;

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/tabbar/TabBarMenuView;->removeUnusedBadges()V

    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/material/tabbar/TabBarItemView;

    iput-object v0, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->buttons:[Lcom/google/android/material/tabbar/TabBarItemView;

    iget v0, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->labelVisibilityMode:I

    iget-object v2, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/google/android/material/tabbar/TabBarMenuView;->isShifting(II)Z

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$drawable;->op_tabbar_line_short:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$drawable;->op_tabbar_land_short:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$drawable;->op_tabbar_land_normal:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$drawable;->op_tabbar_land_large:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v4, :cond_6

    if-eq v2, v3, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$drawable;->op_tabbar_line_min_short:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$drawable;->op_tabbar_line_short:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$drawable;->op_tabbar_line_three:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$drawable;->op_tabbar_land_short:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1
    move v3, v1

    :goto_2
    iget-object v5, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v5

    if-ge v3, v5, :cond_b

    iget-object v5, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->presenter:Lcom/google/android/material/tabbar/TabBarPresenter;

    invoke-virtual {v5, v4}, Lcom/google/android/material/tabbar/TabBarPresenter;->setUpdateSuspended(Z)V

    iget-object v5, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v5, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->presenter:Lcom/google/android/material/tabbar/TabBarPresenter;

    invoke-virtual {v5, v1}, Lcom/google/android/material/tabbar/TabBarPresenter;->setUpdateSuspended(Z)V

    invoke-direct {p0}, Lcom/google/android/material/tabbar/TabBarMenuView;->getNewItem()Lcom/google/android/material/tabbar/TabBarItemView;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->buttons:[Lcom/google/android/material/tabbar/TabBarItemView;

    aput-object v5, v6, v3

    iget-object v6, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Lcom/google/android/material/tabbar/TabBarItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    iget v6, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->itemIconSize:I

    invoke-virtual {v5, v6}, Lcom/google/android/material/tabbar/TabBarItemView;->setIconSize(I)V

    iget-object v6, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_7

    invoke-virtual {v5, v6}, Lcom/google/android/material/tabbar/TabBarItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_7
    iget v6, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->itemBackgroundRes:I

    invoke-virtual {v5, v6}, Lcom/google/android/material/tabbar/TabBarItemView;->setItemBackground(I)V

    :goto_3
    invoke-virtual {v5, v0}, Lcom/google/android/material/tabbar/TabBarItemView;->setShifting(Z)V

    iget v6, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->labelVisibilityMode:I

    invoke-virtual {v5, v6}, Lcom/google/android/material/tabbar/TabBarItemView;->setLabelVisibilityMode(I)V

    invoke-virtual {v5, v3}, Lcom/google/android/material/tabbar/TabBarItemView;->setItemPosition(I)V

    if-eqz p1, :cond_8

    invoke-virtual {v5, v2}, Lcom/google/android/material/tabbar/TabBarItemView;->setLineDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v6, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->mDisplayAnim:Z

    invoke-virtual {v5, v6}, Lcom/google/android/material/tabbar/TabBarItemView;->setDisplayAnimation(Z)V

    iget-object v6, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v6, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v5, v6, v4}, Lcom/google/android/material/tabbar/TabBarItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    goto :goto_4

    :cond_8
    iget-object v6, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v6, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v5, v6, v1}, Lcom/google/android/material/tabbar/TabBarItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    :goto_4
    iget-object v6, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v6, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->selectedItemId:I

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v6, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    iget v7, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->selectedItemId:I

    if-ne v6, v7, :cond_9

    iput v3, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->selectedItemPosition:I

    :cond_9
    invoke-direct {p0, v5}, Lcom/google/android/material/tabbar/TabBarMenuView;->setBadgeIfNeeded(Lcom/google/android/material/tabbar/TabBarItemView;)V

    iget-object v6, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v6

    const/4 v7, 0x6

    const/4 v8, -0x2

    if-le v6, v7, :cond_a

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v4, :cond_a

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_a
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_b
    iget-object p1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result p1

    sub-int/2addr p1, v4

    iget v0, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->selectedItemPosition:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->selectedItemPosition:I

    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 9

    sget-object v0, Lcom/google/android/material/tabbar/TabBarMenuView;->DISABLED_STATE_SET:[I

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v4, Landroidx/appcompat/R$attr;->colorPrimary:I

    invoke-virtual {p0, v4, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v2

    :cond_1
    iget p0, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    new-instance v2, Landroid/content/res/ColorStateList;

    const/4 v4, 0x3

    new-array v5, v4, [[I

    const/4 v6, 0x0

    aput-object v0, v5, v6

    sget-object v7, Lcom/google/android/material/tabbar/TabBarMenuView;->CHECKED_STATE_SET:[I

    aput-object v7, v5, v3

    sget-object v7, Landroid/widget/LinearLayout;->EMPTY_STATE_SET:[I

    const/4 v8, 0x2

    aput-object v7, v5, v8

    new-array v4, v4, [I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    aput p1, v4, v6

    aput p0, v4, v3

    aput v1, v4, v8

    invoke-direct {v2, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method public displayAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->mDisplayAnim:Z

    return-void
.end method

.method findItemView(I)Lcom/google/android/material/tabbar/TabBarItemView;
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/material/tabbar/TabBarMenuView;->validateMenuItemId(I)V

    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->buttons:[Lcom/google/android/material/tabbar/TabBarItemView;

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method getBadgeDrawables()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/BadgeDrawable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getLabelVisibilityMode()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->labelVisibilityMode:I

    return p0
.end method

.method public getSelectedItemId()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->selectedItemId:I

    return p0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-void
.end method

.method public isItemHorizontalTranslationEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->itemHorizontalTranslationEnabled:Z

    return p0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    move p3, p2

    move v0, p3

    :goto_0
    if-ge p3, p1, :cond_2

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    sub-int v2, p4, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {v1, v3, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v0, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->itemHeight:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v3, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->labelVisibilityMode:I

    invoke-direct {p0, v3, p2}, Lcom/google/android/material/tabbar/TabBarMenuView;->isShifting(II)Z

    move-result v3

    const/16 v4, 0x3c

    const/4 v5, 0x2

    const/4 v6, 0x6

    const/16 v7, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->itemHorizontalTranslationEnabled:Z

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->selectedItemPosition:I

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v10, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->activeItemMinWidth:I

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eq v11, v7, :cond_0

    iget v11, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->activeItemMaxWidth:I

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v3, v11, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v7, :cond_1

    move v3, v8

    goto :goto_0

    :cond_1
    move v3, v9

    :goto_0
    sub-int/2addr p2, v3

    iget v3, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->inactiveItemMinWidth:I

    mul-int/2addr v3, p2

    sub-int v3, p1, v3

    iget v11, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->activeItemMaxWidth:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr p1, v3

    if-nez p2, :cond_2

    move v10, v8

    goto :goto_1

    :cond_2
    move v10, p2

    :goto_1
    div-int v10, p1, v10

    iget v11, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->inactiveItemMaxWidth:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    mul-int/2addr p2, v10

    sub-int/2addr p1, p2

    move p2, v9

    :goto_2
    if-ge p2, v0, :cond_e

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eq v11, v7, :cond_6

    iget-object v11, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v11

    if-le v11, v6, :cond_4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    if-ne v11, v5, :cond_3

    goto :goto_3

    :cond_3
    iget-object v11, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->tempChildWidths:[I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v4}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v12

    float-to-int v12, v12

    aput v12, v11, p2

    goto :goto_5

    :cond_4
    :goto_3
    iget-object v11, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->tempChildWidths:[I

    iget v12, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->selectedItemPosition:I

    if-ne p2, v12, :cond_5

    move v12, v3

    goto :goto_4

    :cond_5
    move v12, v10

    :goto_4
    aput v12, v11, p2

    :goto_5
    if-lez p1, :cond_7

    iget-object v11, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->tempChildWidths:[I

    aget v12, v11, p2

    add-int/2addr v12, v8

    aput v12, v11, p2

    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    :cond_6
    iget-object v11, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->tempChildWidths:[I

    aput v9, v11, p2

    :cond_7
    :goto_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_8
    if-nez p2, :cond_9

    move v3, v8

    goto :goto_7

    :cond_9
    move v3, p2

    :goto_7
    div-int v3, p1, v3

    iget v10, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->activeItemMaxWidth:I

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int/2addr p2, v3

    sub-int/2addr p1, p2

    move p2, v9

    :goto_8
    if-ge p2, v0, :cond_e

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v7, :cond_c

    iget-object v10, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v10

    if-le v10, v6, :cond_b

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    if-ne v10, v5, :cond_a

    goto :goto_9

    :cond_a
    iget-object v10, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->tempChildWidths:[I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v4}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v11

    float-to-int v11, v11

    aput v11, v10, p2

    goto :goto_a

    :cond_b
    :goto_9
    iget-object v10, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->tempChildWidths:[I

    aput v3, v10, p2

    :goto_a
    if-lez p1, :cond_d

    iget-object v10, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->tempChildWidths:[I

    aget v11, v10, p2

    add-int/2addr v11, v8

    aput v11, v10, p2

    add-int/lit8 p1, p1, -0x1

    goto :goto_b

    :cond_c
    iget-object v10, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->tempChildWidths:[I

    aput v9, v10, p2

    :cond_d
    :goto_b
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_e
    move p1, v9

    move p2, p1

    :goto_c
    if-ge p1, v0, :cond_10

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v7, :cond_f

    goto :goto_d

    :cond_f
    iget-object v4, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->tempChildWidths:[I

    aget v4, v4, p1

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr p2, v3

    :goto_d
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_10
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, p1, v9}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    iget p2, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->itemHeight:I

    invoke-static {p2, v1, v9}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method setBadgeDrawables(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/BadgeDrawable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->buttons:[Lcom/google/android/material/tabbar/TabBarItemView;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/badge/BadgeDrawable;

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabbar/TabBarItemView;->setBadge(Lcom/google/android/material/badge/BadgeDrawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->buttons:[Lcom/google/android/material/tabbar/TabBarItemView;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/google/android/material/tabbar/TabBarItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .locals 3

    iput p1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->itemBackgroundRes:I

    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->buttons:[Lcom/google/android/material/tabbar/TabBarItemView;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/google/android/material/tabbar/TabBarItemView;->setItemBackground(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->itemHorizontalTranslationEnabled:Z

    return-void
.end method

.method public setItemIconSize(I)V
    .locals 3

    iput p1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->itemIconSize:I

    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->buttons:[Lcom/google/android/material/tabbar/TabBarItemView;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/google/android/material/tabbar/TabBarItemView;->setIconSize(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->labelVisibilityMode:I

    return-void
.end method

.method public setPresenter(Lcom/google/android/material/tabbar/TabBarPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->presenter:Lcom/google/android/material/tabbar/TabBarPresenter;

    return-void
.end method

.method tryRestoreSelectedItemId(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne p1, v3, :cond_0

    iput p1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->selectedItemId:I

    iput v1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->selectedItemPosition:I

    const/4 p0, 0x1

    invoke-interface {v2, p0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public updateMenuView()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->buttons:[Lcom/google/android/material/tabbar/TabBarItemView;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->buttons:[Lcom/google/android/material/tabbar/TabBarItemView;

    array-length v1, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/google/android/material/tabbar/TabBarMenuView;->buildMenuView(Z)V

    return-void

    :cond_1
    iget v1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->selectedItemId:I

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v4, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    iput v4, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->selectedItemId:I

    iput v3, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->selectedItemPosition:I

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->selectedItemId:I

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->set:Landroidx/transition/TransitionSet;

    invoke-static {p0, v1}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    :cond_4
    iget v1, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->labelVisibilityMode:I

    iget-object v3, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/google/android/material/tabbar/TabBarMenuView;->isShifting(II)Z

    move-result v1

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_5

    iget-object v4, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->presenter:Lcom/google/android/material/tabbar/TabBarPresenter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/material/tabbar/TabBarPresenter;->setUpdateSuspended(Z)V

    iget-object v4, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->buttons:[Lcom/google/android/material/tabbar/TabBarItemView;

    aget-object v4, v4, v3

    iget v5, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->labelVisibilityMode:I

    invoke-virtual {v4, v5}, Lcom/google/android/material/tabbar/TabBarItemView;->setLabelVisibilityMode(I)V

    iget-object v4, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->buttons:[Lcom/google/android/material/tabbar/TabBarItemView;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Lcom/google/android/material/tabbar/TabBarItemView;->setShifting(Z)V

    iget-object v4, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->buttons:[Lcom/google/android/material/tabbar/TabBarItemView;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v5, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v4, v5, v2}, Lcom/google/android/material/tabbar/TabBarItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    iget-object v4, p0, Lcom/google/android/material/tabbar/TabBarMenuView;->presenter:Lcom/google/android/material/tabbar/TabBarPresenter;

    invoke-virtual {v4, v2}, Lcom/google/android/material/tabbar/TabBarPresenter;->setUpdateSuspended(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method
