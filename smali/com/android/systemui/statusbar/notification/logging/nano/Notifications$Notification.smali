.class public final Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Notifications.java"


# static fields
.field private static volatile _emptyArray:[Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;


# instance fields
.field public groupInstanceId:I

.field public instanceId:I

.field public isGroupSummary:Z

.field public packageName:Ljava/lang/String;

.field public section:I

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->clear()Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;

    return-void
.end method

.method public static emptyArray()[Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->_emptyArray:[Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->_emptyArray:[Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;

    sput-object v1, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->_emptyArray:[Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;

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
    sget-object v0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->_emptyArray:[Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->uid:I

    const-string v1, ""

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->packageName:Ljava/lang/String;

    iput v0, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->instanceId:I

    iput v0, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->groupInstanceId:I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->isGroupSummary:Z

    iput v0, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->section:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->uid:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->packageName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->instanceId:I

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->groupInstanceId:I

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->isGroupSummary:Z

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget p0, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->section:I

    if-eqz p0, :cond_5

    const/4 v1, 0x6

    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_5
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->uid:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->packageName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->instanceId:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->groupInstanceId:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->isGroupSummary:Z

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->section:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
