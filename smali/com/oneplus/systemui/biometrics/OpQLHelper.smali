.class public Lcom/oneplus/systemui/biometrics/OpQLHelper;
.super Ljava/lang/Object;
.source "OpQLHelper.java"


# instance fields
.field final mAppMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPaymentApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mPaymentAppsName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mAppMap:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPaymentApps:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 48
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x502002f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPaymentAppsName:Ljava/util/ArrayList;

    .line 52
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->loadPaymentApps()V

    return-void
.end method

.method private getAppLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QuickLaunch.QLHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 237
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-string p0, "Unknown"

    :goto_1
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private getApplicationIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    const-string v0, "Exception e = "

    const-string v1, "QuickLaunch.QLHelper"

    const/4 v2, 0x0

    if-ltz p2, :cond_0

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x80

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 195
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 196
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {v3, p0, p2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 199
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package ["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] name not found"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 204
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {p2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v2

    .line 209
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 216
    iget p2, p2, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz p2, :cond_1

    .line 219
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-object p0

    :catch_3
    move-exception p0

    .line 221
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v2
.end method

.method private getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/16 v0, 0x280

    if-eqz p1, :cond_0

    .line 417
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 419
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getPaymentApplicationIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 407
    :cond_0
    sget p1, Lcom/android/systemui/R$drawable;->ic_alipay_scanning:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 404
    :cond_1
    sget p1, Lcom/android/systemui/R$drawable;->ic_alipay_qrcode:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 401
    :cond_2
    sget p1, Lcom/android/systemui/R$drawable;->ic_wechat_scanning:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 398
    :cond_3
    sget p1, Lcom/android/systemui/R$drawable;->ic_wechat_qrcode:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private isPackageAvailable(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "QuickLaunch.QLHelper"

    const/4 v1, 0x0

    .line 176
    :try_start_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 177
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 178
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QuickPay: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not available."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private loadPaymentApps()V
    .locals 8

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mContext:Landroid/content/Context;

    .line 243
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x502002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    move v2, v1

    .line 246
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 247
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ";"

    .line 248
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 249
    array-length v4, v3

    const/4 v5, 0x4

    if-lt v4, v5, :cond_5

    .line 250
    new-instance v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;

    invoke-direct {v4}, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;-><init>()V

    .line 251
    iput v2, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->index:I

    .line 252
    aget-object v5, v3, v1

    iput-object v5, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->packageName:Ljava/lang/String;

    .line 253
    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPaymentAppsName:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->switchName:Ljava/lang/String;

    const/4 v5, 0x1

    .line 255
    aget-object v6, v3, v5

    const-string v7, "sdk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 256
    iput-boolean v5, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->isSDKstart:Z

    goto :goto_1

    .line 257
    :cond_0
    aget-object v6, v3, v5

    const-string v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 258
    aget-object v6, v3, v5

    iput-object v6, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    goto :goto_1

    .line 260
    :cond_1
    aget-object v6, v3, v5

    iput-object v6, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->className:Ljava/lang/String;

    .line 261
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->className:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->targetClassName:Ljava/lang/String;

    :goto_1
    const/4 v6, 0x2

    .line 264
    aget-object v6, v3, v6

    const-string v7, "default"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 265
    iput-boolean v5, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->isDefault:Z

    :cond_2
    const/4 v5, 0x3

    .line 268
    aget-object v6, v3, v5

    const-string v7, "class"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 269
    aget-object v3, v3, v5

    iput-object v3, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->targetClassName:Ljava/lang/String;

    .line 272
    :cond_3
    invoke-direct {p0, v2}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->getPaymentApplicationIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 275
    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x5050008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 277
    invoke-virtual {v3, v1, v1, v5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 278
    iput-object v3, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->appIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 280
    :cond_4
    iget-object v3, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->packageName:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-direct {p0, v3, v5}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->getApplicationIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 283
    :goto_2
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private loadShortCuts(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mContext:Landroid/content/Context;

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    if-eqz v0, :cond_1

    .line 164
    new-instance v0, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    const/16 v1, 0xb

    .line 165
    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 166
    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 167
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private parseSettingData(Ljava/lang/String;)Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 83
    :cond_0
    new-instance v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;

    invoke-direct {v1}, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;-><init>()V

    const-string v2, ":"

    .line 84
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    .line 88
    invoke-virtual {v1, p1}, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->setActionName(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 92
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v6, 0x1

    add-int/2addr v2, v6

    .line 93
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    const-string v7, ";"

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 95
    array-length v7, p1

    invoke-static {p1, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    aget-object p1, v4, v5

    invoke-virtual {v1, p1}, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->setActionName(Ljava/lang/String;)V

    .line 97
    aget-object p1, v4, v6

    invoke-virtual {v1, p1}, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->setPackage(Ljava/lang/String;)V

    .line 99
    iget-object p1, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->isPackageAvailable(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v0

    .line 103
    :cond_2
    aget-object p1, v4, v5

    const-string v0, "OpenApp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_3

    .line 104
    aget-object p1, v4, v0

    invoke-virtual {v1, p1}, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->setUid(Ljava/lang/String;)V

    .line 105
    iget-object p1, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    iget v0, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mUid:I

    invoke-direct {p0, p1, v0}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->getApplicationIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 106
    iget-object p1, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->getAppLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mLabel:Ljava/lang/String;

    goto/16 :goto_4

    .line 107
    :cond_3
    aget-object p1, v4, v5

    const-string v6, "OpenShortcut"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 108
    aget-object p1, v4, v0

    invoke-virtual {v1, p1}, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->setShortcutId(Ljava/lang/String;)V

    .line 109
    aget-object p1, v4, v2

    invoke-virtual {v1, p1}, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->setUid(Ljava/lang/String;)V

    .line 111
    iget-object p1, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->loadShortCuts(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 113
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_d

    .line 114
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 115
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mShortcutId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 117
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v2

    iput v2, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mShortcutIcon:I

    .line 118
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget v3, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mUid:I

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 120
    iget-object v2, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    .line 121
    iget-object v2, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    iget v3, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mUid:I

    invoke-direct {p0, v2, v3}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->getApplicationIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 124
    :cond_4
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v2

    .line 126
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 127
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v2

    .line 130
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 131
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 133
    :cond_6
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mLabel:Ljava/lang/String;

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 136
    :cond_8
    aget-object p1, v4, v5

    const-string v2, "OpenQuickPay"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 137
    iget-object p1, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->isPackageAvailable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 138
    aget-object p1, v4, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPaymentWhich:I

    .line 140
    iget p1, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPaymentWhich:I

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_9

    .line 141
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPaymentApps:Ljava/util/ArrayList;

    iget v0, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPaymentWhich:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;

    iput-object p1, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mQuickPayConfig:Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;

    .line 142
    iget-object p1, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mQuickPayConfig:Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;

    iget-object p1, p1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->appIcon:Landroid/graphics/drawable/Drawable;

    iput-object p1, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 145
    :cond_9
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 148
    iget v0, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPaymentWhich:I

    if-ne v0, v3, :cond_a

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPaymentAppsName:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_3

    .line 151
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    .line 149
    invoke-direct {p0, v2}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->getAppLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_c

    iget p1, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPaymentWhich:I

    if-ne p1, v3, :cond_b

    goto :goto_1

    :cond_b
    const-string p1, " "

    goto :goto_2

    :cond_c
    :goto_1
    const-string p1, ""

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPaymentAppsName:Ljava/util/ArrayList;

    iget p1, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPaymentWhich:I

    .line 151
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    iput-object p0, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mLabel:Ljava/lang/String;

    :cond_d
    :goto_4
    return-object v1
.end method


# virtual methods
.method public getQLApps()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mAppMap:Ljava/util/ArrayList;

    return-object p0
.end method

.method isNewConfig(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "\\."

    .line 481
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const-string v1, ""

    if-ne p2, v1, :cond_0

    goto :goto_3

    .line 485
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 488
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 489
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 490
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 491
    array-length p2, p0

    array-length v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    move v0, v2

    :goto_0
    if-ge v0, p2, :cond_5

    .line 493
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 494
    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 495
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 496
    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    if-ge v1, v3, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    if-le v1, v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 505
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception e = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickLaunch.QLHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    return v2
.end method

.method public parseQLConfig(Ljava/lang/String;)V
    .locals 4

    .line 60
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseQLConfig config "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickLaunch.QLHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, ","

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 69
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 70
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->parseSettingData(Ljava/lang/String;)Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 72
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mAppMap:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public resolveQuickPayConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 8

    const-string v0, "[OnlineConfig] QuickPayConfigUpdater, error message:"

    const-string v1, "QuickLaunch.QLHelper"

    const-string v2, "name"

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    .line 427
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 428
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 429
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "op_quick_pay_wechat_qrcode_config"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 430
    invoke-virtual {p0, v3, v5}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto :goto_1

    .line 431
    :cond_1
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "op_quick_pay_wechat_scanning_config"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    .line 432
    invoke-virtual {p0, v6, v5}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto :goto_1

    .line 433
    :cond_2
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "op_quick_pay_alipay_qrcode_config"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x2

    .line 434
    invoke-virtual {p0, v6, v5}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto :goto_1

    .line 435
    :cond_3
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "op_quick_pay_alipay_scanning_config"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x3

    .line 436
    invoke-virtual {p0, v6, v5}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto :goto_1

    .line 437
    :cond_4
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "op_quick_pay_paytm_config"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x4

    .line 438
    invoke-virtual {p0, v6, v5}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    const-string p0, "[OnlineConfig] QuickPayConfigUpdater updated complete"

    .line 441
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 445
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception p0

    .line 443
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public startApp(Ljava/lang/String;Landroid/app/ActivityOptions;I)Z
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mContext:Landroid/content/Context;

    .line 297
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    new-instance p2, Landroid/os/UserHandle;

    .line 298
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-direct {p2, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 296
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    return p0

    .line 303
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "start app "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed because intent is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickLaunch.QLHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public startQuickPay(II)V
    .locals 5

    const-string v0, "QuickLaunch.QLHelper"

    const-string v1, "com.eg.android.AlipayGphone"

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    const-string v3, "1002"

    .line 312
    invoke-virtual {p0, v1, v3, p2, v2}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->startShortcut(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    const-string v3, "1001"

    .line 314
    invoke-virtual {p0, v1, v3, p2, v2}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->startShortcut(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p2

    goto :goto_0

    :cond_1
    move p2, v2

    :goto_0
    if-eqz p2, :cond_2

    return-void

    .line 323
    :cond_2
    :try_start_0
    sget-boolean p2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p2, :cond_3

    .line 324
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QuickPay: startQuickPay which="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_3
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;

    iget-object p2, p2, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->isPackageAvailable(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    move v1, v2

    .line 330
    :goto_1
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    if-eq p1, v1, :cond_5

    .line 332
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;

    .line 333
    iget-boolean v4, v3, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->isDefault:Z

    if-eqz v4, :cond_5

    iget-object v3, v3, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 336
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_4

    .line 337
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "QuickPay: startQuickPay new which="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 p2, 0x1

    move p1, v1

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-eqz p2, :cond_8

    .line 346
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;

    .line 349
    iget-object p2, p1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->className:Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 350
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "next.packageName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " next.className "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v1, p1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->className:Ljava/lang/String;

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x10008000

    .line 353
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 354
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_3

    .line 355
    :cond_7
    iget-object p2, p1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    if-eqz p2, :cond_9

    .line 356
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "next.urlScheme "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object p1, p1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x14000000

    .line 359
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 360
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_3

    .line 363
    :cond_8
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mContext:Landroid/content/Context;

    const p1, 0x50d00ae

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 364
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const-string p0, "QuickPay: startQuickPay have no installed app."

    .line 365
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 368
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "QuickPay: startQuickPay failed "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    return-void
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 6

    .line 374
    iget-object p4, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    if-nez p4, :cond_0

    .line 375
    iget-object p4, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mContext:Landroid/content/Context;

    const-string v0, "launcherapps"

    invoke-virtual {p4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/LauncherApps;

    iput-object p4, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    const/4 p0, 0x0

    const-string p4, "QuickLaunch.QLHelper"

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 380
    :try_start_0
    new-instance v5, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-direct {v5, p3}, Landroid/os/UserHandle;-><init>(I)V

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p1, "start shortcut failed"

    .line 383
    invoke-static {p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_1
    const-string p1, "shortcut service is null"

    .line 388
    invoke-static {p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method updateQuickPayIfNeed(ILorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "value"

    .line 450
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    .line 451
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 452
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    .line 453
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 454
    array-length v4, v3

    const/4 v5, 0x5

    if-lt v4, v5, :cond_4

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v5, :cond_4

    .line 455
    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;

    iget-object v4, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->packageName:Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v5, v3, v5

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->isNewConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 456
    new-instance v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;

    invoke-direct {v4}, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;-><init>()V

    .line 457
    aget-object v5, v3, v0

    iput-object v5, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->packageName:Ljava/lang/String;

    const/4 v5, 0x1

    .line 458
    aget-object v6, v3, v5

    const-string v7, "sdk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 459
    iput-boolean v5, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->isSDKstart:Z

    goto :goto_1

    .line 460
    :cond_0
    aget-object v6, v3, v5

    const-string v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 461
    aget-object v6, v3, v5

    iput-object v6, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    goto :goto_1

    .line 463
    :cond_1
    aget-object v6, v3, v5

    iput-object v6, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->className:Ljava/lang/String;

    .line 464
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->className:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->targetClassName:Ljava/lang/String;

    :goto_1
    const/4 v6, 0x2

    .line 466
    aget-object v6, v3, v6

    const-string v7, "default"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 467
    iput-boolean v5, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->isDefault:Z

    :cond_2
    const/4 v5, 0x3

    .line 469
    aget-object v6, v3, v5

    const-string v7, "class"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 470
    aget-object v3, v3, v5

    iput-object v3, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->targetClassName:Ljava/lang/String;

    .line 472
    :cond_3
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 473
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QuickPay: update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QuickLaunch.QLHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method
