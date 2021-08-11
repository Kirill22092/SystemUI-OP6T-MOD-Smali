.class public Lcom/oneplus/aod/utils/bitmoji/download/task/PackDownloadTask;
.super Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;
.source "PackDownloadTask.java"


# instance fields
.field private mPack:Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask$OnDownloadDoneListener;Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask$OnDownloadDoneListener;)V

    iput-object p4, p0, Lcom/oneplus/aod/utils/bitmoji/download/task/PackDownloadTask;->mPack:Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 8

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/download/task/PackDownloadTask;->mPack:Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;

    invoke-virtual {v2}, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->getPackId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/utils/bitmoji/download/task/PackDownloadTask;->mPack:Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;

    invoke-virtual {v3}, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->onTaskDone()V

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->onDownloadDone(Z)V

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->getBitmojiHelper()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object v6

    invoke-virtual {v4}, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getImagePath(Ljava/lang/String;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v4}, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->saveImageToFile(Landroid/net/Uri;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v5

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/task/PackDownloadTask;->mPack:Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;

    invoke-virtual {v0, v5}, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->setNeedsUpdate(Z)V

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/task/PackDownloadTask;->mPack:Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->notNew()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/task/PackDownloadTask;->mPack:Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;

    iget-object v3, p0, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->writeToFile(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v3, p0, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pack write to file fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    const-class v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    invoke-static {v2}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->getTriggerIdByPackId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->onImagePackUpdate(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->onTaskDone()V

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->onDownloadDone(Z)V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/download/task/PackDownloadTask;->call()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public key()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/task/PackDownloadTask;->mPack:Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->getPackId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
