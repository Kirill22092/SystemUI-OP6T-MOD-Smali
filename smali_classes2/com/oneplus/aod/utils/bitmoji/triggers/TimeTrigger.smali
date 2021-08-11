.class public Lcom/oneplus/aod/utils/bitmoji/triggers/TimeTrigger;
.super Lcom/oneplus/aod/utils/bitmoji/triggers/base/CategoryTrigger;
.source "TimeTrigger.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/CategoryTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    return-void
.end method


# virtual methods
.method protected getCategories()[Ljava/lang/String;
    .locals 3

    const-string p0, "mornin"

    const-string v0, "afternoon"

    const-string v1, "evening"

    const-string v2, "night"

    filled-new-array {p0, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getCurrentCategory()Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0}, Ljava/util/Date;->getHours()I

    move-result p0

    const/16 v0, 0xc

    const/4 v1, 0x6

    if-lt p0, v1, :cond_0

    if-ge p0, v0, :cond_0

    const-string p0, "mornin"

    return-object p0

    :cond_0
    const/16 v1, 0x10

    if-lt p0, v0, :cond_1

    if-ge p0, v1, :cond_1

    const-string p0, "afternoon"

    return-object p0

    :cond_1
    if-lt p0, v1, :cond_2

    const/16 v0, 0x16

    if-ge p0, v0, :cond_2

    const-string p0, "evening"

    return-object p0

    :cond_2
    const-string p0, "night"

    return-object p0
.end method

.method public getMdmLabel()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/TimeTrigger;->getCurrentCategory()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "afternoon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "night"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "mornin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "evening"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_4

    if-eq p0, v3, :cond_3

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p0, "time_night"

    return-object p0

    :cond_2
    const-string p0, "time_evening"

    return-object p0

    :cond_3
    const-string p0, "time_afternoon"

    return-object p0

    :cond_4
    const-string p0, "time_morning"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x520be778 -> :sswitch_3
        -0x3fae16fd -> :sswitch_2
        0x63f6418 -> :sswitch_1
        0x3ccc673c -> :sswitch_0
    .end sparse-switch
.end method
