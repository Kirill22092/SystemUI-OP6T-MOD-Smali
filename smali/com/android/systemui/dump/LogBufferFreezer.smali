.class public final Lcom/android/systemui/dump/LogBufferFreezer;
.super Ljava/lang/Object;
.source "LogBufferFreezer.kt"


# instance fields
.field private final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field private final executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final freezeDuration:J

.field private pendingToken:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 3
    .param p1    # Lcom/android/systemui/dump/DumpManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/util/concurrency/DelayableExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dumpManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/dump/LogBufferFreezer;-><init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;J)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;J)V
    .locals 1
    .param p1    # Lcom/android/systemui/dump/DumpManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/util/concurrency/DelayableExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dumpManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dump/LogBufferFreezer;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    iput-object p2, p0, Lcom/android/systemui/dump/LogBufferFreezer;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-wide p3, p0, Lcom/android/systemui/dump/LogBufferFreezer;->freezeDuration:J

    return-void
.end method

.method public static final synthetic access$getDumpManager$p(Lcom/android/systemui/dump/LogBufferFreezer;)Lcom/android/systemui/dump/DumpManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/systemui/dump/LogBufferFreezer;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    return-object p0
.end method

.method public static final synthetic access$onBugreportStarted(Lcom/android/systemui/dump/LogBufferFreezer;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/systemui/dump/LogBufferFreezer;->onBugreportStarted()V

    return-void
.end method

.method public static final synthetic access$setPendingToken$p(Lcom/android/systemui/dump/LogBufferFreezer;Ljava/lang/Runnable;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/android/systemui/dump/LogBufferFreezer;->pendingToken:Ljava/lang/Runnable;

    return-void
.end method

.method private final onBugreportStarted()V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/android/systemui/dump/LogBufferFreezer;->pendingToken:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const-string v0, "LogBufferFreezer"

    const-string v1, "Freezing log buffers"

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/android/systemui/dump/LogBufferFreezer;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {v0}, Lcom/android/systemui/dump/DumpManager;->freezeBuffers()V

    .line 61
    iget-object v0, p0, Lcom/android/systemui/dump/LogBufferFreezer;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/dump/LogBufferFreezer$onBugreportStarted$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/dump/LogBufferFreezer$onBugreportStarted$1;-><init>(Lcom/android/systemui/dump/LogBufferFreezer;)V

    .line 65
    iget-wide v2, p0, Lcom/android/systemui/dump/LogBufferFreezer;->freezeDuration:J

    .line 61
    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dump/LogBufferFreezer;->pendingToken:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 4
    .param p1    # Lcom/android/systemui/broadcast/BroadcastDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "broadcastDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/android/systemui/dump/LogBufferFreezer$attach$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/dump/LogBufferFreezer$attach$1;-><init>(Lcom/android/systemui/dump/LogBufferFreezer;)V

    .line 50
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.internal.intent.action.BUGREPORT_STARTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 51
    iget-object p0, p0, Lcom/android/systemui/dump/LogBufferFreezer;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 52
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "UserHandle.ALL"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1, v0, v1, p0, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    return-void
.end method
