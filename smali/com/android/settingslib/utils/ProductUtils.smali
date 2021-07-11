.class public Lcom/android/settingslib/utils/ProductUtils;
.super Ljava/lang/Object;
.source "ProductUtils.java"


# direct methods
.method public static isC427Mode()Z
    .locals 2

    const-string v0, "ro.boot.opcarrier"

    .line 30
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "C427"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isUsvMode()Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe7

    aput v2, v0, v1

    .line 26
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method
