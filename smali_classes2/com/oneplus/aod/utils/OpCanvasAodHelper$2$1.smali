.class Lcom/oneplus/aod/utils/OpCanvasAodHelper$2$1;
.super Ljava/lang/Object;
.source "OpCanvasAodHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/utils/OpCanvasAodHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/aod/utils/OpCanvasAodHelper$2;

.field final synthetic val$data:Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/utils/OpCanvasAodHelper$2;Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$2$1;->this$1:Lcom/oneplus/aod/utils/OpCanvasAodHelper$2;

    iput-object p2, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$2$1;->val$data:Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$2$1;->this$1:Lcom/oneplus/aod/utils/OpCanvasAodHelper$2;

    iget-object v0, v0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$2;->val$listener:Lcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;

    if-eqz v0, :cond_1

    .line 295
    iget-object v1, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$2$1;->val$data:Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object p0, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$2$1;->val$data:Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;

    invoke-interface {v0, v1, v2, p0}, Lcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;->onBitmapHandleDone(ZZLcom/oneplus/aod/utils/OpCanvasAodHelper$Data;)V

    :cond_1
    return-void
.end method
