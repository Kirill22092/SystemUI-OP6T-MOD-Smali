.class public Lcom/oneplus/systemui/power/OpPowerUI;
.super Lcom/android/systemui/SystemUI;
.source "OpPowerUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/power/OpPowerUI$OpWarningsUI;,
        Lcom/oneplus/systemui/power/OpPowerUI$OpReceiver;
    }
.end annotation


# static fields
.field protected static final OP_DEBUG:Z

.field private static final SIX_HOURS_MILLIS:J


# instance fields
.field private final DEBUG:Z

.field private mCurrentPowerSave:Z

.field protected final mLowBatteryReminderLevels:[I

.field private mScreenTimeout:I

.field private mSelfChange:Z

.field private mSelfChangeRestore:Z

.field private mUser:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/systemui/power/OpPowerUI;->OP_DEBUG:Z

    const-wide/16 v0, 0x6

    .line 58
    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/oneplus/systemui/power/OpPowerUI;->SIX_HOURS_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 80
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    const-string p1, "OpPowerUI"

    const/4 v0, 0x3

    .line 54
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/oneplus/systemui/power/OpPowerUI;->OP_DEBUG:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/oneplus/systemui/power/OpPowerUI;->DEBUG:Z

    new-array p1, v0, [I

    .line 61
    iput-object p1, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mLowBatteryReminderLevels:[I

    .line 70
    iput v1, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mScreenTimeout:I

    .line 71
    iput v1, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mUser:I

    .line 72
    iput-boolean v1, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mCurrentPowerSave:Z

    .line 74
    iput-boolean v1, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mSelfChange:Z

    .line 76
    iput-boolean v1, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mSelfChangeRestore:Z

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/systemui/power/OpPowerUI;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mSelfChange:Z

    return p0
.end method

.method static synthetic access$002(Lcom/oneplus/systemui/power/OpPowerUI;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mSelfChange:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/power/OpPowerUI;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mSelfChangeRestore:Z

    return p0
.end method

.method static synthetic access$102(Lcom/oneplus/systemui/power/OpPowerUI;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mSelfChangeRestore:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/systemui/power/OpPowerUI;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mScreenTimeout:I

    return p0
.end method

.method static synthetic access$202(Lcom/oneplus/systemui/power/OpPowerUI;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mScreenTimeout:I

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/systemui/power/OpPowerUI;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/systemui/power/OpPowerUI;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mUser:I

    return p0
.end method

.method static synthetic access$500(Lcom/oneplus/systemui/power/OpPowerUI;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/power/OpPowerUI;->saveScreenTimeoutToPrefs(I)V

    return-void
.end method

.method private getWarnings()Lcom/android/systemui/power/PowerUI$WarningsUI;
    .locals 2

    .line 331
    const-class v0, Lcom/android/systemui/power/PowerUI;

    const-string v1, "mWarnings"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/power/PowerUI$WarningsUI;

    return-object p0
.end method

.method private restoreScreenTimeoutFromPrefsIfNeeded()V
    .locals 5

    .line 211
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "PowerSavingTimeoutBackup"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreScreenTimeoutFromPrefsIfNeeded:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OpPowerUI"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v3, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mUser:I

    const-string v4, "screen_off_timeout"

    invoke-static {v1, v4, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 216
    invoke-direct {p0, v2}, Lcom/oneplus/systemui/power/OpPowerUI;->saveScreenTimeoutToPrefs(I)V

    :cond_0
    return-void
.end method

.method private saveScreenTimeoutToPrefs(I)V
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveScreenTimeoutToPrefs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpPowerUI"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v0, "PowerSavingTimeoutBackup"

    invoke-static {p0, v0, p1}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private setLowBatteryAlertCloseLevel(I)V
    .locals 2

    .line 319
    const-class v0, Lcom/android/systemui/power/PowerUI;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "mLowBatteryAlertCloseLevel"

    invoke-static {v0, p0, v1, p1}, Lcom/oneplus/util/OpReflectionUtils;->setValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private setLowWarningShownThisChargeCycle(Z)V
    .locals 2

    .line 323
    const-class v0, Lcom/android/systemui/power/PowerUI;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "mLowWarningShownThisChargeCycle"

    invoke-static {v0, p0, v1, p1}, Lcom/oneplus/util/OpReflectionUtils;->setValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private setSevereWarningShownThisChargeCycle(Z)V
    .locals 2

    .line 327
    const-class v0, Lcom/android/systemui/power/PowerUI;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "mSevereWarningShownThisChargeCycle"

    invoke-static {v0, p0, v1, p1}, Lcom/oneplus/util/OpReflectionUtils;->setValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private shouldDismissHybridWarning(Lcom/android/systemui/power/BatteryStateSnapshot;)Z
    .locals 5

    .line 226
    const-class v0, Lcom/android/systemui/power/PowerUI;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lcom/android/systemui/power/BatteryStateSnapshot;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "shouldDismissHybridWarning"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 228
    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private shouldDismissLowBatteryWarning(Lcom/android/systemui/power/BatteryStateSnapshot;Lcom/android/systemui/power/BatteryStateSnapshot;)Z
    .locals 6

    .line 232
    const-class v0, Lcom/android/systemui/power/BatteryStateSnapshot;

    const-class v1, Lcom/android/systemui/power/PowerUI;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    const-string v0, "shouldDismissLowBatteryWarning"

    invoke-static {v1, v0, v3}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    .line 234
    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private shouldShowHybridWarning(Lcom/android/systemui/power/BatteryStateSnapshot;)Z
    .locals 5

    .line 238
    const-class v0, Lcom/android/systemui/power/PowerUI;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lcom/android/systemui/power/BatteryStateSnapshot;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "shouldShowHybridWarning"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 240
    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected maybeShowBatteryWarning(Lcom/android/systemui/power/BatteryStateSnapshot;Lcom/android/systemui/power/BatteryStateSnapshot;)V
    .locals 4

    .line 93
    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerUI;->getWarnings()Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v0

    .line 100
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 101
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 102
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/power/BatteryStateSnapshot;->getPlugged()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 105
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/systemui/power/OpPowerUI;->shouldShowLowBatteryWarningInternal(Lcom/android/systemui/power/BatteryStateSnapshot;Lcom/android/systemui/power/BatteryStateSnapshot;)Z

    move-result v2

    const-string v3, "OpPowerUI"

    if-eqz v2, :cond_4

    .line 106
    iget-boolean p0, p0, Lcom/oneplus/systemui/power/OpPowerUI;->DEBUG:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "warnings.showLowBatteryWarning: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_3
    invoke-interface {v0, v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showLowBatteryWarning(Z)V

    goto :goto_1

    .line 108
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/oneplus/systemui/power/OpPowerUI;->shouldDismissLowBatteryWarning(Lcom/android/systemui/power/BatteryStateSnapshot;Lcom/android/systemui/power/BatteryStateSnapshot;)Z

    move-result v1

    const-string v2, "warnings.dismissLowBatteryWarning"

    if-eqz v1, :cond_6

    .line 109
    iget-boolean p0, p0, Lcom/oneplus/systemui/power/OpPowerUI;->DEBUG:Z

    if-eqz p0, :cond_5

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_5
    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    goto :goto_1

    .line 115
    :cond_6
    invoke-virtual {p2}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result p1

    if-eq p2, p1, :cond_8

    .line 117
    iget-boolean p0, p0, Lcom/oneplus/systemui/power/OpPowerUI;->DEBUG:Z

    if-eqz p0, :cond_7

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_7
    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateLowBatteryWarning()V

    :cond_8
    :goto_1
    return-void
.end method

.method protected maybeShowHybridWarningInternal(Lcom/android/systemui/power/BatteryStateSnapshot;Lcom/android/systemui/power/BatteryStateSnapshot;)V
    .locals 8

    .line 124
    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerUI;->getWarnings()Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v0

    .line 128
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBatteryLevel()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "OpPowerUI"

    const/16 v4, 0x2d

    if-lt v1, v4, :cond_0

    .line 129
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getTimeRemainingMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/oneplus/systemui/power/OpPowerUI;->SIX_HOURS_MILLIS:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 130
    invoke-direct {p0, v2}, Lcom/oneplus/systemui/power/OpPowerUI;->setLowWarningShownThisChargeCycle(Z)V

    .line 131
    invoke-direct {p0, v2}, Lcom/oneplus/systemui/power/OpPowerUI;->setSevereWarningShownThisChargeCycle(Z)V

    .line 132
    iget-boolean v1, p0, Lcom/oneplus/systemui/power/OpPowerUI;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Charge cycle reset! Can show warnings again"

    .line 133
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result v4

    const/4 v5, 0x1

    if-eq v1, v4, :cond_1

    .line 142
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result v1

    const/4 v4, -0x2

    if-ne v1, v4, :cond_2

    .line 143
    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/power/BatteryStateSnapshot;->getPlugged()Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    move v2, v5

    .line 145
    :cond_3
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/power/OpPowerUI;->shouldShowHybridWarning(Lcom/android/systemui/power/BatteryStateSnapshot;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 146
    invoke-interface {v0, v2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showLowBatteryWarning(Z)V

    .line 149
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getTimeRemainingMillis()J

    move-result-wide v0

    .line 150
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getSevereThresholdMillis()J

    move-result-wide v6

    cmp-long p2, v0, v6

    if-lez p2, :cond_5

    .line 151
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBatteryLevel()I

    move-result p2

    .line 152
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getSevereLevelThreshold()I

    move-result p1

    if-gt p2, p1, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "Low warning marked as shown this cycle"

    .line 159
    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0, v5}, Lcom/oneplus/systemui/power/OpPowerUI;->setLowWarningShownThisChargeCycle(Z)V

    goto :goto_1

    .line 153
    :cond_5
    :goto_0
    invoke-direct {p0, v5}, Lcom/oneplus/systemui/power/OpPowerUI;->setSevereWarningShownThisChargeCycle(Z)V

    .line 154
    invoke-direct {p0, v5}, Lcom/oneplus/systemui/power/OpPowerUI;->setLowWarningShownThisChargeCycle(Z)V

    .line 155
    iget-boolean p0, p0, Lcom/oneplus/systemui/power/OpPowerUI;->DEBUG:Z

    if-eqz p0, :cond_a

    const-string p0, "Severe warning marked as shown this cycle"

    .line 156
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 162
    :cond_6
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/power/OpPowerUI;->shouldDismissHybridWarning(Lcom/android/systemui/power/BatteryStateSnapshot;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 163
    iget-boolean p0, p0, Lcom/oneplus/systemui/power/OpPowerUI;->DEBUG:Z

    if-eqz p0, :cond_7

    const-string p0, "Dismissing warning"

    .line 164
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_7
    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    goto :goto_1

    .line 168
    :cond_8
    iget-boolean p0, p0, Lcom/oneplus/systemui/power/OpPowerUI;->DEBUG:Z

    if-eqz p0, :cond_9

    const-string p0, "Updating warning"

    .line 169
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_9
    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateLowBatteryWarning()V

    :cond_a
    :goto_1
    return-void
.end method

.method protected registerObserverInternal(Landroid/content/ContentResolver;Landroid/os/Handler;Landroid/os/PowerManager;)V
    .locals 1

    .line 176
    new-instance v0, Lcom/oneplus/systemui/power/OpPowerUI$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/oneplus/systemui/power/OpPowerUI$1;-><init>(Lcom/oneplus/systemui/power/OpPowerUI;Landroid/os/Handler;Landroid/os/PowerManager;)V

    const-string p0, "screen_off_timeout"

    .line 198
    invoke-static {p0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 p2, 0x0

    const/4 p3, -0x1

    invoke-virtual {p1, p0, p2, v0, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method protected restorePowerSavingSettingsForUser()V
    .locals 4

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mSelfChangeRestore:Z

    .line 206
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mScreenTimeout:I

    iget v2, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mUser:I

    const-string v3, "screen_off_timeout"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restorePowerSavingSettingsForUser:mScreenTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mScreenTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mUser:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpPowerUI"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected shouldShowLowBatteryWarningInternal(Lcom/android/systemui/power/BatteryStateSnapshot;Lcom/android/systemui/power/BatteryStateSnapshot;)Z
    .locals 5

    .line 246
    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerUI;->getWarnings()Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/systemui/power/OpPowerUI$OpWarningsUI;->isWarningNotificationShow()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 247
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result v0

    const/4 v3, -0x2

    if-ne v0, v3, :cond_0

    .line 248
    invoke-virtual {p2}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 251
    :goto_0
    iget-boolean v3, p0, Lcom/oneplus/systemui/power/OpPowerUI;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldShowLowBatteryWarningInternal: skipWarning="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", curr_bucket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", last_bucket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {p2}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", getWarnings() -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerUI;->getWarnings()Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "OpPowerUI"

    .line 252
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getPlugged()Z

    move-result p0

    if-nez p0, :cond_4

    .line 260
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->isPowerSaver()Z

    move-result p0

    if-nez p0, :cond_4

    .line 265
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result p0

    invoke-virtual {p2}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result v3

    if-ge p0, v3, :cond_2

    if-eqz v0, :cond_3

    .line 267
    :cond_2
    invoke-virtual {p2}, Lcom/android/systemui/power/BatteryStateSnapshot;->getPlugged()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 268
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBucket()I

    move-result p0

    if-gez p0, :cond_4

    .line 269
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBatteryStatus()I

    move-result p0

    if-eq p0, v2, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public start()V
    .locals 4

    .line 85
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mUser:I

    .line 86
    invoke-direct {p0}, Lcom/oneplus/systemui/power/OpPowerUI;->restoreScreenTimeoutFromPrefsIfNeeded()V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mUser:I

    const-string v2, "screen_off_timeout"

    const/16 v3, 0x7530

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mScreenTimeout:I

    return-void
.end method

.method protected updateBatteryWarningLevelsInternal()V
    .locals 6

    .line 273
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 275
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ge v1, v0, :cond_0

    move v1, v0

    .line 282
    :cond_0
    iget-object v2, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mLowBatteryReminderLevels:[I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    .line 290
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$integer;->config_lowBatteryWarningLevel_1:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    aput v4, v2, v1

    .line 292
    iget-object v1, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mLowBatteryReminderLevels:[I

    const/4 v2, 0x2

    aput v0, v1, v2

    .line 293
    aget v0, v1, v3

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 294
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 293
    invoke-direct {p0, v0}, Lcom/oneplus/systemui/power/OpPowerUI;->setLowBatteryAlertCloseLevel(I)V

    return-void
.end method

.method protected updatePowerSavingSettings(Z)V
    .locals 5

    .line 299
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mUser:I

    const/4 v0, 0x1

    .line 300
    iput-boolean v0, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mSelfChange:Z

    .line 302
    iget-boolean v0, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mCurrentPowerSave:Z

    if-eq p1, v0, :cond_1

    .line 303
    iput-boolean p1, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mCurrentPowerSave:Z

    const-string v0, ", user="

    const-string v1, "OpPowerUI"

    const-string v2, "screen_off_timeout"

    if-eqz p1, :cond_0

    .line 305
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget v3, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mUser:I

    const/16 v4, 0x7530

    invoke-static {p1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mScreenTimeout:I

    .line 306
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/power/OpPowerUI;->saveScreenTimeoutToPrefs(I)V

    .line 307
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget v3, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mUser:I

    invoke-static {p1, v2, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 308
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePowerSavingSettings:Enter PowerSaving Mode: mScreenTimeout="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mScreenTimeout:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mUser:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 310
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget v3, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mScreenTimeout:I

    iget v4, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mUser:I

    invoke-static {p1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const/4 p1, 0x0

    .line 311
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/power/OpPowerUI;->saveScreenTimeoutToPrefs(I)V

    .line 312
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePowerSavingSettings:Leave PowerSaving Mode: mScreenTimeout="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mScreenTimeout:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/systemui/power/OpPowerUI;->mUser:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
