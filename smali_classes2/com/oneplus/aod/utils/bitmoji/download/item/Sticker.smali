.class public Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;
.super Ljava/lang/Object;
.source "Sticker.java"


# instance fields
.field private mName:Ljava/lang/String;

.field private mPackId:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "uri"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v0, "image_format"

    const-string v1, "webp"

    invoke-virtual {p2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v0, "size"

    const-string v1, "normal"

    invoke-virtual {p2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mPackId:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getStickerUriByName(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v0, "image_format"

    const-string v1, "webp"

    invoke-virtual {p2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v0, "size"

    const-string v1, "normal"

    invoke-virtual {p2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mPackId:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "uri"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mPackId:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mName:Ljava/lang/String;

    return-void
.end method

.method public static createByName(Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;
    .locals 1

    new-instance v0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createFromCursor(Ljava/lang/String;Landroid/database/Cursor;)Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;
    .locals 1

    new-instance v0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;-><init>(Ljava/lang/String;Landroid/database/Cursor;)V

    return-object v0
.end method

.method public static createFromJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;
    .locals 1

    new-instance v0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public isDownloaded()Z
    .locals 2

    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mPackId:Ljava/lang/String;

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getImagePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mUri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "uri"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
