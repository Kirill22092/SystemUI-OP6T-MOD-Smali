.class public final Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;
.super Ljava/lang/Object;
.source "ControlsProviderLifecycleManager.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;-><init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/service/controls/IControlsActionCallback$Stub;Landroid/os/UserHandle;Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "service"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-static {v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->access$getTAG$p(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->access$setBindTryCount$p(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;I)V

    iget-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    new-instance v1, Lcom/android/systemui/controls/controller/ServiceWrapper;

    invoke-static {p2}, Landroid/service/controls/IControlsProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/controls/IControlsProvider;

    move-result-object v2

    const-string v3, "IControlsProvider.Stub.asInterface(service)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/systemui/controls/controller/ServiceWrapper;-><init>(Landroid/service/controls/IControlsProvider;)V

    invoke-static {p1, v1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->access$setWrapper$p(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Lcom/android/systemui/controls/controller/ServiceWrapper;)V

    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-static {p0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->access$handlePendingServiceMethods(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-static {v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->access$getTAG$p(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->access$setWrapper$p(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Lcom/android/systemui/controls/controller/ServiceWrapper;)V

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->access$bindService(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Z)V

    return-void
.end method
