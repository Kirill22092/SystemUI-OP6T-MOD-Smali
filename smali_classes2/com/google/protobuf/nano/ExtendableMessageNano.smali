.class public abstract Lcom/google/protobuf/nano/ExtendableMessageNano;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ExtendableMessageNano.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "TM;>;>",
        "Lcom/google/protobuf/nano/MessageNano;"
    }
.end annotation


# instance fields
.field protected unknownFieldData:Lcom/google/protobuf/nano/FieldArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 165
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->clone()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/ExtendableMessageNano;

    .line 166
    invoke-static {p0, v0}, Lcom/google/protobuf/nano/InternalNano;->cloneUnknownFieldData(Lcom/google/protobuf/nano/ExtendableMessageNano;Lcom/google/protobuf/nano/ExtendableMessageNano;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object p0

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 51
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/nano/FieldArray;->dataAt(I)Lcom/google/protobuf/nano/FieldData;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldData;->computeSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 64
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/nano/FieldArray;->dataAt(I)Lcom/google/protobuf/nano/FieldData;

    move-result-object v1

    .line 66
    invoke-virtual {v1, p1}, Lcom/google/protobuf/nano/FieldData;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
