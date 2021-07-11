.class Lcom/oneplus/aod/OpAodDisplayViewManager$8;
.super Ljava/lang/Object;
.source "OpAodDisplayViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpAodDisplayViewManager;->userActivityInAlwaysOn(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$recoverBg:Z


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodDisplayViewManager;Ljava/lang/String;Z)V
    .locals 0

    .line 950
    iput-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$8;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    iput-object p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$8;->val$reason:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$8;->val$recoverBg:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 953
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$8;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$500(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$8;->val$reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpClockViewCtrl;->userActivityInAlwaysOn(Ljava/lang/String;)V

    .line 954
    iget-boolean v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$8;->val$recoverBg:Z

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$8;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$1000(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/bg/OpAodCanvas;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$8;->val$reason:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/oneplus/aod/bg/OpAodCanvas;->userActivityInAlwaysOn(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
