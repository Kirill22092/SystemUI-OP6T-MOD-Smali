.class Lcom/oneplus/aod/OpAodLightEffectContainer$2;
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
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$2;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 301
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 302
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x100

    if-eq p1, v0, :cond_1

    const/16 v0, 0x110

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 313
    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$2;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$1200(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    goto :goto_0

    .line 304
    :cond_1
    iget-object p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$2;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {p1}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$900(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result p1

    const/16 v1, 0x3c

    if-ge p1, v1, :cond_2

    .line 305
    iget-object p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$2;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {p1}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$1000(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 306
    iget-object p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$2;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {p1}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$1000(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 307
    iget-object p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$2;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$1100(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    :cond_2
    :goto_0
    return-void
.end method
