.class Lcom/oneplus/aod/OpAodDisplayViewManager$5;
.super Ljava/lang/Object;
.source "OpAodDisplayViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpAodDisplayViewManager;->startDozing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodDisplayViewManager;)V
    .locals 0

    .line 803
    iput-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$5;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 806
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$5;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$500(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/OpClockViewCtrl;->startDozing()V

    .line 807
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$5;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$600(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/slice/OpSliceManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/slice/OpSliceManager;->setListening(Z)V

    return-void
.end method
