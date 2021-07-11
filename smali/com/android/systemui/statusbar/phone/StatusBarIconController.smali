.class public interface abstract Lcom/android/systemui/statusbar/phone/StatusBarIconController;
.super Ljava/lang/Object;
.source "StatusBarIconController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;,
        Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;,
        Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;
    }
.end annotation


# direct methods
.method public static addBlackList([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 154
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 157
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 158
    invoke-static {p0, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 159
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 164
    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getIconBlacklist(Landroid/content/Context;Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 112
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    if-nez p1, :cond_1

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$array;->op_config_statusBarIconBlackList:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 125
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "23410"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "StatusBarIconController"

    const-string v2, "O2 UK sim, add volte/vowifi to blacklist by default"

    .line 126
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$array;->op_o2_uk_config_statusBarIconBlackList:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addBlackList([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 133
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isEUMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$array;->op_eu_config_statusBarIconBlackList:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addBlackList([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p0, ","

    .line 138
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 143
    :cond_2
    :goto_0
    array-length p0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p0, :cond_4

    aget-object v2, p1, v1

    .line 144
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 145
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method


# virtual methods
.method public abstract addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
.end method

.method public abstract removeAllIconsForSlot(Ljava/lang/String;)V
.end method

.method public abstract removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
.end method

.method public abstract setExternalIcon(Ljava/lang/String;)V
.end method

.method public abstract setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V
.end method

.method public abstract setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
.end method

.method public abstract setIconAccessibilityLiveRegion(Ljava/lang/String;I)V
.end method

.method public abstract setIconVisibility(Ljava/lang/String;Z)V
.end method

.method public abstract setMobileIcons(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setOPCustView(Ljava/lang/String;IZ)V
.end method

.method public abstract setSignalIcon(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
.end method
