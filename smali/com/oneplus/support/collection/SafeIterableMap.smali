.class public Lcom/oneplus/support/collection/SafeIterableMap;
.super Ljava/lang/Object;
.source "SafeIterableMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/collection/SafeIterableMap$Entry;,
        Lcom/oneplus/support/collection/SafeIterableMap$SupportRemove;,
        Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;,
        Lcom/oneplus/support/collection/SafeIterableMap$DescendingIterator;,
        Lcom/oneplus/support/collection/SafeIterableMap$AscendingIterator;,
        Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private mEnd:Lcom/oneplus/support/collection/SafeIterableMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private mIterators:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/oneplus/support/collection/SafeIterableMap$SupportRemove<",
            "TK;TV;>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:I

.field private mStart:Lcom/oneplus/support/collection/SafeIterableMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mSize:I

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/support/collection/SafeIterableMap;)Lcom/oneplus/support/collection/SafeIterableMap$Entry;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mStart:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    return-object p0
.end method


# virtual methods
.method public descendingIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 150
    new-instance v0, Lcom/oneplus/support/collection/SafeIterableMap$DescendingIterator;

    iget-object v1, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mEnd:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    iget-object v2, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mStart:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/support/collection/SafeIterableMap$DescendingIterator;-><init>(Lcom/oneplus/support/collection/SafeIterableMap$Entry;Lcom/oneplus/support/collection/SafeIterableMap$Entry;)V

    .line 151
    iget-object p0, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public eldest()Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 169
    iget-object p0, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mStart:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 184
    :cond_0
    instance-of v1, p1, Lcom/oneplus/support/collection/SafeIterableMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 187
    :cond_1
    check-cast p1, Lcom/oneplus/support/collection/SafeIterableMap;

    .line 188
    invoke-virtual {p0}, Lcom/oneplus/support/collection/SafeIterableMap;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/oneplus/support/collection/SafeIterableMap;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 191
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/support/collection/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 192
    invoke-virtual {p1}, Lcom/oneplus/support/collection/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 193
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 194
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 195
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_4

    if-nez v3, :cond_5

    :cond_4
    if-eqz v1, :cond_3

    .line 197
    invoke-interface {v1, v3}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_5
    return v2

    .line 201
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    move v0, v2

    :goto_0
    return v0
.end method

.method protected get(Ljava/lang/Object;)Lcom/oneplus/support/collection/SafeIterableMap$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 46
    iget-object p0, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mStart:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    :goto_0
    if-eqz p0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    iget-object p0, p0, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 207
    invoke-virtual {p0}, Lcom/oneplus/support/collection/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    .line 208
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 140
    new-instance v0, Lcom/oneplus/support/collection/SafeIterableMap$AscendingIterator;

    iget-object v1, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mStart:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    iget-object v2, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mEnd:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/support/collection/SafeIterableMap$AscendingIterator;-><init>(Lcom/oneplus/support/collection/SafeIterableMap$Entry;Lcom/oneplus/support/collection/SafeIterableMap$Entry;)V

    .line 141
    iget-object p0, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public iteratorWithAdditions()Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oneplus/support/collection/SafeIterableMap<",
            "TK;TV;>.IteratorWithAdditions;"
        }
    .end annotation

    .line 160
    new-instance v0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;-><init>(Lcom/oneplus/support/collection/SafeIterableMap;Lcom/oneplus/support/collection/SafeIterableMap$1;)V

    .line 161
    iget-object p0, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public newest()Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 176
    iget-object p0, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mEnd:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    return-object p0
.end method

.method protected put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/oneplus/support/collection/SafeIterableMap$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    invoke-direct {v0, p1, p2}, Lcom/oneplus/support/collection/SafeIterableMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    iget p1, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mSize:I

    .line 77
    iget-object p1, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mEnd:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    if-nez p1, :cond_0

    .line 78
    iput-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mStart:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    .line 79
    iget-object p1, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mStart:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    iput-object p1, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mEnd:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    return-object v0

    .line 83
    :cond_0
    iput-object v0, p1, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    .line 84
    iput-object p1, v0, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mPrevious:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    .line 85
    iput-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mEnd:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 66
    invoke-virtual {p0, p1}, Lcom/oneplus/support/collection/SafeIterableMap;->get(Ljava/lang/Object;)Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object p0, v0, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mValue:Ljava/lang/Object;

    return-object p0

    .line 70
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/support/collection/SafeIterableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    const/4 p0, 0x0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1}, Lcom/oneplus/support/collection/SafeIterableMap;->get(Ljava/lang/Object;)Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 102
    :cond_0
    iget v1, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mSize:I

    .line 103
    iget-object v1, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/collection/SafeIterableMap$SupportRemove;

    .line 105
    invoke-interface {v2, p1}, Lcom/oneplus/support/collection/SafeIterableMap$SupportRemove;->supportRemove(Lcom/oneplus/support/collection/SafeIterableMap$Entry;)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v1, p1, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mPrevious:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    if-eqz v1, :cond_2

    .line 110
    iget-object v2, p1, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    iput-object v2, v1, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    goto :goto_1

    .line 112
    :cond_2
    iget-object v1, p1, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    iput-object v1, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mStart:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    .line 115
    :goto_1
    iget-object v1, p1, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    if-eqz v1, :cond_3

    .line 116
    iget-object p0, p1, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mPrevious:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    iput-object p0, v1, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mPrevious:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    goto :goto_2

    .line 118
    :cond_3
    iget-object v1, p1, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mPrevious:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    iput-object v1, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mEnd:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    .line 121
    :goto_2
    iput-object v0, p1, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    .line 122
    iput-object v0, p1, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mPrevious:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    .line 123
    iget-object p0, p1, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mValue:Ljava/lang/Object;

    return-object p0
.end method

.method public size()I
    .locals 0

    .line 130
    iget p0, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mSize:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p0}, Lcom/oneplus/support/collection/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 219
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p0, "]"

    .line 225
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
