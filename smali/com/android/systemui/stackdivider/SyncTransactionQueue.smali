.class Lcom/android/systemui/stackdivider/SyncTransactionQueue;
.super Ljava/lang/Object;
.source "SyncTransactionQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;,
        Lcom/android/systemui/stackdivider/SyncTransactionQueue$TransactionRunnable;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mInFlight:Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;

.field private final mOnReplyTimeout:Ljava/lang/Runnable;

.field private final mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/stackdivider/SyncTransactionQueue$TransactionRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransactionPool:Lcom/android/systemui/TransactionPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    sget-boolean v0, Lcom/android/systemui/stackdivider/Divider;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/TransactionPool;Landroid/os/Handler;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mQueue:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mInFlight:Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mRunnables:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Lcom/android/systemui/stackdivider/-$$Lambda$SyncTransactionQueue$3R1SopzfkzcMF9bQ5SW13TqpBDA;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$SyncTransactionQueue$3R1SopzfkzcMF9bQ5SW13TqpBDA;-><init>(Lcom/android/systemui/stackdivider/SyncTransactionQueue;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mOnReplyTimeout:Ljava/lang/Runnable;

    .line 62
    iput-object p1, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    .line 63
    iput-object p2, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/stackdivider/SyncTransactionQueue;)Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mInFlight:Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/stackdivider/SyncTransactionQueue;Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;)Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mInFlight:Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;

    return-object p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 35
    sget-boolean v0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/stackdivider/SyncTransactionQueue;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mOnReplyTimeout:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/stackdivider/SyncTransactionQueue;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/stackdivider/SyncTransactionQueue;)Ljava/util/ArrayList;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mQueue:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/stackdivider/SyncTransactionQueue;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->onTransactionReceived(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mInFlight:Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mQueue:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mInFlight:Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SyncTransactionQueue"

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sync Transaction timed-out: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mInFlight:Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;

    iget-object v3, v3, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->mWCT:Landroid/window/WindowContainerTransaction;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v1, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mInFlight:Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mInFlight:Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;

    iget p0, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->mId:I

    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V

    .line 58
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onTransactionReceived(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    .line 121
    sget-boolean v0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Running "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sync runnables"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncTransactionQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 122
    iget-object v1, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 123
    iget-object v2, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/stackdivider/SyncTransactionQueue$TransactionRunnable;

    invoke-interface {v2, p1}, Lcom/android/systemui/stackdivider/SyncTransactionQueue$TransactionRunnable;->runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mRunnables:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 126
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 127
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$SyncTransactionQueue()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->lambda$new$0()V

    return-void
.end method

.method queue(Landroid/window/WindowContainerTransaction;)V
    .locals 5

    .line 70
    new-instance v0, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;-><init>(Lcom/android/systemui/stackdivider/SyncTransactionQueue;Landroid/window/WindowContainerTransaction;)V

    .line 71
    iget-object v1, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 72
    :try_start_0
    sget-boolean v2, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SyncTransactionQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Queueing up "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object p0, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    .line 75
    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->send()V

    .line 77
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method queueIfWaiting(Landroid/window/WindowContainerTransaction;)Z
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    sget-boolean p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "SyncTransactionQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nothing in queue, so skip queueing up "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    .line 89
    monitor-exit v0

    return p0

    .line 91
    :cond_1
    sget-boolean v1, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "SyncTransactionQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Queue is non-empty, so queueing up "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_2
    new-instance v1, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;-><init>(Lcom/android/systemui/stackdivider/SyncTransactionQueue;Landroid/window/WindowContainerTransaction;)V

    .line 93
    iget-object p1, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object p0, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_3

    .line 95
    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;->send()V

    .line 97
    :cond_3
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method runInSync(Lcom/android/systemui/stackdivider/SyncTransactionQueue$TransactionRunnable;)V
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 107
    :try_start_0
    sget-boolean v1, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SyncTransactionQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Run in sync. mInFlight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mInFlight:Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mInFlight:Lcom/android/systemui/stackdivider/SyncTransactionQueue$SyncCallback;

    if-eqz v1, :cond_1

    .line 109
    iget-object p0, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mRunnables:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    monitor-exit v0

    return-void

    .line 112
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    invoke-virtual {v0}, Lcom/android/systemui/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 114
    invoke-interface {p1, v0}, Lcom/android/systemui/stackdivider/SyncTransactionQueue$TransactionRunnable;->runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 115
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 116
    iget-object p0, p0, Lcom/android/systemui/stackdivider/SyncTransactionQueue;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    invoke-virtual {p0, v0}, Lcom/android/systemui/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :catchall_0
    move-exception p0

    .line 112
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
