.class Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper$OpBitmojiObserver;
.super Landroid/database/ContentObserver;
.source "OpBitmojiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpBitmojiObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownloadManager:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper$OpBitmojiObserver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper$OpBitmojiObserver;->mDownloadManager:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getSelfieUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getBitmojiStatus()I

    move-result p1

    iget-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper$OpBitmojiObserver;->mContext:Landroid/content/Context;

    const/4 v0, -0x2

    invoke-static {p2, v0}, Lcom/oneplus/aod/OpAodUtils;->getCurrentAodClockStyle(Landroid/content/Context;I)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange: selfie, status= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clockStyle= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBitmojiObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper$OpBitmojiObserver;->mDownloadManager:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->isApplyFirstTime()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->needsUpdate(Z)V

    const/16 v0, 0xc

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    if-ne p1, v2, :cond_2

    iget-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper$OpBitmojiObserver;->mDownloadManager:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-virtual {p2, v1, v2}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->startDownloadAll(ZZ)V

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    iget-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper$OpBitmojiObserver;->mDownloadManager:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-virtual {p2, v1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->startDownloadAvatar(Z)V

    :cond_1
    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getNotificationManager()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->checkNeedToShowReadyNotification()V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->isAvatarSet()Z

    move-result p2

    if-nez p2, :cond_3

    if-ne p1, v2, :cond_3

    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->avatarSet(Z)V

    :cond_3
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper$OpBitmojiObserver;->mDownloadManager:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->showStickerUpdateNotificationIfPossible()V

    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->shouldNotifyDownloadStatusChange()V

    :cond_4
    return-void
.end method
