.class public Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;
.super Ljava/lang/Object;
.source "OpBitmojiDownloadManager.java"

# interfaces
.implements Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask$OnDownloadDoneListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;
    }
.end annotation


# static fields
.field static final DOWNLOAD_PACK_INFO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBgHandler:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;

.field private mContext:Landroid/content/Context;

.field private mDownloadInfo:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;

.field private mDownloader:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mNetworkCallback:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver$OnNetworkTypeChangeListener;

.field private mNetworkObserver:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;

.field private mNotificationListener:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$OnDownloadNotificationActionListener;

.field private mNotificationManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->DOWNLOAD_PACK_INFO:Ljava/util/HashMap;

    const-string v1, "mornin"

    const-string v2, "time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->DOWNLOAD_PACK_INFO:Ljava/util/HashMap;

    const-string v1, "afternoon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->DOWNLOAD_PACK_INFO:Ljava/util/HashMap;

    const-string v1, "evening"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->DOWNLOAD_PACK_INFO:Ljava/util/HashMap;

    const-string v1, "night"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->DOWNLOAD_PACK_INFO:Ljava/util/HashMap;

    const-string v1, "weekday"

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->DOWNLOAD_PACK_INFO:Ljava/util/HashMap;

    const-string v1, "weekend"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->DOWNLOAD_PACK_INFO:Ljava/util/HashMap;

    const-string v1, "sun"

    const-string v2, "weather"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->DOWNLOAD_PACK_INFO:Ljava/util/HashMap;

    const-string v1, "cloud"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->DOWNLOAD_PACK_INFO:Ljava/util/HashMap;

    const-string v1, "rain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->DOWNLOAD_PACK_INFO:Ljava/util/HashMap;

    const-string v1, "snow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->DOWNLOAD_PACK_INFO:Ljava/util/HashMap;

    const-string v1, "tunes"

    const-string v2, "music"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->DOWNLOAD_PACK_INFO:Ljava/util/HashMap;

    const-string v1, "watching"

    const-string v2, "video"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->DOWNLOAD_PACK_INFO:Ljava/util/HashMap;

    const-string v1, "gaming"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->DOWNLOAD_PACK_INFO:Ljava/util/HashMap;

    const-string v1, "camera"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->DOWNLOAD_PACK_INFO:Ljava/util/HashMap;

    const-string v1, "messaging"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->DOWNLOAD_PACK_INFO:Ljava/util/HashMap;

    const-string v1, "battery_low"

    const-string v2, "battery"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->DOWNLOAD_PACK_INFO:Ljava/util/HashMap;

    const-string v1, "charging"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->DOWNLOAD_PACK_INFO:Ljava/util/HashMap;

    const-string v1, "tgif"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$1;-><init>(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;)V

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mNotificationListener:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$OnDownloadNotificationActionListener;

    new-instance v0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$2;-><init>(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;)V

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mNetworkCallback:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver$OnNetworkTypeChangeListener;

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;

    invoke-direct {v0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mDownloadInfo:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;

    new-instance v0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;

    invoke-direct {v0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mDownloader:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;

    iput-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mNotificationManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mNotificationListener:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$OnDownloadNotificationActionListener;

    invoke-virtual {p2, v0, v1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->setDownloadInfo(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager$OnDownloadNotificationActionListener;)V

    new-instance p2, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mNetworkCallback:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver$OnNetworkTypeChangeListener;

    invoke-direct {p2, p1, v0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver$OnNetworkTypeChangeListener;)V

    iput-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mNetworkObserver:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":run"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "OpBitmojiDownloadManager"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;

    iget-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;-><init>(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mBgHandler:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->stopAllTask()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->isOwnerClockBitmoji()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->checkAccessAvaiable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->handleDownloadAvatar(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->handleDownloadPackData(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->handleStopDownloadTask()V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->queryAll(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->wakeLockRelease()V

    return-void
.end method

.method private checkAccessAvaiable()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->checkAccessAvaiable(Z)Z

    move-result p0

    return p0
.end method

.method private checkAccessAvaiable(Z)Z
    .locals 4

    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getBitmojiStatus()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "OpBitmojiDownloadManager"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "checkAccessAvaiable: fail! status= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->isNetworkAvailable(Z)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "checkAccessAvaiable: network is not available or fit"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    return v3
.end method

.method private checkIfAvatarNeedsToDownload(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mDownloadInfo:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->isAvatarNeedsUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_1

    const-string p0, "OpBitmojiDownloadManager"

    const-string p1, "avatar no needs to download"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->startDownloadAvatar(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private checkIfPackNeedsToDownload(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mDownloadInfo:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->isPackNeedsUpdateOrDownload(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "pack "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " no needs to download"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpBitmojiDownloadManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->wakeLockAcquire()V

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mBgHandler:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mBgHandler:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private createPackDirIfNeeded(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getPackFolder(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createPackDirIfNeeded: failed. packId= "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpBitmojiDownloadManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private getDownloadPackList(Z)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->isDownloadViaMobile(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mNetworkObserver:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;

    invoke-virtual {v1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->isNetworkTypeMobile()Z

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mNetworkObserver:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;

    invoke-virtual {v3}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->isNetworkUnavailable()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->DOWNLOAD_PACK_INFO:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez p1, :cond_2

    if-eqz v1, :cond_2

    const-string v5, "time"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "date"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mDownloadInfo:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;

    invoke-virtual {v3, v4}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->isPackNeedsUpdateOrDownload(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    if-eqz v1, :cond_4

    const-class p1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->getActivePack()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mDownloadInfo:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->isPackNeedsUpdateOrDownload(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-object v2
.end method

.method public static getTriggerIdByPackId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->DOWNLOAD_PACK_INFO:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private handleDownloadAvatar(Z)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mDownloadInfo:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->isAvatarNeedsUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "avatar"

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->onDownloadSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mDownloadInfo:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->getAvatar()Lcom/oneplus/aod/utils/bitmoji/download/item/Avatar;

    move-result-object v0

    new-instance v1, Lcom/oneplus/aod/utils/bitmoji/download/task/AvatarDownloadTask;

    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mBgHandler:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;

    invoke-direct {v1, v2, v3, p0, v0}, Lcom/oneplus/aod/utils/bitmoji/download/task/AvatarDownloadTask;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask$OnDownloadDoneListener;Lcom/oneplus/aod/utils/bitmoji/download/item/Avatar;)V

    invoke-virtual {v1, p1}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->setForce(Z)V

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mDownloader:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->enqueue(Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;)V

    :goto_0
    return-void
.end method

.method private handleDownloadPackData(Ljava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mDownloadInfo:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->getPack(Ljava/lang/String;)Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->validatePack(Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->isNeedsUpdateOrDownload()Z

    move-result v1

    const-string v2, "OpBitmojiDownloadManager"

    if-eqz v1, :cond_1

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pack download this time "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", force= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p1, Lcom/oneplus/aod/utils/bitmoji/download/task/PackDownloadTask;

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mBgHandler:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;

    invoke-direct {p1, v1, v2, p0, v0}, Lcom/oneplus/aod/utils/bitmoji/download/task/PackDownloadTask;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask$OnDownloadDoneListener;Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;)V

    invoke-virtual {p1, p2}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->setForce(Z)V

    iget-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mDownloader:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;

    invoke-virtual {p2, p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->enqueue(Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;)V

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mNotificationManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->updateDownloadNotification()V

    goto :goto_0

    :cond_1
    sget-boolean p2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "queryPackData: no needs to download "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->onDownloadSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->onDownloadFail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleStopDownloadTask()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mDownloader:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->stopAll()V

    return-void
.end method

.method private hasNewOrUpdateData(Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->getDownloadPackList(Z)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_1

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mDownloadInfo:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->isAvatarNeedsUpdate()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isNetworkAvailable(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mNetworkObserver:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->isNetworkUnavailable()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "OpBitmojiDownloadManager"

    if-eqz v0, :cond_0

    const-string p0, "network unavailable"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->isDownloadViaMobile(Landroid/content/Context;)Z

    move-result p1

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mNetworkObserver:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->isNetworkTypeMobile()Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    const-string p0, "user choose wifi-only, but current network type is mobile"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isOwnerClockBitmoji()Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/aod/OpAodUtils;->getCurrentAodClockStyle(Landroid/content/Context;I)I

    move-result p0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xc

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private logUpdateStickerEvent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mNetworkObserver:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->isNetworkTypeMobile()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/utils/bitmoji/MdmLogger;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->logUpdateStickerEvent(I)V

    return-void
.end method

.method private queryAll(Z)V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v1, "OpBitmojiDownloadManager"

    if-eqz v0, :cond_0

    const-string v0, "queryAll: start"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->checkAccessAvaiable(Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "queryAll: access unavailable"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->checkIfAvatarNeedsToDownload(Z)V

    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->getDownloadPackList(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->logUpdateStickerEvent(Z)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->createPackDirIfNeeded(Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->checkIfPackNeedsToDownload(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private stopAllTask()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mBgHandler:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mDownloader:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->hasUndoneTask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->wakeLockAcquire()V

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mBgHandler:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->wakeLockRelease()V

    :goto_0
    return-void
.end method

.method private validatePack(Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;)Z
    .locals 9

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->getPackId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "battery_low"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "OpBitmojiDownloadManager"

    if-nez v1, :cond_4

    const-string v1, "charging"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getPackUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    sget-boolean v4, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "validatePack: count from cursor= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    :try_start_1
    invoke-static {v0, v1}, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->createFromCursor(Ljava/lang/String;Landroid/database/Cursor;)Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "validatePack: item error"

    invoke-static {v2, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "validatePack: cursor is null. packId= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move-object v1, p1

    check-cast v1, Lcom/oneplus/aod/utils/bitmoji/download/item/LocalPack;

    invoke-virtual {v1}, Lcom/oneplus/aod/utils/bitmoji/download/item/LocalPack;->getLocalStickers()Ljava/util/HashMap;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_7

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "validatePack: packId= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", sticker count= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {p1, v3}, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->checkUnmatchStickers(Ljava/util/HashMap;)V

    :try_start_3
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->writeToFile(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/4 p0, 0x1

    return p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "validatePack: write to file error. "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "validatePack: stickers are empty for pack= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    const/4 p0, 0x0

    return p0
.end method

.method private wakeLockAcquire()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wakeLockAcquire: callers= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBitmojiDownloadManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_1
    return-void
.end method

.method private wakeLockRelease()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mBgHandler:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;

    invoke-virtual {v0}, Landroid/os/Handler;->hasMessagesOrCallbacks()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wakeLockRelease: callers= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBitmojiDownloadManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void
.end method


# virtual methods
.method public checkUserConfig(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mNetworkObserver:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->isNetworkTypeMobile()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->stopAllTask()V

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->showStickerUpdateNotificationIfPossible()V

    return-void
.end method

.method public getDownloadStatus()I
    .locals 4

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mNetworkObserver:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->isNetworkTypeWifi()Z

    move-result v0

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->isDownloadViaMobile(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->hasNewOrUpdateData(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mDownloader:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->hasForceData()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    const-string v0, "OpBitmojiDownloadManager"

    const-string v1, "has force download task"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mDownloader:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloader;->getDownloadingList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mDownloadInfo:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;

    invoke-virtual {v3, v1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->isPackNeesUpdate(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_3
    return v2

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public needsUpdate(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/utils/bitmoji/MdmLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->logStickerNeedsUpdateEvent()V

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mDownloadInfo:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->needsUpdate(Z)V

    return-void
.end method

.method public onDownloadFail(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadFail: key= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpBitmojiDownloadManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mNotificationManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->updateDownloadNotification()V

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->wakeLockRelease()V

    return-void
.end method

.method public onDownloadSuccess(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadSuccess: key= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpBitmojiDownloadManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mNotificationManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->updateDownloadNotification()V

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->wakeLockRelease()V

    return-void
.end method

.method public prepare()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mNetworkObserver:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->prepare()V

    return-void
.end method

.method public showStickerUpdateNotificationIfPossible()V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->isOwnerClockBitmoji()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->isDownloadViaMobile(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mNetworkObserver:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;

    invoke-virtual {v1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiNetworkTypeObserver;->isNetworkTypeMobile()Z

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->hasNewOrUpdateData(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mNotificationManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->updateStickerUpdateNotification()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mNotificationManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;->removeStickerUpdateNotification()V

    :cond_1
    :goto_0
    return-void
.end method

.method public startDownloadAll(ZLjava/lang/String;)V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDownloadAll: force= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reason= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OpBitmojiDownloadManager"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->hasNewOrUpdateData(Z)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->startDownloadAll(ZZ)V

    :cond_1
    return-void
.end method

.method public startDownloadAll(ZZ)V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v1, "OpBitmojiDownloadManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDownloadAll: force= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", contentChange= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->checkAccessAvaiable(Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "startDownloadAll: access unavailable"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->stopAllTask()V

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->wakeLockAcquire()V

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mBgHandler:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mBgHandler:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;

    if-eqz p2, :cond_2

    const-wide/16 v0, 0x3e8

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public startDownloadAvatar(Z)V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v1, "OpBitmojiDownloadManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDownloadAvatar: force= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->checkAccessAvaiable(Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "startDownloadAvatar: access unavailable"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->wakeLockAcquire()V

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mBgHandler:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mBgHandler:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mBgHandler:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startDownloadCertainPackIfPossible(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->isOwnerClockBitmoji()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v1, "OpBitmojiDownloadManager"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDownloadPackIfPossible: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->checkAccessAvaiable()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "startDownloadPackIfPossible: access unavailable"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mBgHandler:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->createPackDirIfNeeded(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->mDownloadInfo:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->isPackNeedsUpdateOrDownload(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->logUpdateStickerEvent(Z)V

    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->checkIfPackNeedsToDownload(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_4

    const-string p0, "startDownloadPackIfPossible: already in download list"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method
