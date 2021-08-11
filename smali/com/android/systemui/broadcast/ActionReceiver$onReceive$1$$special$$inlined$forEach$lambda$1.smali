.class final Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1$$special$$inlined$forEach$lambda$1;
.super Ljava/lang/Object;
.source "ActionReceiver.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $it:Lcom/android/systemui/broadcast/ReceiverData;

.field final synthetic this$0:Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/broadcast/ReceiverData;Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1$$special$$inlined$forEach$lambda$1;->$it:Lcom/android/systemui/broadcast/ReceiverData;

    iput-object p2, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1$$special$$inlined$forEach$lambda$1;->this$0:Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1$$special$$inlined$forEach$lambda$1;->$it:Lcom/android/systemui/broadcast/ReceiverData;

    invoke-virtual {v0}, Lcom/android/systemui/broadcast/ReceiverData;->getReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1$$special$$inlined$forEach$lambda$1;->this$0:Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;

    iget-object v1, v1, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;->this$0:Lcom/android/systemui/broadcast/ActionReceiver;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/BroadcastReceiver;->setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V

    iget-object v0, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1$$special$$inlined$forEach$lambda$1;->$it:Lcom/android/systemui/broadcast/ReceiverData;

    invoke-virtual {v0}, Lcom/android/systemui/broadcast/ReceiverData;->getReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1$$special$$inlined$forEach$lambda$1;->this$0:Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;

    iget-object v2, v1, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;->$context:Landroid/content/Context;

    iget-object v1, v1, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;->$intent:Landroid/content/Intent;

    invoke-virtual {v0, v2, v1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1$$special$$inlined$forEach$lambda$1;->this$0:Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;

    iget-object v0, v0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;->this$0:Lcom/android/systemui/broadcast/ActionReceiver;

    invoke-static {v0}, Lcom/android/systemui/broadcast/ActionReceiver;->access$getLogger$p(Lcom/android/systemui/broadcast/ActionReceiver;)Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1$$special$$inlined$forEach$lambda$1;->this$0:Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;

    iget v2, v1, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;->$id:I

    iget-object v1, v1, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;->this$0:Lcom/android/systemui/broadcast/ActionReceiver;

    invoke-static {v1}, Lcom/android/systemui/broadcast/ActionReceiver;->access$getAction$p(Lcom/android/systemui/broadcast/ActionReceiver;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1$$special$$inlined$forEach$lambda$1;->$it:Lcom/android/systemui/broadcast/ReceiverData;

    invoke-virtual {p0}, Lcom/android/systemui/broadcast/ReceiverData;->getReceiver()Landroid/content/BroadcastReceiver;

    move-result-object p0

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->logBroadcastDispatched(ILjava/lang/String;Landroid/content/BroadcastReceiver;)V

    return-void
.end method
