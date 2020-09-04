.class Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;
.super Ljava/lang/Object;
.source "NestedScrollingChildHelper.java"


# instance fields
.field private mIsNestedScrollingEnabled:Z

.field private mNestedScrollingParent:Landroid/view/ViewParent;

.field private mTempNestedScrollConsumed:[I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 234
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 235
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/view/ViewParent;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 251
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 252
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-interface {v0, p0, p1, p2}, Landroid/view/ViewParent;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    .line 190
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_8

    .line 217
    aput v1, p4, v1

    .line 218
    aput v1, p4, v0

    goto :goto_3

    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    .line 195
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v2, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 196
    aget v2, p4, v1

    .line 197
    aget v3, p4, v0

    goto :goto_1

    :cond_2
    move v2, v1

    move v3, v2

    :goto_1
    if-nez p3, :cond_4

    .line 201
    iget-object p3, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    if-nez p3, :cond_3

    const/4 p3, 0x2

    new-array p3, p3, [I

    .line 202
    iput-object p3, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 204
    :cond_3
    iget-object p3, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 206
    :cond_4
    aput v1, p3, v1

    .line 207
    aput v1, p3, v0

    .line 208
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-interface {v4, v5, p1, p2, p3}, Landroid/view/ViewParent;->onNestedPreScroll(Landroid/view/View;II[I)V

    if-eqz p4, :cond_5

    .line 211
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {p0, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 212
    aget p0, p4, v1

    sub-int/2addr p0, v2

    aput p0, p4, v1

    .line 213
    aget p0, p4, v0

    sub-int/2addr p0, v3

    aput p0, p4, v0

    .line 215
    :cond_5
    aget p0, p3, v1

    if-nez p0, :cond_7

    aget p0, p3, v0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    move v0, v1

    :cond_7
    :goto_2
    return v0

    :cond_8
    :goto_3
    return v1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 10

    .line 152
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_4

    .line 173
    aput v1, p5, v1

    .line 174
    aput v1, p5, v0

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p5, :cond_2

    .line 157
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v2, p5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 158
    aget v2, p5, v1

    .line 159
    aget v3, p5, v0

    goto :goto_1

    :cond_2
    move v2, v1

    move v3, v2

    .line 162
    :goto_1
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-interface/range {v4 .. v9}, Landroid/view/ViewParent;->onNestedScroll(Landroid/view/View;IIII)V

    if-eqz p5, :cond_3

    .line 166
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {p0, p5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 167
    aget p0, p5, v1

    sub-int/2addr p0, v2

    aput p0, p5, v1

    .line 168
    aget p0, p5, v0

    sub-int/2addr p0, v3

    aput p0, p5, v0

    :cond_3
    return v0

    :cond_4
    :goto_2
    return v1
.end method

.method public hasNestedScrollingParent()Z
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    return p0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->stopNestedScroll()V

    .line 63
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 4

    .line 105
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 111
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    :goto_0
    if-eqz v0, :cond_3

    .line 113
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-interface {v0, v2, v3, p1}, Landroid/view/ViewParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    .line 115
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-interface {v0, v2, p0, p1}, Landroid/view/ViewParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    return v1

    .line 118
    :cond_1
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2

    .line 119
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 121
    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public stopNestedScroll()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->onStopNestedScroll(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    :cond_0
    return-void
.end method
