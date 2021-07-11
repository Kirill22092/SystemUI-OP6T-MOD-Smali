.class Lcom/oneplus/aod/OpAodDisplayViewManager$7;
.super Ljava/lang/Object;
.source "OpAodDisplayViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpAodDisplayViewManager;->onFodShowOrHideOnAod(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodDisplayViewManager;Z)V
    .locals 0

    .line 926
    iput-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$7;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    iput-boolean p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$7;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$7;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$500(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object v0

    iget-boolean p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$7;->val$show:Z

    invoke-virtual {v0, p0}, Lcom/oneplus/aod/OpClockViewCtrl;->onFodShowOrHideOnAod(Z)V

    return-void
.end method
