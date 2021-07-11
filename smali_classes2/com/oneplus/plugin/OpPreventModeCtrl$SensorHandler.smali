.class Lcom/oneplus/plugin/OpPreventModeCtrl$SensorHandler;
.super Landroid/os/Handler;
.source "OpPreventModeCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/plugin/OpPreventModeCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;


# direct methods
.method private constructor <init>(Lcom/oneplus/plugin/OpPreventModeCtrl;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$SensorHandler;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/plugin/OpPreventModeCtrl;Lcom/oneplus/plugin/OpPreventModeCtrl$1;)V
    .locals 0

    .line 383
    invoke-direct {p0, p1}, Lcom/oneplus/plugin/OpPreventModeCtrl$SensorHandler;-><init>(Lcom/oneplus/plugin/OpPreventModeCtrl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 386
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 398
    iget-object p1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$SensorHandler;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-static {p1}, Lcom/oneplus/plugin/OpPreventModeCtrl;->access$200(Lcom/oneplus/plugin/OpPreventModeCtrl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$SensorHandler;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/plugin/OpPreventModeCtrl;->haveDelayAnimation:Z

    .line 402
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$SensorHandler;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-static {v0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->access$900(Lcom/oneplus/plugin/OpPreventModeCtrl;)V

    .line 403
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$SensorHandler;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->stopPreventMode()V

    .line 404
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 388
    :cond_0
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$SensorHandler;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-static {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->access$500(Lcom/oneplus/plugin/OpPreventModeCtrl;)V

    goto :goto_0

    .line 391
    :cond_1
    iget-object p1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$SensorHandler;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-static {p1}, Lcom/oneplus/plugin/OpPreventModeCtrl;->access$200(Lcom/oneplus/plugin/OpPreventModeCtrl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 392
    :try_start_1
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$SensorHandler;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-static {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->access$800(Lcom/oneplus/plugin/OpPreventModeCtrl;)V

    .line 393
    monitor-exit p1

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method
