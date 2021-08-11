.class public Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;
.super Lcom/oneplus/aod/utils/bitmoji/triggers/base/CategoryTrigger;
.source "WeatherTrigger.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;
    }
.end annotation


# static fields
.field private static final WEATHER_INFO_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mCurrentWeatherCode:I

.field private volatile mDataValid:Z

.field private mLastWeatherCode:I

.field private mNextWeatherCode:I

.field private mOnAlarmTime:J

.field private mQueryTask:Ljava/lang/Thread;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWeatherData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.oneplus.weather.WeatherInfoProvider/*"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->WEATHER_INFO_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/CategoryTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    new-instance p2, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$2;

    invoke-direct {p2, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$2;-><init>(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)V

    iput-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const-class p2, Landroid/app/AlarmManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mAlarmManager:Landroid/app/AlarmManager;

    const/16 p1, 0x270f

    iput p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mNextWeatherCode:I

    iput p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mLastWeatherCode:I

    iput p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mCurrentWeatherCode:I

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mWeatherData:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)Landroid/os/Handler;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)Landroid/os/Handler;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->updateCurrentWeather()V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->cancelSchedule()V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->queryWeatherInfoIfNeeded()V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->onUserUnlocked()V

    return-void
.end method

.method static synthetic access$1400()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->WEATHER_INFO_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)Landroid/os/Handler;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)Landroid/os/Handler;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mDataValid:Z

    return p0
.end method

.method static synthetic access$600(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)Landroid/os/Handler;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)Landroid/os/Handler;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)Landroid/os/Handler;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method private cancelSchedule()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mOnAlarmTime:J

    return-void
.end method

.method private getCurrentTime()I
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0xe10

    rem-long v2, v0, v2

    sub-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public static synthetic lambda$ScUIxfleCPnrWT5W3pOHCJTa5dk(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->updateCurrentWeather()V

    return-void
.end method

.method private synthetic lambda$queryWeatherInfoIfNeeded$0()V
    .locals 10

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mContext:Landroid/content/Context;

    const-string v1, "net.oneplus.weather"

    invoke-static {v0, v1}, Lcom/oneplus/util/OpUtils;->getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x5104

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    const-string v2, "Query weather info fail: app is not installed or version too old"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mWeatherData:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mWeatherData:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mQueryTask:Ljava/lang/Thread;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$1;

    invoke-direct {v3, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$1;-><init>(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x14

    const-wide/32 v5, 0x36ee80

    :try_start_2
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v7}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mWeatherData:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v4, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mWeatherData:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;

    iget-object v8, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mWeatherData:Landroid/util/SparseArray;

    invoke-virtual {v7}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;->getTime()I

    move-result v9

    invoke-virtual {v8, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/oneplus/aod/utils/bitmoji/triggers/-$$Lambda$WeatherTrigger$ScUIxfleCPnrWT5W3pOHCJTa5dk;

    invoke-direct {v4, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/-$$Lambda$WeatherTrigger$ScUIxfleCPnrWT5W3pOHCJTa5dk;-><init>(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mDataValid:Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;

    invoke-virtual {v2}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;->getTime()I

    move-result v2

    add-int/lit16 v2, v2, 0xe10

    int-to-long v2, v2

    const-wide/16 v7, 0x3e8

    mul-long/2addr v2, v7

    invoke-direct {p0, v2, v3}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->startSchedule(J)V

    :cond_3
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryWeatherInfoIfNeeded: success, data valid= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mDataValid:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_4
    iget-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mDataValid:Z

    if-nez v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v5

    invoke-direct {p0, v2, v3}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->startSchedule(J)V

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_5

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_7
    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    const-string v3, "queryWeatherInfoIfNeeded: occur error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    iget-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mDataValid:Z

    if-nez v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v5

    invoke-direct {p0, v2, v3}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->startSchedule(J)V

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_5

    :goto_1
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    const-string v2, "queryWeatherInfoIfNeeded: data is still invalid"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_8
    iget-object v3, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    const-string v4, "queryWeatherInfoIfNeeded: timeout"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    iget-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mDataValid:Z

    if-nez v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v5

    invoke-direct {p0, v2, v3}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->startSchedule(J)V

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    iput-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mQueryTask:Ljava/lang/Thread;

    return-void

    :goto_3
    iget-boolean v1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mDataValid:Z

    if-nez v1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, v5

    invoke-direct {p0, v1, v2}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->startSchedule(J)V

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_6

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    const-string v1, "queryWeatherInfoIfNeeded: data is still invalid"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    throw v0
.end method

.method private onUserUnlocked()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->queryWeatherInfoIfNeeded()V

    return-void
.end method

.method private queryWeatherInfoIfNeeded()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryWeatherInfoIfNeeded: callers= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mDataValid:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    const-string v0, "data is valid, no need to requery"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mQueryTask:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    const-string v1, "queryWeatherInfoIfNeeded: query task is still running, interrupt it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mQueryTask:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/aod/utils/bitmoji/triggers/-$$Lambda$WeatherTrigger$J7fKmbAbVjV20DXw2Fmbx8Y8fe0;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/-$$Lambda$WeatherTrigger$J7fKmbAbVjV20DXw2Fmbx8Y8fe0;-><init>(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mQueryTask:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private requeryWeatherData(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requeryWeatherData: reason= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mDataValid:Z

    const/16 p1, 0x270f

    iput p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mNextWeatherCode:I

    iput p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mLastWeatherCode:I

    iput p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mCurrentWeatherCode:I

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mWeatherData:Landroid/util/SparseArray;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mWeatherData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->queryWeatherInfoIfNeeded()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private startSchedule(J)V
    .locals 10

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->cancelSchedule()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startSchedule: nextQueryTime= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", delayTime= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iput-wide p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mOnAlarmTime:J

    iget-object v3, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    add-long v5, p1, v0

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mBitmojiManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->getHandler()Landroid/os/Handler;

    move-result-object v9

    const-string v7, "Bitmoji#WeatherTrigger"

    move-object v8, p0

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :cond_1
    return-void
.end method

.method private updateCurrentWeather()V
    .locals 4

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->getCurrentTime()I

    move-result v0

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCurrentWeather: currentTime= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mWeatherData:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mWeatherData:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;->getWeatherCode()I

    move-result v2

    iput v2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mCurrentWeatherCode:I

    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mWeatherData:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-nez v0, :cond_1

    iget v2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mCurrentWeatherCode:I

    iput v2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mLastWeatherCode:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mWeatherData:Landroid/util/SparseArray;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;

    invoke-virtual {v2}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;->getWeatherCode()I

    move-result v2

    iput v2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mLastWeatherCode:I

    :goto_0
    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mWeatherData:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mCurrentWeatherCode:I

    iput v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mNextWeatherCode:I

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mWeatherData:Landroid/util/SparseArray;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;->getWeatherCode()I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mNextWeatherCode:I

    goto :goto_1

    :cond_3
    const/16 v0, 0x270f

    iput v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mNextWeatherCode:I

    iput v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mLastWeatherCode:I

    iput v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mCurrentWeatherCode:I

    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public dumpDetail(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p1, v0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "currentTime="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "valid="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mDataValid:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "lastWeatherCode="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mLastWeatherCode:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "currentWeatherCode="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mCurrentWeatherCode:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "nextWeatherCode="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mNextWeatherCode:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mOnAlarmTime:J

    const-wide/16 v4, 0x0

    cmp-long p3, v0, v4

    const/4 v4, 0x0

    if-lez p3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v0, v5

    div-long/2addr v0, v2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextQueryTime= after "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v5

    const-wide/16 v7, 0x3c

    rem-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    rem-long/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "%02d:%02d:%02d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p3, "nextQueryTime= not valid"

    invoke-virtual {p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string p3, "list for 24 hours:"

    invoke-virtual {p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "-----------------------------------------------"

    invoke-virtual {p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mWeatherData:Landroid/util/SparseArray;

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mWeatherData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :goto_1
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mWeatherData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mWeatherData:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;

    invoke-virtual {v2, p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "------------------------------------------"

    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move v4, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_2
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dynamicConfig([Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_5

    array-length v0, p1

    if-lez v0, :cond_5

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    aget-object p1, p1, v1

    const-string v0, "create"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mDataValid:Z

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mWeatherData:Landroid/util/SparseArray;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mWeatherData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->getCurrentTime()I

    move-result v0

    :goto_0
    const/16 v2, 0x19

    if-ge v1, v2, :cond_0

    invoke-static {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;->testCreate(I)Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mWeatherData:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;->getTime()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit16 v0, v0, 0xe10

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/oneplus/aod/utils/bitmoji/triggers/-$$Lambda$WeatherTrigger$ScUIxfleCPnrWT5W3pOHCJTa5dk;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/-$$Lambda$WeatherTrigger$ScUIxfleCPnrWT5W3pOHCJTa5dk;-><init>(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_1
    const-string v0, "clear"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mWeatherData:Landroid/util/SparseArray;

    monitor-enter p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mWeatherData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iput-boolean v1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mDataValid:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    :cond_2
    array-length v0, p1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_6

    aget-object v0, p1, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mWeatherData:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mWeatherData:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mWeatherData:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger$WeatherInfo;->setWeatherCode(I)V

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/oneplus/aod/utils/bitmoji/triggers/-$$Lambda$WeatherTrigger$ScUIxfleCPnrWT5W3pOHCJTa5dk;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/-$$Lambda$WeatherTrigger$ScUIxfleCPnrWT5W3pOHCJTa5dk;-><init>(Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    monitor-exit v1

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    const-string v0, "dynamicConfig: occur error"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    const-string p1, "dynamicConfig: args error"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method

.method protected getCategories()[Ljava/lang/String;
    .locals 3

    const-string p0, "sun"

    const-string v0, "cloud"

    const-string v1, "rain"

    const-string v2, "snow"

    filled-new-array {p0, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getCurrentCategory()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mCurrentWeatherCode:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string p0, "snow"

    return-object p0

    :pswitch_2
    const-string p0, "rain"

    return-object p0

    :pswitch_3
    const-string p0, "cloud"

    return-object p0

    :pswitch_4
    const-string p0, "sun"

    return-object p0

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getMdmLabel()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->getCurrentCategory()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "cloud"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "snow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "rain"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_3
    const-string v0, "sun"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_4

    if-eq p0, v3, :cond_3

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p0, "weather_snow"

    return-object p0

    :cond_2
    const-string p0, "weather_rain"

    return-object p0

    :cond_3
    const-string p0, "weather_cloud"

    return-object p0

    :cond_4
    const-string p0, "weather_sun"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x1be4c -> :sswitch_3
        0x354b94 -> :sswitch_2
        0x35f183 -> :sswitch_1
        0x5a5de35 -> :sswitch_0
    .end sparse-switch
.end method

.method public init()V
    .locals 1

    invoke-super {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->init()V

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getKeyguardUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public isActive()Z
    .locals 3

    iget v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mCurrentWeatherCode:I

    const/16 v1, 0x270f

    if-eq v0, v1, :cond_0

    iget v2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mLastWeatherCode:I

    if-eq v2, v1, :cond_0

    iget p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->mNextWeatherCode:I

    if-eq p0, v1, :cond_0

    if-ne v0, v2, :cond_0

    if-ne v0, p0, :cond_0

    if-ne v2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$queryWeatherInfoIfNeeded$0$WeatherTrigger()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->lambda$queryWeatherInfoIfNeeded$0()V

    return-void
.end method

.method public onAlarm()V
    .locals 1

    const-string v0, "onAlarm"

    invoke-direct {p0, v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;->requeryWeatherData(Ljava/lang/String;)V

    return-void
.end method
