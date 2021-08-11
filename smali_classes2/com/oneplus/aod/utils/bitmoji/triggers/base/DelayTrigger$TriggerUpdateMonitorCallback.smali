.class public Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger$TriggerUpdateMonitorCallback;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "DelayTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TriggerUpdateMonitorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;


# direct methods
.method protected constructor <init>(Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger$TriggerUpdateMonitorCallback;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartedGoingToSleep(I)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger$TriggerUpdateMonitorCallback;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger$TriggerUpdateMonitorCallback;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger$TriggerUpdateMonitorCallback;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;

    invoke-static {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->access$000(Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger$TriggerUpdateMonitorCallback;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    const-string p1, "onStartedGoingToSleep: handler is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger$TriggerUpdateMonitorCallback;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger$TriggerUpdateMonitorCallback;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger$TriggerUpdateMonitorCallback;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;

    invoke-static {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->access$000(Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger$TriggerUpdateMonitorCallback;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    const-string v0, "onStartedWakingUp: handler is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
