.class public final Lcom/oneplus/aod/utils/bitmoji/download/item/LocalPack;
.super Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;
.source "LocalPack.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocalPack.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalPack.kt\ncom/oneplus/aod/utils/bitmoji/download/item/LocalPack\n*L\n1#1,40:1\n*E\n"
.end annotation


# static fields
.field private static final STICKER_BATTERY_LOW:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final STICKER_CHARGING:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "a5dd74df-da36-4095-9bd0-ad786f85f237"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/download/item/LocalPack;->STICKER_BATTERY_LOW:[Ljava/lang/String;

    const-string v0, "2b617cc0-2f81-4699-a793-5bb32e1098cc"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/download/item/LocalPack;->STICKER_CHARGING:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public final getLocalStickers()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->mId:Ljava/lang/String;

    const-string v1, "battery_low"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/download/item/LocalPack;->STICKER_BATTERY_LOW:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->mId:Ljava/lang/String;

    const-string v1, "charging"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/download/item/LocalPack;->STICKER_CHARGING:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    array-length v4, v0

    if-nez v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v3, v2

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    array-length v3, v0

    :goto_3
    if-ge v2, v3, :cond_5

    aget-object v4, v0, v2

    iget-object v5, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->mId:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->createByName(Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-object v1
.end method
