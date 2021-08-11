.class Lcom/android/systemui/pip/phone/PipMenuActivityController$1;
.super Landroid/os/Handler;
.source "PipMenuActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipMenuActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipMenuActivityController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_6

    const/16 v1, 0x65

    if-eq v0, v1, :cond_5

    const/16 v1, 0x67

    if-eq v0, v1, :cond_4

    const/16 v1, 0x68

    if-eq v0, v1, :cond_1

    const/16 p1, 0x6b

    if-eq v0, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$200(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/util/ArrayList;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/pip/phone/-$$Lambda$ab7bqy0BtiE8EwwZ2rb49JCCbFA;->INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$ab7bqy0BtiE8EwwZ2rb49JCCbFA;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$302(Lcom/android/systemui/pip/phone/PipMenuActivityController;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v0, v3}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$400(Lcom/android/systemui/pip/phone/PipMenuActivityController;Z)V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$500(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/lang/Runnable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$500(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$502(Lcom/android/systemui/pip/phone/PipMenuActivityController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$300(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Landroid/os/Messenger;

    move-result-object v0

    if-nez v0, :cond_8

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {p0, v3, v2, v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$100(Lcom/android/systemui/pip/phone/PipMenuActivityController;IZLjava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$200(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/util/ArrayList;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/pip/phone/-$$Lambda$zhx89MCRVbbUuwAz2vBzNfzR3hg;->INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$zhx89MCRVbbUuwAz2vBzNfzR3hg;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$200(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/util/ArrayList;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/pip/phone/-$$Lambda$Yf7sZoTIPl0lv58dfbsbQ3za13A;->INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$Yf7sZoTIPl0lv58dfbsbQ3za13A;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    move v2, v3

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p0, v1, p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$000(Lcom/android/systemui/pip/phone/PipMenuActivityController;Landroid/os/Messenger;Landroid/os/Bundle;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p0, v0, v2, p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$100(Lcom/android/systemui/pip/phone/PipMenuActivityController;IZLjava/lang/Runnable;)V

    :cond_8
    :goto_2
    return-void
.end method
