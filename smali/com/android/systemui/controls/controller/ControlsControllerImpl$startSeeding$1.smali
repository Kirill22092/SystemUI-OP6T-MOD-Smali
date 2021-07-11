.class public final Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;
.super Ljava/lang/Object;
.source "ControlsControllerImpl.kt"

# interfaces
.implements Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/controller/ControlsControllerImpl;->startSeeding(Ljava/util/List;Ljava/util/function/Consumer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Ljava/util/function/Consumer;

.field final synthetic $componentName:Landroid/content/ComponentName;

.field final synthetic $didAnyFail:Z

.field final synthetic $remaining:Ljava/util/List;

.field final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Landroid/content/ComponentName;Ljava/util/function/Consumer;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/function/Consumer;",
            "Ljava/util/List;",
            "Z)V"
        }
    .end annotation

    .line 420
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;->$componentName:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;->$callback:Ljava/util/function/Consumer;

    iput-object p4, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;->$remaining:Ljava/util/List;

    iput-boolean p5, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;->$didAnyFail:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 420
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;->accept(Ljava/util/List;)V

    return-void
.end method

.method public accept(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/controls/Control;",
            ">;)V"
        }
    .end annotation

    const-string v0, "controls"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->access$getExecutor$p(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to seed favorites: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ControlsControllerImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->access$getExecutor$p(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
