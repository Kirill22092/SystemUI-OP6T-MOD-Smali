.class Lcom/oneplus/aod/OpAodLightEffectContainer$6;
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
    .line 320
    iput-object p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$6;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "message"    # Landroid/os/Message;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/16 v2, 0x100

    .line 322
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 323
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_21

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$6;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$800(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_21

    .line 324
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$6;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$900(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 325
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$6;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$1000(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    .line 327
    :cond_21
    return-void
.end method
