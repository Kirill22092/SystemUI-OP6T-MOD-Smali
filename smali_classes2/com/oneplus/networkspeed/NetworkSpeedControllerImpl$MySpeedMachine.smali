.class Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;
.super Ljava/lang/Object;
.source "NetworkSpeedControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySpeedMachine"
.end annotation


# instance fields
.field incrementRxBytes:J

.field incrementTxBytes:J

.field isTurnOn:Z

.field oldRxBytes:J

.field oldTxBytes:J

.field final synthetic this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)V
    .locals 2

    iput-object p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->oldTxBytes:J

    iput-wide v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    iput-wide v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->oldRxBytes:J

    iput-wide v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->isTurnOn:Z

    invoke-virtual {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->reset()V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->updateSpeedonBG()V

    return-void
.end method

.method private updateSpeedonBG()V
    .locals 12

    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {v0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1100(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v0

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->oldTxBytes:J

    sub-long v4, v0, v4

    iput-wide v4, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    iget-wide v4, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->oldRxBytes:J

    sub-long v4, v2, v4

    iput-wide v4, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    iput-wide v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->oldTxBytes:J

    iput-wide v2, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->oldRxBytes:J

    iget-object v4, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {v4}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1200(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1300()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1400()Ljava/lang/String;

    move-result-object v4

    const-string v7, "NetWorkSpeed is first load."

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-wide v5, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    iput-wide v5, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    iget-object v4, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1202(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;Z)Z

    :cond_1
    iget-wide v7, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    cmp-long v4, v7, v5

    if-gez v4, :cond_2

    iput-wide v5, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    :cond_2
    iget-wide v7, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    cmp-long v4, v7, v5

    if-gez v4, :cond_3

    iput-wide v5, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    :cond_3
    iget-wide v4, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    iget-wide v6, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    cmp-long v8, v4, v6

    if-lez v8, :cond_4

    goto :goto_0

    :cond_4
    move-wide v4, v6

    :goto_0
    invoke-static {}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1500()I

    move-result v6

    int-to-long v6, v6

    div-long v6, v4, v6

    iget-object v8, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {v8, v6, v7}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1600(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;J)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1300()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1400()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NetWorkSpeed refresh totalTxBytes="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", totalRxBytes="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", incrementPs="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mSpeed="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ,incrementBytes:"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {v0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1700(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {v1}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$000(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1700(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {v0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1700(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {v1}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$300(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1700(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1400()Ljava/lang/String;

    move-result-object p0

    const-string v0, "send MSG_CLOSE_NETWORTSPEED"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public isTurnOn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->isTurnOn:Z

    return p0
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->oldTxBytes:J

    iput-wide v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    iput-wide v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->oldRxBytes:J

    iput-wide v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    return-void
.end method

.method public setTurnOff()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->isTurnOn:Z

    return-void
.end method

.method public setTurnOn()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->isTurnOn:Z

    return-void
.end method
