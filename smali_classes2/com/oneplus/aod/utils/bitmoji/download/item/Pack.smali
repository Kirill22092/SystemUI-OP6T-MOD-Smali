.class public Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;
.super Ljava/lang/Object;
.source "Pack.java"


# instance fields
.field protected mId:Ljava/lang/String;

.field protected mIsNew:Z

.field protected mNeedsUpdate:Z

.field protected mStickerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->mId:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->mStickerMap:Ljava/util/HashMap;

    iput-boolean p2, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->mNeedsUpdate:Z

    iput-boolean p2, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->mIsNew:Z

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "packId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;-><init>(Ljava/lang/String;Z)V

    const-string v0, "stickers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->mId:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->createFromJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->mStickerMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "needsUpdate"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->mNeedsUpdate:Z

    const-string v0, "new"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->mIsNew:Z

    return-void
.end method

.method private getPackDownloadKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pack_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->mId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addSticker(Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->mStickerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public checkUnmatchStickers(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->mStickerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->removeSticker(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getImagesPathByPackId(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, v0

    if-lez v1, :cond_3

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->addSticker(Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public getPackId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public isNeedsUpdate()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->isNew()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->mNeedsUpdate:Z

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

.method public isNeedsUpdateOrDownload()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->needsDownload()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->mNeedsUpdate:Z

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

.method public isNew()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->mIsNew:Z

    return p0
.end method

.method public needsDownload()Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->mStickerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->mStickerMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->isDownloaded()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public notNew()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->mIsNew:Z

    return-void
.end method

.method public removeSticker(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->mStickerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->mId:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getImagePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setNeedsUpdate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->mNeedsUpdate:Z

    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->mStickerMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public writeToFile(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->mId:Ljava/lang/String;

    const-string v2, "packId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->mStickerMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;

    invoke-virtual {v3}, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "stickers"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->mNeedsUpdate:Z

    const-string v2, "needsUpdate"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->mIsNew:Z

    const-string v2, "new"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/4 v1, 0x0

    const-string v2, "bitmoji_info_prefs"

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->getPackDownloadKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
