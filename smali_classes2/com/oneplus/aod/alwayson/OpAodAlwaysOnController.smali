.class public Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;
.super Ljava/lang/Object;
.source "OpAodAlwaysOnController.java"

# interfaces
.implements Lcom/oneplus/scene/OpSceneModeObserver$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnKeyguardUpdateMonitorCallback;,
        Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnSettingObserver;
    }
.end annotation


# static fields
.field private static final IS_SUPPORT_ALWAYS_ON:Z


# instance fields
.field private mAlwaysOnEnabled:Z

.field private mAlwaysOnSettingsObserver:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnSettingObserver;

.field private mBatteryLevel:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mOpSceneModeObserver:Lcom/oneplus/scene/OpSceneModeObserver;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPhoneState:I

.field protected mPowerManager:Landroid/os/PowerManager;

.field private mUpdateMonitorCallback:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnKeyguardUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isSupportAlwaysOn()Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->IS_SUPPORT_ALWAYS_ON:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mAlwaysOnEnabled:Z

    .line 71
    iput-object p1, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mContext:Landroid/content/Context;

    const-string v0, "power"

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mPowerManager:Landroid/os/PowerManager;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mPM:Landroid/content/pm/PackageManager;

    return-void
.end method

.method static synthetic access$102(Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mAlwaysOnEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->notifyStateChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mPhoneState:I

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mBatteryLevel:I

    return p0
.end method

.method static synthetic access$502(Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mBatteryLevel:I

    return p1
.end method

.method private notifyStateChanged(Ljava/lang/String;)V
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->isAlwaysOnEnabled()Z

    move-result v0

    .line 254
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->notifyStateChanged(ZLjava/lang/String;)V

    return-void
.end method

.method private registerObserver()V
    .locals 5

    .line 104
    iget-object v0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_always_on"

    .line 105
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mAlwaysOnSettingsObserver:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnSettingObserver;

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 104
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 108
    iget-object v0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power"

    .line 109
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mAlwaysOnSettingsObserver:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnSettingObserver;

    .line 108
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 112
    iget-object p0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mAlwaysOnSettingsObserver:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnSettingObserver;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnSettingObserver;->onChange(Z)V

    return-void
.end method


# virtual methods
.method public init(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V
    .locals 2

    .line 80
    iput-object p1, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 81
    iput-object p2, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mHandler:Landroid/os/Handler;

    .line 82
    new-instance p1, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnSettingObserver;

    iget-object p2, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2, v0}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnSettingObserver;-><init>(Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mAlwaysOnSettingsObserver:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnSettingObserver;

    .line 84
    sget-boolean p1, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->IS_SUPPORT_ALWAYS_ON:Z

    if-eqz p1, :cond_0

    .line 85
    new-instance p1, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnKeyguardUpdateMonitorCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnKeyguardUpdateMonitorCallback;-><init>(Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$1;)V

    iput-object p1, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mUpdateMonitorCallback:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnKeyguardUpdateMonitorCallback;

    .line 86
    iget-object p2, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 87
    invoke-direct {p0}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->registerObserver()V

    .line 89
    const-class p1, Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/scene/OpSceneModeObserver;

    iput-object p1, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mOpSceneModeObserver:Lcom/oneplus/scene/OpSceneModeObserver;

    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {p1, p0}, Lcom/oneplus/scene/OpSceneModeObserver;->addCallback(Lcom/oneplus/scene/OpSceneModeObserver$Callback;)V

    goto :goto_0

    :cond_0
    const-string p1, "Not support always on"

    .line 96
    invoke-direct {p0, p1}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->notifyStateChanged(Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "op_doze_always_on"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mAlwaysOnSettingsObserver:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController$OpAodAlwaysOnSettingObserver;

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v0, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isAlwaysOnEnabled()Z
    .locals 8

    .line 116
    sget-boolean v0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->IS_SUPPORT_ALWAYS_ON:Z

    const/4 v1, 0x1

    const-string v2, "AodAlwaysOnController"

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mPM:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_0

    .line 120
    iget-object p0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mPM:Landroid/content/pm/PackageManager;

    const-string v0, "com.google.android.doze.gts"

    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const-string p0, "Found GTS package"

    .line 121
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageManager = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v3

    .line 132
    :cond_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 133
    iget-object v4, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v4

    .line 135
    iget-object v5, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mOpSceneModeObserver:Lcom/oneplus/scene/OpSceneModeObserver;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/oneplus/scene/OpSceneModeObserver;->isInBrickMode()Z

    move-result v5

    goto :goto_0

    :cond_2
    move v5, v3

    .line 137
    :goto_0
    sget-boolean v6, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_3

    .line 138
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check isAlwaysOnEnabled: mAlwaysOnEnabled= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mAlwaysOnEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", currentUserId= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isInBrickMode= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isPowerSaveMode= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", phoneState= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mPhoneState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", batteryLevel= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mBatteryLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_3
    iget-boolean v2, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mAlwaysOnEnabled:Z

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->IS_SUPPORT_ALWAYS_ON:Z

    if-eqz v2, :cond_4

    if-nez v5, :cond_4

    if-nez v0, :cond_4

    if-nez v4, :cond_4

    iget v0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mPhoneState:I

    if-nez v0, :cond_4

    iget p0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mBatteryLevel:I

    const/4 v0, 0x5

    if-lt p0, v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    return v1
.end method

.method protected notifyStateChanged(ZLjava/lang/String;)V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOpAlwaysOnState= active: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", interactive: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", callers: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x2

    .line 261
    invoke-static {p2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "AodAlwaysOnController"

    .line 260
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object p0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p2

    const-string v1, "op_doze_always_on"

    invoke-static {p0, v1, p1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 264
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    if-eqz p0, :cond_0

    if-nez v0, :cond_0

    .line 265
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->onAlwaysOnEnableChanged(Z)V

    :cond_0
    return-void
.end method

.method public onBrickModeChanged()V
    .locals 6

    .line 220
    sget-boolean v0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->IS_SUPPORT_ALWAYS_ON:Z

    if-nez v0, :cond_0

    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mOpSceneModeObserver:Lcom/oneplus/scene/OpSceneModeObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/scene/OpSceneModeObserver;->isInBrickMode()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 225
    :goto_0
    iget-object v1, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 226
    iget-object v2, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    .line 227
    invoke-virtual {p0}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->isAlwaysOnEnabled()Z

    move-result v3

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inBrickMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isScreenOff = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isInteractive = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isAlwaysOn = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AodAlwaysOnController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 233
    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "on brick mode changed"

    .line 240
    invoke-direct {p0, v0}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->notifyStateChanged(Ljava/lang/String;)V

    return-void

    .line 234
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBrickModeChanged= lsState: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", PhoneStatusBar: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_4

    const-string v0, "null"

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected setAlwaysOnState(Z)V
    .locals 0

    .line 247
    iput-boolean p1, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mAlwaysOnEnabled:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    isAlwaysOnEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mAlwaysOnEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    isInBrickMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mOpSceneModeObserver:Lcom/oneplus/scene/OpSceneModeObserver;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/oneplus/scene/OpSceneModeObserver;->isInBrickMode()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    isPowerSaveMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    PhoneState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->mPhoneState:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
