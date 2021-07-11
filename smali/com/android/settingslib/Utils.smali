.class public Lcom/android/settingslib/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static final STORAGE_MANAGER_ENABLED_PROPERTY:Ljava/lang/String; = "ro.storage_manager.enabled"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final UNIT_OF_STORAGE:[Ljava/lang/String;

.field public static final UNIT_OF_STORAGE_REPLACE:[Ljava/lang/String;

.field private static sPermissionControllerPackageName:Ljava/lang/String;

.field private static sServicesSystemSharedLibPackageName:Ljava/lang/String;

.field private static sSharedSystemSharedLibPackageName:Ljava/lang/String;

.field private static sSystemSignature:[Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "%28?<%21[\u5409\u5343\u5146\u592a]%29\u6bd4\u7279"

    const-string v1, "%28?<%21[\u5409\u5343\u5146\u592a]%29\u5b57\u8282"

    const-string/jumbo v2, "\u5409\u6bd4\u7279"

    const-string/jumbo v3, "\u5409\u5b57\u8282"

    const-string/jumbo v4, "\u5343\u6bd4\u7279"

    const-string/jumbo v5, "\u5343\u5b57\u8282"

    const-string/jumbo v6, "\u5146\u6bd4\u7279"

    const-string/jumbo v7, "\u5146\u5b57\u8282"

    const-string/jumbo v8, "\u592a\u6bd4\u7279"

    const-string/jumbo v9, "\u592a\u5b57\u8282"

    .line 571
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/Utils;->UNIT_OF_STORAGE:[Ljava/lang/String;

    const-string v1, "b"

    const-string v2, "B"

    const-string v3, "Gb"

    const-string v4, "GB"

    const-string v5, "Kb"

    const-string v6, "KB"

    const-string v7, "Mb"

    const-string v8, "MB"

    const-string v9, "Tb"

    const-string v10, "TB"

    .line 572
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/Utils;->UNIT_OF_STORAGE_REPLACE:[Ljava/lang/String;

    return-void
.end method

.method public static applyAlpha(FI)I
    .locals 2

    .line 302
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    .line 303
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 304
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 303
    invoke-static {p0, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static applyAlphaAttr(Landroid/content/Context;II)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 294
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 295
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    .line 296
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 297
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->applyAlpha(FI)I

    move-result p0

    return p0
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    .line 581
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    .line 582
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-le p1, p2, :cond_0

    .line 583
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 584
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    .line 585
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "zh"

    .line 587
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "CN"

    .line 588
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 589
    :goto_0
    sget-object p2, Lcom/android/settingslib/Utils;->UNIT_OF_STORAGE:[Ljava/lang/String;

    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 590
    aget-object p2, p2, p1

    sget-object v0, Lcom/android/settingslib/Utils;->UNIT_OF_STORAGE_REPLACE:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static formatPercentage(D)Ljava/lang/String;
    .locals 1

    .line 204
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatPercentage(I)Ljava/lang/String;
    .locals 4

    int-to-double v0, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 199
    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->formatPercentage(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatPercentage(JJ)Ljava/lang/String;
    .locals 0

    long-to-double p0, p0

    long-to-double p2, p2

    div-double/2addr p0, p2

    .line 194
    invoke-static {p0, p1}, Lcom/android/settingslib/Utils;->formatPercentage(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 551
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 552
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 551
    invoke-static {p0, v0, p1}, Lcom/android/settingslib/Utils;->getBadgedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getBadgedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 541
    invoke-static {p0}, Lcom/android/launcher3/icons/IconFactory;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/IconFactory;

    move-result-object v0

    :try_start_0
    const-string v1, "SettingsLibUtils"

    .line 542
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "icon : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 543
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Z)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    .line 545
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {v0}, Lcom/android/launcher3/icons/IconFactory;->close()V

    :cond_0
    return-object p2

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    .line 541
    :try_start_1
    invoke-virtual {v0}, Lcom/android/launcher3/icons/IconFactory;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
.end method

.method public static getColorAccent(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1

    const v0, 0x1010435

    .line 256
    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static getColorAccentDefaultColor(Landroid/content/Context;)I
    .locals 1

    const v0, 0x1010435

    .line 265
    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 316
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 319
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 322
    throw p1
.end method

.method public static getColorAttrDefaultColor(Landroid/content/Context;I)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 309
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 310
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 311
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static getColorError(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1

    const v0, 0x1010543

    .line 260
    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static getColorErrorDefaultColor(Landroid/content/Context;)I
    .locals 1

    const v0, 0x1010543

    .line 270
    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getColorStateListDefaultColor(Landroid/content/Context;I)I
    .locals 1

    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 277
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method public static getCombinedServiceState(Landroid/telephony/ServiceState;)I
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 527
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 528
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    :cond_1
    if-nez v2, :cond_2

    .line 532
    invoke-static {p0}, Lcom/android/settingslib/Utils;->isNotInIwlan(Landroid/telephony/ServiceState;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method public static getDisabled(Landroid/content/Context;I)I
    .locals 1

    const v0, 0x1010033

    .line 289
    invoke-static {p0, v0, p1}, Lcom/android/settingslib/Utils;->applyAlphaAttr(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 338
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 339
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 340
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1
.end method

.method private static getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    .locals 1

    if-eqz p0, :cond_0

    .line 371
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 372
    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;
    .locals 2

    :try_start_0
    const-string v0, "android"

    const/16 v1, 0x40

    .line 379
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 380
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 384
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getThemeAttr(Landroid/content/Context;I)I
    .locals 1

    const/4 v0, 0x0

    .line 327
    invoke-static {p0, p1, v0}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static getThemeAttr(Landroid/content/Context;II)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 331
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 332
    invoke-virtual {p0, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 333
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static isDeviceProvisioningPackage(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .locals 1

    const v0, 0x1040212

    .line 395
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 397
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isInService(Landroid/telephony/ServiceState;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 499
    :cond_0
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getCombinedServiceState(Landroid/telephony/ServiceState;)I

    move-result p0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method private static isNotInIwlan(Landroid/telephony/ServiceState;)Z
    .locals 2

    const/4 v0, 0x2

    .line 556
    invoke-virtual {p0, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 563
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 565
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result p0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move p0, v0

    :goto_1
    xor-int/2addr p0, v0

    return p0
.end method

.method public static isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .locals 4

    .line 349
    sget-object v0, Lcom/android/settingslib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Landroid/content/pm/Signature;

    .line 350
    invoke-static {p1}, Lcom/android/settingslib/Utils;->getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;

    move-result-object v3

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/settingslib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    .line 352
    :cond_0
    sget-object v0, Lcom/android/settingslib/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 353
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    .line 355
    :cond_1
    sget-object v0, Lcom/android/settingslib/Utils;->sServicesSystemSharedLibPackageName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 356
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/Utils;->sServicesSystemSharedLibPackageName:Ljava/lang/String;

    .line 358
    :cond_2
    sget-object v0, Lcom/android/settingslib/Utils;->sSharedSystemSharedLibPackageName:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 359
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getSharedSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settingslib/Utils;->sSharedSystemSharedLibPackageName:Ljava/lang/String;

    .line 361
    :cond_3
    sget-object p1, Lcom/android/settingslib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    aget-object v0, p1, v2

    if-eqz v0, :cond_4

    aget-object p1, p1, v2

    .line 362
    invoke-static {p2}, Lcom/android/settingslib/Utils;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_4
    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v0, Lcom/android/settingslib/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    .line 363
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v0, Lcom/android/settingslib/Utils;->sServicesSystemSharedLibPackageName:Ljava/lang/String;

    .line 364
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v0, Lcom/android/settingslib/Utils;->sSharedSystemSharedLibPackageName:Ljava/lang/String;

    .line 365
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.android.printspooler"

    .line 366
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 367
    invoke-static {p0, p1}, Lcom/android/settingslib/Utils;->isDeviceProvisioningPackage(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    move v1, v2

    :cond_6
    :goto_0
    return v1
.end method

.method public static updateLocationEnabled(Landroid/content/Context;ZII)V
    .locals 2

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_changer"

    .line 105
    invoke-static {v0, v1, p3, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 109
    const-class p3, Landroid/location/LocationManager;

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    .line 110
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    return-void
.end method
