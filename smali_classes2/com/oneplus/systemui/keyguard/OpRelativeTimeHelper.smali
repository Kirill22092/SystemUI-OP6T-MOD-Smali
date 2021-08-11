.class public Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;
.super Ljava/lang/Object;
.source "OpRelativeTimeHelper.java"


# static fields
.field private static final TIMESTAMP_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field private mBeginTime:J

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->TIMESTAMP_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->isDeviceBoot()Z

    move-result p1

    const-string v0, "OpRelativeTimeHelper"

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->getLastElapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->getLastActiveTime()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-wide/16 v5, 0x0

    if-nez v4, :cond_0

    :try_start_0
    sget-object v4, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->TIMESTAMP_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v9
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v7, v9

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v7, "lastActiveTime parse error"

    invoke-static {v0, v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move-wide v7, v5

    :goto_0
    cmp-long v4, v7, v5

    if-lez v4, :cond_1

    move-wide v5, v7

    :cond_1
    add-long/2addr v5, v1

    iput-wide v5, p0, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->mBeginTime:J

    invoke-direct {p0}, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->recordBeginTime()V

    sget-boolean v4, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device has just boot. lastElapsedRealtime= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastActiveTime= "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", currentTime= "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->TIMESTAMP_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", deltaTime= "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", beginTime= "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p0, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->mBeginTime:J

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->getBeginTimeFromFile()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->mBeginTime:J

    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maybe crash happened. beginTime= "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->mBeginTime:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method private getBeginTimeFromFile()J
    .locals 3

    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->mContext:Landroid/content/Context;

    const-string v0, "unlockcounter_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "begin_time"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getLastActiveTime()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->mContext:Landroid/content/Context;

    const-string v0, "unlockcounter_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "last_active_time"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLastElapsedRealtime()J
    .locals 3

    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->mContext:Landroid/content/Context;

    const-string v0, "unlockcounter_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "last_elapsed_real_time"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private isDeviceBoot()Z
    .locals 7

    iget-object v0, p0, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->mContext:Landroid/content/Context;

    const-string v1, "unlockcounter_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "boot_count"

    const/4 v4, -0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :try_start_0
    iget-object v5, p0, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v5, "OpRelativeTimeHelper"

    const-string v6, "Failed to read system boot count from Settings.Global.BOOT_COUNT"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-le v4, v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method

.method private recordBeginTime()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->mContext:Landroid/content/Context;

    const-string v1, "unlockcounter_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p0, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->mBeginTime:J

    const-string p0, "begin_time"

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public getBeginTime()J
    .locals 2

    iget-wide v0, p0, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->mBeginTime:J

    return-wide v0
.end method

.method public recordLastActiveTime()V
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sget-object v1, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->TIMESTAMP_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->mContext:Landroid/content/Context;

    const-string v1, "unlockcounter_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "last_active_time"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public recordLastElapsedRealtime()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->mContext:Landroid/content/Context;

    const-string v1, "unlockcounter_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p0, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->mBeginTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v1, v3

    const-string p0, "last_elapsed_real_time"

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
