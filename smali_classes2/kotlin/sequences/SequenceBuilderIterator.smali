.class final Lkotlin/sequences/SequenceBuilderIterator;
.super Lkotlin/sequences/SequenceScope;
.source "SequenceBuilder.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/coroutines/Continuation;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/sequences/SequenceScope<",
        "TT;>;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lkotlin/coroutines/Continuation<",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSequenceBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SequenceBuilder.kt\nkotlin/sequences/SequenceBuilderIterator\n*L\n1#1,201:1\n*E\n"
.end annotation


# instance fields
.field private nextIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private nextStep:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private nextValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Lkotlin/sequences/SequenceScope;-><init>()V

    return-void
.end method

.method private final exceptionalState()Ljava/lang/Throwable;
    .locals 3

    .line 166
    iget v0, p0, Lkotlin/sequences/SequenceBuilderIterator;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state of the iterator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lkotlin/sequences/SequenceBuilderIterator;->state:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string p0, "Iterator has failed."

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    :goto_0
    return-object v0
.end method

.method private final nextNotReady()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 199
    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    return-object p0
.end method

.method public hasNext()Z
    .locals 4

    .line 123
    :goto_0
    iget v0, p0, Lkotlin/sequences/SequenceBuilderIterator;->state:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 134
    :cond_0
    invoke-direct {p0}, Lkotlin/sequences/SequenceBuilderIterator;->exceptionalState()Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    :cond_1
    return v3

    .line 126
    :cond_2
    iget-object v0, p0, Lkotlin/sequences/SequenceBuilderIterator;->nextIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    iput v2, p0, Lkotlin/sequences/SequenceBuilderIterator;->state:I

    return v3

    .line 130
    :cond_3
    iput-object v1, p0, Lkotlin/sequences/SequenceBuilderIterator;->nextIterator:Ljava/util/Iterator;

    goto :goto_1

    .line 126
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_5
    :goto_1
    const/4 v0, 0x5

    .line 137
    iput v0, p0, Lkotlin/sequences/SequenceBuilderIterator;->state:I

    .line 138
    iget-object v0, p0, Lkotlin/sequences/SequenceBuilderIterator;->nextStep:Lkotlin/coroutines/Continuation;

    if-eqz v0, :cond_6

    .line 139
    iput-object v1, p0, Lkotlin/sequences/SequenceBuilderIterator;->nextStep:Lkotlin/coroutines/Continuation;

    .line 140
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 145
    iget v0, p0, Lkotlin/sequences/SequenceBuilderIterator;->state:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 152
    iput v0, p0, Lkotlin/sequences/SequenceBuilderIterator;->state:I

    .line 154
    iget-object v0, p0, Lkotlin/sequences/SequenceBuilderIterator;->nextValue:Ljava/lang/Object;

    .line 155
    iput-object v3, p0, Lkotlin/sequences/SequenceBuilderIterator;->nextValue:Ljava/lang/Object;

    return-object v0

    .line 158
    :cond_0
    invoke-direct {p0}, Lkotlin/sequences/SequenceBuilderIterator;->exceptionalState()Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    .line 148
    :cond_1
    iput v1, p0, Lkotlin/sequences/SequenceBuilderIterator;->state:I

    .line 149
    iget-object p0, p0, Lkotlin/sequences/SequenceBuilderIterator;->nextIterator:Ljava/util/Iterator;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 146
    :cond_3
    invoke-direct {p0}, Lkotlin/sequences/SequenceBuilderIterator;->nextNotReady()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 194
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p1, 0x4

    .line 195
    iput p1, p0, Lkotlin/sequences/SequenceBuilderIterator;->state:I

    return-void
.end method

.method public final setNextStep(Lkotlin/coroutines/Continuation;)V
    .locals 0
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lkotlin/sequences/SequenceBuilderIterator;->nextStep:Lkotlin/coroutines/Continuation;

    return-void
.end method

.method public yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 174
    iput-object p1, p0, Lkotlin/sequences/SequenceBuilderIterator;->nextValue:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 175
    iput p1, p0, Lkotlin/sequences/SequenceBuilderIterator;->state:I

    .line 177
    iput-object p2, p0, Lkotlin/sequences/SequenceBuilderIterator;->nextStep:Lkotlin/coroutines/Continuation;

    .line 178
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p0

    .line 176
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    return-object p0
.end method
