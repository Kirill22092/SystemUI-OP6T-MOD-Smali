.class Lcom/oneplus/aod/OpAodDisplayViewManager$6;
.super Ljava/lang/Object;
.source "OpAodDisplayViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpAodDisplayViewManager;->updateIndicationTextSize(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

.field final synthetic val$size:I

.field final synthetic val$unit:I


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodDisplayViewManager;II)V
    .locals 0

    .line 907
    iput-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$6;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    iput p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$6;->val$unit:I

    iput p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$6;->val$size:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 911
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$6;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$000(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpFpAodIndicationText;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$6;->val$unit:I

    iget p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$6;->val$size:I

    int-to-float p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method
