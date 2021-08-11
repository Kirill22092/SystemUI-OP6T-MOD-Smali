.class public interface abstract Lkotlinx/coroutines/internal/ThreadSafeHeapNode;
.super Ljava/lang/Object;
.source "ThreadSafeHeap.common.kt"


# virtual methods
.method public abstract getHeap()Lkotlinx/coroutines/internal/ThreadSafeHeap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/internal/ThreadSafeHeap<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getIndex()I
.end method

.method public abstract setHeap(Lkotlinx/coroutines/internal/ThreadSafeHeap;)V
    .param p1    # Lkotlinx/coroutines/internal/ThreadSafeHeap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/ThreadSafeHeap<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract setIndex(I)V
.end method
