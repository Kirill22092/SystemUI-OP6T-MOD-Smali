.class final Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnSubscribeRunnable;
.super Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$CallbackRunnable;
.source "ControlsBindingControllerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnSubscribeRunnable"
.end annotation


# instance fields
.field private final requestLimit:J

.field private final subscription:Landroid/service/controls/IControlsSubscription;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;Landroid/os/IBinder;Landroid/service/controls/IControlsSubscription;J)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/service/controls/IControlsSubscription;",
            "J)V"
        }
    .end annotation

    const-string/jumbo v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "subscription"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$CallbackRunnable;-><init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;Landroid/os/IBinder;)V

    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnSubscribeRunnable;->subscription:Landroid/service/controls/IControlsSubscription;

    iput-wide p4, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnSubscribeRunnable;->requestLimit:J

    return-void
.end method


# virtual methods
.method public doRun()V
    .locals 4

    const-string v0, "ControlsBindingControllerImpl"

    const-string v1, "LoadSubscription: Starting subscription"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$CallbackRunnable;->getProvider()Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnSubscribeRunnable;->subscription:Landroid/service/controls/IControlsSubscription;

    iget-wide v2, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnSubscribeRunnable;->requestLimit:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->startSubscription(Landroid/service/controls/IControlsSubscription;J)V

    :cond_0
    return-void
.end method
