.class Lcom/android/systemui/statusbar/policy/FiveGServiceClient$1;
.super Landroid/os/Handler;
.source "FiveGServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/FiveGServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$1;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "FiveGServiceClient"

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage: Unknown msg = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_0
    const-string p1, "MESSAGE_QUERY_FIVEG_SIGNAL"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$1;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mStatesListeners:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$1;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mStatesListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$1;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->queryNrSignalStrength(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$1;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$800(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    goto :goto_1

    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$1;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$700(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    goto :goto_1

    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$1;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$600(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    :cond_0
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x400
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
