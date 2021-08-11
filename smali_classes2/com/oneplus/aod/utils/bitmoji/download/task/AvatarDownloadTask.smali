.class public Lcom/oneplus/aod/utils/bitmoji/download/task/AvatarDownloadTask;
.super Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;
.source "AvatarDownloadTask.java"


# instance fields
.field private mAvatar:Lcom/oneplus/aod/utils/bitmoji/download/item/Avatar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask$OnDownloadDoneListener;Lcom/oneplus/aod/utils/bitmoji/download/item/Avatar;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask$OnDownloadDoneListener;)V

    iput-object p4, p0, Lcom/oneplus/aod/utils/bitmoji/download/task/AvatarDownloadTask;->mAvatar:Lcom/oneplus/aod/utils/bitmoji/download/item/Avatar;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->getBitmojiHelper()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getAvatarFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->getBitmojiHelper()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getSelfieUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->saveImageToFile(Landroid/net/Uri;Ljava/io/File;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->onTaskDone()V

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->onDownloadDone(Z)V

    return-object v0

    :cond_0
    if-eqz v1, :cond_1

    :try_start_2
    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/download/task/AvatarDownloadTask;->mAvatar:Lcom/oneplus/aod/utils/bitmoji/download/item/Avatar;

    invoke-virtual {v2, v0}, Lcom/oneplus/aod/utils/bitmoji/download/item/Avatar;->setNeedsUpdate(Z)V

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/task/AvatarDownloadTask;->mAvatar:Lcom/oneplus/aod/utils/bitmoji/download/item/Avatar;

    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/utils/bitmoji/download/item/Avatar;->writeToFile(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/systemui/OpSystemUIProvider;->notifyAvatarUpdate(Landroid/content/Context;)V

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    :goto_1
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

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/download/task/AvatarDownloadTask;->call()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public key()Ljava/lang/String;
    .locals 0

    const-string p0, "avatar"

    return-object p0
.end method
