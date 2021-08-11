.class public Lcom/android/systemui/shared/tracing/FrameProtoTracer;
.super Ljava/lang/Object;
.source "FrameProtoTracer.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/tracing/FrameProtoTracer$ProtoTraceParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "S:TP;T:TP;R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/view/Choreographer$FrameCallback;"
    }
.end annotation


# instance fields
.field private final mBuffer:Lcom/android/internal/util/TraceBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/TraceBuffer<",
            "TP;TS;TT;>;"
        }
    .end annotation
.end field

.field private volatile mEnabled:Z

.field private final mLock:Ljava/lang/Object;

.field private final mParams:Lcom/android/systemui/shared/tracing/FrameProtoTracer$ProtoTraceParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/shared/tracing/FrameProtoTracer$ProtoTraceParams<",
            "TP;TS;TT;TR;>;"
        }
    .end annotation
.end field

.field private final mPool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mProvider:Lcom/android/internal/util/TraceBuffer$ProtoProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/TraceBuffer$ProtoProvider<",
            "TP;TS;TT;>;"
        }
    .end annotation
.end field

.field private final mTmpTraceables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/tracing/ProtoTraceable<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field private final mTraceFile:Ljava/io/File;

.field private final mTraceables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/tracing/ProtoTraceable<",
            "TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/tracing/FrameProtoTracer$ProtoTraceParams;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/tracing/FrameProtoTracer$ProtoTraceParams<",
            "TP;TS;TT;TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mPool:Ljava/util/Queue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mTraceables:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mTmpTraceables:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/shared/tracing/FrameProtoTracer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/tracing/FrameProtoTracer$1;-><init>(Lcom/android/systemui/shared/tracing/FrameProtoTracer;)V

    iput-object v0, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mProvider:Lcom/android/internal/util/TraceBuffer$ProtoProvider;

    iput-object p1, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mParams:Lcom/android/systemui/shared/tracing/FrameProtoTracer$ProtoTraceParams;

    new-instance v0, Lcom/android/internal/util/TraceBuffer;

    iget-object v1, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mProvider:Lcom/android/internal/util/TraceBuffer$ProtoProvider;

    new-instance v2, Lcom/android/systemui/shared/tracing/FrameProtoTracer$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/shared/tracing/FrameProtoTracer$2;-><init>(Lcom/android/systemui/shared/tracing/FrameProtoTracer;)V

    const/high16 v3, 0x100000

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/util/TraceBuffer;-><init>(ILcom/android/internal/util/TraceBuffer$ProtoProvider;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-interface {p1}, Lcom/android/systemui/shared/tracing/FrameProtoTracer$ProtoTraceParams;->getTraceFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mTraceFile:Ljava/io/File;

    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/shared/tracing/FrameProtoTracer;)Lcom/android/systemui/shared/tracing/FrameProtoTracer$ProtoTraceParams;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mParams:Lcom/android/systemui/shared/tracing/FrameProtoTracer$ProtoTraceParams;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/shared/tracing/FrameProtoTracer;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->onProtoDequeued(Ljava/lang/Object;)V

    return-void
.end method

.method private logState()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mTmpTraceables:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mTraceables:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    iget-object v1, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mParams:Lcom/android/systemui/shared/tracing/FrameProtoTracer$ProtoTraceParams;

    iget-object v2, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mPool:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mTmpTraceables:Ljava/util/ArrayList;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/shared/tracing/FrameProtoTracer$ProtoTraceParams;->updateBufferProto(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mTmpTraceables:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private onProtoDequeued(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mPool:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private writeToFile()V
    .locals 2

    :try_start_0
    const-string v0, "ProtoTracer.writeToFile"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    iget-object v1, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mTraceFile:Ljava/io/File;

    iget-object p0, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mParams:Lcom/android/systemui/shared/tracing/FrameProtoTracer$ProtoTraceParams;

    invoke-interface {p0}, Lcom/android/systemui/shared/tracing/FrameProtoTracer$ProtoTraceParams;->getEncapsulatingTraceProto()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string v0, "FrameProtoTracer"

    const-string v1, "Unable to write buffer to file"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method


# virtual methods
.method public add(Lcom/android/systemui/shared/tracing/ProtoTraceable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/tracing/ProtoTraceable<",
            "TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mTraceables:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public doFrame(J)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->logState()V

    return-void
.end method

.method public getBufferUsagePct()F
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0}, Lcom/android/internal/util/TraceBuffer;->getBufferSize()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x49800000    # 1048576.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mEnabled:Z

    return p0
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mEnabled:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mEnabled:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->logState()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mEnabled:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mEnabled:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->writeToFile()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public update()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->logState()V

    return-void
.end method
