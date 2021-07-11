.class public Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;
.super Landroid/widget/ListPopupWindow;
.source "GlobalActionsPopupMenu.java"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mGlobalActionsSidePadding:I

.field private mIsDropDownMode:Z

.field private mMenuVerticalPadding:I

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;->mMenuVerticalPadding:I

    .line 43
    iput v0, p0, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;->mGlobalActionsSidePadding:I

    .line 49
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 56
    sget v0, Lcom/android/systemui/R$drawable;->op_rounded_bg_full:I

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    iput-boolean p2, p0, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;->mIsDropDownMode:Z

    const/16 p2, 0x7e4

    .line 62
    invoke-virtual {p0, p2}, Landroid/widget/ListPopupWindow;->setWindowLayoutType(I)V

    const/4 p2, 0x2

    .line 63
    invoke-virtual {p0, p2}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    const/4 p2, 0x1

    .line 64
    invoke-virtual {p0, p2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 66
    sget p2, Lcom/android/systemui/R$dimen;->global_actions_side_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;->mGlobalActionsSidePadding:I

    .line 68
    sget p2, Lcom/android/systemui/R$dimen;->op_control_margin_space2:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;->mMenuVerticalPadding:I

    return-void
.end method


# virtual methods
.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;->mAdapter:Landroid/widget/ListAdapter;

    .line 82
    invoke-super {p0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method public show()V
    .locals 9

    .line 90
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 95
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 98
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 100
    iget-boolean v1, p0, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;->mIsDropDownMode:Z

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    .line 107
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 108
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_1

    return-void

    .line 109
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v7, v1

    mul-double/2addr v7, v4

    double-to-int v1, v7

    .line 110
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    move v3, v6

    move v4, v3

    .line 113
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 114
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, v3, v2, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 115
    invoke-virtual {v5, v1, v6}, Landroid/view/View;->measure(II)V

    .line 116
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 117
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    :cond_2
    iget v1, p0, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;->mMenuVerticalPadding:I

    invoke-virtual {v0, v6, v1, v6, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 122
    invoke-virtual {p0, v4}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 125
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 126
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    goto :goto_2

    .line 130
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_4

    return-void

    .line 133
    :cond_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v7, v1

    mul-double/2addr v7, v4

    double-to-int v1, v7

    .line 134
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    move v3, v6

    move v4, v3

    .line 137
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 138
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, v3, v2, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 139
    invoke-virtual {v5, v1, v6}, Landroid/view/View;->measure(II)V

    .line 140
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 141
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 149
    :cond_5
    iget v1, p0, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;->mMenuVerticalPadding:I

    invoke-virtual {v0, v6, v1, v6, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 151
    invoke-virtual {p0, v4}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 152
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_6

    .line 153
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;->mGlobalActionsSidePadding:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    goto :goto_2

    .line 155
    :cond_6
    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;->mGlobalActionsSidePadding:I

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 159
    :cond_7
    :goto_2
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method
