.class public final Lkotlin/sequences/TakeSequence$iterator$1;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/TakeSequence;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private left:I


# direct methods
.method constructor <init>(Lkotlin/sequences/TakeSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    invoke-static {p1}, Lkotlin/sequences/TakeSequence;->access$getCount$p(Lkotlin/sequences/TakeSequence;)I

    move-result v0

    iput v0, p0, Lkotlin/sequences/TakeSequence$iterator$1;->left:I

    .line 364
    invoke-static {p1}, Lkotlin/sequences/TakeSequence;->access$getSequence$p(Lkotlin/sequences/TakeSequence;)Lkotlin/sequences/Sequence;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lkotlin/sequences/TakeSequence$iterator$1;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 374
    iget v0, p0, Lkotlin/sequences/TakeSequence$iterator$1;->left:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lkotlin/sequences/TakeSequence$iterator$1;->iterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 367
    iget v0, p0, Lkotlin/sequences/TakeSequence$iterator$1;->left:I

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 369
    iput v0, p0, Lkotlin/sequences/TakeSequence$iterator$1;->left:I

    .line 370
    iget-object p0, p0, Lkotlin/sequences/TakeSequence$iterator$1;->iterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 368
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
