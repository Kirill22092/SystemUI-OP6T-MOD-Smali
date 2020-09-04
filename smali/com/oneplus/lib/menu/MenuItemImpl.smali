.class public final Lcom/oneplus/lib/menu/MenuItemImpl;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Lcom/oneplus/lib/menu/SupportMenuItem;


# static fields
.field private static sDeleteShortcutLabel:Ljava/lang/String;

.field private static sEnterShortcutLabel:Ljava/lang/String;

.field private static sPrependShortcutLabel:Ljava/lang/String;

.field private static sSpaceShortcutLabel:Ljava/lang/String;


# instance fields
.field private mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

.field private mActionView:Landroid/view/View;

.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mFlags:I

.field private final mGroup:I

.field private mHasIconTint:Z

.field private mHasIconTintMode:Z

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIconTintList:Landroid/content/res/ColorStateList;

.field private mIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIsActionViewExpanded:Z

.field private mItemCallback:Ljava/lang/Runnable;

.field mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

.field private mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mNeedToApplyIconTint:Z

.field private mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutAlphabeticModifiers:I

.field private mShortcutNumericChar:C

.field private mShortcutNumericModifiers:I

.field private mShowAsAction:I

.field private mSubMenu:Lcom/oneplus/lib/menu/SubMenuBuilder;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;

.field private mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V
    .locals 2

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    .line 56
    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    .line 58
    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconResId:I

    const/4 v1, 0x0

    .line 81
    iput-object v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 82
    iput-object v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 83
    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mHasIconTint:Z

    .line 84
    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mHasIconTintMode:Z

    .line 85
    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    const/16 v1, 0x10

    .line 87
    iput v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    .line 95
    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShowAsAction:I

    .line 100
    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 144
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    .line 145
    iput p3, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mId:I

    .line 146
    iput p2, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mGroup:I

    .line 147
    iput p4, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mCategoryOrder:I

    .line 148
    iput p5, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mOrdering:I

    .line 149
    iput-object p6, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 150
    iput p7, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShowAsAction:I

    return-void
.end method

.method private applyIconTintIfNecessary(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_3

    .line 549
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mHasIconTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mHasIconTintMode:Z

    if-eqz v0, :cond_3

    .line 550
    :cond_0
    invoke-static {p1}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 551
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 553
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mHasIconTint:Z

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 557
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mHasIconTintMode:Z

    if-eqz v0, :cond_2

    .line 558
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    const/4 v0, 0x0

    .line 561
    iput-boolean v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    :cond_3
    return-object p1
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 2

    .line 812
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 820
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_3

    .line 821
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    .line 822
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->collapseItemActionView(Lcom/oneplus/lib/menu/MenuItemImpl;)Z

    move-result p0

    return p0
.end method

.method public expandActionView()Z
    .locals 2

    .line 798
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_2

    .line 803
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 804
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->expandItemActionView(Lcom/oneplus/lib/menu/MenuItemImpl;)Z

    move-result p0

    return p0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .line 762
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    if-eqz v0, :cond_1

    .line 746
    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 747
    iget-object p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAlphabeticModifiers()I
    .locals 0

    .line 281
    iget p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    return p0
.end method

.method public getAlphabeticShortcut()C
    .locals 0

    .line 249
    iget-char p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    return p0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 865
    iget-object p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getGroupId()I
    .locals 0

    .line 209
    iget p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mGroup:I

    return p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 480
    invoke-direct {p0, v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->applyIconTintIfNecessary(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 483
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconResId:I

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 485
    iput v1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconResId:I

    .line 486
    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 487
    invoke-direct {p0, v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->applyIconTintIfNecessary(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 529
    iget-object p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 545
    iget-object p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getItemId()I
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 215
    iget p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mId:I

    return p0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 0

    .line 666
    iget-object p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object p0
.end method

.method public getNumericModifiers()I
    .locals 0

    .line 291
    iget p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    return p0
.end method

.method public getNumericShortcut()C
    .locals 0

    .line 286
    iget-char p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericChar:C

    return p0
.end method

.method public getOrder()I
    .locals 0

    .line 220
    iget p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mCategoryOrder:I

    return p0
.end method

.method public getOrdering()I
    .locals 0

    .line 224
    iget p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mOrdering:I

    return p0
.end method

.method getShortcut()C
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    goto :goto_0

    :cond_0
    iget-char p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericChar:C

    :goto_0
    return p0
.end method

.method getShortcutLabel()Ljava/lang/String;
    .locals 2

    .line 358
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getShortcut()C

    move-result p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 363
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/lib/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x8

    if-eq p0, v1, :cond_3

    const/16 v1, 0xa

    if-eq p0, v1, :cond_2

    const/16 v1, 0x20

    if-eq p0, v1, :cond_1

    .line 379
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 375
    :cond_1
    sget-object p0, Lcom/oneplus/lib/menu/MenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 367
    :cond_2
    sget-object p0, Lcom/oneplus/lib/menu/MenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 371
    :cond_3
    sget-object p0, Lcom/oneplus/lib/menu/MenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 0

    .line 398
    iget-object p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mSubMenu:Lcom/oneplus/lib/menu/SubMenuBuilder;

    return-object p0
.end method

.method public getSupportActionProvider()Lcom/oneplus/lib/widget/ActionProvider;
    .locals 0

    .line 768
    iget-object p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 415
    iget-object p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 452
    :goto_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge p0, v1, :cond_1

    if-eqz v0, :cond_1

    instance-of p0, v0, Ljava/lang/String;

    if-nez p0, :cond_1

    .line 456
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method getTitleForItemView(Lcom/oneplus/lib/menu/MenuView$ItemView;)Ljava/lang/CharSequence;
    .locals 0

    if-eqz p1, :cond_0

    .line 425
    invoke-interface {p1}, Lcom/oneplus/lib/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 427
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 0

    .line 879
    iget-object p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTooltipText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public hasCollapsibleActionView()Z
    .locals 2

    .line 829
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 830
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    if-eqz v0, :cond_0

    .line 831
    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 833
    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hasSubMenu()Z
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mSubMenu:Lcom/oneplus/lib/menu/SubMenuBuilder;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public invoke()Z
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, v0, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 169
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return v1

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    .line 178
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    :cond_3
    iget-object p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ActionProvider;->onPerformDefaultAction()Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public isActionButton()Z
    .locals 1

    .line 681
    iget p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isActionViewExpanded()Z
    .locals 0

    .line 845
    iget-boolean p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    return p0
.end method

.method public isCheckable()Z
    .locals 1

    .line 569
    iget p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 593
    iget p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 191
    iget p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExclusiveCheckable()Z
    .locals 0

    .line 588
    iget p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVisible()Z
    .locals 3

    .line 619
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ActionProvider;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 622
    :cond_1
    iget p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public requestsActionButton()Z
    .locals 1

    .line 685
    iget p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShowAsAction:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public requiresActionButton()Z
    .locals 1

    .line 689
    iget p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShowAsAction:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 0

    .line 756
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setActionView(I)Lcom/oneplus/lib/menu/SupportMenuItem;

    return-object p0
.end method

.method public bridge synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Lcom/oneplus/lib/menu/SupportMenuItem;

    return-object p0
.end method

.method public setActionView(I)Lcom/oneplus/lib/menu/SupportMenuItem;
    .locals 3

    .line 735
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 736
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 737
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Lcom/oneplus/lib/menu/SupportMenuItem;

    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Lcom/oneplus/lib/menu/SupportMenuItem;
    .locals 2

    .line 724
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    const/4 v0, 0x0

    .line 725
    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    if-eqz p1, :cond_0

    .line 726
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mId:I

    if-lez v0, :cond_0

    .line 727
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 729
    :cond_0
    iget-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/oneplus/lib/menu/MenuItemImpl;)V

    return-object p0
.end method

.method public setActionViewExpanded(Z)V
    .locals 0

    .line 839
    iput-boolean p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 840
    iget-object p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 254
    iget-char v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_0

    return-object p0

    .line 258
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 260
    iget-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    .line 267
    iget-char v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    if-ne v0, p2, :cond_0

    return-object p0

    .line 272
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 273
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    .line 275
    iget-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 2

    .line 574
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v0, -0x2

    or-int/2addr p1, v1

    .line 575
    iput p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    .line 576
    iget p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    if-eq v0, p1, :cond_0

    .line 577
    iget-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_0
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    .line 598
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 601
    iget-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    goto :goto_0

    .line 603
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setCheckedInt(Z)V

    :goto_0
    return-object p0
.end method

.method setCheckedInt(Z)V
    .locals 3

    .line 610
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v0, -0x3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    or-int/2addr p1, v1

    .line 611
    iput p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    .line 612
    iget p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    if-eq v0, p1, :cond_1

    .line 613
    iget-object p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setContentDescription(Ljava/lang/CharSequence;)Lcom/oneplus/lib/menu/SupportMenuItem;

    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lcom/oneplus/lib/menu/SupportMenuItem;
    .locals 1

    .line 856
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    .line 858
    iget-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    if-eqz p1, :cond_0

    .line 197
    iget p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    goto :goto_0

    .line 199
    :cond_0
    iget p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    .line 202
    :goto_0
    iget-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setExclusiveCheckable(Z)V
    .locals 1

    .line 584
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    return-void
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 505
    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 506
    iput p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconResId:I

    const/4 p1, 0x1

    .line 507
    iput-boolean p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 510
    iget-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 495
    iput v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconResId:I

    .line 496
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 497
    iput-boolean p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 498
    iget-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 1

    .line 518
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 519
    iput-boolean p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mHasIconTint:Z

    .line 520
    iput-boolean p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 522
    iget-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 1

    .line 534
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 535
    iput-boolean p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mHasIconTintMode:Z

    .line 536
    iput-boolean p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 538
    iget-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public setIsActionButton(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 694
    iget p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    goto :goto_0

    .line 696
    :cond_0
    iget p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    :goto_0
    return-void
.end method

.method setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 661
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 296
    iget-char v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_0

    return-object p0

    .line 300
    :cond_0
    iput-char p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 302
    iget-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    .line 309
    iget-char v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    if-ne v0, p2, :cond_0

    return-object p0

    .line 313
    :cond_0
    iput-char p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 314
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    .line 316
    iget-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    .line 850
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 0

    .line 323
    iput-char p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 324
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 326
    iget-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .locals 0

    .line 334
    iput-char p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 335
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    .line 336
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 337
    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    .line 339
    iget-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 715
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 718
    :cond_1
    :goto_0
    iput p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShowAsAction:I

    .line 719
    iget-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/oneplus/lib/menu/MenuItemImpl;)V

    return-void
.end method

.method public bridge synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setShowAsActionFlags(I)Lcom/oneplus/lib/menu/SupportMenuItem;

    return-object p0
.end method

.method public setShowAsActionFlags(I)Lcom/oneplus/lib/menu/SupportMenuItem;
    .locals 0

    .line 792
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setShowAsAction(I)V

    return-object p0
.end method

.method public setSubMenu(Lcom/oneplus/lib/menu/SubMenuBuilder;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mSubMenu:Lcom/oneplus/lib/menu/SubMenuBuilder;

    .line 409
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-void
.end method

.method public setSupportActionProvider(Lcom/oneplus/lib/widget/ActionProvider;)Lcom/oneplus/lib/menu/SupportMenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 776
    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 777
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    .line 778
    iget-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 779
    iget-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mActionProvider:Lcom/oneplus/lib/widget/ActionProvider;

    if-eqz p1, :cond_0

    .line 780
    new-instance v0, Lcom/oneplus/lib/menu/MenuItemImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/menu/MenuItemImpl$1;-><init>(Lcom/oneplus/lib/menu/MenuItemImpl;)V

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/ActionProvider;->setVisibilityListener(Lcom/oneplus/lib/widget/ActionProvider$VisibilityListener;)V

    :cond_0
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .line 432
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 434
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 436
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mSubMenu:Lcom/oneplus/lib/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    :cond_0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 465
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 472
    iget-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public bridge synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setTooltipText(Ljava/lang/CharSequence;)Lcom/oneplus/lib/menu/SupportMenuItem;

    return-object p0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Lcom/oneplus/lib/menu/SupportMenuItem;
    .locals 1

    .line 870
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTooltipText:Ljava/lang/CharSequence;

    .line 872
    iget-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 0

    .line 644
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemVisibleChanged(Lcom/oneplus/lib/menu/MenuItemImpl;)V

    :cond_0
    return-object p0
.end method

.method setVisibleInt(Z)Z
    .locals 3

    .line 634
    iget v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v0, -0x9

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    or-int/2addr p1, v1

    .line 635
    iput p1, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    .line 636
    iget p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mFlags:I

    if-eq v0, p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public shouldShowIcon()Z
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->getOptionalIconsVisible()Z

    move-result p0

    return p0
.end method

.method shouldShowShortcut()Z
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getShortcut()C

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showsTextAsAction()Z
    .locals 1

    .line 701
    iget p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mShowAsAction:I

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 657
    iget-object p0, p0, Lcom/oneplus/lib/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
