.class Lcom/oneplus/aod/OpAodDisplayViewManager$4$6;
.super Ljava/lang/Object;
.source "OpAodDisplayViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpAodDisplayViewManager$4;->onScreenTurnedOff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodDisplayViewManager$4;)V
    .locals 0

    .line 646
    iput-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$6;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$6;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$500(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/OpClockViewCtrl;->onScreenTurnedOff()V

    .line 650
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$6;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$800(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/aod/utils/OpCanvasAodHelper;->isCanvasAodEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$6;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    .line 651
    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$900(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$6;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$1000(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/bg/OpAodCanvas;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/bg/OpAodCanvas;->recover()V

    :cond_0
    return-void
.end method
