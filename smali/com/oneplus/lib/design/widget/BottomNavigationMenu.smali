.class public final Lcom/oneplus/lib/design/widget/BottomNavigationMenu;
.super Lcom/oneplus/lib/menu/MenuBuilder;
.source "BottomNavigationMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 3

    .line 44
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x5

    if-gt v0, v2, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    .line 52
    instance-of p2, p1, Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz p2, :cond_0

    .line 53
    move-object p2, p1

    check-cast p2, Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {p2, v1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return-object p1

    .line 45
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Maximum number of items supported by BottomNavigationView is 5. Limit can be checked with BottomNavigationView#getMaxItemCount()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 39
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "BottomNavigationView does not support submenus"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
