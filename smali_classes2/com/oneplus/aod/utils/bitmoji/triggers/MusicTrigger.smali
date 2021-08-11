.class public Lcom/oneplus/aod/utils/bitmoji/triggers/MusicTrigger;
.super Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;
.source "MusicTrigger.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    return-void
.end method


# virtual methods
.method protected checkAudioAttributes(Landroid/media/AudioAttributes;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getContentType()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public enableDelay()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getCategories()[Ljava/lang/String;
    .locals 0

    const-string p0, "tunes"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getCurrentCategory()Ljava/lang/String;
    .locals 0

    const-string p0, "tunes"

    return-object p0
.end method

.method public getMdmLabel()Ljava/lang/String;
    .locals 0

    const-string p0, "music"

    return-object p0
.end method

.method public getTriggerId()Ljava/lang/String;
    .locals 0

    const-string p0, "music"

    return-object p0
.end method

.method protected tagStartCountToCheckPlay()Ljava/lang/String;
    .locals 0

    const-string p0, "Bitmoji#MusicTrigger"

    return-object p0
.end method
