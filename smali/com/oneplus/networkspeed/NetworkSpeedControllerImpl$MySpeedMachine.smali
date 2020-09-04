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

.field mIsFirstLoadTether:Z

.field oldRxBytes:J

.field oldTetherRxBytes:J

.field oldTetherTxBytes:J

.field oldTxBytes:J

.field final synthetic this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)V
    .locals 2

    .line 355
    iput-object p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 344
    iput-wide v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->oldTxBytes:J

    .line 345
    iput-wide v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    .line 346
    iput-wide v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->oldRxBytes:J

    .line 347
    iput-wide v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    const/4 p1, 0x0

    .line 348
    iput-boolean p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->isTurnOn:Z

    .line 350
    iput-wide v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherTxBytes:J

    .line 351
    iput-wide v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherRxBytes:J

    const/4 p1, 0x1

    .line 352
    iput-boolean p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->mIsFirstLoadTether:Z

    .line 356
    invoke-virtual {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->reset()V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;)V
    .locals 0

    .line 343
    invoke-direct {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->updateSpeedonBG()V

    return-void
.end method

.method private updateSpeedonBG()V
    .locals 18

    move-object/from16 v0, p0

    .line 360
    iget-object v1, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {v1}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1100(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 361
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v1

    .line 362
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v3

    .line 363
    iget-wide v5, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->oldTxBytes:J

    sub-long v5, v1, v5

    iput-wide v5, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    .line 364
    iget-wide v5, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->oldRxBytes:J

    sub-long v5, v3, v5

    iput-wide v5, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    .line 365
    iput-wide v1, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->oldTxBytes:J

    .line 366
    iput-wide v3, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->oldRxBytes:J

    .line 370
    iget-object v5, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {v5}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1200(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    if-nez v5, :cond_0

    .line 371
    iput-wide v8, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherTxBytes:J

    .line 372
    iput-wide v8, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherRxBytes:J

    .line 373
    iput-boolean v6, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->mIsFirstLoadTether:Z

    move-wide/from16 v16, v3

    goto/16 :goto_2

    .line 375
    :cond_0
    iget-object v5, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {v5}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1300(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)[J

    move-result-object v5

    if-eqz v5, :cond_1

    .line 376
    array-length v10, v5

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 377
    aget-wide v10, v5, v7

    .line 378
    aget-wide v5, v5, v6

    .line 379
    iget-wide v12, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherTxBytes:J

    sub-long v12, v5, v12

    .line 380
    iget-wide v14, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherRxBytes:J

    sub-long v14, v10, v14

    .line 381
    iput-wide v5, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherTxBytes:J

    .line 382
    iput-wide v10, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherRxBytes:J

    goto :goto_0

    :cond_1
    move-wide v12, v8

    move-wide v14, v12

    .line 384
    :goto_0
    invoke-static {}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1400()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1500()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NetWorkSpeed TetherTx:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1600()I

    move-result v11

    int-to-long v8, v11

    div-long v8, v12, v8

    invoke-static {v10, v8, v9}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1700(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " tTetherRx:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1600()I

    move-result v9

    int-to-long v9, v9

    div-long v9, v14, v9

    invoke-static {v8, v9, v10}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1700(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " systemTx:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    iget-wide v9, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    .line 385
    invoke-static {}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1600()I

    move-result v11

    move-wide/from16 v16, v3

    int-to-long v3, v11

    div-long/2addr v9, v3

    invoke-static {v8, v9, v10}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1700(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " systemRx:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    iget-wide v8, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    invoke-static {}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1600()I

    move-result v4

    int-to-long v10, v4

    div-long/2addr v8, v10

    invoke-static {v3, v8, v9}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1700(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 384
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move-wide/from16 v16, v3

    .line 387
    :goto_1
    iget-boolean v3, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->mIsFirstLoadTether:Z

    if-eqz v3, :cond_3

    .line 388
    iput-boolean v7, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->mIsFirstLoadTether:Z

    goto :goto_2

    .line 391
    :cond_3
    iget-wide v3, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    add-long/2addr v3, v12

    add-long/2addr v3, v14

    iput-wide v3, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    .line 397
    :goto_2
    iget-object v3, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {v3}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1800(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 398
    invoke-static {}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1400()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NetWorkSpeed is first load."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-wide/16 v3, 0x0

    .line 399
    iput-wide v3, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    .line 400
    iput-wide v3, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    .line 401
    iget-object v5, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {v5, v7}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1802(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;Z)Z

    goto :goto_3

    :cond_5
    const-wide/16 v3, 0x0

    .line 403
    :goto_3
    iget-wide v5, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    cmp-long v5, v5, v3

    if-gez v5, :cond_6

    .line 404
    iput-wide v3, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    .line 406
    :cond_6
    iget-wide v5, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    cmp-long v5, v5, v3

    if-gez v5, :cond_7

    .line 407
    iput-wide v3, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    .line 409
    :cond_7
    iget-wide v3, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    iget-wide v5, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_8

    goto :goto_4

    :cond_8
    move-wide v3, v5

    .line 410
    :goto_4
    invoke-static {}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1600()I

    move-result v5

    int-to-long v5, v5

    div-long v5, v3, v5

    .line 411
    iget-object v7, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {v7, v5, v6}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1700(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;J)Ljava/lang/String;

    move-result-object v7

    .line 412
    invoke-static {}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1400()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 413
    invoke-static {}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1500()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NetWorkSpeed refresh totalTxBytes="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalRxBytes="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v16

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", incrementPs="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mSpeed="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,incrementBytes:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_9
    iget-object v1, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {v1}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1900(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 416
    iget-object v2, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {v2}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$000(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 417
    iput-object v7, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 418
    iget-object v0, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {v0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1900(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 420
    :cond_a
    iget-object v1, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {v1}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1900(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 421
    iget-object v2, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {v2}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$300(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 422
    iget-object v0, v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;

    invoke-static {v0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1900(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 423
    invoke-static {}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->access$1500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "send MSG_CLOSE_NETWORTSPEED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method


# virtual methods
.method public isTurnOn()Z
    .locals 0

    .line 443
    iget-boolean p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->isTurnOn:Z

    return p0
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 428
    iput-wide v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->oldTxBytes:J

    .line 429
    iput-wide v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    .line 430
    iput-wide v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->oldRxBytes:J

    .line 431
    iput-wide v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    return-void
.end method

.method public setTurnOff()V
    .locals 1

    const/4 v0, 0x0

    .line 439
    iput-boolean v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->isTurnOn:Z

    return-void
.end method

.method public setTurnOn()V
    .locals 1

    const/4 v0, 0x1

    .line 435
    iput-boolean v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->isTurnOn:Z

    return-void
.end method
