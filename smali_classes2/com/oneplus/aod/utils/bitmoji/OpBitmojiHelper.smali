.class public Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;
.super Ljava/lang/Object;
.source "OpBitmojiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper$OpBitmojiObserver;,
        Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper$OpBitmojiReceiver;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownloadManager:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

.field private mDownloadStatus:I

.field private mInitialized:Z

.field private mNotificationManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;

.field private mObserver:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper$OpBitmojiObserver;

.field private mReceiver:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper$OpBitmojiReceiver;

.field private mRegistered:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;

    invoke-direct {v0, p1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mNotificationManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;

    new-instance v0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mNotificationManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;

    invoke-direct {v0, p1, v1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;)V

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mDownloadManager:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    new-instance v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper$OpBitmojiObserver;

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mDownloadManager:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-direct {v0, p1, v1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper$OpBitmojiObserver;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;)V

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mObserver:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper$OpBitmojiObserver;

    new-instance p1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper$OpBitmojiReceiver;

    invoke-direct {p1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper$OpBitmojiReceiver;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mReceiver:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper$OpBitmojiReceiver;

    return-void
.end method

.method private checkVersion()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mContext:Landroid/content/Context;

    const-string v1, "bitmoji_info_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "version"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-le v2, v3, :cond_1

    invoke-direct {p0, v2, v3}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->onDowngrade(II)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->onUpgrade(II)V

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    const-string p0, "OpBitmojiHelper"

    const-string v0, "version: 2"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;
    .locals 2

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->sInstance:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "OpBitmojiHelper"

    const-string v1, "not initial yet, call init before."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private varargs getUriInner([Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    new-instance p0, Landroid/net/Uri$Builder;

    invoke-direct {p0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v0, "content"

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "com.bitstrips.imoji.provider"

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private init()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mInitialized:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mDownloadManager:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->prepare()V

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mDownloadManager:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->getDownloadStatus()I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mDownloadStatus:I

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->checkVersion()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mInitialized:Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->sInstance:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->sInstance:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {v1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->init()V

    return-void

    :cond_0
    :try_start_1
    const-string p0, "OpBitmojiHelper"

    const-string v1, "already init."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static isBitmojiAodEnabled()Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x176

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isHydrogen()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isMEARom()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :cond_1
    :goto_0
    return v0
.end method

.method public static isDownloadViaMobile(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "bitmoji_info_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "download_via_mobile"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private onDowngrade(II)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDowngrade: oldVersion= "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", currentVersion= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpBitmojiHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onUpgrade(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpgrade: oldVersion= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentVersion= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBitmojiHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getAvatarFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->avatarSet(Z)V

    :cond_0
    if-eq p1, p2, :cond_1

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mDownloadManager:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->showStickerUpdateNotificationIfPossible()V

    :cond_1
    return-void
.end method


# virtual methods
.method public avatarSet(Z)V
    .locals 2

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mContext:Landroid/content/Context;

    const-string v0, "bitmoji_info_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "avatar_set"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public clearStatusFromStore()V
    .locals 2

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mContext:Landroid/content/Context;

    const-string v0, "bitmoji_info_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "status_from_store"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public firstApply()V
    .locals 2

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mContext:Landroid/content/Context;

    const-string v0, "bitmoji_info_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "apply_first_time"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getAvatarFile()Ljava/io/File;
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getRootFolder()Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    const-string v1, "avatar"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getBitmojiDownloadStatus()I
    .locals 0

    iget p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mDownloadStatus:I

    return p0
.end method

.method public getBitmojiStatus()I
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getStatusUri()Landroid/net/Uri;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "status"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no_access"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    :cond_0
    :try_start_1
    const-string v1, "no_avatar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-string v1, "ready"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public getImagePath(Ljava/lang/String;Landroid/net/Uri;)Ljava/io/File;
    .locals 0

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getImagePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getImagePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getPackFolder(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public getImagesPathByPackId(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getRootFolder()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length p1, p0

    if-lez p1, :cond_1

    array-length p1, p0

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNotificationManager()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mNotificationManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiNotificationManager;

    return-object p0
.end method

.method public getOpBitmojiStatus()I
    .locals 7

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getBitmojiStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const-string v2, "OpBitmojiHelper"

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->isAvatarSet()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v0, "status is no access but avatar is not set yet."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getStatusFromStore()I

    move-result p0

    if-eqz p0, :cond_1

    sget-boolean v5, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getStatusFromStore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eq p0, v1, :cond_3

    if-eq p0, v3, :cond_3

    if-eq p0, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    :cond_4
    :goto_0
    return v0
.end method

.method public getPackFolder(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getRootFolder()Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPackUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pack"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getUriInner([Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getRootFolder()Ljava/io/File;
    .locals 2

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mContext:Landroid/content/Context;

    const-string v0, "bitmojiAod"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getSelfieUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "me"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getUriInner([Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getStatusFromStore()I
    .locals 7

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mContext:Landroid/content/Context;

    const-string v0, "bitmoji_info_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "status_from_store"

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "timestemp"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long p0, v4, v2

    if-ltz p0, :cond_6

    sub-long/2addr v4, v2

    const-wide/32 v2, 0x493e0

    cmp-long p0, v4, v2

    if-gtz p0, :cond_6

    const-string p0, "action"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "success"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "com.android.launcher.action.ACTION_PACKAGE_DOWNLOADING"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v2, v6

    goto :goto_0

    :sswitch_1
    const-string v3, "com.android.launcher.action.ACTION_PACKAGE_ENQUEUED"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v2, v1

    goto :goto_0

    :sswitch_2
    const-string v3, "com.android.launcher.action.ACTION_PACKAGE_DEQUEUED"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v2, v4

    goto :goto_0

    :sswitch_3
    const-string v3, "com.android.launcher.action.ACTION_PACKAGE_INSTALLING"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    move v2, v5

    :cond_0
    :goto_0
    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    const/4 p0, 0x5

    goto :goto_1

    :cond_2
    const/4 p0, 0x4

    :goto_1
    return p0

    :cond_3
    return v4

    :cond_4
    return v5

    :cond_5
    return v6

    :catch_0
    move-exception p0

    const-string v0, "OpBitmojiHelper"

    const-string v2, "getStatusFromStore occur error"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_2
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x506a5a4d -> :sswitch_3
        -0x20774a80 -> :sswitch_2
        0x2381f7a8 -> :sswitch_1
        0x7b216e6e -> :sswitch_0
    .end sparse-switch
.end method

.method public getStatusUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "status"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getUriInner([Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getStickerUriByName(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "me"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sticker"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getUriInner([Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public isApplyFirstTime()Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mContext:Landroid/content/Context;

    const-string v0, "bitmoji_info_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "apply_first_time"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isAvatarSet()Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mContext:Landroid/content/Context;

    const-string v0, "bitmoji_info_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "avatar_set"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public registerBitmojiObserver()V
    .locals 5

    iget-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mRegistered:Z

    const-string v1, "OpBitmojiHelper"

    if-eqz v0, :cond_0

    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_2

    const-string p0, "registerBitmojiObserver: already registered"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getSelfieUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mObserver:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper$OpBitmojiObserver;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    const-string v0, "registerBitmojiObserver: success"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v4, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "registerBitmojiObserver: occur error"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public setDownloadViaMobile(Z)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mContext:Landroid/content/Context;

    const-string v1, "bitmoji_info_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_via_mobile"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->shouldNotifyDownloadStatusChange()V

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mDownloadManager:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->checkUserConfig(Z)V

    return-void
.end method

.method public shouldNotifyDownloadStatusChange()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mDownloadManager:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->getDownloadStatus()I

    move-result v0

    iget v1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mDownloadStatus:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mDownloadStatus:I

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/systemui/OpSystemUIProvider;->notifyDownloadStatusUpdate(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public startDownloadCertainPackIfPossible(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mDownloadManager:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->startDownloadCertainPackIfPossible(Ljava/lang/String;)V

    return-void
.end method

.method public startDownloading(Z)V
    .locals 1

    const-string v0, "start downloading"

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->startDownloading(ZLjava/lang/String;)V

    return-void
.end method

.method public startDownloading(ZLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mDownloadManager:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->startDownloadAll(ZLjava/lang/String;)V

    return-void
.end method

.method public startPackageListening()V
    .locals 6

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mReceiver:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper$OpBitmojiReceiver;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public unregisterBitmojiObserver()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mObserver:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper$OpBitmojiObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mRegistered:Z

    :cond_0
    return-void
.end method

.method public updateStatusFromStore(Landroid/content/ContentValues;)V
    .locals 8

    const-string v0, "timestemp"

    const-string v1, "OpBitmojiHelper"

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/content/ContentValues;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    :cond_0
    const-string v2, "action"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "success"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    const-string v7, "com.android.launcher.action.ACTION_PACKAGE_DEQUEUED"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->clearStatusFromStore()V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->mContext:Landroid/content/Context;

    const-string v7, "bitmoji_info_prefs"

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_3
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v6, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "updateStatusFromStore occur error"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "status_from_store"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_2
    return-void

    :cond_5
    :goto_3
    const-string p0, "updateStatusFromStore values null or empty"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
