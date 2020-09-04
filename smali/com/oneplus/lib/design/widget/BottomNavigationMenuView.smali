.class public Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;
.super Landroid/view/ViewGroup;
.source "BottomNavigationMenuView.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuView;
.implements Lcom/oneplus/lib/design/widget/Badge;


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DISABLED_STATE_SET:[I


# instance fields
.field private final activeItemMaxWidth:I

.field private final activeItemMinWidth:I

.field private buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

.field private final inactiveItemMaxWidth:I

.field private final inactiveItemMinWidth:I

.field private itemBackground:Landroid/graphics/drawable/Drawable;

.field private itemBackgroundRes:I

.field private final itemHeight:I

.field private itemHorizontalTranslationEnabled:Z

.field private itemIconSize:I

.field private itemIconTint:Landroid/content/res/ColorStateList;

.field private final itemPool:Lcom/oneplus/support/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/core/util/Pools$Pool<",
            "Lcom/oneplus/lib/design/widget/BottomNavigationItemView;",
            ">;"
        }
    .end annotation
.end field

.field private itemTextAppearanceActive:I

.field private itemTextAppearanceInactive:I

.field private final itemTextColorDefault:Landroid/content/res/ColorStateList;

.field private itemTextColorFromUser:Landroid/content/res/ColorStateList;

.field private labelVisibilityMode:I

.field private menu:Lcom/oneplus/lib/menu/MenuBuilder;

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

.field private selectedItemId:I

.field private selectedItemPosition:I

.field private final set:Landroid/transition/TransitionSet;

.field private tempChildWidths:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    .line 52
    sput-object v1, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->CHECKED_STATE_SET:[I

    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v2

    .line 53
    sput-object v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->DISABLED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance p1, Lcom/oneplus/support/core/util/Pools$SynchronizedPool;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Lcom/oneplus/support/core/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemPool:Lcom/oneplus/support/core/util/Pools$Pool;

    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemId:I

    .line 69
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemPosition:I

    .line 90
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 91
    sget v1, Lcom/oneplus/commonctrl/R$dimen;->design_bottom_navigation_item_max_width:I

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    .line 93
    sget v1, Lcom/oneplus/commonctrl/R$dimen;->design_bottom_navigation_item_min_width:I

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->inactiveItemMinWidth:I

    .line 95
    sget v1, Lcom/oneplus/commonctrl/R$dimen;->design_bottom_navigation_active_item_max_width:I

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->activeItemMaxWidth:I

    .line 97
    sget v1, Lcom/oneplus/commonctrl/R$dimen;->design_bottom_navigation_active_item_min_width:I

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->activeItemMinWidth:I

    .line 99
    sget v1, Lcom/oneplus/commonctrl/R$dimen;->design_bottom_navigation_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemHeight:I

    const v0, 0x1010038

    .line 100
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    .line 102
    new-instance v0, Landroid/transition/AutoTransition;

    invoke-direct {v0}, Landroid/transition/AutoTransition;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->set:Landroid/transition/TransitionSet;

    .line 103
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->set:Landroid/transition/TransitionSet;

    invoke-virtual {v0, p1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 104
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->set:Landroid/transition/TransitionSet;

    const-wide/16 v0, 0x73

    invoke-virtual {p1, v0, v1}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 105
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->set:Landroid/transition/TransitionSet;

    new-instance v0, Lcom/oneplus/support/core/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Lcom/oneplus/support/core/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    .line 106
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->set:Landroid/transition/TransitionSet;

    new-instance v0, Lcom/oneplus/lib/design/widget/TextScale;

    invoke-direct {v0}, Lcom/oneplus/lib/design/widget/TextScale;-><init>()V

    invoke-virtual {p1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 108
    new-instance p1, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView$1;

    invoke-direct {p1, p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView$1;-><init>(Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;)V

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->onClickListener:Landroid/view/View$OnClickListener;

    new-array p1, p2, [I

    .line 119
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->tempChildWidths:[I

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;)Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;)Lcom/oneplus/lib/menu/MenuBuilder;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    return-object p0
.end method

.method private getNewItem()Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemPool:Lcom/oneplus/support/core/util/Pools$Pool;

    invoke-interface {v0}, Lcom/oneplus/support/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-nez v0, :cond_0

    .line 570
    new-instance v0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;-><init>(Landroid/content/Context;)V

    :cond_0
    return-object v0
.end method

.method private isShifting(II)Z
    .locals 2

    const/4 p0, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x3

    if-le p2, p1, :cond_1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    return p0
.end method


# virtual methods
.method public buildMenuView()V
    .locals 6

    .line 486
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 487
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 488
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 490
    iget-object v5, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemPool:Lcom/oneplus/support/core/util/Pools$Pool;

    invoke-interface {v5, v4}, Lcom/oneplus/support/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 495
    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemId:I

    .line 496
    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemPosition:I

    const/4 v0, 0x0

    .line 497
    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    return-void

    .line 500
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v0

    new-array v0, v0, [Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    .line 501
    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->labelVisibilityMode:I

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/oneplus/lib/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->isShifting(II)Z

    move-result v0

    move v2, v1

    .line 502
    :goto_1
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_4

    .line 503
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 504
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 505
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-virtual {v3, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 506
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getNewItem()Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    move-result-object v3

    .line 507
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    aput-object v3, v4, v2

    .line 508
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 509
    iget v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemIconSize:I

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setIconSize(I)V

    .line 511
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 512
    iget v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextAppearanceInactive:I

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextAppearanceInactive(I)V

    .line 513
    iget v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextAppearanceActive:I

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextAppearanceActive(I)V

    .line 514
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 515
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 516
    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 518
    :cond_3
    iget v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemBackgroundRes:I

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setItemBackground(I)V

    .line 520
    :goto_2
    invoke-virtual {v3, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setShifting(Z)V

    .line 521
    iget v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->labelVisibilityMode:I

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setLabelVisibilityMode(I)V

    .line 522
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v3, v4, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->initialize(Lcom/oneplus/lib/menu/MenuItemImpl;I)V

    .line 523
    invoke-virtual {v3, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setItemPosition(I)V

    .line 524
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 527
    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v0

    sub-int/2addr v0, v4

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemPosition:I

    .line 528
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemPosition:I

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 8

    .line 462
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 463
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 466
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, v3}, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 467
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 468
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v3, Lcom/oneplus/commonctrl/R$attr;->colorPrimary:I

    .line 469
    invoke-virtual {p0, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v1

    .line 472
    :cond_1
    iget p0, v0, Landroid/util/TypedValue;->data:I

    .line 473
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 474
    new-instance v1, Landroid/content/res/ColorStateList;

    const/4 v3, 0x3

    new-array v4, v3, [[I

    sget-object v5, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->DISABLED_STATE_SET:[I

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->CHECKED_STATE_SET:[I

    aput-object v5, v4, v2

    sget-object v5, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    const/4 v7, 0x2

    aput-object v5, v4, v7

    new-array v3, v3, [I

    sget-object v5, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->DISABLED_STATE_SET:[I

    .line 477
    invoke-virtual {p1, v5, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    aput p1, v3, v6

    aput p0, v3, v2

    aput v0, v3, v7

    invoke-direct {v1, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method public getLabelVisibilityMode()I
    .locals 0

    .line 435
    iget p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->labelVisibilityMode:I

    return p0
.end method

.method public getSelectedItemId()I
    .locals 0

    .line 576
    iget p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemId:I

    return p0
.end method

.method public initialize(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    return-void
.end method

.method public isItemHorizontalTranslationEnabled()Z
    .locals 0

    .line 458
    iget-boolean p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 207
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    move p3, p2

    move v0, p3

    :goto_0
    if-ge p3, p1, :cond_2

    .line 212
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 213
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    goto :goto_2

    .line 216
    :cond_0
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    sub-int v2, p4, v0

    .line 217
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {v1, v3, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 219
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v0, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    .line 221
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
    .locals 10

    .line 129
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 131
    iget-object p2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p2}, Lcom/oneplus/lib/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 133
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 135
    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemHeight:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 137
    iget v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->labelVisibilityMode:I

    invoke-direct {p0, v3, p2}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->isShifting(II)Z

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    if-eqz v3, :cond_6

    .line 138
    iget v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemPosition:I

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 139
    iget v7, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->activeItemMinWidth:I

    .line 140
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v4, :cond_0

    .line 143
    iget v8, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->activeItemMaxWidth:I

    const/high16 v9, -0x80000000

    .line 144
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 143
    invoke-virtual {v3, v8, v1}, Landroid/view/View;->measure(II)V

    .line 145
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 147
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v6

    :goto_0
    sub-int/2addr p2, v3

    .line 148
    iget v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->inactiveItemMinWidth:I

    mul-int/2addr v3, p2

    sub-int v3, p1, v3

    .line 149
    iget v8, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->activeItemMaxWidth:I

    .line 150
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr p1, v3

    if-nez p2, :cond_2

    move v7, v5

    goto :goto_1

    :cond_2
    move v7, p2

    .line 152
    :goto_1
    div-int v7, p1, v7

    .line 153
    iget v8, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    mul-int/2addr p2, v7

    sub-int/2addr p1, p2

    move p2, p1

    move p1, v6

    :goto_2
    if-ge p1, v0, :cond_a

    .line 157
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v4, :cond_4

    .line 158
    iget-object v8, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->tempChildWidths:[I

    iget v9, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemPosition:I

    if-ne p1, v9, :cond_3

    move v9, v3

    goto :goto_3

    :cond_3
    move v9, v7

    :goto_3
    aput v9, v8, p1

    if-lez p2, :cond_5

    .line 163
    iget-object v8, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->tempChildWidths:[I

    aget v9, v8, p1

    add-int/2addr v9, v5

    aput v9, v8, p1

    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    .line 167
    :cond_4
    iget-object v8, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->tempChildWidths:[I

    aput v6, v8, p1

    :cond_5
    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    if-nez p2, :cond_7

    move v3, v5

    goto :goto_5

    :cond_7
    move v3, p2

    .line 171
    :goto_5
    div-int v3, p1, v3

    .line 172
    iget v7, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->activeItemMaxWidth:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int/2addr p2, v3

    sub-int/2addr p1, p2

    move p2, p1

    move p1, v6

    :goto_6
    if-ge p1, v0, :cond_a

    .line 175
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v4, :cond_8

    .line 176
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->tempChildWidths:[I

    aput v3, v7, p1

    if-lez p2, :cond_9

    .line 178
    aget v8, v7, p1

    add-int/2addr v8, v5

    aput v8, v7, p1

    add-int/lit8 p2, p2, -0x1

    goto :goto_7

    .line 182
    :cond_8
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->tempChildWidths:[I

    aput v6, v7, p1

    :cond_9
    :goto_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_a
    move p1, v6

    move p2, p1

    :goto_8
    if-ge p1, v0, :cond_c

    .line 189
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 190
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v4, :cond_b

    goto :goto_9

    .line 193
    :cond_b
    iget-object v5, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->tempChildWidths:[I

    aget v5, v5, p1

    .line 194
    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 193
    invoke-virtual {v3, v5, v1}, Landroid/view/View;->measure(II)V

    .line 195
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 196
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 197
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr p2, v3

    :goto_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 201
    :cond_c
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 200
    invoke-static {p2, p1, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    iget p2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemHeight:I

    .line 202
    invoke-static {p2, v1, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 199
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 236
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    .line 237
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-eqz p0, :cond_0

    .line 238
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 239
    invoke-virtual {v2, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .locals 3

    .line 363
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemBackgroundRes:I

    .line 364
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-eqz p0, :cond_0

    .line 365
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 366
    invoke-virtual {v2, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setItemBackground(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 0

    .line 447
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    return-void
.end method

.method public setItemIconSize(I)V
    .locals 3

    .line 262
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemIconSize:I

    .line 263
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-eqz p0, :cond_0

    .line 264
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 265
    invoke-virtual {v2, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setIconSize(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 5

    .line 334
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextAppearanceActive:I

    .line 335
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-eqz v0, :cond_1

    .line 336
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 337
    invoke-virtual {v3, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextAppearanceActive(I)V

    .line 340
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    .line 341
    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 5

    .line 305
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextAppearanceInactive:I

    .line 306
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-eqz v0, :cond_1

    .line 307
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 308
    invoke-virtual {v3, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextAppearanceInactive(I)V

    .line 311
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    .line 312
    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 282
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    .line 283
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-eqz p0, :cond_0

    .line 284
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 285
    invoke-virtual {v2, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 0

    .line 426
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->labelVisibilityMode:I

    return-void
.end method

.method public setPresenter(Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    return-void
.end method

.method tryRestoreSelectedItemId(I)V
    .locals 4

    .line 586
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 588
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 589
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 590
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemId:I

    .line 591
    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemPosition:I

    const/4 p0, 0x1

    .line 592
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

    .line 532
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 536
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v0

    .line 537
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 539
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buildMenuView()V

    return-void

    .line 543
    :cond_1
    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemId:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    .line 546
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 547
    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 548
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    iput v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemId:I

    .line 549
    iput v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemPosition:I

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 552
    :cond_3
    iget v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->selectedItemId:I

    if-eq v1, v3, :cond_4

    .line 554
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->set:Landroid/transition/TransitionSet;

    invoke-static {p0, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 557
    :cond_4
    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->labelVisibilityMode:I

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/oneplus/lib/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->isShifting(II)Z

    move-result v1

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_5

    .line 559
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 560
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    aget-object v4, v4, v3

    iget v5, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->labelVisibilityMode:I

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setLabelVisibilityMode(I)V

    .line 561
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setShifting(Z)V

    .line 562
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v5, v3}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v4, v5, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->initialize(Lcom/oneplus/lib/menu/MenuItemImpl;I)V

    .line 563
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method
