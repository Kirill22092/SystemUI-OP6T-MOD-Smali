.class public Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;
.super Ljava/lang/Object;
.source "OpPowerNotificationWarnings.java"


# static fields
.field protected static final OP_DEBUG:Z


# instance fields
.field private final mOpenSaverSettings:Landroid/content/Intent;

.field protected mSaver:Z

.field protected mSaverNotificationShowing:Z

.field private mShowSaverNotificationTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    sget-boolean v0, Lcom/oneplus/systemui/power/OpPowerUI;->OP_DEBUG:Z

    sput-boolean v0, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->OP_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android.settings.BATTERY_SAVER_SETTINGS"

    .line 88
    invoke-direct {p0, v0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->settings(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->mOpenSaverSettings:Landroid/content/Intent;

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->mSaverNotificationShowing:Z

    return-void
.end method

.method private dismissAutoSaverSuggestion()V
    .locals 3

    .line 129
    const-class v0, Lcom/android/systemui/power/PowerNotificationWarnings;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "dismissAutoSaverSuggestion"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private dismissLowBatteryNotification()V
    .locals 3

    .line 134
    const-class v0, Lcom/android/systemui/power/PowerNotificationWarnings;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "dismissLowBatteryNotification"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private dismissSaverNotification()V
    .locals 2

    .line 140
    iget-boolean v0, p0, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->mSaver:Z

    if-eqz v0, :cond_0

    const-string v0, "OpPowerUI.Notification"

    const-string v1, "dismissing saver notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->mSaver:Z

    .line 142
    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->updateNotification()V

    return-void
.end method

.method private getBatteryLevel()I
    .locals 2

    .line 298
    const-class v0, Lcom/android/systemui/power/PowerNotificationWarnings;

    const-string v1, "mBatteryLevel"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private getBatterySaverContentText()Ljava/lang/String;
    .locals 10

    .line 322
    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 325
    new-instance v1, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    const/4 v3, 0x0

    .line 326
    invoke-virtual {v1, v3}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 327
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v1

    .line 328
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    const/4 v5, 0x0

    if-lez v1, :cond_0

    .line 330
    sget v1, Lcom/android/systemui/R$string;->battery_usage_remaining:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v3, v4}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->getFormattedTime(J)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 332
    :cond_0
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    .line 333
    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->getBatteryLevel()I

    move-result p0

    int-to-double v6, p0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    .line 334
    sget v1, Lcom/android/systemui/R$string;->battery_low_percent_format:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 336
    :goto_0
    sget-boolean v0, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->OP_DEBUG:Z

    if-eqz v0, :cond_1

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBatterySaverContentText timeRemaining="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " str="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpPowerUI.Notification"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p0
.end method

.method private getContext()Landroid/content/Context;
    .locals 2

    .line 344
    const-class v0, Lcom/android/systemui/power/PowerNotificationWarnings;

    const-string v1, "mContext"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method

.method private getFormattedTime(J)Ljava/lang/CharSequence;
    .locals 1

    .line 350
    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p1, p1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    .line 355
    const-class v0, Lcom/android/systemui/power/PowerNotificationWarnings;

    const-string v1, "mHandler"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    .line 360
    const-class v0, Lcom/android/systemui/power/PowerNotificationWarnings;

    const-string v1, "mNoMan"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    return-object p0
.end method

.method private getSaverConfirmation()Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 2

    .line 365
    const-class v0, Lcom/android/systemui/power/PowerNotificationWarnings;

    const-string v1, "mSaverConfirmation"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-object p0
.end method

.method private getWarning()Z
    .locals 2

    .line 370
    const-class v0, Lcom/android/systemui/power/PowerNotificationWarnings;

    const-string v1, "mWarning"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private hasSaverSettings()Z
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->mOpenSaverSettings:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private pendingActivity(Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 6

    .line 188
    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5

    .line 194
    const-class v0, Lcom/android/systemui/power/PowerNotificationWarnings;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "pendingBroadcast"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 195
    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/PendingIntent;

    return-object p0
.end method

.method private setSaverMode(ZZ)V
    .locals 6

    .line 292
    const-class v0, Lcom/android/systemui/power/PowerNotificationWarnings;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "setSaverMode"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 294
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private settings(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    .line 199
    const-class v0, Lcom/android/systemui/power/PowerNotificationWarnings;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "settings"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 200
    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    return-object p0
.end method

.method private skipSaverNotification()Z
    .locals 4

    .line 257
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 258
    iget-wide v2, p0, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->mShowSaverNotificationTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 259
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->mShowSaverNotificationTime:J

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "OpPowerUI.Notification"

    const-string v0, "skip updating saver notification in 500ms"

    .line 262
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private updateNotification()V
    .locals 3

    .line 281
    const-class v0, Lcom/android/systemui/power/PowerNotificationWarnings;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "updateNotification"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected addStopSaverAction(Landroid/app/Notification$Builder;)V
    .locals 2

    .line 108
    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->battery_saver_notification_action_text:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PNW.stopSaver"

    .line 109
    invoke-direct {p0, v1}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p1, v1, v0, p0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-void
.end method

.method public computePowerSaveExtendTime(J)J
    .locals 2

    .line 113
    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 115
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    const/4 p0, 0x0

    .line 116
    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object p0

    .line 118
    invoke-virtual {p0, p1, p2}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide p0

    const-wide/16 v0, -0x1

    cmp-long p2, p0, v0

    if-nez p2, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0xc

    mul-long/2addr p0, v0

    const-wide/16 v0, 0x64

    .line 122
    div-long/2addr p0, v0

    return-wide p0
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "mSaver="

    .line 101
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->mSaver:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method protected getBatteryLowDescription()Ljava/lang/String;
    .locals 10

    .line 304
    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 307
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->computePowerSaveExtendTime(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_0

    const-wide/32 v6, 0x927c0

    cmp-long v3, v1, v6

    if-ltz v3, :cond_0

    .line 309
    sget v3, Lcom/android/systemui/R$string;->battery_usage_extanded:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->getFormattedTime(J)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v5, v4

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 311
    :cond_0
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v3

    .line 312
    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->getBatteryLevel()I

    move-result p0

    int-to-double v6, p0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    .line 313
    sget v3, Lcom/android/systemui/R$string;->battery_low_warning:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 315
    :goto_0
    sget-boolean v0, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->OP_DEBUG:Z

    if-eqz v0, :cond_1

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBatteryLowDescription extendTime="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " str="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpPowerUI.Notification"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p0
.end method

.method protected initInternal(Landroid/content/BroadcastReceiver;)V
    .locals 6

    .line 153
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "PNW.batterySettings"

    .line 154
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.startSaver"

    .line 155
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.stopSaver"

    .line 157
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.dismissedWarning"

    .line 159
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.clickedTempWarning"

    .line 160
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.dismissedTempWarning"

    .line 161
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.clickedThermalShutdownWarning"

    .line 162
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.dismissedThermalShutdownWarning"

    .line 163
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.startSaverConfirmation"

    .line 164
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.autoSaverSuggestion"

    .line 165
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.enableAutoSaver"

    .line 166
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.autoSaverNoThanks"

    .line 167
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.dismissAutoSaverSuggestion"

    .line 168
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 170
    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const-string v4, "android.permission.DEVICE_POWER"

    move-object v1, p1

    .line 169
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method protected isWarningNotificationShow()Z
    .locals 0

    .line 287
    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->getWarning()Z

    move-result p0

    return p0
.end method

.method protected onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 175
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OpPowerUI.Notification"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "PNW.stopSaver"

    .line 177
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->dismissAutoSaverSuggestion()V

    .line 179
    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->dismissSaverNotification()V

    .line 180
    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->dismissLowBatteryNotification()V

    const/4 p1, 0x0

    .line 181
    invoke-direct {p0, p1, p1}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->setSaverMode(ZZ)V

    :cond_0
    return-void
.end method

.method protected showSaverMode(Z)V
    .locals 1

    .line 205
    iput-boolean p1, p0, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->mSaver:Z

    .line 206
    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->getSaverConfirmation()Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p1

    .line 207
    iget-boolean v0, p0, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->mSaver:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 208
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->updateNotification()V

    return-void
.end method

.method protected showSaverNotification()V
    .locals 7

    .line 215
    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->skipSaverNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 219
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 220
    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v1

    .line 223
    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->getBatterySaverContentText()Ljava/lang/String;

    move-result-object v2

    .line 225
    iget-boolean v3, p0, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->mSaverNotificationShowing:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/systemui/util/NotificationChannels;->HINTS:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    .line 227
    :goto_0
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v3, Lcom/android/systemui/R$drawable;->ic_power_saver:I

    .line 228
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$string;->battery_saver_notification_title:I

    .line 229
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 230
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 231
    invoke-virtual {v4, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 232
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v4, 0x0

    .line 233
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 234
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 235
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 236
    invoke-static {v0}, Lcom/android/settingslib/Utils;->getColorErrorDefaultColor(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 238
    invoke-virtual {p0, v2}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->addStopSaverAction(Landroid/app/Notification$Builder;)V

    .line 239
    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->hasSaverSettings()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 240
    iget-object v5, p0, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->mOpenSaverSettings:Landroid/content/Intent;

    invoke-direct {p0, v5}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->pendingActivity(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_1

    :cond_2
    const-string v5, "OpPowerUI.Notification"

    const-string v6, "no saver settings"

    .line 242
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_1
    invoke-static {v0, v2, v4}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 245
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v2, 0x2

    .line 246
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "low_battery"

    invoke-virtual {v1, v5, v2, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    const/4 v2, 0x3

    .line 247
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v5, v2, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    const/16 v2, 0x31

    .line 248
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "auto_saver"

    invoke-virtual {v1, v6, v2, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    const/16 v2, 0x270f

    .line 250
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v5, v2, v0, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 251
    iput-boolean v3, p0, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->mSaverNotificationShowing:Z

    return-void
.end method

.method protected update(IIJ)V
    .locals 0

    .line 270
    sget-boolean p2, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->OP_DEBUG:Z

    if-eqz p2, :cond_0

    .line 271
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "update battery level from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->getBatteryLevel()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mSaver="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->mSaver:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OpPowerUI.Notification"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    iget-boolean p2, p0, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->mSaver:Z

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->getBatteryLevel()I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 275
    invoke-virtual {p0}, Lcom/oneplus/systemui/power/OpPowerNotificationWarnings;->showSaverNotification()V

    :cond_1
    return-void
.end method
