.class public Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;
.super Ljava/lang/Object;
.source "QSEditTileAdapter.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/QSEditTileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DragListener"
.end annotation


# instance fields
.field private final mScrollWorker:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance p1, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener$1;-><init>(Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;)V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->mScrollWorker:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;I)V
    .locals 0

    .line 213
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->scrollPage(I)V

    return-void
.end method

.method private checkIfDragToPage(I)V
    .locals 5

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    .line 252
    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$702(J)J

    .line 254
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$1000(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->mScrollWorker:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 256
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/QSEditPageManager;->canScrollToNextPage()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 257
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$700()J

    move-result-wide v3

    cmp-long v0, v3, v0

    if-nez v0, :cond_4

    if-eqz v2, :cond_4

    .line 258
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$702(J)J

    .line 259
    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$802(I)I

    .line 261
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$1000(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->mScrollWorker:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 262
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$1000(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->mScrollWorker:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$onDrag$0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 370
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->onAfterItemRemoved(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private synthetic lambda$onDrag$1()V
    .locals 2

    const-string v0, "QSEditTileAdapter"

    const-string v1, "post view changing event"

    .line 405
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->onAfterItemAdded(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 409
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .line 410
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$500()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private moveItem()V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .line 225
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 228
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$500()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 229
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$600()I

    move-result v2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 230
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$500()I

    move-result v0

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$600()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 232
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$600()I

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$502(I)I

    return-void
.end method

.method private scrollPage(I)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 236
    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$702(J)J

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 238
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->scrollNextPage()V

    goto :goto_0

    .line 240
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->scrollPrevPage()V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onDrag$0$QSEditTileAdapter$DragListener(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->lambda$onDrag$0(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public synthetic lambda$onDrag$1$QSEditTileAdapter$DragListener()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->lambda$onDrag$1()V

    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 6

    .line 269
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 271
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 272
    instance-of v1, p1, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 273
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v1

    move-object v4, p1

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v4, v1, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroidx/recyclerview/widget/RecyclerView;

    .line 274
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v4}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v4}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isPageFull(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1, p1, p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$1100(Lcom/android/systemui/qs/customize/QSEditTileAdapter;Landroid/view/View;Landroid/view/DragEvent;)I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$602(I)I

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 278
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$1200(Lcom/android/systemui/qs/customize/QSEditTileAdapter;Landroid/view/View;Landroid/view/DragEvent;)I

    move-result p1

    .line 279
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->checkIfDragToPage(I)V

    :cond_1
    return v3

    .line 284
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v4, v1, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroidx/recyclerview/widget/RecyclerView;

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$602(I)I

    .line 288
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v4}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isInLowerPage(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v1

    const-string v4, "QSEditTileAdapter"

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v5}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isInLowerPage(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "from lower to lower, skip it"

    .line 289
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 294
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->canRemoveTile()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v5}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v1, v5, :cond_4

    return v3

    :cond_4
    const/4 v1, -0x1

    if-eq v0, v2, :cond_9

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    const/4 v2, 0x4

    if-eq v0, v2, :cond_7

    const/4 v2, 0x5

    if-eq v0, v2, :cond_5

    goto/16 :goto_3

    .line 304
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, v2, :cond_14

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isInUpperPage(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 305
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$1100(Lcom/android/systemui/qs/customize/QSEditTileAdapter;Landroid/view/View;Landroid/view/DragEvent;)I

    move-result p1

    .line 307
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$500()I

    move-result p2

    if-eq p2, v1, :cond_14

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$600()I

    move-result p2

    if-eq p2, v1, :cond_14

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$500()I

    move-result p2

    if-eq p2, p1, :cond_14

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$600()I

    move-result p1

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$500()I

    move-result p2

    if-ne p1, p2, :cond_6

    goto/16 :goto_3

    .line 310
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->moveItem()V

    goto/16 :goto_3

    .line 394
    :cond_7
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$200()Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isVisible:Z

    if-nez p1, :cond_8

    .line 395
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$200()Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    move-result-object p1

    iput-boolean v3, p1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isVisible:Z

    :cond_8
    const-wide/16 p1, 0x0

    .line 399
    invoke-static {p1, p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$702(J)J

    .line 400
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$1000(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->mScrollWorker:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 401
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->endDragAndDrop()V

    .line 404
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$1000(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/qs/customize/-$$Lambda$QSEditTileAdapter$DragListener$8rZsnprmTFL0WsIM-QCuZjcWhFw;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/customize/-$$Lambda$QSEditTileAdapter$DragListener$8rZsnprmTFL0WsIM-QCuZjcWhFw;-><init>(Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 315
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, v2, :cond_c

    .line 317
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isInUpperPage(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_3

    .line 320
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$1200(Lcom/android/systemui/qs/customize/QSEditTileAdapter;Landroid/view/View;Landroid/view/DragEvent;)I

    move-result v0

    .line 321
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->checkIfDragToPage(I)V

    .line 323
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$1100(Lcom/android/systemui/qs/customize/QSEditTileAdapter;Landroid/view/View;Landroid/view/DragEvent;)I

    move-result p1

    .line 324
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$500()I

    move-result p2

    if-eq p2, p1, :cond_14

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$600()I

    move-result p1

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$500()I

    move-result p2

    if-eq p1, p2, :cond_14

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$500()I

    move-result p1

    if-eq p1, v1, :cond_14

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$600()I

    move-result p1

    if-ne p1, v1, :cond_b

    goto/16 :goto_3

    .line 327
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->moveItem()V

    goto/16 :goto_3

    .line 330
    :cond_c
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$500()I

    move-result p1

    if-eq p1, v1, :cond_14

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$600()I

    move-result p1

    if-ne p1, v1, :cond_d

    goto/16 :goto_3

    .line 335
    :cond_d
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object p2

    iget-object p2, p2, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isInUpperPage(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isInUpperPage(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p2

    if-ne p1, p2, :cond_e

    const/4 p1, 0x0

    goto :goto_1

    :cond_e
    move p1, v3

    :goto_1
    if-nez p1, :cond_f

    .line 339
    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isPageFull(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p2

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isPageEmpty(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p2

    if-eqz p2, :cond_f

    const-string p0, "Moving item in fulled page to empty page, skip it."

    .line 340
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 344
    :cond_f
    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object p2

    iget-object p2, p2, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    .line 345
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    if-eqz p1, :cond_10

    .line 348
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->onBeforeItemAdded(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 349
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->onBeforeItemRemoved(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 352
    :cond_10
    invoke-virtual {p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v1

    .line 353
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$500()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 354
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$500()I

    move-result v2

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 356
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object p2

    .line 358
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$600()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-le v2, v4, :cond_11

    .line 359
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$602(I)I

    .line 361
    :cond_11
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$600()I

    move-result v2

    invoke-interface {p2, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 362
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$600()I

    move-result p2

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    if-eqz p1, :cond_12

    .line 368
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroidx/recyclerview/widget/RecyclerView;

    .line 369
    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$1000(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/qs/customize/-$$Lambda$QSEditTileAdapter$DragListener$_3ph1ImMFmqk5BeISw3amC74Zvo;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/customize/-$$Lambda$QSEditTileAdapter$DragListener$_3ph1ImMFmqk5BeISw3amC74Zvo;-><init>(Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 372
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$600()I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$502(I)I

    goto :goto_2

    .line 374
    :cond_12
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object p2

    iget-object p2, p2, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->rebuildPager(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p1

    if-ne p1, v3, :cond_13

    .line 377
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$600()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$502(I)I

    goto :goto_2

    .line 380
    :cond_13
    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$600()I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$502(I)I

    .line 384
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p0, p1, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroidx/recyclerview/widget/RecyclerView;

    :cond_14
    :goto_3
    return v3
.end method
