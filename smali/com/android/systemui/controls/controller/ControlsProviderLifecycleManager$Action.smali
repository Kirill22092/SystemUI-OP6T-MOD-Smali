.class public final Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;
.super Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;
.source "ControlsProviderLifecycleManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Action"
.end annotation


# instance fields
.field private final action:Landroid/service/controls/actions/ControlAction;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Ljava/lang/String;Landroid/service/controls/actions/ControlAction;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/controls/actions/ControlAction;",
            ")V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)V

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;->action:Landroid/service/controls/actions/ControlAction;

    return-void
.end method


# virtual methods
.method public callWrapper$packages__apps__OPSystemUI__android_common__OPSystemUI_core()Z
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-static {v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->access$getTAG$p(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-virtual {v2}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-static {v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->access$getWrapper$p(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)Lcom/android/systemui/controls/controller/ServiceWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;->action:Landroid/service/controls/actions/ControlAction;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-static {p0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->access$getActionCallbackService$p(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)Landroid/service/controls/IControlsActionCallback$Stub;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/controls/controller/ServiceWrapper;->action(Ljava/lang/String;Landroid/service/controls/actions/ControlAction;Landroid/service/controls/IControlsActionCallback;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
