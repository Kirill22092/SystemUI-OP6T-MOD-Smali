.class public abstract Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;
.super Ljava/lang/Object;
.source "ControlsProviderLifecycleManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ServiceMethod"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 292
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract callWrapper$packages__apps__OPSystemUI__android_common__OPSystemUI_core()Z
.end method

.method public final run()V
    .locals 1

    .line 294
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;->callWrapper$packages__apps__OPSystemUI__android_common__OPSystemUI_core()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-static {v0, p0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->access$queueServiceMethod(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;)V

    .line 296
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->binderDied()V

    :cond_0
    return-void
.end method
