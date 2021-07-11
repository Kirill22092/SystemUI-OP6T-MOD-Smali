.class Lcom/oneplus/aod/OpAodDisplayViewManager$10;
.super Ljava/lang/Object;
.source "OpAodDisplayViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpAodDisplayViewManager;->quickHideNotificationBeforeScreenOff(Lcom/android/systemui/doze/DozeHost$PulseCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

.field final synthetic val$callback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodDisplayViewManager;Lcom/android/systemui/doze/DozeHost$PulseCallback;Landroid/os/Handler;)V
    .locals 0

    .line 986
    iput-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$10;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    iput-object p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$10;->val$callback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    iput-object p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$10;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 989
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$10;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$1900(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpSingleNotificationView;

    move-result-object v0

    const-string v1, "AodDisplayViewManager"

    if-eqz v0, :cond_1

    const-string v0, "hide notification before screen off"

    .line 990
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$10;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$900(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$10;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0, v2}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$2002(Lcom/oneplus/aod/OpAodDisplayViewManager;I)I

    .line 994
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$10;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0, v2}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$2102(Lcom/oneplus/aod/OpAodDisplayViewManager;Z)Z

    .line 995
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$10;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$300(Lcom/oneplus/aod/OpAodDisplayViewManager;)V

    .line 996
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$10;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$2202(Lcom/oneplus/aod/OpAodDisplayViewManager;Z)Z

    .line 998
    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$10;->val$callback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_2

    const-string v0, "call onPulseFinished"

    .line 999
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$10;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1001
    new-instance v1, Lcom/oneplus/aod/OpAodDisplayViewManager$10$1;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/OpAodDisplayViewManager$10$1;-><init>(Lcom/oneplus/aod/OpAodDisplayViewManager$10;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
