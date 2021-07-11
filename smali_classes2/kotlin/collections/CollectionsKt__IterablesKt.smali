.class Lkotlin/collections/CollectionsKt__IterablesKt;
.super Lkotlin/collections/CollectionsKt__CollectionsKt;
.source "Iterables.kt"


# direct methods
.method public static collectionSizeOrDefault(Ljava/lang/Iterable;I)I
    .locals 1
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;I)I"
        }
    .end annotation

    const-string v0, "$this$collectionSizeOrDefault"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p1

    :cond_0
    return p1
.end method

.method public static final convertToSetForSetOperationWith(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$convertToSetForSetOperationWith"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    goto :goto_0

    .line 48
    :cond_0
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 50
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    check-cast p0, Ljava/util/Collection;

    goto :goto_0

    .line 51
    :cond_1
    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__IterablesKt;->safeToConvertToSet$CollectionsKt__IterablesKt(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, p1

    goto :goto_0

    .line 53
    :cond_3
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static final safeToConvertToSet$CollectionsKt__IterablesKt(Ljava/util/Collection;)Z
    .locals 2
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 42
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    instance-of p0, p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
