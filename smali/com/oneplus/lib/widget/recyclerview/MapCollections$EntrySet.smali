.class final Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/MapCollections;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 163
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;->add(Ljava/util/Map$Entry;)Z

    const/4 p0, 0x0

    throw p0
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 166
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetSize()I

    move-result v0

    .line 172
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 173
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colPut(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetSize()I

    move-result p0

    if-eq v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public clear()V
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colClear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 185
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 187
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 188
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    return v1

    .line 192
    :cond_1
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object p0

    .line 193
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ContainerHelpers;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 198
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 199
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 249
    invoke-static {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 6

    .line 255
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetSize()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v0, :cond_2

    .line 256
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v4, v0, v2}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v4

    .line 257
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v5, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_0

    move v4, v2

    goto :goto_1

    .line 258
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    if-nez v5, :cond_1

    move v5, v2

    goto :goto_2

    .line 259
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :goto_2
    xor-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public isEmpty()Z
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetSize()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 214
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;-><init>(Lcom/oneplus/lib/widget/recyclerview/MapCollections;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 219
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 224
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 229
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public size()I
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetSize()I

    move-result p0

    return p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 0

    .line 239
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 244
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
