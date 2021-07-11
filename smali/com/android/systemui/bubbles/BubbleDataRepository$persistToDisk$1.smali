.class final Lcom/android/systemui/bubbles/BubbleDataRepository$persistToDisk$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BubbleDataRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bubbles/BubbleDataRepository;->persistToDisk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.bubbles.BubbleDataRepository$persistToDisk$1"
    f = "BubbleDataRepository.kt"
    l = {
        0x6b,
        0x6d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $prev:Lkotlinx/coroutines/Job;

.field L$0:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleDataRepository;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/BubbleDataRepository;Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$persistToDisk$1;->this$0:Lcom/android/systemui/bubbles/BubbleDataRepository;

    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$persistToDisk$1;->$prev:Lkotlinx/coroutines/Job;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/bubbles/BubbleDataRepository$persistToDisk$1;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$persistToDisk$1;->this$0:Lcom/android/systemui/bubbles/BubbleDataRepository;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$persistToDisk$1;->$prev:Lkotlinx/coroutines/Job;

    invoke-direct {v0, v1, p0, p2}, Lcom/android/systemui/bubbles/BubbleDataRepository$persistToDisk$1;-><init>(Lcom/android/systemui/bubbles/BubbleDataRepository;Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/android/systemui/bubbles/BubbleDataRepository$persistToDisk$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleDataRepository$persistToDisk$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/bubbles/BubbleDataRepository$persistToDisk$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleDataRepository$persistToDisk$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 105
    iget v1, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$persistToDisk$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$persistToDisk$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 112
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$persistToDisk$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$persistToDisk$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 107
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$persistToDisk$1;->$prev:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_3

    iput-object v1, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$persistToDisk$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$persistToDisk$1;->label:I

    invoke-static {p1, p0}, Lkotlinx/coroutines/JobKt;->cancelAndJoin(Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 109
    :cond_3
    :goto_0
    iput-object v1, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$persistToDisk$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$persistToDisk$1;->label:I

    invoke-static {p0}, Lkotlinx/coroutines/YieldKt;->yield(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 111
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$persistToDisk$1;->this$0:Lcom/android/systemui/bubbles/BubbleDataRepository;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleDataRepository;->access$getPersistentRepository$p(Lcom/android/systemui/bubbles/BubbleDataRepository;)Lcom/android/systemui/bubbles/storage/BubblePersistentRepository;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$persistToDisk$1;->this$0:Lcom/android/systemui/bubbles/BubbleDataRepository;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleDataRepository;->access$getVolatileRepository$p(Lcom/android/systemui/bubbles/BubbleDataRepository;)Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;->getBubbles()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/bubbles/storage/BubblePersistentRepository;->persistsToDisk(Ljava/util/List;)Z

    .line 112
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
