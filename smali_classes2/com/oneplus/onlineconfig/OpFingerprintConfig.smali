.class public Lcom/oneplus/onlineconfig/OpFingerprintConfig;
.super Ljava/lang/Object;
.source "OpFingerprintConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/onlineconfig/OpFingerprintConfig$OnlineConfigUpdater;
    }
.end annotation


# instance fields
.field private mAppUnsupportAccelerateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.white_list.package.verify"

    const-string v1, "com.oneplus.systemui.test"

    .line 26
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "KeyguardFingerprintConfig"

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.fingerprint"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-direct {p0}, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->initUnsupportAccelerateList()V

    .line 40
    new-instance v1, Lcom/oneplus/onlineconfig/OpFingerprintConfig$OnlineConfigUpdater;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oneplus/onlineconfig/OpFingerprintConfig$OnlineConfigUpdater;-><init>(Lcom/oneplus/onlineconfig/OpFingerprintConfig;Lcom/oneplus/onlineconfig/OpFingerprintConfig$1;)V

    .line 41
    new-instance p0, Lcom/oneplus/config/ConfigObserver;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string v3, "fingerprintConfig"

    invoke-direct {p0, p1, v2, v1, v3}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    .line 44
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/config/ConfigObserver;->register()V

    const-string p0, "Register online config observer"

    .line 45
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Register online config fail, "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private handleUnsupportAccelerateList(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "KeyguardFingerprintConfig"

    const-string v1, "handleUnsupportAccelerateList"

    .line 154
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    iget-object v1, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :try_start_0
    const-string v1, "value"

    .line 158
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 159
    iget-object v1, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    .line 161
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 162
    iget-object v3, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p1, "KeyguardFingerprintConfig"

    const-string v1, "[OnlineConfig] Fp unsuppor acceleratet list changed"

    .line 165
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 164
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KeyguardFingerprintConfig"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object p1, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 169
    iget-object p0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    return-void
.end method

.method private initUnsupportAccelerateList()V
    .locals 2

    const-string v0, "KeyguardFingerprintConfig"

    const-string v1, "initUnsupportAccelerateList"

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 57
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v1, "com.android.chrome"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v1, "com.autonavi.minimap"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v1, "com.shuqiyuedu823.google"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v1, "com.amazon.avod.thirdpartyclient"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v1, "com.google.android.apps.maps"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.qqlive"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v1, "com.youku.phone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v1, "com.qiyi.video"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v1, "com.google.android.calendar"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v1, "com.sdu.didi.psnger"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v1, "com.oppo.im"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v1, "com.oneplus.calculator"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v1, "com.nearme.gamecenter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v1, "com.snapchat.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v1, "com.baidu.netdisk"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v1, "com.lingdian.activity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object p0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    const-string v0, "local.pivot.pingmeter"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getAppUnsupportAccelerateList()Ljava/util/ArrayList;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public isAppSupportAccelerate(Ljava/lang/String;)Z
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isAppSupportAccelerate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardFingerprintConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "fingerprint.unsupportaccelete.test"

    const/4 v1, 0x0

    .line 178
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->mAppUnsupportAccelerateList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 5

    const-string v0, "KeyguardFingerprintConfig"

    if-nez p1, :cond_0

    const-string p0, "[OnlineConfig] config is null!"

    .line 110
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 114
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 115
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    .line 116
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "unsupportAccelerateList"

    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    invoke-direct {p0, v2}, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->handleUnsupportAccelerateList(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWhiteList error. "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception p0

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method
