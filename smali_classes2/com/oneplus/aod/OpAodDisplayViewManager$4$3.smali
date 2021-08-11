.class Lcom/oneplus/aod/OpAodDisplayViewManager$4$3;
.super Ljava/lang/Object;
.source "OpAodDisplayViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpAodDisplayViewManager$4;->onUserSwitchComplete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodDisplayViewManager$4;I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$3;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;

    iput p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$3;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$3;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$700(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/slice/OpSliceManager;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$3;->val$userId:I

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/slice/OpSliceManager;->onUserSwitchComplete(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$3;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$600(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$3;->val$userId:I

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpClockViewCtrl;->onUserSwitchComplete(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$3;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$800(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodMain;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$3;->val$userId:I

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpAodMain;->onUserSwitchComplete(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$3;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$1200(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodNotificationIconAreaController;

    move-result-object v0

    iget p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$3;->val$userId:I

    invoke-virtual {v0, p0}, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->onUserSwitchComplete(I)V

    return-void
.end method
