.class public final Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger$mCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "TGIFTrigger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger$mCallback$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger$mCallback$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;

    invoke-static {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;->access$inTGIFTime(Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;)Z

    move-result v0

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger$mCallback$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;

    invoke-static {v1}, Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;->access$getMInTGIF$p(Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger$mCallback$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;

    invoke-static {v1, v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;->access$setMInTGIF$p(Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;Z)V

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger$mCallback$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;

    invoke-static {v1}, Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;->access$getHandler(Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger$mCallback$1$onTimeChanged$1;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger$mCallback$1$onTimeChanged$1;-><init>(Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger$mCallback$1;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
