.class Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;
.super Ljava/lang/Object;
.source "AdapterHelper.java"

# interfaces
.implements Lcom/oneplus/lib/widget/recyclerview/OpReorderer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;,
        Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    }
.end annotation


# instance fields
.field final mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

.field final mDisableRecycler:Z

.field mOnItemProcessedCallback:Ljava/lang/Runnable;

.field final mOpReorderer:Lcom/oneplus/lib/widget/recyclerview/OpReorderer;

.field final mPendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field final mPostponedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateOpPool:Lcom/oneplus/lib/widget/recyclerview/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/lib/widget/recyclerview/Pools$Pool<",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;-><init>(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;Z)V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;Z)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mUpdateOpPool:Lcom/oneplus/lib/widget/recyclerview/Pools$Pool;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 75
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    .line 76
    iput-boolean p2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mDisableRecycler:Z

    .line 77
    new-instance p1, Lcom/oneplus/lib/widget/recyclerview/OpReorderer;

    invoke-direct {p1, p0}, Lcom/oneplus/lib/widget/recyclerview/OpReorderer;-><init>(Lcom/oneplus/lib/widget/recyclerview/OpReorderer$Callback;)V

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mOpReorderer:Lcom/oneplus/lib/widget/recyclerview/OpReorderer;

    return-void
.end method

.method private applyAdd(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 0

    .line 429
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    return-void
.end method

.method private applyMove(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    return-void
.end method

.method private applyRemove(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 9

    .line 131
    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 133
    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v2

    move v5, v3

    move v3, v1

    move v1, v0

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v1, v3, :cond_5

    .line 137
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    invoke-interface {v8, v1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->findViewHolder(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v8

    if-nez v8, :cond_2

    .line 138
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    if-ne v5, v7, :cond_1

    .line 159
    invoke-virtual {p0, v7, v0, v4, v6}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v5

    .line 160
    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    move v6, v2

    goto :goto_4

    :cond_2
    :goto_2
    if-nez v5, :cond_3

    .line 148
    invoke-virtual {p0, v7, v0, v4, v6}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v5

    .line 149
    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    move v5, v7

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    move v6, v7

    :goto_4
    if-eqz v5, :cond_4

    sub-int/2addr v1, v4

    sub-int/2addr v3, v4

    move v4, v7

    goto :goto_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    :goto_5
    add-int/2addr v1, v7

    move v5, v6

    goto :goto_0

    .line 173
    :cond_5
    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v4, v1, :cond_6

    .line 174
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 175
    invoke-virtual {p0, v7, v0, v4, v6}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object p1

    :cond_6
    if-nez v5, :cond_7

    .line 178
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    goto :goto_6

    .line 180
    :cond_7
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    :goto_6
    return-void
.end method

.method private applyUpdate(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 9

    .line 185
    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 187
    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v0

    move v5, v3

    move v3, v2

    :goto_0
    const/4 v6, 0x2

    if-ge v0, v1, :cond_4

    .line 190
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    invoke-interface {v7, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->findViewHolder(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_2

    .line 191
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    if-ne v5, v8, :cond_1

    .line 202
    iget-object v5, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v6, v4, v3, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v3

    .line 204
    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    move v4, v0

    move v3, v2

    :cond_1
    move v5, v2

    goto :goto_2

    :cond_2
    :goto_1
    if-nez v5, :cond_3

    .line 193
    iget-object v5, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v6, v4, v3, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v3

    .line 195
    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    move v4, v0

    move v3, v2

    :cond_3
    move v5, v8

    :goto_2
    add-int/2addr v3, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_4
    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v3, v0, :cond_5

    .line 213
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 214
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 215
    invoke-virtual {p0, v6, v4, v3, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object p1

    :cond_5
    if-nez v5, :cond_6

    .line 218
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    goto :goto_3

    .line 220
    :cond_6
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    :goto_3
    return-void
.end method

.method private canFindInPreLayout(I)Z
    .locals 7

    .line 408
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 410
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 411
    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    .line 412
    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->findPositionOffset(II)I

    move-result v3

    if-ne v3, p1, :cond_2

    return v6

    :cond_0
    if-nez v4, :cond_2

    .line 417
    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    :goto_1
    if-ge v4, v3, :cond_2

    add-int/lit8 v5, v2, 0x1

    .line 419
    invoke-virtual {p0, v4, v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->findPositionOffset(II)I

    move-result v5

    if-ne v5, p1, :cond_1

    return v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private dispatchAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 11

    .line 228
    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-eqz v0, :cond_9

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    .line 242
    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    invoke-direct {p0, v1, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v0

    .line 247
    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 249
    iget v2, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    if-ne v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    .line 257
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "op should be remove or update."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move v2, v4

    :goto_0
    move v6, v0

    move v7, v1

    move v0, v5

    move v1, v0

    .line 259
    :goto_1
    iget v8, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v0, v8, :cond_7

    .line 260
    iget v8, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    mul-int v9, v2, v0

    add-int/2addr v8, v9

    .line 261
    iget v9, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v8, v9}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v8

    .line 266
    iget v9, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-eq v9, v5, :cond_4

    if-eq v9, v3, :cond_3

    :cond_2
    move v9, v4

    goto :goto_3

    :cond_3
    add-int/lit8 v9, v6, 0x1

    if-ne v8, v9, :cond_2

    :goto_2
    move v9, v5

    goto :goto_3

    :cond_4
    if-ne v8, v6, :cond_2

    goto :goto_2

    :goto_3
    if-eqz v9, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 278
    :cond_5
    iget v9, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    iget-object v10, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v9, v6, v1, v10}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object v6

    .line 282
    invoke-virtual {p0, v6, v7}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;I)V

    .line 283
    invoke-virtual {p0, v6}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 284
    iget v6, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-ne v6, v3, :cond_6

    add-int/2addr v7, v1

    :cond_6
    move v1, v5

    move v6, v8

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 291
    :cond_7
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 292
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    if-lez v1, :cond_8

    .line 294
    iget p1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    invoke-virtual {p0, p1, v6, v1, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    move-result-object p1

    .line 298
    invoke-virtual {p0, p1, v7}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;I)V

    .line 299
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    :cond_8
    return-void

    .line 229
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "should not dispatch add or move for pre layout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private postponeAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 442
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {p0, v0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_0

    .line 452
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown update op type for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 449
    :cond_1
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget-object p1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {p0, v0, v1, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_0

    .line 445
    :cond_2
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {p0, v0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->offsetPositionsForRemovingLaidOutOrNewView(II)V

    goto :goto_0

    .line 439
    :cond_3
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {p0, v0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    :goto_0
    return-void
.end method

.method private updatePositionWithPostponed(II)I
    .locals 6

    .line 327
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x3

    if-ltz v0, :cond_d

    .line 329
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 330
    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-ne v4, v2, :cond_8

    .line 332
    iget v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v2, v4, :cond_0

    goto :goto_1

    :cond_0
    move v5, v4

    move v4, v2

    move v2, v5

    :goto_1
    if-lt p1, v2, :cond_6

    if-gt p1, v4, :cond_6

    .line 341
    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v2, v4, :cond_3

    if-nez p2, :cond_1

    .line 343
    iget v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v1

    iput v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_2

    :cond_1
    if-ne p2, v1, :cond_2

    .line 345
    iget v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v2, v1

    iput v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_3
    if-nez p2, :cond_4

    add-int/lit8 v4, v4, 0x1

    .line 351
    iput v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_3

    :cond_4
    if-ne p2, v1, :cond_5

    add-int/lit8 v4, v4, -0x1

    .line 353
    iput v4, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    :cond_5
    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    .line 358
    :cond_6
    iget v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-ge p1, v2, :cond_c

    if-nez p2, :cond_7

    add-int/lit8 v2, v2, 0x1

    .line 361
    iput v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 362
    iget v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v1

    iput v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_4

    :cond_7
    if-ne p2, v1, :cond_c

    add-int/lit8 v2, v2, -0x1

    .line 364
    iput v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 365
    iget v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v2, v1

    iput v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_4

    .line 369
    :cond_8
    iget v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v2, p1, :cond_a

    if-nez v4, :cond_9

    .line 371
    iget v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v2

    goto :goto_4

    :cond_9
    if-ne v4, v1, :cond_c

    .line 373
    iget v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v2

    goto :goto_4

    :cond_a
    if-nez p2, :cond_b

    add-int/lit8 v2, v2, 0x1

    .line 377
    iput v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_4

    :cond_b
    if-ne p2, v1, :cond_c

    add-int/lit8 v2, v2, -0x1

    .line 379
    iput v2, v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    :cond_c
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 392
    :cond_d
    iget-object p2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_5
    if-ltz p2, :cond_11

    .line 393
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 394
    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-ne v1, v2, :cond_f

    .line 395
    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget v3, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v1, v3, :cond_e

    if-gez v1, :cond_10

    .line 396
    :cond_e
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 397
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    goto :goto_6

    .line 399
    :cond_f
    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-gtz v1, :cond_10

    .line 400
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 401
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    :cond_10
    :goto_6
    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    :cond_11
    return p1
.end method


# virtual methods
.method consumePostponedUpdates()V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 119
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    invoke-interface {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    return-void
.end method

.method consumeUpdatesInOnePass()V
    .locals 6

    .line 537
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->consumePostponedUpdates()V

    .line 538
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 540
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 541
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 555
    :cond_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 556
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_1

    .line 551
    :cond_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 552
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_1

    .line 547
    :cond_2
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 548
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    goto :goto_1

    .line 543
    :cond_3
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 544
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    .line 559
    :goto_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_4

    .line 560
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 563
    :cond_5
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    return-void
.end method

.method dispatchFirstPassAndUpdateViewHolders(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;I)V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->onDispatchFirstPass(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 313
    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 318
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget-object p1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {p0, p2, v0, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_0

    .line 321
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "only remove and update ops can be dispatched in first pass"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 315
    :cond_1
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;

    iget p1, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {p0, p2, p1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    :goto_0
    return-void
.end method

.method findPositionOffset(II)I
    .locals 5

    .line 465
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_6

    .line 467
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 468
    iget v2, v1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 469
    iget v2, v1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v2, p1, :cond_0

    .line 470
    iget p1, v1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1

    :cond_0
    if-ge v2, p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 475
    :cond_1
    iget v1, v1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v1, p1, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 479
    :cond_2
    iget v3, v1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_5

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    .line 481
    iget v1, v1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v1

    if-ge p1, v3, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    sub-int/2addr p1, v1

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    .line 486
    iget v1, v1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v1

    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return p1
.end method

.method hasPendingUpdates()Z
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public obtainUpdateOp(IIILjava/lang/Object;)Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;
    .locals 0

    .line 702
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mUpdateOpPool:Lcom/oneplus/lib/widget/recyclerview/Pools$Pool;

    invoke-interface {p0}, Lcom/oneplus/lib/widget/recyclerview/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    if-nez p0, :cond_0

    .line 704
    new-instance p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;-><init>(IIILjava/lang/Object;)V

    goto :goto_0

    .line 706
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    .line 707
    iput p2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    .line 708
    iput p3, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    .line 709
    iput-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method preProcess()V
    .locals 5

    .line 91
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mOpReorderer:Lcom/oneplus/lib/widget/recyclerview/OpReorderer;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/OpReorderer;->reorderOps(Ljava/util/List;)V

    .line 92
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 94
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 95
    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 106
    :cond_0
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->applyMove(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 103
    :cond_1
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->applyUpdate(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 100
    :cond_2
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->applyRemove(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 97
    :cond_3
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->applyAdd(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 109
    :goto_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_4

    .line 110
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_5
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 1

    .line 716
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mDisableRecycler:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 717
    iput-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 718
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mUpdateOpPool:Lcom/oneplus/lib/widget/recyclerview/Pools$Pool;

    invoke-interface {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method recycleUpdateOpsAndClearList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .line 723
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 725
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOp(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 727
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method reset()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 87
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    return-void
.end method
