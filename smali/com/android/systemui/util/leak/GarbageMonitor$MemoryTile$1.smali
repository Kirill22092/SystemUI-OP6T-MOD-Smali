.class Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1;
.super Ljava/lang/Thread;
.source "GarbageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->handleClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;Ljava/lang/String;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1;->this$0:Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$run$0(Landroid/content/Intent;)V
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1;->this$0:Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->access$302(Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;Z)Z

    .line 441
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1;->this$0:Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    .line 442
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1;->this$0:Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getHost()Lcom/android/systemui/qs/QSHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    .line 443
    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1;->this$0:Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;

    invoke-static {p0}, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->access$400(Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object p0

    invoke-interface {p0, p1, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$GarbageMonitor$MemoryTile$1(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1;->lambda$run$0(Landroid/content/Intent;)V

    return-void
.end method

.method public run()V
    .locals 3

    const-wide/16 v0, 0x1f4

    .line 436
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :catch_0
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1;->this$0:Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;

    invoke-static {v0}, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->access$000(Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;)Lcom/android/systemui/util/leak/GarbageMonitor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/leak/GarbageMonitor;->access$100(Lcom/android/systemui/util/leak/GarbageMonitor;)Landroid/content/Intent;

    move-result-object v0

    .line 439
    iget-object v1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1;->this$0:Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;

    invoke-static {v1}, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->access$200(Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/util/leak/-$$Lambda$GarbageMonitor$MemoryTile$1$cmBeuqKr1b9hrY1trlao7X6pfIc;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/util/leak/-$$Lambda$GarbageMonitor$MemoryTile$1$cmBeuqKr1b9hrY1trlao7X6pfIc;-><init>(Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
