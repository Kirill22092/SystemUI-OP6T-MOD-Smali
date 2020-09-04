.class public Lcom/oneplus/lib/menu/CascadingMenuPopup;
.super Lcom/oneplus/lib/menu/MenuPopup;
.source "CascadingMenuPopup.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;
    }
.end annotation


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private final mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private mForceShowIcon:Z

.field private final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHasXOffset:Z

.field private mHasYOffset:Z

.field private mLastPosition:I

.field private final mMenuItemHoverListener:Lcom/oneplus/lib/menu/MenuItemHoverListener;

.field private final mMenuMaxWidth:I

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private final mPendingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/menu/MenuBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

.field private mRawDropDownGravity:I

.field mShouldCloseImmediately:Z

.field private mShowTitle:Z

.field final mShowingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;",
            ">;"
        }
    .end annotation
.end field

.field mShownAnchorView:Landroid/view/View;

.field final mSubMenuHoverHandler:Landroid/os/Handler;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 1

    .line 191
    invoke-direct {p0}, Lcom/oneplus/lib/menu/MenuPopup;-><init>()V

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    .line 68
    new-instance v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup$1;-><init>(Lcom/oneplus/lib/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 89
    new-instance v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup$2;-><init>(Lcom/oneplus/lib/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 107
    new-instance v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup$3;-><init>(Lcom/oneplus/lib/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mMenuItemHoverListener:Lcom/oneplus/lib/menu/MenuItemHoverListener;

    const/4 v0, 0x0

    .line 167
    iput v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    .line 168
    iput v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mDropDownGravity:I

    .line 192
    iput-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    .line 193
    iput-object p2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 194
    iput p3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    .line 195
    iput p4, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPopupStyleRes:I

    .line 196
    iput-boolean p5, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mOverflowOnly:Z

    .line 198
    iput-boolean v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mForceShowIcon:Z

    .line 199
    invoke-direct {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->getInitialMenuPosition()I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mLastPosition:I

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 202
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p2, p2, 0x2

    sget p3, Lcom/oneplus/commonctrl/R$dimen;->op_abc_config_prefDialogWidth:I

    .line 203
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 202
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    .line 205
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/menu/CascadingMenuPopup;)Landroid/view/ViewTreeObserver;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object p0
.end method

.method static synthetic access$002(Lcom/oneplus/lib/menu/CascadingMenuPopup;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/lib/menu/CascadingMenuPopup;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method private createPopupWindow()Lcom/oneplus/lib/menu/MenuPopupWindow;
    .locals 5

    .line 214
    new-instance v0, Lcom/oneplus/lib/menu/MenuPopupWindow;

    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    iget v3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPopupStyleRes:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/oneplus/lib/menu/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 216
    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mMenuItemHoverListener:Lcom/oneplus/lib/menu/MenuItemHoverListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setHoverListener(Lcom/oneplus/lib/menu/MenuItemHoverListener;)V

    .line 217
    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 218
    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 219
    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 220
    iget p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mDropDownGravity:I

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->setDropDownGravity(I)V

    const/4 p0, 0x1

    .line 221
    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->setModal(Z)V

    const/4 p0, 0x2

    .line 222
    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->setInputMethodMode(I)V

    return-object v0
.end method

.method private findIndexOfAddedMenu(Lcom/oneplus/lib/menu/MenuBuilder;)I
    .locals 3

    .line 614
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 615
    iget-object v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 616
    iget-object v2, v2, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private findMenuItemForSubmenu(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuBuilder;)Landroid/view/MenuItem;
    .locals 3

    .line 476
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 477
    invoke-virtual {p1, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 478
    invoke-interface {v1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    if-ne p2, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private findParentViewForSubmenu(Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;Lcom/oneplus/lib/menu/MenuBuilder;)Landroid/view/View;
    .locals 6

    .line 496
    iget-object v0, p1, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-direct {p0, v0, p2}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->findMenuItemForSubmenu(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuBuilder;)Landroid/view/MenuItem;

    move-result-object p0

    const/4 p2, 0x0

    if-nez p0, :cond_0

    return-object p2

    .line 505
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 506
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 507
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 508
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .line 509
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    .line 510
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/MenuAdapter;

    goto :goto_0

    .line 513
    :cond_1
    check-cast v0, Lcom/oneplus/lib/menu/MenuAdapter;

    move v1, v2

    .line 518
    :goto_0
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuAdapter;->getCount()I

    move-result v3

    :goto_1
    const/4 v4, -0x1

    if-ge v2, v3, :cond_3

    .line 519
    invoke-virtual {v0, v2}, Lcom/oneplus/lib/menu/MenuAdapter;->getItem(I)Lcom/oneplus/lib/menu/MenuItemImpl;

    move-result-object v5

    if-ne p0, v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_2
    if-ne v2, v4, :cond_4

    return-object p2

    :cond_4
    add-int/2addr v2, v1

    .line 533
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p0

    sub-int/2addr v2, p0

    if-ltz v2, :cond_6

    .line 534
    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result p0

    if-lt v2, p0, :cond_5

    goto :goto_3

    .line 539
    :cond_5
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_3
    return-object p2
.end method

.method private getInitialMenuPosition()I
    .locals 1

    .line 284
    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private getNextMenuPosition(I)I
    .locals 5

    .line 298
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 301
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 303
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 304
    iget-object v4, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 306
    iget p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mLastPosition:I

    const/4 v4, 0x0

    if-ne p0, v2, :cond_1

    .line 307
    aget p0, v1, v4

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    add-int/2addr p0, v0

    add-int/2addr p0, p1

    .line 308
    iget p1, v3, Landroid/graphics/Rect;->right:I

    if-le p0, p1, :cond_0

    return v4

    :cond_0
    return v2

    .line 313
    :cond_1
    aget p0, v1, v4

    sub-int/2addr p0, p1

    if-gez p0, :cond_2

    return v2

    :cond_2
    return v4
.end method

.method private showMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 13

    .line 338
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 339
    new-instance v1, Lcom/oneplus/lib/menu/MenuAdapter;

    iget-boolean v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mOverflowOnly:Z

    invoke-direct {v1, p1, v0, v2}, Lcom/oneplus/lib/menu/MenuAdapter;-><init>(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V

    .line 345
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->isShowing()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mForceShowIcon:Z

    if-eqz v2, :cond_0

    .line 347
    invoke-virtual {v1, v3}, Lcom/oneplus/lib/menu/MenuAdapter;->setForceShowIcon(Z)V

    goto :goto_0

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 350
    invoke-static {p1}, Lcom/oneplus/lib/menu/MenuPopup;->shouldPreserveIconSpacing(Lcom/oneplus/lib/menu/MenuBuilder;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/MenuAdapter;->setForceShowIcon(Z)V

    .line 354
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4}, Lcom/oneplus/lib/menu/MenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v2

    .line 355
    invoke-direct {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->createPopupWindow()Lcom/oneplus/lib/menu/MenuPopupWindow;

    move-result-object v4

    .line 356
    invoke-virtual {v4, v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 357
    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/ListPopupWindow;->setContentWidth(I)V

    .line 358
    iget v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mDropDownGravity:I

    invoke-virtual {v4, v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 362
    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 363
    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 364
    invoke-direct {p0, v1, p1}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->findParentViewForSubmenu(Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;Lcom/oneplus/lib/menu/MenuBuilder;)Landroid/view/View;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v1, v5

    move-object v6, v1

    :goto_1
    const/4 v7, 0x0

    if-eqz v6, :cond_8

    .line 372
    invoke-virtual {v4, v7}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setTouchModal(Z)V

    .line 373
    invoke-virtual {v4, v5}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setEnterTransition(Ljava/lang/Object;)V

    .line 375
    invoke-direct {p0, v2}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->getNextMenuPosition(I)I

    move-result v8

    if-ne v8, v3, :cond_3

    move v9, v3

    goto :goto_2

    :cond_3
    move v9, v7

    .line 377
    :goto_2
    iput v8, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mLastPosition:I

    .line 381
    invoke-static {}, Lcom/oneplus/lib/util/SystemUtils;->isAtLeastO()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 384
    invoke-virtual {v4, v6}, Lcom/oneplus/lib/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    move v8, v7

    move v11, v8

    goto :goto_3

    :cond_4
    const/4 v8, 0x2

    new-array v10, v8, [I

    .line 398
    iget-object v11, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v8, v8, [I

    .line 401
    invoke-virtual {v6, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 405
    aget v11, v8, v7

    aget v12, v10, v7

    sub-int/2addr v11, v12

    .line 406
    aget v8, v8, v3

    aget v10, v10, v3

    sub-int/2addr v8, v10

    .line 414
    :goto_3
    iget v10, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mDropDownGravity:I

    const/4 v12, 0x5

    and-int/2addr v10, v12

    if-ne v10, v12, :cond_6

    if-eqz v9, :cond_5

    goto :goto_4

    .line 418
    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_5

    :cond_6
    if-eqz v9, :cond_7

    .line 422
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v2

    :goto_4
    add-int/2addr v11, v2

    goto :goto_6

    :cond_7
    :goto_5
    sub-int/2addr v11, v2

    .line 427
    :goto_6
    invoke-virtual {v4, v11}, Lcom/oneplus/lib/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 430
    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/ListPopupWindow;->setOverlapAnchor(Z)V

    .line 431
    invoke-virtual {v4, v8}, Lcom/oneplus/lib/widget/ListPopupWindow;->setVerticalOffset(I)V

    goto :goto_7

    .line 433
    :cond_8
    iget-boolean v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mHasXOffset:Z

    if-eqz v2, :cond_9

    .line 434
    iget v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mXOffset:I

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 436
    :cond_9
    iget-boolean v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mHasYOffset:Z

    if-eqz v2, :cond_a

    .line 437
    iget v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mYOffset:I

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 439
    :cond_a
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 440
    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/ListPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 443
    :goto_7
    new-instance v2, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget v3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mLastPosition:I

    invoke-direct {v2, v4, p1, v3}, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;-><init>(Lcom/oneplus/lib/menu/MenuPopupWindow;Lcom/oneplus/lib/menu/MenuBuilder;I)V

    .line 444
    iget-object v3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    invoke-virtual {v4}, Lcom/oneplus/lib/widget/ListPopupWindow;->show()V

    .line 448
    invoke-virtual {v4}, Lcom/oneplus/lib/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 449
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v1, :cond_b

    .line 452
    iget-boolean p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowTitle:Z

    if-eqz p0, :cond_b

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 453
    sget p0, Lcom/oneplus/commonctrl/R$layout;->op_abc_popup_menu_header_item_layout:I

    invoke-virtual {v0, p0, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    const v0, 0x1020016

    .line 455
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 456
    invoke-virtual {p0, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 457
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    invoke-virtual {v2, p0, v5, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 461
    invoke-virtual {v4}, Lcom/oneplus/lib/widget/ListPopupWindow;->show()V

    :cond_b
    return-void
.end method


# virtual methods
.method public addMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;Landroid/content/Context;)V

    .line 325
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-direct {p0, p1}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->showMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V

    goto :goto_0

    .line 328
    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method protected closeMenuOnSubMenuOpened()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic collapseItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 0

    .line 36
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/menu/MenuPopup;->collapseItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z

    move-result p0

    return p0
.end method

.method public dismiss()V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 258
    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    new-array v1, v0, [Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 259
    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 261
    aget-object v1, p0, v0

    .line 262
    iget-object v2, v1, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    iget-object v1, v1, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->dismiss()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic expandItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 0

    .line 36
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/menu/MenuPopup;->expandItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z

    move-result p0

    return p0
.end method

.method public flagActionItems()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getEpicenterBounds()Landroid/graphics/Rect;
    .locals 0

    .line 36
    invoke-super {p0}, Lcom/oneplus/lib/menu/MenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getHorizontalOffset()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getId()I
    .locals 0

    .line 36
    invoke-super {p0}, Lcom/oneplus/lib/menu/MenuPopup;->getId()I

    move-result p0

    return p0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 726
    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 0

    .line 36
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/menu/MenuPopup;->initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V

    return-void
.end method

.method public isShowing()Z
    .locals 2

    .line 547
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V
    .locals 5

    .line 626
    invoke-direct {p0, p1}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->findIndexOfAddedMenu(Lcom/oneplus/lib/menu/MenuBuilder;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 633
    iget-object v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 634
    iget-object v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 635
    iget-object v1, v1, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/menu/MenuBuilder;->close(Z)V

    .line 639
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 640
    iget-object v1, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->removeMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;)V

    .line 641
    iget-boolean v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 643
    iget-object v1, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setExitTransition(Ljava/lang/Object;)V

    .line 644
    iget-object v1, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/ListPopupWindow;->setAnimationStyle(I)V

    .line 646
    :cond_2
    iget-object v0, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->dismiss()V

    .line 648
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 650
    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget v1, v1, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->position:I

    iput v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mLastPosition:I

    goto :goto_0

    .line 652
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->getInitialMenuPosition()I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mLastPosition:I

    :goto_0
    if-nez v0, :cond_7

    .line 657
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->dismiss()V

    .line 659
    iget-object p2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    .line 660
    invoke-interface {p2, p1, v0}, Lcom/oneplus/lib/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V

    .line 663
    :cond_4
    iget-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_6

    .line 664
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 665
    iget-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object p2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 667
    :cond_5
    iput-object v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 669
    :cond_6
    iget-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object p2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 673
    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_1

    :cond_7
    if-eqz p2, :cond_8

    .line 678
    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 679
    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/menu/MenuBuilder;->close(Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onDismiss()V
    .locals 5

    .line 558
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 559
    iget-object v3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 560
    iget-object v4, v3, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/ListPopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 569
    iget-object p0, v3, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->close(Z)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 36
    invoke-super/range {p0 .. p5}, Lcom/oneplus/lib/menu/MenuPopup;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 271
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->dismiss()V

    return p3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z
    .locals 4

    .line 588
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 589
    iget-object v3, v1, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-ne p1, v3, :cond_0

    .line 591
    invoke-virtual {v1}, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ListView;->requestFocus()Z

    return v2

    .line 596
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 597
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->addMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V

    .line 599
    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    if-eqz p0, :cond_2

    .line 600
    invoke-interface {p0, p1}, Lcom/oneplus/lib/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/oneplus/lib/menu/MenuBuilder;)Z

    :cond_2
    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 709
    iput-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 712
    iget p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 713
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 712
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mDropDownGravity:I

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    return-void
.end method

.method public bridge synthetic setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/oneplus/lib/menu/MenuPopup;->setEpicenterBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    .line 210
    iput-boolean p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mForceShowIcon:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 699
    iget v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    if-eq v0, p1, :cond_0

    .line 700
    iput p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    .line 701
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 702
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 701
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mDropDownGravity:I

    :cond_0
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1

    const/4 v0, 0x1

    .line 731
    iput-boolean v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mHasXOffset:Z

    .line 732
    iput p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mXOffset:I

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 719
    iput-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0

    .line 753
    iput-boolean p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowTitle:Z

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1

    const/4 v0, 0x1

    .line 737
    iput-boolean v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mHasYOffset:Z

    .line 738
    iput p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mYOffset:I

    return-void
.end method

.method public show()V
    .locals 2

    .line 228
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/menu/MenuBuilder;

    .line 234
    invoke-direct {p0, v1}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->showMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V

    goto :goto_0

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 238
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    iput-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 240
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 241
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 242
    :goto_1
    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_3

    .line 244
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 246
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_4
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 0

    .line 575
    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 576
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/lib/menu/MenuPopup;->toMenuAdapter(Landroid/widget/ListAdapter;)Lcom/oneplus/lib/menu/MenuAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method
