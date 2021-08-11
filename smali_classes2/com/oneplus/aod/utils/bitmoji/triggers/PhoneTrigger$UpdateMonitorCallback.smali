.class Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger$UpdateMonitorCallback;
.super Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger$TriggerUpdateMonitorCallback;
.source "PhoneTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateMonitorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;


# direct methods
.method private constructor <init>(Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger$UpdateMonitorCallback;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;

    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger$TriggerUpdateMonitorCallback;-><init>(Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger$UpdateMonitorCallback;-><init>(Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;)V

    return-void
.end method

.method private synthetic lambda$onPhoneStateChanged$0(Z)V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger$UpdateMonitorCallback;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;->getTriggerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;->access$600(Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPhoneStateChanged$0$PhoneTrigger$UpdateMonitorCallback(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger$UpdateMonitorCallback;->lambda$onPhoneStateChanged$0(Z)V

    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger$UpdateMonitorCallback;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;

    invoke-static {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;->access$100(Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;)I

    move-result v0

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger$UpdateMonitorCallback;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;

    invoke-static {v0, p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;->access$102(Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;I)I

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger$UpdateMonitorCallback;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;

    invoke-static {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;->access$200(Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger$UpdateMonitorCallback;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;

    invoke-static {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;->access$300(Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhoneStateChanged: phoneState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger$UpdateMonitorCallback;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;

    invoke-static {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;->access$400(Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/aod/utils/bitmoji/triggers/-$$Lambda$PhoneTrigger$UpdateMonitorCallback$qXnYSJ-UVsbnxgzzDFfqUantRsE;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/-$$Lambda$PhoneTrigger$UpdateMonitorCallback$qXnYSJ-UVsbnxgzzDFfqUantRsE;-><init>(Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger$UpdateMonitorCallback;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger$UpdateMonitorCallback;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;

    invoke-static {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;->access$500(Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "onPhoneStateChanged: handler is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method
