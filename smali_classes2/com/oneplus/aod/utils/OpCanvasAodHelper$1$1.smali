.class Lcom/oneplus/aod/utils/OpCanvasAodHelper$1$1;
.super Ljava/lang/Object;
.source "OpCanvasAodHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/utils/OpCanvasAodHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/aod/utils/OpCanvasAodHelper$1;

.field final synthetic val$data:Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/utils/OpCanvasAodHelper$1;Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$1$1;->this$1:Lcom/oneplus/aod/utils/OpCanvasAodHelper$1;

    iput-object p2, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$1$1;->val$data:Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$1$1;->this$1:Lcom/oneplus/aod/utils/OpCanvasAodHelper$1;

    iget-object v0, v0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$1;->val$listener:Lcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;

    if-eqz v0, :cond_1

    .line 255
    iget-object v1, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$1$1;->val$data:Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$1$1;->this$1:Lcom/oneplus/aod/utils/OpCanvasAodHelper$1;

    iget-boolean v2, v2, Lcom/oneplus/aod/utils/OpCanvasAodHelper$1;->val$contentChange:Z

    iget-object p0, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$1$1;->val$data:Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;

    invoke-interface {v0, v1, v2, p0}, Lcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;->onBitmapHandleDone(ZZLcom/oneplus/aod/utils/OpCanvasAodHelper$Data;)V

    :cond_1
    return-void
.end method
