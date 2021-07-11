.class public final Lkotlinx/coroutines/scheduling/WorkQueue;
.super Ljava/lang/Object;
.source "WorkQueue.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWorkQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueue\n+ 2 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueue$pollExternal$1\n*L\n1#1,203:1\n167#1,7:204\n174#1,5:212\n168#1,11:217\n167#1,7:228\n174#1,5:236\n167#1,7:241\n174#1,5:249\n168#1,14:254\n167#2:211\n167#2:235\n167#2:248\n*E\n*S KotlinDebug\n*F\n+ 1 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueue\n*L\n66#1,7:204\n66#1,5:212\n108#1,11:217\n142#1,7:228\n142#1,5:236\n160#1,7:241\n160#1,5:249\n66#1:211\n142#1:235\n160#1:248\n*E\n"
.end annotation


# static fields
.field static final consumerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final lastScheduledTask$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field static final producerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lkotlinx/coroutines/scheduling/Task;",
            ">;"
        }
    .end annotation
.end field

.field volatile consumerIndex:I

.field private volatile lastScheduledTask:Ljava/lang/Object;

.field volatile producerIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/scheduling/WorkQueue;

    const-class v1, Ljava/lang/Object;

    const-string v2, "lastScheduledTask"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex:I

    .line 59
    iput v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex:I

    return-void
.end method

.method public static final synthetic access$getBuffer$p(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 0

    .line 36
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object p0
.end method

.method private final addToGlobalQueue(Lkotlinx/coroutines/scheduling/GlobalQueue;Lkotlinx/coroutines/scheduling/Task;)V
    .locals 0

    .line 154
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->addLast(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "GlobalQueue could not be closed yet"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final offloadWork(Lkotlinx/coroutines/scheduling/GlobalQueue;)V
    .locals 7

    .line 142
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->getBufferSize$kotlinx_coroutines_core()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 169
    :cond_0
    iget v2, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex:I

    .line 170
    iget v3, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex:I

    sub-int v3, v2, v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    and-int/lit8 v3, v2, 0x7f

    .line 172
    invoke-static {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->access$getBuffer$p(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v5, :cond_0

    .line 176
    sget-object v5, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, p0, v2, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    invoke-static {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->access$getBuffer$p(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/scheduling/Task;

    :goto_1
    if-eqz v4, :cond_2

    .line 144
    invoke-direct {p0, p1, v4}, Lkotlinx/coroutines/scheduling/WorkQueue;->addToGlobalQueue(Lkotlinx/coroutines/scheduling/GlobalQueue;Lkotlinx/coroutines/scheduling/Task;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final tryAddLast(Lkotlinx/coroutines/scheduling/Task;)Z
    .locals 3

    .line 185
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->getBufferSize$kotlinx_coroutines_core()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x7f

    if-ne v0, v2, :cond_0

    return v1

    .line 186
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex:I

    and-int/2addr v0, v2

    .line 194
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    return v1

    .line 198
    :cond_1
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 199
    sget-object p1, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    const/4 p0, 0x1

    return p0
.end method

.method private final tryStealLastScheduled(JLkotlinx/coroutines/scheduling/WorkQueue;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z
    .locals 4

    .line 124
    iget-object v0, p3, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 125
    iget-wide v2, v0, Lkotlinx/coroutines/scheduling/Task;->submissionTime:J

    sub-long/2addr p1, v2

    sget-wide v2, Lkotlinx/coroutines/scheduling/TasksKt;->WORK_STEALING_TIME_RESOLUTION_NS:J

    cmp-long p1, p1, v2

    if-gez p1, :cond_0

    return v1

    .line 129
    :cond_0
    sget-object p1, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 p2, 0x0

    invoke-virtual {p1, p3, v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 130
    invoke-virtual {p0, v0, p4}, Lkotlinx/coroutines/scheduling/WorkQueue;->add(Lkotlinx/coroutines/scheduling/Task;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method


# virtual methods
.method public final add(Lkotlinx/coroutines/scheduling/Task;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z
    .locals 1
    .param p1    # Lkotlinx/coroutines/scheduling/Task;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/scheduling/GlobalQueue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalQueue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/scheduling/Task;

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/scheduling/WorkQueue;->addLast(Lkotlinx/coroutines/scheduling/Task;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final addLast(Lkotlinx/coroutines/scheduling/Task;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z
    .locals 2
    .param p1    # Lkotlinx/coroutines/scheduling/Task;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/scheduling/GlobalQueue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalQueue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 87
    :goto_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/WorkQueue;->tryAddLast(Lkotlinx/coroutines/scheduling/Task;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    invoke-direct {p0, p2}, Lkotlinx/coroutines/scheduling/WorkQueue;->offloadWork(Lkotlinx/coroutines/scheduling/GlobalQueue;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final getBufferSize$kotlinx_coroutines_core()I
    .locals 1

    .line 51
    iget v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex:I

    iget p0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final offloadAllWork$kotlinx_coroutines_core(Lkotlinx/coroutines/scheduling/GlobalQueue;)V
    .locals 5
    .param p1    # Lkotlinx/coroutines/scheduling/GlobalQueue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "globalQueue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    sget-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/scheduling/WorkQueue;->addToGlobalQueue(Lkotlinx/coroutines/scheduling/GlobalQueue;Lkotlinx/coroutines/scheduling/Task;)V

    .line 169
    :cond_0
    :goto_0
    iget v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex:I

    .line 170
    iget v2, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex:I

    sub-int v2, v0, v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    and-int/lit8 v2, v0, 0x7f

    .line 172
    invoke-static {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->access$getBuffer$p(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v3, :cond_0

    .line 176
    sget-object v3, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-static {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->access$getBuffer$p(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    :goto_1
    if-eqz v0, :cond_2

    .line 160
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/scheduling/WorkQueue;->addToGlobalQueue(Lkotlinx/coroutines/scheduling/GlobalQueue;Lkotlinx/coroutines/scheduling/Task;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final poll()Lkotlinx/coroutines/scheduling/Task;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 66
    sget-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 169
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex:I

    .line 170
    iget v2, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex:I

    sub-int v2, v0, v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    and-int/lit8 v2, v0, 0x7f

    .line 172
    invoke-static {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->access$getBuffer$p(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v3, :cond_0

    .line 176
    sget-object v3, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-static {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->access$getBuffer$p(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/scheduling/Task;

    :goto_0
    return-object v1
.end method

.method public final size$kotlinx_coroutines_core()I
    .locals 1

    .line 136
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask:Ljava/lang/Object;

    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->getBufferSize$kotlinx_coroutines_core()I

    move-result p0

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    :cond_0
    return p0
.end method

.method public final trySteal(Lkotlinx/coroutines/scheduling/WorkQueue;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z
    .locals 17
    .param p1    # Lkotlinx/coroutines/scheduling/WorkQueue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/scheduling/GlobalQueue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "victim"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "globalQueue"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget-object v3, Lkotlinx/coroutines/scheduling/TasksKt;->schedulerTimeSource:Lkotlinx/coroutines/scheduling/TimeSource;

    invoke-virtual {v3}, Lkotlinx/coroutines/scheduling/TimeSource;->nanoTime()J

    move-result-wide v3

    .line 101
    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/scheduling/WorkQueue;->getBufferSize$kotlinx_coroutines_core()I

    move-result v5

    if-nez v5, :cond_0

    .line 102
    invoke-direct {v0, v3, v4, v1, v2}, Lkotlinx/coroutines/scheduling/WorkQueue;->tryStealLastScheduled(JLkotlinx/coroutines/scheduling/WorkQueue;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z

    move-result v0

    return v0

    .line 108
    :cond_0
    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v5

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :goto_0
    if-ge v8, v5, :cond_6

    .line 169
    :cond_1
    iget v10, v1, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex:I

    .line 170
    iget v11, v1, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex:I

    sub-int v11, v10, v11

    const/4 v12, 0x0

    if-nez v11, :cond_2

    goto :goto_3

    :cond_2
    and-int/lit8 v11, v10, 0x7f

    .line 172
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/scheduling/WorkQueue;->access$getBuffer$p(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v13, :cond_1

    .line 110
    iget-wide v13, v13, Lkotlinx/coroutines/scheduling/Task;->submissionTime:J

    sub-long v13, v3, v13

    sget-wide v15, Lkotlinx/coroutines/scheduling/TasksKt;->WORK_STEALING_TIME_RESOLUTION_NS:J

    cmp-long v13, v13, v15

    if-gez v13, :cond_4

    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/scheduling/WorkQueue;->getBufferSize$kotlinx_coroutines_core()I

    move-result v13

    sget v14, Lkotlinx/coroutines/scheduling/TasksKt;->QUEUE_SIZE_OFFLOAD_THRESHOLD:I

    if-le v13, v14, :cond_3

    goto :goto_1

    :cond_3
    move v13, v7

    goto :goto_2

    :cond_4
    :goto_1
    move v13, v6

    :goto_2
    if-nez v13, :cond_5

    goto :goto_3

    .line 176
    :cond_5
    sget-object v13, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v13, v1, v10, v14}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 178
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/scheduling/WorkQueue;->access$getBuffer$p(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v10

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Lkotlinx/coroutines/scheduling/Task;

    :goto_3
    if-eqz v12, :cond_6

    .line 114
    invoke-virtual {v0, v12, v2}, Lkotlinx/coroutines/scheduling/WorkQueue;->add(Lkotlinx/coroutines/scheduling/Task;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z

    add-int/lit8 v8, v8, 0x1

    move v9, v6

    goto :goto_0

    :cond_6
    return v9
.end method
