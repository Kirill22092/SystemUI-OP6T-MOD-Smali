.class final Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository$removeBubbles$1$1;
.super Ljava/lang/Object;
.source "BubbleVolatileRepository.kt"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;->removeBubbles(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/android/systemui/bubbles/storage/BubbleEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $b:Lcom/android/systemui/bubbles/storage/BubbleEntity;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/storage/BubbleEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository$removeBubbles$1$1;->$b:Lcom/android/systemui/bubbles/storage/BubbleEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Lcom/android/systemui/bubbles/storage/BubbleEntity;)Z
    .locals 1
    .param p1    # Lcom/android/systemui/bubbles/storage/BubbleEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object p0, p0, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository$removeBubbles$1$1;->$b:Lcom/android/systemui/bubbles/storage/BubbleEntity;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/storage/BubbleEntity;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/storage/BubbleEntity;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 32
    check-cast p1, Lcom/android/systemui/bubbles/storage/BubbleEntity;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository$removeBubbles$1$1;->test(Lcom/android/systemui/bubbles/storage/BubbleEntity;)Z

    move-result p0

    return p0
.end method
