.class public Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;
.super Ljava/lang/Object;


# instance fields
.field private final card:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

.field private final context:Landroid/content/Context;

.field private icon:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;ZLandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->card:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iput-object p4, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->icon:Landroid/graphics/Bitmap;

    return-void
.end method

.method private getDurationText(Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;)Ljava/lang/String;
    .locals 7

    invoke-direct {p0, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getMinutesToEvent(Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;)I

    move-result p1

    const/16 v0, 0x3c

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p1, v0, :cond_0

    div-int/lit8 v3, p1, 0x3c

    rem-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$plurals;->smartspace_hours:I

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v0, v4, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-lez p1, :cond_1

    iget-object v3, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$plurals;->smartspace_minutes:I

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, p1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->context:Landroid/content/Context;

    sget v3, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$string;->smartspace_hours_mins:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    aput-object p1, v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$plurals;->smartspace_minutes:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getFormattedText(Z)Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getMessage()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->getTitle()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->getSubtitle()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMessage()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->card:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-virtual {v2}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->getEventTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->card:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-virtual {v4}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->getEventTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->card:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-virtual {v6}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->getEventDurationMillis()J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->card:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-virtual {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->getPreEvent()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    move-result-object p0

    return-object p0

    :cond_0
    cmp-long v0, v0, v4

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->card:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->getPostEvent()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->getDuringEvent()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    move-result-object p0

    return-object p0
.end method

.method private getMinutesToEvent(Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getMillisToEvent(Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;)J

    move-result-wide p0

    long-to-double p0, p0

    const-wide v0, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private getTextArgs(Ljava/util/List;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;

    sget-object v4, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard$1;->$SwitchMap$com$google$geo$sidekick$SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam$FormatParamArgs:[I

    invoke-virtual {v3}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->getFormatParamArgs()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam$FormatParamArgs;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    const-string v3, ""

    aput-object v3, v1, v2

    goto :goto_1

    :cond_0
    invoke-direct {p0, v3}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getDurationText(Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v3}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->getTruncateLocation()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$TruncateLocation;

    move-result-object v4

    sget-object v5, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$TruncateLocation;->UNSPECIFIED:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$TruncateLocation;

    if-eq v4, v5, :cond_2

    aput-object p2, v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->getText()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private static hasParams(Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->getFormatParamList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private substitute(ZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getFormattedTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getFormattedText(Z)Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->hasText()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->hasParams(Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->getFormatParamList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getTextArgs(Ljava/util/List;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public ellipsizeTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->substitute(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCard()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->card:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    return-object p0
.end method

.method public getExpiration()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->card:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-virtual {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->getExpiryCriteria()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$ExpiryCriteria;->getExpirationTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFormattedTitle()Ljava/lang/String;
    .locals 13

    invoke-direct {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getMessage()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->getTitle()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->hasParams(Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;)Z

    move-result v4

    if-nez v4, :cond_1

    return-object v3

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v4

    move v7, v5

    :goto_0
    invoke-virtual {v2}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->getFormatParamCount()I

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ge v7, v8, :cond_4

    invoke-virtual {v2, v7}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->getFormatParam(I)Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;

    move-result-object v8

    sget-object v11, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard$1;->$SwitchMap$com$google$geo$sidekick$SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam$FormatParamArgs:[I

    invoke-virtual {v8}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->getFormatParamArgs()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam$FormatParamArgs;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v10, :cond_3

    if-eq v11, v9, :cond_2

    const/4 v9, 0x3

    if-eq v11, v9, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, v8}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getDurationText(Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    invoke-virtual {v8}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->getText()Ljava/lang/String;

    move-result-object v6

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->card:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-virtual {v7}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->getCardType()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    move-result-object v7

    sget-object v8, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;->COMMUTE_TIME:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    if-ne v7, v8, :cond_5

    invoke-virtual {v2}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->getFormatParamCount()I

    move-result v7

    if-ne v7, v9, :cond_5

    invoke-virtual {v2, v5}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->getFormatParam(I)Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v10}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->getFormatParam(I)Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->getText()Ljava/lang/String;

    move-result-object v6

    :cond_5
    if-nez v6, :cond_6

    return-object v1

    :cond_6
    if-nez v4, :cond_8

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->card:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-virtual {v1}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->getDuringEvent()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMessageLite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return-object v3

    :cond_7
    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->context:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$string;->smartspace_calendar_now:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_8
    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->context:Landroid/content/Context;

    sget v0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$string;->smartspace_calendar_reformatted_event:I

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v4, v1, v5

    aput-object v6, v1, v10

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFullWeatherAccessibilityDescription()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getWeatherDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->context:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$string;->weather_description:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->icon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 5

    const-string v0, "SmartspaceCard"

    const/4 v1, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->card:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-virtual {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->getTapAction()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;->getIntent()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "smartspace card intent uri: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object p0, v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_2

    const v2, 0x10008000

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x20

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "cannot get the tap intent action"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method getMillisToEvent(Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;)J
    .locals 2

    invoke-virtual {p1}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->getFormatParamArgs()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam$FormatParamArgs;

    move-result-object p1

    sget-object v0, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam$FormatParamArgs;->EVENT_END_TIME:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam$FormatParamArgs;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->card:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-virtual {p1}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->getEventTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->card:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-virtual {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->getEventDurationMillis()J

    move-result-wide p0

    add-long/2addr v0, p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->card:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-virtual {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->getEventTimeMillis()J

    move-result-wide v0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getMessage()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->getSubtitle()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->hasParams(Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->getFormatParamList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getTextArgs(Ljava/util/List;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public getTextNonTruncatable(Z)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->substitute(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextTruncatable(Z)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getFormattedText(Z)Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->getFormatParamList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;

    invoke-virtual {p1}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->getTruncateLocation()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$TruncateLocation;

    move-result-object v0

    sget-object v1, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$TruncateLocation;->UNSPECIFIED:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$TruncateLocation;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$FormatParam;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getFormattedTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTruncateAt(Z)Landroid/text/TextUtils$TruncateAt;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getMessage()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    move-result-object p0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->getTitle()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;->getTruncateLocation()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$TruncateLocation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText$TruncateLocation;->getNumber()I

    move-result p0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->hasSubtitle()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->getSubtitle()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    move-result-object p0

    goto :goto_0

    :goto_1
    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    goto :goto_2

    :cond_1
    sget-object p0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    return-object p0

    :cond_2
    sget-object p0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    return-object p0

    :cond_3
    :goto_2
    sget-object p0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method public getWeatherDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->card:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-virtual {v0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->hasIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->card:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-virtual {v0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->getIcon()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->hasContentDescription()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->card:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-virtual {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->getIcon()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->getContentDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "SmartspaceCard"

    const-string/jumbo v0, "unable to get weatherDescription"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method

.method public hasParams()Z
    .locals 2

    invoke-direct {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getMessage()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->getTitle()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->hasParams(Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->getSubtitle()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->hasParams(Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isExpired()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getExpiration()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public performCardAction(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    sget-object v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard$1;->$SwitchMap$com$google$geo$sidekick$SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType:[I

    iget-object v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->card:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-virtual {v2}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->getTapAction()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;->getActionType()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const-string v3, "SmartspaceCard"

    if-eq v1, v2, :cond_2

    const/4 p1, 0x2

    if-eq v1, p1, :cond_1

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->card:Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-virtual {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->getTapAction()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction;->getActionType()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$TapAction$ActionType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "unknown action type"

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2
    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p0, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x3

    const-string v1, "com.google.android.apps.gsa.staticplugins.opa.smartspace.extra.SURFACE_TYPE_EXTRA"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Cannot perform click action"

    invoke-static {v3, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
