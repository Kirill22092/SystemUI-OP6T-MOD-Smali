.class final Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;
.super Landroid/os/Handler;
.source "KeyboardUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyboard/KeyboardUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyboardHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyboard/KeyboardUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyboard/KeyboardUI;Landroid/os/Looper;)V
    .locals 1

    .line 455
    iput-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 456
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 461
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 511
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 512
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v1, v0, p1}, Lcom/android/systemui/keyboard/KeyboardUI;->access$1600(Lcom/android/systemui/keyboard/KeyboardUI;Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    .line 484
    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 485
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {p0, p1}, Lcom/android/systemui/keyboard/KeyboardUI;->access$1000(Lcom/android/systemui/keyboard/KeyboardUI;I)V

    goto :goto_1

    .line 507
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->access$1500(Lcom/android/systemui/keyboard/KeyboardUI;)V

    goto :goto_1

    .line 500
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 501
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v0, p1}, Lcom/android/systemui/keyboard/KeyboardUI;->access$1300(Lcom/android/systemui/keyboard/KeyboardUI;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    .line 502
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {p0, p1}, Lcom/android/systemui/keyboard/KeyboardUI;->access$1400(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_1

    .line 494
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 495
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 496
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {p0, v0, p1}, Lcom/android/systemui/keyboard/KeyboardUI;->access$1200(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    goto :goto_1

    .line 489
    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 490
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {p0, p1}, Lcom/android/systemui/keyboard/KeyboardUI;->access$1100(Lcom/android/systemui/keyboard/KeyboardUI;I)V

    goto :goto_1

    .line 475
    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 477
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->access$800(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->enable()Z

    goto :goto_1

    .line 479
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcom/android/systemui/keyboard/KeyboardUI;->access$902(Lcom/android/systemui/keyboard/KeyboardUI;I)I

    goto :goto_1

    .line 471
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->access$700(Lcom/android/systemui/keyboard/KeyboardUI;)V

    goto :goto_1

    .line 467
    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-virtual {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->onBootCompletedInternal()V

    goto :goto_1

    .line 463
    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->access$600(Lcom/android/systemui/keyboard/KeyboardUI;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
