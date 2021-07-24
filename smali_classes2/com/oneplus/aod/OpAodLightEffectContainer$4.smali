.class Lcom/oneplus/aod/OpAodLightEffectContainer$4;
.super Landroid/os/Handler;
.source "OpAodLightEffectContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpAodLightEffectContainer;->startHandlerThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodLightEffectContainer;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;
    .param p2, "arg0"    # Landroid/os/Looper;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x100

    .line 288
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 289
    iget v0, p1, Landroid/os/Message;->what:I

    .line 290
    .local v0, "what":I
    if-eq v0, v3, :cond_13

    .line 291
    const/16 v1, 0x110

    if-ne v0, v1, :cond_12

    .line 292
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v1}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$1100(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    .line 299
    :cond_12
    :goto_12
    return-void

    .line 295
    :cond_13
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v1}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$1200(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_12

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v1}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$1300(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 296
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v1}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$1300(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 297
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$4;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v1}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$1400(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    goto :goto_12
.end method
