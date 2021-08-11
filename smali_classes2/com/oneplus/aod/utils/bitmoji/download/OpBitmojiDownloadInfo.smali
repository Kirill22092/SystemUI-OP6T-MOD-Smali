.class public Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;
.super Ljava/lang/Object;
.source "OpBitmojiDownloadInfo.java"


# instance fields
.field private mAvatar:Lcom/oneplus/aod/utils/bitmoji/download/item/Avatar;

.field private mContext:Landroid/content/Context;

.field private mPackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->mPackMap:Ljava/util/HashMap;

    new-instance p1, Lcom/oneplus/aod/utils/bitmoji/download/item/Avatar;

    invoke-direct {p1}, Lcom/oneplus/aod/utils/bitmoji/download/item/Avatar;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->mAvatar:Lcom/oneplus/aod/utils/bitmoji/download/item/Avatar;

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->prepare()V

    return-void
.end method

.method private prepare()V
    .locals 11

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v1, "OpBitmojiDownloadInfo"

    if-eqz v0, :cond_0

    const-string v0, "prepare"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->mContext:Landroid/content/Context;

    const-string v2, "bitmoji_info_prefs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "charging"

    const-string v7, "battery_low"

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "pack_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->DOWNLOAD_PACK_INFO:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    check-cast v5, Ljava/lang/String;

    invoke-direct {v8, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance v5, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;

    invoke-direct {v5, v8}, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;-><init>(Lorg/json/JSONObject;)V

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v5, Lcom/oneplus/aod/utils/bitmoji/download/item/LocalPack;

    invoke-direct {v5, v8}, Lcom/oneplus/aod/utils/bitmoji/download/item/LocalPack;-><init>(Lorg/json/JSONObject;)V

    :goto_2
    iget-object v6, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->mPackMap:Ljava/util/HashMap;

    invoke-virtual {v6, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v6, "parse pack error"

    invoke-static {v1, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getPackFolder(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_5
    const-string v6, "avatar"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->mAvatar:Lcom/oneplus/aod/utils/bitmoji/download/item/Avatar;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v6, v5}, Lcom/oneplus/aod/utils/bitmoji/download/item/Avatar;->setNeedsUpdate(Z)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepare: remove invalid data. "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    :cond_8
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_9
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->mPackMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v3, 0x1

    :cond_a
    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->DOWNLOAD_PACK_INFO:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->mPackMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_5

    :cond_c
    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->mPackMap:Ljava/util/HashMap;

    new-instance v4, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;

    invoke-direct {v4, v1, v3}, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_d
    :goto_5
    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->mPackMap:Ljava/util/HashMap;

    new-instance v4, Lcom/oneplus/aod/utils/bitmoji/download/item/LocalPack;

    invoke-direct {v4, v1, v3}, Lcom/oneplus/aod/utils/bitmoji/download/item/LocalPack;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_e
    return-void
.end method


# virtual methods
.method public getAvatar()Lcom/oneplus/aod/utils/bitmoji/download/item/Avatar;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->mAvatar:Lcom/oneplus/aod/utils/bitmoji/download/item/Avatar;

    return-object p0
.end method

.method public getPack(Ljava/lang/String;)Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->mPackMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;

    return-object p0
.end method

.method public isAvatarDownloaded()Z
    .locals 0

    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getAvatarFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public isAvatarNeedsUpdate()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->isAvatarDownloaded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->mAvatar:Lcom/oneplus/aod/utils/bitmoji/download/item/Avatar;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/download/item/Avatar;->isNeedsUpdate()Z

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

.method public isPackNeedsUpdateOrDownload(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->mPackMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->isNeedsUpdateOrDownload()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPackNeesUpdate(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->mPackMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->isNeedsUpdate()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public needsUpdate(Z)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->mAvatar:Lcom/oneplus/aod/utils/bitmoji/download/item/Avatar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/utils/bitmoji/download/item/Avatar;->setNeedsUpdate(Z)V

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->mAvatar:Lcom/oneplus/aod/utils/bitmoji/download/item/Avatar;

    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/utils/bitmoji/download/item/Avatar;->writeToFile(Landroid/content/Context;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->mPackMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->setNeedsUpdate(Z)V

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->writeToFile(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needsUpdate pack write to file error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->getPackId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OpBitmojiDownloadInfo"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method
