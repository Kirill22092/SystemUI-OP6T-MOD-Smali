.class Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->initAdapterManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchUpdate(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 3

    .line 671
    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget v2, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, p0, v2, p1, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onItemsMoved(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;III)V

    goto :goto_0

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget-object p1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onItemsUpdated(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;IILjava/lang/Object;)V

    goto :goto_0

    .line 676
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, p0, v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onItemsRemoved(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V

    goto :goto_0

    .line 673
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, p0, v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onItemsAdded(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V

    :goto_0
    return-void
.end method

.method public findViewHolder(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 2

    .line 631
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->findViewHolderForPosition(IZ)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 637
    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method

.method public markViewHoldersUpdated(IILjava/lang/Object;)V
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 662
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsChanged:Z

    return-void
.end method

.method public offsetPositionsForAdd(II)V
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->offsetPositionRecordsForInsert(II)V

    .line 696
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsAddedOrRemoved:Z

    return-void
.end method

.method public offsetPositionsForMove(II)V
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->offsetPositionRecordsForMove(II)V

    .line 703
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsAddedOrRemoved:Z

    return-void
.end method

.method public offsetPositionsForRemovingInvisible(II)V
    .locals 2

    .line 648
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 649
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 650
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1212(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    return-void
.end method

.method public offsetPositionsForRemovingLaidOutOrNewView(II)V
    .locals 2

    .line 655
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 656
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsAddedOrRemoved:Z

    return-void
.end method

.method public onDispatchFirstPass(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 0

    .line 667
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->dispatchUpdate(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    return-void
.end method

.method public onDispatchSecondPass(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 0

    .line 690
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->dispatchUpdate(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    return-void
.end method
