.class Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader$1;
.super Ljava/lang/Object;
.source "OpBitmojiDownloader.java"

# interfaces
.implements Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask$OnTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskFinished(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTaskFinished: key= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBitmojiDownloader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;

    invoke-static {v0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->access$000(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;

    invoke-static {v1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->access$000(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;

    invoke-static {v1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->access$100(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->hasUndoneTask()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;

    const-string v0, "all task finished"

    invoke-static {p1, v0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->access$200(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;Ljava/lang/String;)V

    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->shouldNotifyDownloadStatusChange()V

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;

    invoke-static {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->access$300(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
