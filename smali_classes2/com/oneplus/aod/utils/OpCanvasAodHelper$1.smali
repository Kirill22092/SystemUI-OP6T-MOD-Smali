.class Lcom/oneplus/aod/utils/OpCanvasAodHelper$1;
.super Ljava/lang/Thread;
.source "OpCanvasAodHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/utils/OpCanvasAodHelper;->saveCanvasAodParams(Landroid/os/Bundle;ZLcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/utils/OpCanvasAodHelper;

.field final synthetic val$contentChange:Z

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$imageUri:Ljava/lang/String;

.field final synthetic val$listener:Lcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;

.field final synthetic val$pointUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/utils/OpCanvasAodHelper;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;Z)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$1;->this$0:Lcom/oneplus/aod/utils/OpCanvasAodHelper;

    iput-object p2, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$1;->val$imageUri:Ljava/lang/String;

    iput-object p3, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$1;->val$pointUri:Ljava/lang/String;

    iput-object p4, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$1;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$1;->val$listener:Lcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;

    iput-boolean p6, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$1;->val$contentChange:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$1;->this$0:Lcom/oneplus/aod/utils/OpCanvasAodHelper;

    invoke-static {v0}, Lcom/oneplus/aod/utils/OpCanvasAodHelper;->access$000(Lcom/oneplus/aod/utils/OpCanvasAodHelper;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$1;->val$imageUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$1;->val$pointUri:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;->parse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OpCanvasAodHelper"

    const-string v2, "Data parse error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/aod/utils/OpCanvasAodHelper$1;->val$handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/oneplus/aod/utils/OpCanvasAodHelper$1$1;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/aod/utils/OpCanvasAodHelper$1$1;-><init>(Lcom/oneplus/aod/utils/OpCanvasAodHelper$1;Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
