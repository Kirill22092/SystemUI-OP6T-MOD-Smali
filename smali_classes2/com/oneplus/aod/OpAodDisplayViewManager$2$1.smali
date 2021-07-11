.class Lcom/oneplus/aod/OpAodDisplayViewManager$2$1;
.super Ljava/lang/Object;
.source "OpAodDisplayViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpAodDisplayViewManager$2;->onThreeKeyChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$2;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodDisplayViewManager$2;I)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$2;

    iput p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2$1;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$2;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$100(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodThreeKeyStatusView;

    move-result-object v0

    iget p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2$1;->val$status:I

    invoke-virtual {v0, p0}, Lcom/oneplus/aod/OpAodThreeKeyStatusView;->onThreeKeyChanged(I)V

    return-void
.end method
