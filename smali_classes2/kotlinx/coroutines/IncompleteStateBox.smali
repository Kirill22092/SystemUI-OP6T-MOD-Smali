.class final Lkotlinx/coroutines/IncompleteStateBox;
.super Ljava/lang/Object;
.source "JobSupport.kt"


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Incomplete;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/Incomplete;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
