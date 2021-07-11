.class public final Lcom/android/systemui/tracing/nano/SystemUiTraceFileProto;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SystemUiTraceFileProto.java"


# instance fields
.field public entry:[Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;

.field public magicNumber:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/tracing/nano/SystemUiTraceFileProto;->clear()Lcom/android/systemui/tracing/nano/SystemUiTraceFileProto;

    return-void
.end method


# virtual methods
.method public clear()Lcom/android/systemui/tracing/nano/SystemUiTraceFileProto;
    .locals 2

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceFileProto;->magicNumber:J

    .line 40
    invoke-static {}, Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;->emptyArray()[Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceFileProto;->entry:[Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .line 64
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 65
    iget-wide v1, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceFileProto;->magicNumber:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 67
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceFileProto;->entry:[Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 70
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceFileProto;->entry:[Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 71
    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    .line 74
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-wide v0, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceFileProto;->magicNumber:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 49
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceFileProto;->entry:[Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 52
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceFileProto;->entry:[Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 53
    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 55
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
