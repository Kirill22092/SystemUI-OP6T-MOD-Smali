.class final Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$onNext$1;
.super Ljava/lang/Object;
.source "ControlsBindingControllerImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;->onNext(Landroid/os/IBinder;Landroid/service/controls/Control;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $c:Landroid/service/controls/Control;

.field final synthetic $token:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;Landroid/service/controls/Control;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$onNext$1;->this$0:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$onNext$1;->$c:Landroid/service/controls/Control;

    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$onNext$1;->$token:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$onNext$1;->this$0:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    invoke-static {v0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;->access$isTerminated$p(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$onNext$1;->this$0:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;->getLoadedControls()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$onNext$1;->$c:Landroid/service/controls/Control;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$onNext$1;->this$0:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;->getLoadedControls()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$onNext$1;->this$0:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    invoke-virtual {v2}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;->getRequestLimit()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$onNext$1;->this$0:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    new-instance v7, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnCancelAndLoadRunnable;

    iget-object v2, v0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;->this$0:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    iget-object v3, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$onNext$1;->$token:Landroid/os/IBinder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;->getLoadedControls()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$onNext$1;->this$0:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    invoke-static {v1}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;->access$getSubscription$p(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;)Landroid/service/controls/IControlsSubscription;

    move-result-object v5

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$onNext$1;->this$0:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;->getCallback()Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnCancelAndLoadRunnable;-><init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;Landroid/os/IBinder;Ljava/util/List;Landroid/service/controls/IControlsSubscription;Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;)V

    invoke-static {v0, v7}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;->access$maybeTerminateAndRun(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
