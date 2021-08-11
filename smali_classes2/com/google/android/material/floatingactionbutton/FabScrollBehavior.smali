.class public Lcom/google/android/material/floatingactionbutton/FabScrollBehavior;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;
.source "FabScrollBehavior.java"


# instance fields
.field private mFabList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            ">;"
        }
    .end annotation
.end field

.field private mViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private visibleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FabScrollBehavior;->visibleList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onHide(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hideWithAnim()V

    return-void
.end method

.method public bridge synthetic onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .locals 0

    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual/range {p0 .. p9}, Lcom/google/android/material/floatingactionbutton/FabScrollBehavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/view/View;IIIII[I)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-super/range {p0 .. p9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V

    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FabScrollBehavior;->mViewList:Ljava/util/List;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/common/OPViewGroupUtils;->getAllChildViews(Landroid/view/View;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FabScrollBehavior;->mViewList:Ljava/util/List;

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FabScrollBehavior;->mFabList:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FabScrollBehavior;->mFabList:Ljava/util/ArrayList;

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FabScrollBehavior;->mFabList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    move p1, p2

    :goto_0
    iget-object p3, p0, Lcom/google/android/material/floatingactionbutton/FabScrollBehavior;->mViewList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_3

    iget-object p3, p0, Lcom/google/android/material/floatingactionbutton/FabScrollBehavior;->mViewList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/google/android/material/floatingactionbutton/FabScrollBehavior;->mFabList:Ljava/util/ArrayList;

    iget-object p4, p0, Lcom/google/android/material/floatingactionbutton/FabScrollBehavior;->mViewList:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/google/android/material/floatingactionbutton/FabScrollBehavior;->visibleList:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FabScrollBehavior;->mFabList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    :goto_1
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FabScrollBehavior;->mFabList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_6

    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FabScrollBehavior;->mFabList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getScrollHideBoolean()Z

    move-result p3

    if-eqz p3, :cond_5

    if-lez p5, :cond_4

    iget-object p3, p0, Lcom/google/android/material/floatingactionbutton/FabScrollBehavior;->visibleList:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/material/floatingactionbutton/FabScrollBehavior;->visibleList:Ljava/util/ArrayList;

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, p2, p4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FabScrollBehavior;->onHide(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    goto :goto_2

    :cond_4
    if-gez p5, :cond_5

    iget-object p3, p0, Lcom/google/android/material/floatingactionbutton/FabScrollBehavior;->visibleList:Ljava/util/ArrayList;

    invoke-virtual {p3, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FabScrollBehavior;->onShow(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    :cond_5
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public onShow(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->showWithAnim()V

    return-void
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/material/floatingactionbutton/FabScrollBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/view/View;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p5, v0, :cond_1

    invoke-super/range {p0 .. p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
