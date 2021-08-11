.class Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger$UpdateMonitorCallback;
.super Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger$TriggerUpdateMonitorCallback;
.source "VideoTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateMonitorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;


# direct methods
.method private constructor <init>(Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger$UpdateMonitorCallback;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;

    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger$TriggerUpdateMonitorCallback;-><init>(Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger$UpdateMonitorCallback;-><init>(Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;)V

    return-void
.end method

.method private synthetic lambda$onVideoChanged$0()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger$UpdateMonitorCallback;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;->getTriggerId()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger$UpdateMonitorCallback;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;

    invoke-static {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;->access$100(Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;)Z

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;->access$700(Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onVideoChanged$0$VideoTrigger$UpdateMonitorCallback()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger$UpdateMonitorCallback;->lambda$onVideoChanged$0()V

    return-void
.end method

.method public onVideoChanged(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger$UpdateMonitorCallback;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;

    invoke-static {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;->access$100(Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;)Z

    move-result v0

    if-eq v0, p2, :cond_4

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger$UpdateMonitorCallback;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;

    invoke-static {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;->access$200(Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoChanged: packageName= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", using= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger$UpdateMonitorCallback;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;

    invoke-static {v0, p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;->access$300(Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger$UpdateMonitorCallback;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;

    invoke-static {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;->access$400(Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "onVideoChanged: not in whitelist"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger$UpdateMonitorCallback;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;

    invoke-static {p1, p2}, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;->access$102(Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;Z)Z

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger$UpdateMonitorCallback;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;

    if-eqz p2, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_0

    :cond_3
    const-wide/16 v0, -0x1

    :goto_0
    invoke-static {p1, v0, v1}, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;->access$502(Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;J)J

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger$UpdateMonitorCallback;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;

    invoke-static {p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;->access$600(Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/oneplus/aod/utils/bitmoji/triggers/-$$Lambda$VideoTrigger$UpdateMonitorCallback$71usmY14uCDs89PhnTDc1xhKUX4;

    invoke-direct {p2, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/-$$Lambda$VideoTrigger$UpdateMonitorCallback$71usmY14uCDs89PhnTDc1xhKUX4;-><init>(Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger$UpdateMonitorCallback;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method
