.class public Lcom/oneplus/lib/widget/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mSize:I

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 22
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/IntArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 30
    sget-object p1, Lcom/oneplus/lib/widget/EmptyArray;->INT:[I

    iput-object p1, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    goto :goto_0

    .line 32
    :cond_0
    invoke-static {p1}, Lcom/oneplus/lib/widget/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    :goto_0
    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 3

    .line 97
    iget v0, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    add-int/2addr p1, v0

    .line 99
    iget-object v1, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    array-length v1, v1

    if-lt p1, v1, :cond_2

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    const/16 v1, 0xc

    goto :goto_0

    :cond_0
    shr-int/lit8 v1, v0, 0x1

    :goto_0
    add-int/2addr v1, v0

    if-le v1, p1, :cond_1

    move p1, v1

    .line 103
    :cond_1
    invoke-static {p1}, Lcom/oneplus/lib/widget/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object p1

    .line 104
    iget-object v1, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iput-object p1, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    :cond_2
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 1

    .line 41
    iget v0, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/lib/widget/IntArray;->add(II)V

    return-void
.end method

.method public add(II)V
    .locals 4

    if-ltz p1, :cond_1

    .line 50
    iget v0, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    if-gt p1, v0, :cond_1

    const/4 v0, 0x1

    .line 54
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/IntArray;->ensureCapacity(I)V

    .line 56
    iget v1, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    sub-int v2, v1, p1

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v1, p1

    invoke-static {v2, p1, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    aput p2, v1, p1

    .line 61
    iget p1, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    return-void

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 113
    iput v0, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    return-void
.end method

.method public clone()Lcom/oneplus/lib/widget/IntArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 118
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/IntArray;

    .line 119
    iget-object p0, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    iput-object p0, v0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/IntArray;->clone()Lcom/oneplus/lib/widget/IntArray;

    move-result-object p0

    return-object p0
.end method

.method public get(I)I
    .locals 3

    .line 127
    iget v0, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    if-ge p1, v0, :cond_0

    .line 130
    iget-object p0, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    aget p0, p0, p1

    return p0

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " size is :"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 0

    .line 162
    iget p0, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    return p0
.end method
