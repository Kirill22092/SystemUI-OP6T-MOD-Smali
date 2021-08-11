.class public abstract Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;
.super Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;
.source "AudioTrigger.java"


# instance fields
.field protected mAlarmManager:Landroid/app/AlarmManager;

.field protected mAudioManager:Landroid/media/AudioManager;

.field private final mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

.field protected mCheckStartRunnable:Ljava/lang/Runnable;

.field protected mCheckStopRunnable:Ljava/lang/Runnable;

.field private final mCountToCheckPlay:Landroid/app/AlarmManager$OnAlarmListener;

.field protected mDuration:I

.field protected mPlayStart:J

.field protected mPlaybackStateActive:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mDuration:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mPlayStart:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mPlaybackStateActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p2, Lcom/oneplus/aod/utils/bitmoji/triggers/base/-$$Lambda$Cd2L1jcyOZhjAEhNmww-TiuYazQ;

    invoke-direct {p2, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/-$$Lambda$Cd2L1jcyOZhjAEhNmww-TiuYazQ;-><init>(Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;)V

    iput-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mCheckStartRunnable:Ljava/lang/Runnable;

    new-instance p2, Lcom/oneplus/aod/utils/bitmoji/triggers/base/-$$Lambda$u-5f3jXsHJF4qlnXbdMxHvnd3m0;

    invoke-direct {p2, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/-$$Lambda$u-5f3jXsHJF4qlnXbdMxHvnd3m0;-><init>(Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;)V

    iput-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mCheckStopRunnable:Ljava/lang/Runnable;

    new-instance p2, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger$1;

    invoke-direct {p2, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger$1;-><init>(Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;)V

    iput-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mCountToCheckPlay:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance p2, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger$2;

    invoke-direct {p2, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger$2;-><init>(Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;)V

    iput-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    const-class p2, Landroid/app/AlarmManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    iput-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mAlarmManager:Landroid/app/AlarmManager;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->inCondition()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    const-string p2, "audio is active"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mPlayStart:J

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->setPlaybackStateActive(Z)V

    return-void
.end method

.method private setPlaybackStateActive(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mPlaybackStateActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method protected audioStopOrPause()V
    .locals 4

    iget-wide v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mPlayStart:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    const-string v1, "audio stop or pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-wide v2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mPlayStart:J

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->cancelCountToCheckPlay()V

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->getTriggerId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->onTriggerChanged(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method protected cancelCountToCheckPlay()V
    .locals 1

    iget v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mDuration:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mCountToCheckPlay:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mCheckStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method protected cancelDelayToCheckStop()V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mCheckStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected checkAudioActive()V
    .locals 5

    iget-wide v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mPlayStart:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    const-string v0, "not playing yet"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->isAudioActive()Z

    move-result v0

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAudioActive: startTime= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mPlayStart:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", current= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", duration= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isAudioActive= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->getTriggerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->onTriggerChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method protected abstract checkAudioAttributes(Landroid/media/AudioAttributes;)Z
.end method

.method protected checkConfigIsActive(Landroid/media/AudioPlaybackConfiguration;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result p0

    return p0
.end method

.method protected checkStopInner()V
    .locals 5

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->isAudioActive()Z

    move-result v0

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delay to check if audio is stopped. audioActive= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mPlayStart= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mPlayStart:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->audioStopOrPause()V

    :cond_1
    return-void
.end method

.method public dumpDetail(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->dumpDetail(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "duration="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mDuration:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "startTime="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mPlayStart:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mPlayStart:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "currentTime="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isAudioActive="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->isAudioActive()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dynamicConfig([Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    :try_start_0
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mDuration:I

    iget-wide v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mPlayStart:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->isActiveInner()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->checkAudioActive()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mBitmojiManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->getTriggerId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->onTriggerChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    const-string v0, "dynamicConfig: occur error"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    const-string p1, "dynamicConfig: args error"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public getPriority()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method protected inCondition()Z
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->isAudioActive()Z

    move-result p0

    return p0
.end method

.method public init()V
    .locals 2

    invoke-super {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->init()V

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mBitmojiManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/media/AudioManager;->registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public isActiveInner()Z
    .locals 6

    iget-wide v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mPlayStart:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mPlayStart:J

    sub-long/2addr v2, v4

    iget p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mDuration:I

    int-to-long v4, p0

    cmp-long p0, v2, v4

    if-ltz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected isAudioActive()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result p0

    return p0
.end method

.method protected startCountToCheckPlay()V
    .locals 8

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->cancelCountToCheckPlay()V

    iget v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mDuration:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mDuration:I

    int-to-long v5, v0

    add-long/2addr v3, v5

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->tagStartCountToCheckPlay()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mCountToCheckPlay:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mBitmojiManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->acquireWakeLock(J)V

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mCheckStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method protected startDelayToCheckIfStop()V
    .locals 4

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDelayToCheckIfStop: mPlayStart= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mPlayStart:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mPlayStart:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->cancelDelayToCheckStop()V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->acquireWakeLock(J)V

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mCheckStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected abstract tagStartCountToCheckPlay()Ljava/lang/String;
.end method
