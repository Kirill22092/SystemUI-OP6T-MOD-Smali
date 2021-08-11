.class public abstract Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;
.super Ljava/lang/Object;
.source "Trigger.java"


# static fields
.field public static final IMAGES_PER_SET:I

.field public static final IMAGE_PER_TIME:I


# instance fields
.field protected mBitmojiManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

.field protected mContext:Landroid/content/Context;

.field protected mStartTime:J

.field protected final mTag:Ljava/lang/String;

.field protected mTimeIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "sys.aod.bitmoji.imageset"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->IMAGES_PER_SET:I

    sget v0, Lcom/oneplus/keyguard/clock/OpClockCtrl;->TIME_CHANGED_INTERVAL:I

    mul-int/lit8 v0, v0, 0x4

    const-string v1, "sys.aod.bitmoji.refreshtime"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->IMAGE_PER_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mBitmojiManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    return-void
.end method

.method private updateImageList()V
    .locals 7

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getCurrentIndex()I

    move-result v0

    iget v1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTimeIndex:I

    if-eq v1, v0, :cond_2

    iput v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTimeIndex:I

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getCurrentImageArray()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "updateImageList: timeIndex= "

    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    array-length v5, v1

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getUsedImageCount()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    aget-object v4, v1, v3

    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v1, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    aput-object v4, v1, v5

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->upateUsedImageCount(I)V

    :cond_0
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", arrayIndex= "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", usedImageCount= "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getUsedImageCount()I

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", imageList is empty right now"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected acquireWakeLock(J)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mBitmojiManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->getWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method

.method public complete()Z
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getCurrentIndex()I

    move-result v0

    sget v1, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->IMAGES_PER_SET:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->onCompleted()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->updateImageList()V

    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startTime="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mStartTime:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timeIndex="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTimeIndex:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usedImageCount= "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getUsedImageCount()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->dumpDetail(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getCurrentImageArray()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "imageList size="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "imageList is empty"

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isActive="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->isActive()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "priority="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getPriority()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public dumpDetail(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public dynamicConfig([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract getCurrentImageArray()[Ljava/lang/String;
.end method

.method protected getCurrentIndex()I
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mStartTime:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    const-string v0, "getCurrentIndex: currentTime is smaller then startTime."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    sub-long v2, v0, v2

    sget v4, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->IMAGE_PER_TIME:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    sget v3, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->IMAGES_PER_SET:I

    const-string v4, ", index= "

    if-ge v2, v3, :cond_3

    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_2

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentIndex: currentTime= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    :cond_3
    iget-object v3, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentIndex: mStartTime= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mStartTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", currentTime= "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is bigger than IMAGES_PER_SET"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->IMAGES_PER_SET:I

    return p0
.end method

.method public abstract getCurrentPackId()Ljava/lang/String;
.end method

.method protected getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mBitmojiManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method protected getHelper()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;
    .locals 0

    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object p0

    return-object p0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getCurrentImageArray()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getKeyguardUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mBitmojiManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->getKeyguardUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    return-object p0
.end method

.method public abstract getMdmLabel()Ljava/lang/String;
.end method

.method public abstract getPriority()I
.end method

.method protected abstract getUsedImageCount()I
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public isActive()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onCompleted()V
    .locals 0

    return-void
.end method

.method public abstract onImagePackUpdate(Ljava/lang/String;)V
.end method

.method public prepare()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    rem-long/2addr v0, v2

    long-to-int v0, v0

    sget v1, Lcom/oneplus/keyguard/clock/OpClockCtrl;->TIME_CHANGED_INTERVAL:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mStartTime:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mStartTime:J

    :cond_0
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare: startTime= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mStartTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", timeDiff= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTimeIndex:I

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->updateImageList()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTimeIndex:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected abstract upateUsedImageCount(I)V
.end method
