.class public Lcom/oneplus/common/SeekBarVibratorHelper;
.super Ljava/lang/Object;
.source "SeekBarVibratorHelper.java"


# static fields
.field private static mInstance:Lcom/oneplus/common/SeekBarVibratorHelper;


# instance fields
.field private mIsOn:Z

.field private recent:I

.field private sliderEnd:I

.field private sliderStart:I

.field private time:J


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/oneplus/common/SeekBarVibratorHelper;->sliderStart:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/oneplus/common/SeekBarVibratorHelper;->sliderEnd:I

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/oneplus/common/SeekBarVibratorHelper;
    .locals 2

    const-class v0, Lcom/oneplus/common/SeekBarVibratorHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oneplus/common/SeekBarVibratorHelper;->mInstance:Lcom/oneplus/common/SeekBarVibratorHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oneplus/common/SeekBarVibratorHelper;

    invoke-direct {v1}, Lcom/oneplus/common/SeekBarVibratorHelper;-><init>()V

    sput-object v1, Lcom/oneplus/common/SeekBarVibratorHelper;->mInstance:Lcom/oneplus/common/SeekBarVibratorHelper;

    :cond_0
    sget-object v1, Lcom/oneplus/common/SeekBarVibratorHelper;->mInstance:Lcom/oneplus/common/SeekBarVibratorHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public doSeekBarVibrate(Landroid/widget/SeekBar;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isTargetProduct(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SeekBarVibratorHelper"

    const-string p1, "doSeekBarVibrate: is not support ,then return"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/appaac/haptic/AACHapticUtils;->getInstance()Lcom/appaac/haptic/AACHapticUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appaac/haptic/AACHapticUtils;->supportRichTap()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    const/16 v1, 0x32

    if-ne p2, v0, :cond_2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p2

    iget v0, p0, Lcom/oneplus/common/SeekBarVibratorHelper;->recent:I

    if-eq p2, v0, :cond_4

    invoke-static {}, Lcom/appaac/haptic/AACHapticUtils;->getInstance()Lcom/appaac/haptic/AACHapticUtils;

    move-result-object p2

    sget-object v0, Lcom/appaac/haptic/HapticEffect$Effect;->EFFECT1:Lcom/appaac/haptic/HapticEffect$Effect;

    invoke-virtual {p2, v0, v1}, Lcom/appaac/haptic/AACHapticUtils;->playExtPrebaked(Lcom/appaac/haptic/HapticEffect$Effect;I)V

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/oneplus/common/SeekBarVibratorHelper$1;

    invoke-direct {v0, p0}, Lcom/oneplus/common/SeekBarVibratorHelper$1;-><init>(Lcom/oneplus/common/SeekBarVibratorHelper;)V

    sget-object v1, Lcom/appaac/haptic/HapticEffect$Effect;->EFFECT1:Lcom/appaac/haptic/HapticEffect$Effect;

    invoke-virtual {v1}, Lcom/appaac/haptic/HapticEffect$Effect;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    iput p1, p0, Lcom/oneplus/common/SeekBarVibratorHelper;->recent:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMin()I

    move-result v0

    if-ne p2, v0, :cond_3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMin()I

    move-result p2

    iget v0, p0, Lcom/oneplus/common/SeekBarVibratorHelper;->recent:I

    if-eq p2, v0, :cond_4

    invoke-static {}, Lcom/appaac/haptic/AACHapticUtils;->getInstance()Lcom/appaac/haptic/AACHapticUtils;

    move-result-object p2

    sget-object v0, Lcom/appaac/haptic/HapticEffect$Effect;->EFFECT1:Lcom/appaac/haptic/HapticEffect$Effect;

    invoke-virtual {p2, v0, v1}, Lcom/appaac/haptic/AACHapticUtils;->playExtPrebaked(Lcom/appaac/haptic/HapticEffect$Effect;I)V

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/oneplus/common/SeekBarVibratorHelper$2;

    invoke-direct {v0, p0}, Lcom/oneplus/common/SeekBarVibratorHelper$2;-><init>(Lcom/oneplus/common/SeekBarVibratorHelper;)V

    sget-object v1, Lcom/appaac/haptic/HapticEffect$Effect;->EFFECT1:Lcom/appaac/haptic/HapticEffect$Effect;

    invoke-virtual {v1}, Lcom/appaac/haptic/HapticEffect$Effect;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMin()I

    move-result p1

    iput p1, p0, Lcom/oneplus/common/SeekBarVibratorHelper;->recent:I

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oneplus/common/SeekBarVibratorHelper;->time:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x14

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget v0, p0, Lcom/oneplus/common/SeekBarVibratorHelper;->recent:I

    if-eq p2, v0, :cond_4

    if-lez p2, :cond_4

    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    iget p1, p0, Lcom/oneplus/common/SeekBarVibratorHelper;->sliderEnd:I

    iget v1, p0, Lcom/oneplus/common/SeekBarVibratorHelper;->sliderStart:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v0, p0, Lcom/oneplus/common/SeekBarVibratorHelper;->sliderStart:I

    add-int/2addr p1, v0

    invoke-static {}, Lcom/appaac/haptic/AACHapticUtils;->getInstance()Lcom/appaac/haptic/AACHapticUtils;

    move-result-object v0

    sget-object v1, Lcom/appaac/haptic/HapticEffect$Effect;->EFFECT11:Lcom/appaac/haptic/HapticEffect$Effect;

    invoke-virtual {v0, v1, p1}, Lcom/appaac/haptic/AACHapticUtils;->playExtPrebaked(Lcom/appaac/haptic/HapticEffect$Effect;I)V

    iput p2, p0, Lcom/oneplus/common/SeekBarVibratorHelper;->recent:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oneplus/common/SeekBarVibratorHelper;->time:J

    :cond_4
    :goto_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/oneplus/util/OpUtils;->isTargetProduct(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SeekBarVibratorHelper"

    const-string p1, "init: is not support ,then return"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/appaac/haptic/AACHapticUtils;->getInstance()Lcom/appaac/haptic/AACHapticUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appaac/haptic/AACHapticUtils;->init(Landroid/content/Context;)Lcom/appaac/haptic/AACHapticUtils;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/common/SeekBarVibratorHelper;->mIsOn:Z

    return-void
.end method

.method public quit()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/common/SeekBarVibratorHelper;->mIsOn:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/appaac/haptic/AACHapticUtils;->getInstance()Lcom/appaac/haptic/AACHapticUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appaac/haptic/AACHapticUtils;->quit()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/common/SeekBarVibratorHelper;->mIsOn:Z

    :cond_0
    return-void
.end method
