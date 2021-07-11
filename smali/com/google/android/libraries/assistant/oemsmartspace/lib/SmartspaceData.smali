.class public Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;
.super Ljava/lang/Object;


# instance fields
.field currentCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

.field firstChip:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;

.field secondChip:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;

.field weatherCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->weatherCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    iput-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->currentCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    iput-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->firstChip:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;

    iput-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->secondChip:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-string v0, "SmartspaceData"

    const-string v1, "Set all smartspace data to null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->weatherCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    iput-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->currentCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    iput-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->firstChip:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;

    iput-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->secondChip:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;

    return-void
.end method

.method public getExpirationRemainingMillis()J
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->hasCurrent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->hasWeather()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->currentCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    invoke-virtual {v2}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getExpiration()J

    move-result-wide v2

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->weatherCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    invoke-virtual {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getExpiration()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_0
    sub-long/2addr v2, v0

    return-wide v2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->hasCurrent()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->currentCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getExpiration()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->hasWeather()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->weatherCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getExpiresAtMillis()J
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->hasCurrent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->hasWeather()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->currentCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    invoke-virtual {v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getExpiration()J

    move-result-wide v0

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->weatherCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    invoke-virtual {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getExpiration()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->hasCurrent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->currentCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    invoke-virtual {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getExpiration()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->hasWeather()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->weatherCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    invoke-virtual {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getExpiration()J

    move-result-wide v0

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleExpire()Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->hasWeather()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->weatherCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    invoke-virtual {v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->weatherCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    move v3, v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->hasCurrent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->currentCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    invoke-virtual {v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->currentCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    return v1

    :cond_1
    return v3
.end method

.method public hasCurrent()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->currentCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasWeather()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->weatherCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->currentCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->weatherCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->firstChip:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->secondChip:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x5

    add-int/2addr v3, v4

    add-int/2addr v3, v5

    add-int/2addr v3, v6

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "{"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
