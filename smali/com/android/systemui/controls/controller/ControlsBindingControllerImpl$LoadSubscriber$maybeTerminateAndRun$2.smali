.class final Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$maybeTerminateAndRun$2;
.super Ljava/lang/Object;
.source "ControlsBindingControllerImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;->maybeTerminateAndRun(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $postTerminateFn:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$maybeTerminateAndRun$2;->this$0:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$maybeTerminateAndRun$2;->$postTerminateFn:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$maybeTerminateAndRun$2;->this$0:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    invoke-static {v0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;->access$isTerminated$p(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$maybeTerminateAndRun$2;->$postTerminateFn:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
