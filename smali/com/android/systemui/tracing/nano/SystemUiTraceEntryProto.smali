.class public final Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SystemUiTraceEntryProto.java"


# static fields
.field private static volatile _emptyArray:[Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;


# instance fields
.field public elapsedRealtimeNanos:J

.field public systemUi:Lcom/android/systemui/tracing/nano/SystemUiTraceProto;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;->clear()Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;

    return-void
.end method

.method public static emptyArray()[Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;
    .locals 2

    sget-object v0, Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;->_emptyArray:[Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;->_emptyArray:[Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;

    sput-object v1, Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;->_emptyArray:[Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;->_emptyArray:[Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;->elapsedRealtimeNanos:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;->systemUi:Lcom/android/systemui/tracing/nano/SystemUiTraceProto;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-wide v1, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;->elapsedRealtimeNanos:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;->systemUi:Lcom/android/systemui/tracing/nano/SystemUiTraceProto;

    if-eqz p0, :cond_1

    const/4 v1, 0x3

    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;->elapsedRealtimeNanos:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;->systemUi:Lcom/android/systemui/tracing/nano/SystemUiTraceProto;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
