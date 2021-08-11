.class final Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BubbleDataRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.android.systemui.bubbles.BubbleDataRepository$loadBubbles$1$1"
    f = "BubbleDataRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bubbles:Ljava/util/List;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1$1;->this$0:Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1;

    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1$1;->$bubbles:Ljava/util/List;

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

    new-instance v0, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1$1;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1$1;->this$0:Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1$1;->$bubbles:Ljava/util/List;

    invoke-direct {v0, v1, p0, p2}, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1$1;-><init>(Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1$1;->this$0:Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1;

    iget-object p1, p1, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1;->$cb:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1$1;->$bubbles:Ljava/util/List;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
