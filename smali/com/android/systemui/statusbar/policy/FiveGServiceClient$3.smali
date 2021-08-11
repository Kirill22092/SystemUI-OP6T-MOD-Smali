.class Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;
.super Lorg/codeaurora/internal/NetworkCallbackBase;
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-direct {p0}, Lorg/codeaurora/internal/NetworkCallbackBase;-><init>()V

    return-void
.end method


# virtual methods
.method public on5gConfigInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on5gConfigInfo: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " status"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " NrConfigType = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FiveGServiceClient"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lorg/codeaurora/internal/Status;->get()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getCurrentServiceState(I)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    move-result-object p2

    invoke-virtual {p4}, Lorg/codeaurora/internal/NrConfigType;->get()I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$1802(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)I

    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {p3, p2, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->update5GIcon(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$1700(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;I)V

    :cond_0
    return-void
.end method

.method public on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on5gStatus: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " status"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " enableStatus = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FiveGServiceClient"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lorg/codeaurora/internal/Status;->get()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$1900(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Landroid/util/SparseBooleanArray;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last 5G status:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p3}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$1900(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Landroid/util/SparseBooleanArray;

    move-result-object p3

    invoke-virtual {p3, p1, p4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-nez p4, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$2100(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;I)V

    :cond_0
    return-void
.end method

.method public onAnyNrBearerAllocation(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$1500()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnyNrBearerAllocation bearerStatus="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lorg/codeaurora/internal/BearerAllocationStatus;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FiveGServiceClient"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p3}, Lorg/codeaurora/internal/Status;->get()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getCurrentServiceState(I)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    move-result-object p2

    invoke-virtual {p4}, Lorg/codeaurora/internal/BearerAllocationStatus;->get()I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$302(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)I

    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {p3, p2, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->update5GIcon(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$1700(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;I)V

    :cond_1
    return-void
.end method

.method public onNrIconType(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNrIconType: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " NrIconType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGServiceClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lorg/codeaurora/internal/Status;->get()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_a

    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p3}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$1900(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Landroid/util/SparseBooleanArray;

    move-result-object p3

    invoke-virtual {p3, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {p4}, Lorg/codeaurora/internal/NrIconType;->get()I

    move-result v2

    invoke-static {p3, v2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$2000(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;I)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p2, "5g disabled, not show 5g nr icon"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$2100(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;I)V

    return-void

    :cond_0
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p3}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$2200(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "0"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p3}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$2300(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p3}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$2400(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Landroid/util/SparseIntArray;

    move-result-object p3

    const/4 v2, -0x1

    invoke-virtual {p3, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$2500(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$2600(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Landroid/util/SparseIntArray;

    move-result-object v3

    const/16 v4, -0x64

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    invoke-virtual {p2}, Lorg/codeaurora/internal/Token;->get()I

    move-result p2

    const/4 v4, 0x0

    if-ne v3, p2, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, v4

    :goto_0
    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$2600(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->delete(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {v3, p3}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$2000(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p4}, Lorg/codeaurora/internal/NrIconType;->get()I

    move-result v3

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    if-eqz v3, :cond_4

    if-ne v2, p1, :cond_4

    if-nez p2, :cond_4

    move v5, v0

    goto :goto_2

    :cond_4
    move v5, v4

    :goto_2
    if-nez p3, :cond_5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {p4}, Lorg/codeaurora/internal/NrIconType;->get()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$2000(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;I)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    move v0, v4

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "leave5G: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " defaultPhoneId: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isScreenOnQuery: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " lastNrIconType: "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_6

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$2700(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;->startDelay(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$2400(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p4}, Lorg/codeaurora/internal/NrIconType;->get()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_4

    :cond_6
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$2700(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;

    move-result-object p2

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;->access$500(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {p4}, Lorg/codeaurora/internal/NrIconType;->get()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$000(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;II)V

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_8

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$2700(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;->cancelDelay(II)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {p4}, Lorg/codeaurora/internal/NrIconType;->get()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$000(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;II)V

    goto :goto_4

    :cond_8
    const-string p0, "delay in progress and icon not change"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {p4}, Lorg/codeaurora/internal/NrIconType;->get()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$000(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;II)V

    :cond_a
    :goto_4
    return-void
.end method

.method public onSignalStrength(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSignalStrength: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " status="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " signalStrength="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FiveGServiceClient"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p3}, Lorg/codeaurora/internal/Status;->get()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    if-eqz p4, :cond_1

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getCurrentServiceState(I)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {p4}, Lorg/codeaurora/internal/SignalStrength;->getRsrp()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getRsrpLevel(I)I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$1602(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)I

    invoke-virtual {p4}, Lorg/codeaurora/internal/SignalStrength;->getRsrp()I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$102(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)I

    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {p3, p2, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->update5GIcon(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$1700(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;I)V

    :cond_1
    return-void
.end method
