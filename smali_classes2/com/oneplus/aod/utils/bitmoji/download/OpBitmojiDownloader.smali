.class public Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;
.super Ljava/lang/Object;
.source "OpBitmojiDownloader.java"


# instance fields
.field private mDownloadMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mForceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPool:Ljava/util/concurrent/ExecutorService;

.field public mTaskListener:Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask$OnTaskListener;

.field private mTotalCount:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader$1;-><init>(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;)V

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mTaskListener:Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask$OnTaskListener;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mDownloadMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mForceMap:Ljava/util/HashMap;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":run"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mDownloadMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mForceMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->wakeLockRelease(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->clearCounter()V

    return-void
.end method

.method private clearCounter()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mTotalCount:I

    return-void
.end method

.method private getRunningTaskCountInner()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mDownloadMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mDownloadMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private wakeLockAcquire(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wakeLockAcquire: reason= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpBitmojiDownloader"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_1
    return-void
.end method

.method private wakeLockRelease(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mDownloadMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wakeLockRelease: reason= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpBitmojiDownloader"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void
.end method


# virtual methods
.method public enqueue(Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enqueue: key= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->key()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBitmojiDownloader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mTaskListener:Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask$OnTaskListener;

    invoke-virtual {p1, v0}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->setTaskListener(Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask$OnTaskListener;)V

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mDownloadMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    const-string v1, "enqueue"

    invoke-direct {p0, v1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->wakeLockAcquire(Ljava/lang/String;)V

    instance-of v1, p1, Lcom/oneplus/aod/utils/bitmoji/download/task/AvatarDownloadTask;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mTotalCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mTotalCount:I

    :goto_0
    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mDownloadMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->key()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mForceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->key()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->isForce()Z

    move-result p1

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->shouldNotifyDownloadStatusChange()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getDownloadingList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mDownloadMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mDownloadMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRunningTaskCount()I
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mDownloadMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mDownloadMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mDownloadMap:Ljava/util/HashMap;

    const-string v2, "avatar"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTotalCount()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mDownloadMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mTotalCount:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hasForceData()Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mDownloadMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mForceMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hasUndoneTask()Z
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->getRunningTaskCountInner()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public stopAll()V
    .locals 4

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpBitmojiDownloader"

    const-string v1, "stopAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mDownloadMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mDownloadMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mDownloadMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->mForceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->clearCounter()V

    const-string v1, "stopAll"

    invoke-direct {p0, v1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->wakeLockRelease(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->shouldNotifyDownloadStatusChange()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
