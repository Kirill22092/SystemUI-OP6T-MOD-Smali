.class public Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;
.super Ljava/lang/Object;
.source "OpKeyguardUnlockCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$OpKeyguardUnlockCounterListener;,
        Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;,
        Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;,
        Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$H;
    }
.end annotation


# instance fields
.field private mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$H;

.field private mLastEvent:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$OpKeyguardUnlockCounterListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mRelativeTimeHelper:Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$1;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$1;-><init>(Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;)V

    iput-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$2;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$2;-><init>(Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;)V

    iput-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iput-object p1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$H;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$H;-><init>(Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$H;

    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v0, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;

    invoke-direct {v0, p1}, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mRelativeTimeHelper:Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;

    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-direct {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->doSync()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->stopSchedule()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->doSync()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->timestamp()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->syncRecordFromDisk()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->writeToDisk(Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;)V

    return-void
.end method

.method private doSync()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$H;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->startSchedule()V

    return-void
.end method

.method private getBeginTime(J)J
    .locals 2

    const-wide/32 v0, 0x5265c00

    cmp-long p0, p1, v0

    if-lez p0, :cond_0

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    return-wide p1
.end method

.method public static logFormatTime(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    invoke-static {p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private retrieveInStack(Ljava/util/Stack;JJ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;",
            ">;JJ)Z"
        }
    .end annotation

    const-string p2, "OpKeyguardUnlockCounter"

    new-instance p3, Ljava/io/File;

    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v0, "unlockData"

    invoke-direct {p3, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;->parse(Ljava/lang/String;)Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-wide v1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;->mTriggerTime:J

    cmp-long p3, v1, p4

    if-lez p3, :cond_2

    sget-boolean p3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "retrieveInStack: event invalid: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p1}, Ljava/util/Stack;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p0, 0x0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return p0

    :cond_2
    :try_start_3
    invoke-virtual {p1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :cond_3
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    :goto_2
    :try_start_5
    const-string p1, "syncRecordFromDisk: read file occur error"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_5

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_3
    if-eqz v0, :cond_4

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_4
    throw p0

    :catch_4
    :cond_5
    :goto_4
    const/4 p0, 0x1

    return p0
.end method

.method private startSchedule()V
    .locals 11

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpKeyguardUnlockCounter"

    const-string v1, "startSchedule"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x1b7740

    add-long v6, v0, v2

    iget-object v4, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x3

    iget-object v9, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$H;

    const-string v8, "OpKeyguardUnlockCounter-SYNC"

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method private stopSchedule()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpKeyguardUnlockCounter"

    const-string v1, "stopSchedule"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    return-void
.end method

.method private syncRecordFromDisk()V
    .locals 13

    iget-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mLastEvent:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "unlockData"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mRelativeTimeHelper:Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;

    invoke-virtual {v3}, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->getBeginTime()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long v11, v3, v5

    invoke-direct {p0, v11, v12}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->getBeginTime(J)J

    move-result-wide v3

    sget-boolean v5, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_0

    const-string v5, "OpKeyguardUnlockCounter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syncRecordFromDisk: currentElapsedTime= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->logFormatTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", beginTime= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->logFormatTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    move-object v7, p0

    move-object v8, v5

    move-wide v9, v3

    invoke-direct/range {v7 .. v12}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->retrieveInStack(Ljava/util/Stack;JJ)Z

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v5}, Ljava/util/Stack;->empty()Z

    move-result v6

    if-nez v6, :cond_8

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    :cond_1
    :goto_0
    invoke-virtual {v5}, Ljava/util/Stack;->empty()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;

    iget v9, v8, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;->mType:I

    if-nez v9, :cond_2

    iget-wide v9, v8, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;->mTriggerTime:J

    cmp-long v9, v9, v3

    if-gtz v9, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v7, :cond_4

    iget v9, v7, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;->mType:I

    iget v10, v8, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;->mType:I

    if-eq v9, v10, :cond_3

    goto :goto_1

    :cond_3
    sget-boolean v9, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v9, :cond_1

    const-string v9, "OpKeyguardUnlockCounter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "syncRecordFromDisk: filter out unpair event. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;->logString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v7, v8

    goto :goto_0

    :cond_5
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;

    iput-object v3, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mLastEvent:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v4, Ljava/io/FileWriter;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    :goto_3
    if-ltz v1, :cond_6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;

    invoke-virtual {v2}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_6
    :goto_4
    :try_start_3
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_7

    :catch_0
    move-exception v1

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_1
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    :goto_5
    :try_start_4
    const-string v2, "OpKeyguardUnlockCounter"

    const-string v4, "syncRecordFromDisk: write file occur error"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_8

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v1, v3

    :goto_6
    if-eqz v1, :cond_7

    :try_start_5
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_2
    :cond_7
    :try_start_6
    throw p0

    :catch_3
    :cond_8
    :goto_7
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-virtual {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->dispatchUnlockDataChanged()V

    return-void

    :catchall_2
    move-exception p0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0
.end method

.method private timestamp()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mRelativeTimeHelper:Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;

    invoke-virtual {v0}, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->recordLastElapsedRealtime()V

    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mRelativeTimeHelper:Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;

    invoke-virtual {p0}, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->recordLastActiveTime()V

    return-void
.end method

.method private validUser()Z
    .locals 0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private writeToDisk(Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;)V
    .locals 6

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeToDisk: event= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;->logString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardUnlockCounter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mLastEvent:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mLastEvent:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;

    iget v1, v1, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;->mType:I

    iget v2, p1, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;->mType:I

    if-ne v1, v2, :cond_1

    const-string p0, "OpKeyguardUnlockCounter"

    const-string p1, "writeToDisk: same event type, abandon."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    iput-object p1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mLastEvent:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "unlockData"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "OpKeyguardUnlockCounter"

    const-string v1, "writeToDisk: create file failed!"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :cond_2
    :goto_0
    const/4 v2, 0x0

    :try_start_3
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v4, Ljava/io/FileWriter;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p1}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p1

    :goto_1
    :try_start_6
    const-string v1, "OpKeyguardUnlockCounter"

    const-string v3, "writeToDisk: occur error"

    invoke-static {v1, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catch_3
    :cond_3
    :goto_2
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-virtual {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->dispatchUnlockDataChanged()V

    return-void

    :goto_3
    if-eqz v2, :cond_4

    :try_start_9
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catch_4
    :cond_4
    :try_start_a
    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw p0
.end method


# virtual methods
.method public addListener(Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$OpKeyguardUnlockCounterListener;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->validUser()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->dispatchUnlockDataChanged()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public dispatchUnlockDataChanged()V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->validUser()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$OpKeyguardUnlockCounterListener;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$OpKeyguardUnlockCounterListener;->onUnlockDataChanged()V

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRelativeTime(J)J
    .locals 2

    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mRelativeTimeHelper:Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;

    invoke-virtual {p0}, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->getBeginTime()J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public removeListener(Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$OpKeyguardUnlockCounterListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public reportEvent(ZJ)V
    .locals 4

    invoke-direct {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->validUser()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "OpKeyguardUnlockCounter"

    const-string p1, "not user owner, do not record!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    xor-int/2addr p1, v0

    new-instance v1, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;

    iget-object v2, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mRelativeTimeHelper:Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;

    invoke-virtual {v2}, Lcom/oneplus/systemui/keyguard/OpRelativeTimeHelper;->getBeginTime()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-direct {v1, p1, v2, v3}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;-><init>(IJ)V

    iget-object p1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$H;

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mHandler:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public retrieveRecords(JJ)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;",
            ">;"
        }
    .end annotation

    cmp-long v0, p1, p3

    const-wide/16 v1, 0x0

    if-lez v0, :cond_0

    sub-long p3, p1, p3

    goto :goto_0

    :cond_0
    move-wide p3, v1

    :goto_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retrieveRecords: beginTime= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", currentElapsedTime= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OpKeyguardUnlockCounter"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    new-instance v10, Ljava/util/Stack;

    invoke-direct {v10}, Ljava/util/Stack;-><init>()V

    move-object v3, p0

    move-object v4, v10

    move-wide v5, p3

    move-wide v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->retrieveInStack(Ljava/util/Stack;JJ)Z

    new-instance p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;

    invoke-direct {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;-><init>()V

    :cond_2
    :goto_1
    invoke-virtual {v10}, Ljava/util/Stack;->empty()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v10}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;

    iget p2, p1, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;->mType:I

    if-nez p2, :cond_4

    iget-wide v3, p1, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;->mTriggerTime:J

    cmp-long p2, v3, p3

    if-gtz p2, :cond_3

    goto :goto_2

    :cond_3
    iget-wide p1, p1, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;->mTriggerTime:J

    iput-wide p1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;->mEndTime:J

    goto :goto_1

    :cond_4
    iget p2, p1, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;->mType:I

    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    iget-wide v3, p1, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;->mTriggerTime:J

    cmp-long p2, v3, p3

    if-lez p2, :cond_5

    iget-wide p1, p1, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;->mTriggerTime:J

    iput-wide p1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;->mBeginTime:J

    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;->clone()Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-wide v1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;->mBeginTime:J

    iput-wide v1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;->mEndTime:J

    goto :goto_1

    :cond_6
    :goto_2
    monitor-exit v9

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
