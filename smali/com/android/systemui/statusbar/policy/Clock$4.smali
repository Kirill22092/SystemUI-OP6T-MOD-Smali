.class Lcom/android/systemui/statusbar/policy/Clock$4;
.super Ljava/lang/Object;
.source "Clock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/Clock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/Clock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock$4;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock$4;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/Clock;->access$1000(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock$4;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v6, v2, v4

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    mul-long/2addr v6, v4

    sub-long/2addr v6, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock$4;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/Clock;->access$1300(Lcom/android/systemui/statusbar/policy/Clock;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-long/2addr v0, v6

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    :goto_0
    invoke-static {}, Lcom/android/systemui/statusbar/policy/Clock;->access$1400()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock$4;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/Clock;->access$1500(Lcom/android/systemui/statusbar/policy/Clock;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock$4;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/Clock;->access$1600(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "schedual next time-tick at uptime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", opShowSeconds() -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/Clock$4;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/Clock;->access$1700(Lcom/android/systemui/statusbar/policy/Clock;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mShowSeconds -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/Clock$4;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/Clock;->access$1800(Lcom/android/systemui/statusbar/policy/Clock;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock$4;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/Clock;->access$300(Lcom/android/systemui/statusbar/policy/Clock;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method
