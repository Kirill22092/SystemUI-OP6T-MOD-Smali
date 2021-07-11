.class public Lkotlinx/coroutines/internal/LockFreeTaskQueue;
.super Ljava/lang/Object;
.source "LockFreeTaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeTaskQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueue\n+ 2 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 3 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueueCore\n+ 4 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion\n*L\n1#1,316:1\n61#1:321\n62#1:324\n63#1,3:361\n93#2,2:317\n93#2,2:319\n93#2,2:322\n388#2,2:326\n93#2,2:364\n388#2,2:367\n171#3:325\n172#3,2:328\n174#3,28:333\n171#3:366\n172#3,2:369\n174#3,28:374\n308#4,3:330\n308#4,3:371\n*E\n*S KotlinDebug\n*F\n+ 1 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueue\n*L\n57#1:321\n57#1:324\n57#1,3:361\n40#1,2:317\n47#1,2:319\n57#1,2:322\n57#1,2:326\n61#1,2:364\n61#1,2:367\n57#1:325\n57#1,2:328\n57#1,28:333\n61#1:366\n61#1,2:369\n61#1,28:374\n57#1,3:330\n61#1,3:371\n*E\n"
.end annotation


# static fields
.field public static final synthetic _cur$FU$internal:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public volatile synthetic _cur$internal:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/internal/LockFreeTaskQueue;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_cur$internal"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->_cur$FU$internal:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;-><init>(IZ)V

    iput-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->_cur$internal:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final addLast(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->_cur$internal:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .line 48
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->addLast(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 51
    :cond_1
    sget-object v1, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->_cur$FU$internal:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final close()V
    .locals 3

    .line 318
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->_cur$internal:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .line 41
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->close()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 42
    :cond_0
    sget-object v1, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->_cur$FU$internal:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final getSize()I
    .locals 0

    .line 37
    iget-object p0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->_cur$internal:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->getSize()I

    move-result p0

    return p0
.end method

.method public final removeFirstOrNull()Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 323
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->_cur$internal:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .line 327
    :cond_0
    :goto_1
    iget-wide v3, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state$internal:J

    const-wide/high16 v1, 0x1000000000000000L

    and-long/2addr v1, v3

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    .line 172
    sget-object v7, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->REMOVE_FROZEN:Lkotlinx/coroutines/internal/Symbol;

    goto/16 :goto_4

    .line 173
    :cond_1
    sget-object v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    const-wide/32 v1, 0x3fffffff

    and-long/2addr v1, v3

    const/4 v5, 0x0

    shr-long/2addr v1, v5

    long-to-int v8, v1

    const-wide v1, 0xfffffffc0000000L

    and-long/2addr v1, v3

    const/16 v5, 0x1e

    shr-long/2addr v1, v5

    long-to-int v1, v1

    .line 174
    invoke-static {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->access$getMask$p(Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;)I

    move-result v2

    and-int/2addr v1, v2

    invoke-static {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->access$getMask$p(Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;)I

    move-result v2

    and-int/2addr v2, v8

    if-ne v1, v2, :cond_2

    goto :goto_4

    .line 175
    :cond_2
    iget-object v1, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array$internal:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->access$getMask$p(Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;)I

    move-result v2

    and-int/2addr v2, v8

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3

    .line 178
    invoke-static {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->access$getSingleConsumer$p(Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    .line 183
    :cond_3
    instance-of v1, v9, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v8, 0x1

    const v2, 0x3fffffff    # 1.9999999f

    and-int v10, v1, v2

    .line 189
    sget-object v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state$FU$internal:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    invoke-virtual {v2, v3, v4, v10}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;->updateHead(JI)J

    move-result-wide v5

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 192
    iget-object v1, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array$internal:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->access$getMask$p(Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;)I

    move-result v2

    and-int/2addr v2, v8

    invoke-virtual {v1, v2, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_3

    .line 196
    :cond_5
    invoke-static {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->access$getSingleConsumer$p(Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    move-object v1, v0

    .line 201
    :goto_2
    invoke-static {v1, v8, v10}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->access$removeSlowPath(Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;II)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v1

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    :goto_3
    move-object v7, v9

    .line 63
    :goto_4
    sget-object v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->REMOVE_FROZEN:Lkotlinx/coroutines/internal/Symbol;

    if-eq v7, v1, :cond_8

    return-object v7

    .line 64
    :cond_8
    sget-object v1, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->_cur$FU$internal:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
