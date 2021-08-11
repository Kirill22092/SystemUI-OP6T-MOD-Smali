.class Lcom/oneplus/aod/OpAodDisplayViewManager$9;
.super Ljava/lang/Object;
.source "OpAodDisplayViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpAodDisplayViewManager;->onUserTrigger(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodDisplayViewManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$9;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    iput p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$9;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$9;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$600(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object v0

    iget p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$9;->val$reason:I

    invoke-virtual {v0, p0}, Lcom/oneplus/aod/OpClockViewCtrl;->onUserTrigger(I)V

    return-void
.end method
