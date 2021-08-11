.class final Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger$mCallback$1$onTimeChanged$1;
.super Ljava/lang/Object;
.source "TGIFTrigger.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger$mCallback$1;->onTimeChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $inTGIFTime:Z

.field final synthetic this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger$mCallback$1;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger$mCallback$1;Z)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger$mCallback$1$onTimeChanged$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger$mCallback$1;

    iput-boolean p2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger$mCallback$1$onTimeChanged$1;->$inTGIFTime:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger$mCallback$1$onTimeChanged$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger$mCallback$1;

    iget-object v0, v0, Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger$mCallback$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;

    invoke-static {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;->access$getMBitmojiManager$p(Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;)Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    move-result-object v0

    iget-boolean p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger$mCallback$1$onTimeChanged$1;->$inTGIFTime:Z

    const-string v1, "tgif"

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->onTriggerChanged(Ljava/lang/String;Z)V

    return-void
.end method
