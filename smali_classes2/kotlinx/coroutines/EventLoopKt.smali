.class public final Lkotlinx/coroutines/EventLoopKt;
.super Ljava/lang/Object;
.source "EventLoop.kt"


# direct methods
.method public static final createEventLoop()Lkotlinx/coroutines/EventLoop;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    new-instance v0, Lkotlinx/coroutines/BlockingEventLoop;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "Thread.currentThread()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lkotlinx/coroutines/BlockingEventLoop;-><init>(Ljava/lang/Thread;)V

    return-object v0
.end method
