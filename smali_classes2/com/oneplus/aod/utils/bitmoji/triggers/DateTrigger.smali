.class public Lcom/oneplus/aod/utils/bitmoji/triggers/DateTrigger;
.super Lcom/oneplus/aod/utils/bitmoji/triggers/base/CategoryTrigger;
.source "DateTrigger.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/CategoryTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    return-void
.end method


# virtual methods
.method protected getCategories()[Ljava/lang/String;
    .locals 1

    const-string p0, "weekday"

    const-string v0, "weekend"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getCurrentCategory()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 v0, 0x6

    if-gt p0, v0, :cond_0

    const-string p0, "weekday"

    return-object p0

    :cond_0
    const-string p0, "weekend"

    return-object p0
.end method

.method public getMdmLabel()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/DateTrigger;->getCurrentCategory()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x49206f28    # 657138.5f

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x49207467

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "weekend"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, v2

    goto :goto_1

    :cond_1
    const-string v0, "weekday"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_4

    if-eq p0, v2, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    const-string p0, "date_weekend"

    return-object p0

    :cond_4
    const-string p0, "date_weekday"

    return-object p0
.end method
