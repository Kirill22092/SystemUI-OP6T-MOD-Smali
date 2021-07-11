.class public Lcom/oneplus/keyguard/clock/OpClockCtrl;
.super Ljava/lang/Object;
.source "OpClockCtrl.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/keyguard/clock/OpClockCtrl$BGHandler;,
        Lcom/oneplus/keyguard/clock/OpClockCtrl$OnTimeUpdatedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static mInstance:Lcom/oneplus/keyguard/clock/OpClockCtrl;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBGHandler:Lcom/oneplus/keyguard/clock/OpClockCtrl$BGHandler;

.field private mListener:Lcom/oneplus/keyguard/clock/OpClockCtrl$OnTimeUpdatedListener;

.field private final mLock:Ljava/lang/Object;

.field private mNonUiLooper:Landroid/os/Looper;

.field private mPM:Landroid/os/PowerManager;

.field private mScreenON:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/keyguard/clock/OpClockCtrl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/keyguard/clock/OpClockCtrl;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/keyguard/clock/OpClockCtrl;Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->handleNotifySchedule(Z)V

    return-void
.end method

.method private cancelSchedule()V
    .locals 2

    .line 209
    sget-boolean v0, Lcom/oneplus/keyguard/clock/OpClockCtrl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClockCtrl"

    const-string v1, "cancelSchedule"

    .line 210
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/oneplus/keyguard/clock/OpClockCtrl;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    return-void
.end method

.method private dispatchTimeChanged()V
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/oneplus/keyguard/clock/OpClockCtrl;->mListener:Lcom/oneplus/keyguard/clock/OpClockCtrl$OnTimeUpdatedListener;

    if-eqz p0, :cond_0

    .line 171
    invoke-interface {p0}, Lcom/oneplus/keyguard/clock/OpClockCtrl$OnTimeUpdatedListener;->onTimeChanged()V

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/oneplus/keyguard/clock/OpClockCtrl;
    .locals 2

    const-class v0, Lcom/oneplus/keyguard/clock/OpClockCtrl;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/oneplus/keyguard/clock/OpClockCtrl;->mInstance:Lcom/oneplus/keyguard/clock/OpClockCtrl;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcom/oneplus/keyguard/clock/OpClockCtrl;

    invoke-direct {v1}, Lcom/oneplus/keyguard/clock/OpClockCtrl;-><init>()V

    sput-object v1, Lcom/oneplus/keyguard/clock/OpClockCtrl;->mInstance:Lcom/oneplus/keyguard/clock/OpClockCtrl;

    .line 61
    :cond_0
    sget-object v1, Lcom/oneplus/keyguard/clock/OpClockCtrl;->mInstance:Lcom/oneplus/keyguard/clock/OpClockCtrl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private handleNotifySchedule(Z)V
    .locals 8

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    .line 135
    div-long v4, v0, v2

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    mul-long/2addr v4, v2

    sub-long/2addr v4, v0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " schedule next: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClockCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/oneplus/keyguard/clock/OpClockCtrl;->mBGHandler:Lcom/oneplus/keyguard/clock/OpClockCtrl$BGHandler;

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/high16 v1, 0x20000

    .line 139
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    .line 140
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 141
    iget-object v1, p0, Lcom/oneplus/keyguard/clock/OpClockCtrl;->mBGHandler:Lcom/oneplus/keyguard/clock/OpClockCtrl$BGHandler;

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 145
    invoke-direct {p0}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->dispatchTimeChanged()V

    :cond_1
    return-void
.end method

.method private startSchedule(Ljava/lang/String;)V
    .locals 13

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    .line 196
    div-long v4, v0, v2

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    mul-long/2addr v4, v2

    sub-long/2addr v4, v0

    .line 197
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long v8, v0, v4

    .line 199
    sget-boolean v0, Lcom/oneplus/keyguard/clock/OpClockCtrl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startSchedule: reason= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", callers= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    .line 201
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ClockCtrl"

    .line 200
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    iget-object v6, p0, Lcom/oneplus/keyguard/clock/OpClockCtrl;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x2

    .line 205
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getAodWindowManager()Lcom/oneplus/aod/OpAodWindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/aod/OpAodWindowManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v12

    const-string v10, "OpClockCtrl.always_on"

    move-object v11, p0

    .line 203
    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method private startUpdate(Ljava/lang/String;)V
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startUpdate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/oneplus/keyguard/clock/OpClockCtrl;->mScreenON:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ClockCtrl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-boolean p1, p0, Lcom/oneplus/keyguard/clock/OpClockCtrl;->mScreenON:Z

    if-eqz p1, :cond_1

    .line 152
    iget-object p1, p0, Lcom/oneplus/keyguard/clock/OpClockCtrl;->mBGHandler:Lcom/oneplus/keyguard/clock/OpClockCtrl$BGHandler;

    if-eqz p1, :cond_0

    const/high16 v0, 0x20000

    .line 153
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 154
    iget-object p1, p0, Lcom/oneplus/keyguard/clock/OpClockCtrl;->mBGHandler:Lcom/oneplus/keyguard/clock/OpClockCtrl$BGHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->dispatchTimeChanged()V

    :cond_1
    return-void
.end method

.method private stopUpdate(Ljava/lang/String;)V
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopUpdate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ClockCtrl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object p0, p0, Lcom/oneplus/keyguard/clock/OpClockCtrl;->mBGHandler:Lcom/oneplus/keyguard/clock/OpClockCtrl$BGHandler;

    if-eqz p0, :cond_0

    const/high16 p1, 0x20000

    .line 164
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getNonUILooper()Landroid/os/Looper;
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/oneplus/keyguard/clock/OpClockCtrl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/keyguard/clock/OpClockCtrl;->mNonUiLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 180
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ClockCtrl thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 182
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/keyguard/clock/OpClockCtrl;->mNonUiLooper:Landroid/os/Looper;

    .line 184
    :cond_0
    iget-object p0, p0, Lcom/oneplus/keyguard/clock/OpClockCtrl;->mNonUiLooper:Landroid/os/Looper;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 185
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onAlarm()V
    .locals 1

    .line 217
    invoke-direct {p0}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->dispatchTimeChanged()V

    const-string v0, "on alarm"

    .line 218
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->startSchedule(Ljava/lang/String;)V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/oneplus/keyguard/clock/OpClockCtrl;->mScreenON:Z

    const-string v0, "ScreenOFF"

    .line 107
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->stopUpdate(Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->cancelSchedule()V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/oneplus/keyguard/clock/OpClockCtrl;->mScreenON:Z

    .line 92
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/keyguard/clock/OpClockCtrl;->mPM:Landroid/os/PowerManager;

    .line 94
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->dispatchTimeChanged()V

    const-string v0, "screen turned on"

    .line 98
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->startSchedule(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "ScreenON"

    .line 101
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->startUpdate(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onStartCtrl(Lcom/oneplus/keyguard/clock/OpClockCtrl$OnTimeUpdatedListener;Landroid/content/Context;)V
    .locals 1

    .line 65
    iput-object p1, p0, Lcom/oneplus/keyguard/clock/OpClockCtrl;->mListener:Lcom/oneplus/keyguard/clock/OpClockCtrl$OnTimeUpdatedListener;

    .line 66
    iget-object p1, p0, Lcom/oneplus/keyguard/clock/OpClockCtrl;->mBGHandler:Lcom/oneplus/keyguard/clock/OpClockCtrl$BGHandler;

    if-nez p1, :cond_0

    .line 67
    new-instance p1, Lcom/oneplus/keyguard/clock/OpClockCtrl$BGHandler;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->getNonUILooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/oneplus/keyguard/clock/OpClockCtrl$BGHandler;-><init>(Lcom/oneplus/keyguard/clock/OpClockCtrl;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oneplus/keyguard/clock/OpClockCtrl;->mBGHandler:Lcom/oneplus/keyguard/clock/OpClockCtrl$BGHandler;

    if-eqz p2, :cond_0

    const-string p1, "power"

    .line 69
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/oneplus/keyguard/clock/OpClockCtrl;->mPM:Landroid/os/PowerManager;

    .line 70
    invoke-virtual {p1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/keyguard/clock/OpClockCtrl;->mScreenON:Z

    .line 72
    const-class p1, Landroid/app/AlarmManager;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/oneplus/keyguard/clock/OpClockCtrl;->mAlarmManager:Landroid/app/AlarmManager;

    :cond_0
    const-string p1, "startCtrl"

    .line 76
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->startUpdate(Ljava/lang/String;)V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    .line 191
    invoke-direct {p0}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->cancelSchedule()V

    return-void
.end method
