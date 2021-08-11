.class Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$2;
.super Ljava/lang/Object;
.source "OpBitmojiDownloadManager.java"

# interfaces
.implements Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver$OnNetworkTypeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkTypeChange(I)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-static {v0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->access$100(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;)Z

    move-result v0

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v2, "OpBitmojiDownloadManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNetworkTypeChange: networkType= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isOwnerClockBitmoji= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->shouldNotifyDownloadStatusChange()V

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->showStickerUpdateNotificationIfPossible()V

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-static {p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->access$200(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "onNetworkTypeChange: access unavailable"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-static {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->access$000(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    const/4 p1, 0x0

    const-string v0, "recover detect by network"

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->startDownloadAll(ZLjava/lang/String;)V

    :cond_2
    return-void
.end method
