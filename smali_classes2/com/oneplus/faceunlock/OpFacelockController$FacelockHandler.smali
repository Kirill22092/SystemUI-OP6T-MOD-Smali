.class Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;
.super Landroid/os/Handler;
.source "OpFacelockController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/OpFacelockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FacelockHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/OpFacelockController;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/OpFacelockController;Landroid/os/Looper;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    .line 350
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 355
    invoke-static {}, Lcom/oneplus/faceunlock/OpFacelockController;->access$200()Z

    move-result v0

    const-string v1, "OpFacelockController"

    if-eqz v0, :cond_0

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: what:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bound:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    .line 357
    invoke-static {v2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$300(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", active:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v2}, Lcom/oneplus/faceunlock/OpFacelockController;->access$400(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string p0, "Unhandled message"

    .line 456
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 453
    :pswitch_1
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1600(Lcom/oneplus/faceunlock/OpFacelockController;)V

    goto/16 :goto_2

    .line 443
    :pswitch_2
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$400(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 446
    :cond_1
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1500(Lcom/oneplus/faceunlock/OpFacelockController;)V

    .line 447
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1000(Lcom/oneplus/faceunlock/OpFacelockController;)V

    .line 448
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    const/16 v2, 0xb

    invoke-static {p1, v2, v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$600(Lcom/oneplus/faceunlock/OpFacelockController;IZ)V

    .line 449
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$700(Lcom/oneplus/faceunlock/OpFacelockController;)V

    goto/16 :goto_2

    .line 439
    :pswitch_3
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1400(Lcom/oneplus/faceunlock/OpFacelockController;)V

    goto/16 :goto_2

    .line 429
    :pswitch_4
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$400(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 433
    :cond_2
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1000(Lcom/oneplus/faceunlock/OpFacelockController;)V

    .line 434
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    const/16 v2, 0x9

    invoke-static {p1, v2, v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$600(Lcom/oneplus/faceunlock/OpFacelockController;IZ)V

    .line 435
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$700(Lcom/oneplus/faceunlock/OpFacelockController;)V

    goto/16 :goto_2

    .line 419
    :pswitch_5
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$400(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 423
    :cond_3
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1000(Lcom/oneplus/faceunlock/OpFacelockController;)V

    .line 424
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    const/16 v2, 0x8

    invoke-static {p1, v2, v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$600(Lcom/oneplus/faceunlock/OpFacelockController;IZ)V

    .line 425
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$700(Lcom/oneplus/faceunlock/OpFacelockController;)V

    goto/16 :goto_2

    .line 414
    :pswitch_6
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1300(Lcom/oneplus/faceunlock/OpFacelockController;)V

    goto/16 :goto_2

    .line 406
    :pswitch_7
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$400(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$300(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 409
    :cond_4
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1200(Lcom/oneplus/faceunlock/OpFacelockController;)V

    goto/16 :goto_2

    :cond_5
    :goto_0
    return-void

    .line 402
    :pswitch_8
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1100(Lcom/oneplus/faceunlock/OpFacelockController;)V

    goto :goto_2

    .line 392
    :pswitch_9
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$400(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 396
    :cond_6
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1000(Lcom/oneplus/faceunlock/OpFacelockController;)V

    .line 397
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    const/4 v2, 0x6

    invoke-static {p1, v2, v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$600(Lcom/oneplus/faceunlock/OpFacelockController;IZ)V

    .line 398
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$700(Lcom/oneplus/faceunlock/OpFacelockController;)V

    goto :goto_2

    .line 385
    :pswitch_a
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$400(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 388
    :cond_7
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$900(Lcom/oneplus/faceunlock/OpFacelockController;)V

    goto :goto_2

    .line 377
    :pswitch_b
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$400(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$300(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    .line 381
    :cond_8
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$800(Lcom/oneplus/faceunlock/OpFacelockController;)V

    goto :goto_2

    :cond_9
    :goto_1
    return-void

    .line 369
    :pswitch_c
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$300(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p1

    if-nez p1, :cond_a

    return-void

    .line 372
    :cond_a
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$600(Lcom/oneplus/faceunlock/OpFacelockController;IZ)V

    .line 373
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$700(Lcom/oneplus/faceunlock/OpFacelockController;)V

    goto :goto_2

    .line 362
    :pswitch_d
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$300(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 365
    :cond_b
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$500(Lcom/oneplus/faceunlock/OpFacelockController;)V

    .line 459
    :goto_2
    invoke-static {}, Lcom/oneplus/faceunlock/OpFacelockController;->access$200()Z

    move-result p0

    if-eqz p0, :cond_c

    const-string p0, "handleMessage: done"

    .line 460
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
