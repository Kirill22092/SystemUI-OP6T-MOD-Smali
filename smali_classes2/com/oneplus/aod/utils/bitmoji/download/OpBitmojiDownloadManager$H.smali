.class Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;
.super Landroid/os/Handler;
.source "OpBitmojiDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-static {p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->access$500(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_2

    move v1, v2

    :cond_2
    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-static {p1, v0, v1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->access$400(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v0, v1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->access$300(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_6

    move v1, v2

    :cond_6
    invoke-static {v0, v1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->access$600(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;Z)V

    :goto_0
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-static {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->access$700(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;)V

    return-void
.end method
