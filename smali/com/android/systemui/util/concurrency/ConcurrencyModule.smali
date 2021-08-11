.class public abstract Lcom/android/systemui/util/concurrency/ConcurrencyModule;
.super Ljava/lang/Object;
.source "ConcurrencyModule.java"


# direct methods
.method public static provideBackgroundDelayableExecutor(Landroid/os/Looper;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 1

    new-instance v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static provideBackgroundExecutor(Landroid/os/Looper;)Ljava/util/concurrent/Executor;
    .locals 1

    new-instance v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static provideBackgroundRepeatableExecutor(Lcom/android/systemui/util/concurrency/DelayableExecutor;)Lcom/android/systemui/util/concurrency/RepeatableExecutor;
    .locals 1

    new-instance v0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;-><init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    return-object v0
.end method

.method public static provideBgHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static provideBgLooper()Landroid/os/Looper;
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SysUiBg"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static provideDelayableExecutor(Landroid/os/Looper;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 1

    new-instance v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static provideExecutor(Landroid/os/Looper;)Ljava/util/concurrent/Executor;
    .locals 1

    new-instance v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static provideHandler()Landroid/os/Handler;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-object v0
.end method

.method public static provideLongRunningExecutor(Landroid/os/Looper;)Ljava/util/concurrent/Executor;
    .locals 1

    new-instance v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static provideLongRunningLooper()Landroid/os/Looper;
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SysUiLng"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static provideMainDelayableExecutor(Landroid/os/Looper;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 1

    new-instance v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static provideMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method public static provideMainHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static provideMainLooper()Landroid/os/Looper;
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static provideUiBackgroundExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method
