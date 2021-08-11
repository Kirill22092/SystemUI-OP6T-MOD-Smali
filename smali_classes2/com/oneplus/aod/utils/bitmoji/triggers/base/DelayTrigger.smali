.class public abstract Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;
.super Lcom/oneplus/aod/utils/bitmoji/triggers/base/CategoryTrigger;
.source "DelayTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger$TriggerUpdateMonitorCallback;
    }
.end annotation


# static fields
.field private static final SYS_DELAY_TIME:I


# instance fields
.field protected mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mInActiveTime:J

.field protected mIsDelayed:Z

.field private mResetAndShow:Ljava/lang/Runnable;

.field protected mTriggerActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "sys.aod.bitmoji.delaytime"

    const v1, 0x927c0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->SYS_DELAY_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/CategoryTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    new-instance p1, Lcom/oneplus/aod/utils/bitmoji/triggers/base/-$$Lambda$DelayTrigger$Gal1il_whCr5i8wA70Byx5LmFKc;

    invoke-direct {p1, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/-$$Lambda$DelayTrigger$Gal1il_whCr5i8wA70Byx5LmFKc;-><init>(Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;)V

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->mResetAndShow:Ljava/lang/Runnable;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->mInActiveTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->mResetAndShow:Ljava/lang/Runnable;

    return-object p0
.end method

.method private hasTimeToDelayShow()Z
    .locals 6

    iget-wide v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->mInActiveTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->mInActiveTime:J

    sub-long/2addr v2, v4

    sget p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->SYS_DELAY_TIME:I

    int-to-long v4, p0

    cmp-long p0, v2, v4

    if-gez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static synthetic lambda$Gal1il_whCr5i8wA70Byx5LmFKc(Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->shouldResetAndShowAfterScreenOff()V

    return-void
.end method

.method private reset(Z)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-wide v1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->mInActiveTime:J

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset: callers= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-wide v3, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->mInActiveTime:J

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->isActiveInner()Z

    move-result p1

    if-nez p1, :cond_2

    iput-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->mTriggerActive:Z

    :cond_2
    iput-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->mIsDelayed:Z

    return-void
.end method

.method private shouldResetAndShowAfterScreenOff()V
    .locals 5

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->isActiveInner()Z

    move-result v0

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->hasTimeToDelayShow()Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->mIsDelayed:Z

    if-eqz v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldResetAndShowAfterScreenOff: isActiveInner= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", hasTimeToDelayShow= "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->mIsDelayed:Z

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->getTriggerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->onTriggerChanged(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public dumpDetail(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "enableDelay="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->enableDelay()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isDelayed="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->mIsDelayed:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "inActiveTime="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->mInActiveTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enableDelay()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract getTriggerId()Ljava/lang/String;
.end method

.method protected getUpdateMonitorCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger$TriggerUpdateMonitorCallback;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger$TriggerUpdateMonitorCallback;-><init>(Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;)V

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-object p0
.end method

.method public init()V
    .locals 1

    invoke-super {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->init()V

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->enableDelay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getKeyguardUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->getUpdateMonitorCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    return-void
.end method

.method public isActive()Z
    .locals 6

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->enableDelay()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->mIsDelayed:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mStartTime:J

    sub-long/2addr v0, v2

    sget v2, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->IMAGE_PER_TIME:I

    int-to-long v2, v2

    sget v4, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->IMAGES_PER_SET:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    const-string v1, "isActive: delay flag is still true but duration is exceed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->isActiveInner()Z

    move-result p0

    return p0
.end method

.method protected abstract isActiveInner()Z
.end method

.method protected onCompleted()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->mIsDelayed:Z

    return-void
.end method

.method protected onTriggerChanged(Ljava/lang/String;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->mTriggerActive:Z

    if-eq v0, p2, :cond_2

    iput-boolean p2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->mTriggerActive:Z

    if-nez p2, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->mIsDelayed:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    const-string p1, "we are in delay progress, block it!"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->mInActiveTime:J

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->reset(Z)V

    :cond_1
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mBitmojiManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->onTriggerChanged(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->reset(Z)V

    return-void
.end method
