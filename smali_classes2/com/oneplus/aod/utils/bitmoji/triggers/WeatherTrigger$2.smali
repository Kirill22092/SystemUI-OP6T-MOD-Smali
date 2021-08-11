.class Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "WeatherTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method

.method static synthetic lambda$onDreamingStateChanged$1(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)V
    .locals 0

    invoke-static {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->access$1200(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)V

    return-void
.end method

.method static synthetic lambda$onDreamingStateChanged$2(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)V
    .locals 0

    invoke-static {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->access$1100(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)V

    return-void
.end method

.method static synthetic lambda$onTimeChanged$3(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)V
    .locals 0

    invoke-static {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->access$1000(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)V

    return-void
.end method

.method static synthetic lambda$onUserUnlocked$0(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)V
    .locals 0

    invoke-static {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->access$1300(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)V

    return-void
.end method


# virtual methods
.method public onDreamingStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;

    invoke-static {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->access$300(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;

    invoke-static {p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->access$400(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;

    new-instance v0, Lcom/oneplus/aod/utils/bitmoji/triggers/-$$Lambda$WeatherTrigger$2$2acyip_WkAawhWEA3JgvLh-C6PE;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/-$$Lambda$WeatherTrigger$2$2acyip_WkAawhWEA3JgvLh-C6PE;-><init>(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;

    invoke-static {p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->access$500(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;

    invoke-static {p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->access$600(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;

    new-instance v0, Lcom/oneplus/aod/utils/bitmoji/triggers/-$$Lambda$WeatherTrigger$2$UQyXLOIJVA1DTyOJKdEqRatBu3s;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/-$$Lambda$WeatherTrigger$2$UQyXLOIJVA1DTyOJKdEqRatBu3s;-><init>(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;

    invoke-static {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->access$700(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "onDreamingStateChanged: handler is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onTimeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;

    invoke-static {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->access$800(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;

    invoke-static {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->access$900(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;

    new-instance v1, Lcom/oneplus/aod/utils/bitmoji/triggers/-$$Lambda$WeatherTrigger$2$gBNjxQ5bnuzyZoW6qJGBZV50lRI;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/-$$Lambda$WeatherTrigger$2$gBNjxQ5bnuzyZoW6qJGBZV50lRI;-><init>(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onUserUnlocked()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;

    invoke-static {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->access$000(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;

    invoke-static {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->access$100(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;

    new-instance v1, Lcom/oneplus/aod/utils/bitmoji/triggers/-$$Lambda$WeatherTrigger$2$Gnpnz7CZ8NvwQOazotwJVa91ksI;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/-$$Lambda$WeatherTrigger$2$Gnpnz7CZ8NvwQOazotwJVa91ksI;-><init>(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;

    invoke-static {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->access$200(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "onUserUnlocked: handler is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
