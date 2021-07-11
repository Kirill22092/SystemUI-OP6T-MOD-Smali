.class Lcom/oneplus/aod/utils/OpCanvasAodHelper$2;
.super Ljava/lang/Thread;
.source "OpCanvasAodHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/utils/OpCanvasAodHelper;->loadFromCache(Lcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/utils/OpCanvasAodHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/utils/OpCanvasAodHelper;Landroid/os/Handler;Lcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$2;->this$0:Lcom/oneplus/aod/utils/OpCanvasAodHelper;

    iput-object p2, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$2;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$2;->val$listener:Lcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$2;->this$0:Lcom/oneplus/aod/utils/OpCanvasAodHelper;

    invoke-static {v0}, Lcom/oneplus/aod/utils/OpCanvasAodHelper;->access$000(Lcom/oneplus/aod/utils/OpCanvasAodHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;->loadFromCache(Landroid/content/Context;)Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OpCanvasAodHelper"

    const-string v2, "Data parse error"

    .line 287
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 290
    :goto_0
    iget-object v1, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$2;->val$handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 291
    new-instance v2, Lcom/oneplus/aod/utils/OpCanvasAodHelper$2$1;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/aod/utils/OpCanvasAodHelper$2$1;-><init>(Lcom/oneplus/aod/utils/OpCanvasAodHelper$2;Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
