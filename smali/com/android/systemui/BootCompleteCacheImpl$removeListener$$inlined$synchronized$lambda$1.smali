.class final Lcom/android/systemui/BootCompleteCacheImpl$removeListener$$inlined$synchronized$lambda$1;
.super Ljava/lang/Object;
.source "BootCompleteCacheImpl.kt"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/BootCompleteCacheImpl;->removeListener(Lcom/android/systemui/BootCompleteCache$BootCompleteListener;)V
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
        "Ljava/lang/ref/WeakReference<",
        "Lcom/android/systemui/BootCompleteCache$BootCompleteListener;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $listener$inlined:Lcom/android/systemui/BootCompleteCache$BootCompleteListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/BootCompleteCacheImpl;Lcom/android/systemui/BootCompleteCache$BootCompleteListener;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/BootCompleteCacheImpl$removeListener$$inlined$synchronized$lambda$1;->$listener$inlined:Lcom/android/systemui/BootCompleteCache$BootCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1}, Lcom/android/systemui/BootCompleteCacheImpl$removeListener$$inlined$synchronized$lambda$1;->test(Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

.method public final test(Ljava/lang/ref/WeakReference;)Z
    .locals 1
    .param p1    # Ljava/lang/ref/WeakReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/BootCompleteCache$BootCompleteListener;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/BootCompleteCache$BootCompleteListener;

    iget-object p0, p0, Lcom/android/systemui/BootCompleteCacheImpl$removeListener$$inlined$synchronized$lambda$1;->$listener$inlined:Lcom/android/systemui/BootCompleteCache$BootCompleteListener;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
