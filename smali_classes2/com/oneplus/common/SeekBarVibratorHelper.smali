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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 14
    iput v0, p0, Lcom/oneplus/common/SeekBarVibratorHelper;->sliderStart:I

    const/16 v0, 0x50

    .line 15
    iput v0, p0, Lcom/oneplus/common/SeekBarVibratorHelper;->sliderEnd:I

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/oneplus/common/SeekBarVibratorHelper;
    .locals 2

    const-class v0, Lcom/oneplus/common/SeekBarVibratorHelper;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/oneplus/common/SeekBarVibratorHelper;->mInstance:Lcom/oneplus/common/SeekBarVibratorHelper;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/oneplus/common/SeekBarVibratorHelper;

    invoke-direct {v1}, Lcom/oneplus/common/SeekBarVibratorHelper;-><init>()V

    sput-object v1, Lcom/oneplus/common/SeekBarVibratorHelper;->mInstance:Lcom/oneplus/common/SeekBarVibratorHelper;

    .line 33
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

    .line 63
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isTargetProduct(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SeekBarVibratorHelper"

    const-string p1, "doSeekBarVibrate: is not support ,then return"

    .line 64
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 68
    :cond_0
    invoke-static {}, Lcom/appaac/haptic/AACHapticUtils;->getInstance()Lcom/appaac/haptic/AACHapticUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appaac/haptic/AACHapticUtils;->supportRichTap()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 71
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    const/16 v1, 0x32

    if-ne p2, v0, :cond_2

    .line 72
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p2

    iget v0, p0, Lcom/oneplus/common/SeekBarVibratorHelper;->recent:I

    if-eq p2, v0, :cond_4

    .line 73
    invoke-static {}, Lcom/appaac/haptic/AACHapticUtils;->getInstance()Lcom/appaac/haptic/AACHapticUtils;

    move-result-object p2

    sget-object v0, Lcom/appaac/haptic/HapticEffect$Effect;->EFFECT1:Lcom/appaac/haptic/HapticEffect$Effect;

    invoke-virtual {p2, v0, v1}, Lcom/appaac/haptic/AACHapticUtils;->playExtPrebaked(Lcom/appaac/haptic/HapticEffect$Effect;I)V

    .line 74
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/oneplus/common/SeekBarVibratorHelper$1;

    invoke-direct {v0, p0}, Lcom/oneplus/common/SeekBarVibratorHelper$1;-><init>(Lcom/oneplus/common/SeekBarVibratorHelper;)V

    sget-object v1, Lcom/appaac/haptic/HapticEffect$Effect;->EFFECT1:Lcom/appaac/haptic/HapticEffect$Effect;

    .line 79
    invoke-virtual {v1}, Lcom/appaac/haptic/HapticEffect$Effect;->getDuration()I

    move-result v1

    int-to-long v1, v1

    .line 74
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    iput p1, p0, Lcom/oneplus/common/SeekBarVibratorHelper;->recent:I

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMin()I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 84
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMin()I

    move-result p2

    iget v0, p0, Lcom/oneplus/common/SeekBarVibratorHelper;->recent:I

    if-eq p2, v0, :cond_4

    .line 85
    invoke-static {}, Lcom/appaac/haptic/AACHapticUtils;->getInstance()Lcom/appaac/haptic/AACHapticUtils;

    move-result-object p2

    sget-object v0, Lcom/appaac/haptic/HapticEffect$Effect;->EFFECT1:Lcom/appaac/haptic/HapticEffect$Effect;

    invoke-virtual {p2, v0, v1}, Lcom/appaac/haptic/AACHapticUtils;->playExtPrebaked(Lcom/appaac/haptic/HapticEffect$Effect;I)V

    .line 86
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/oneplus/common/SeekBarVibratorHelper$2;

    invoke-direct {v0, p0}, Lcom/oneplus/common/SeekBarVibratorHelper$2;-><init>(Lcom/oneplus/common/SeekBarVibratorHelper;)V

    sget-object v1, Lcom/appaac/haptic/HapticEffect$Effect;->EFFECT1:Lcom/appaac/haptic/HapticEffect$Effect;

    .line 91
    invoke-virtual {v1}, Lcom/appaac/haptic/HapticEffect$Effect;->getDuration()I

    move-result v1

    int-to-long v1, v1

    .line 86
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMin()I

    move-result p1

    iput p1, p0, Lcom/oneplus/common/SeekBarVibratorHelper;->recent:I

    goto :goto_0

    .line 95
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oneplus/common/SeekBarVibratorHelper;->time:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x14

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 99
    iget v0, p0, Lcom/oneplus/common/SeekBarVibratorHelper;->recent:I

    if-eq p2, v0, :cond_4

    if-lez p2, :cond_4

    int-to-float v0, p2

    .line 100
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

    .line 101
    invoke-static {}, Lcom/appaac/haptic/AACHapticUtils;->getInstance()Lcom/appaac/haptic/AACHapticUtils;

    move-result-object v0

    sget-object v1, Lcom/appaac/haptic/HapticEffect$Effect;->EFFECT11:Lcom/appaac/haptic/HapticEffect$Effect;

    invoke-virtual {v0, v1, p1}, Lcom/appaac/haptic/AACHapticUtils;->playExtPrebaked(Lcom/appaac/haptic/HapticEffect$Effect;I)V

    .line 102
    iput p2, p0, Lcom/oneplus/common/SeekBarVibratorHelper;->recent:I

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oneplus/common/SeekBarVibratorHelper;->time:J

    :cond_4
    :goto_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-static {p1}, Lcom/oneplus/util/OpUtils;->isTargetProduct(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SeekBarVibratorHelper"

    const-string p1, "init: is not support ,then return"

    .line 39
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 43
    :cond_0
    invoke-static {}, Lcom/appaac/haptic/AACHapticUtils;->getInstance()Lcom/appaac/haptic/AACHapticUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appaac/haptic/AACHapticUtils;->init(Landroid/content/Context;)Lcom/appaac/haptic/AACHapticUtils;

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/oneplus/common/SeekBarVibratorHelper;->mIsOn:Z

    return-void
.end method

.method public quit()V
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/oneplus/common/SeekBarVibratorHelper;->mIsOn:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lcom/appaac/haptic/AACHapticUtils;->getInstance()Lcom/appaac/haptic/AACHapticUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appaac/haptic/AACHapticUtils;->quit()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/oneplus/common/SeekBarVibratorHelper;->mIsOn:Z

    :cond_0
    return-void
.end method
