.class public Lcom/oneplus/systemui/OpSeekBar;
.super Landroid/widget/SeekBar;
.source "OpSeekBar.java"


# instance fields
.field private DEBUG:Z

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mLastTraceStart:Z

.field private mProgress:I

.field private mSystemVibrateEnabled:Z

.field private mTraceStart:Z

.field private mVibratorLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const-string p1, "systemui.debug.opseekbar"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/systemui/OpSeekBar;->DEBUG:Z

    iput v0, p0, Lcom/oneplus/systemui/OpSeekBar;->mProgress:I

    iput-boolean v0, p0, Lcom/oneplus/systemui/OpSeekBar;->mTraceStart:Z

    iput-boolean v0, p0, Lcom/oneplus/systemui/OpSeekBar;->mLastTraceStart:Z

    iput v0, p0, Lcom/oneplus/systemui/OpSeekBar;->mVibratorLevel:I

    iput-boolean v0, p0, Lcom/oneplus/systemui/OpSeekBar;->mSystemVibrateEnabled:Z

    new-instance p1, Lcom/oneplus/systemui/OpSeekBar$1;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/oneplus/systemui/OpSeekBar$1;-><init>(Lcom/oneplus/systemui/OpSeekBar;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oneplus/systemui/OpSeekBar;->mBackgroundHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "systemui.debug.opseekbar"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/systemui/OpSeekBar;->DEBUG:Z

    iput p2, p0, Lcom/oneplus/systemui/OpSeekBar;->mProgress:I

    iput-boolean p2, p0, Lcom/oneplus/systemui/OpSeekBar;->mTraceStart:Z

    iput-boolean p2, p0, Lcom/oneplus/systemui/OpSeekBar;->mLastTraceStart:Z

    iput p2, p0, Lcom/oneplus/systemui/OpSeekBar;->mVibratorLevel:I

    iput-boolean p2, p0, Lcom/oneplus/systemui/OpSeekBar;->mSystemVibrateEnabled:Z

    new-instance p1, Lcom/oneplus/systemui/OpSeekBar$1;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oneplus/systemui/OpSeekBar$1;-><init>(Lcom/oneplus/systemui/OpSeekBar;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oneplus/systemui/OpSeekBar;->mBackgroundHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "systemui.debug.opseekbar"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/systemui/OpSeekBar;->DEBUG:Z

    iput p2, p0, Lcom/oneplus/systemui/OpSeekBar;->mProgress:I

    iput-boolean p2, p0, Lcom/oneplus/systemui/OpSeekBar;->mTraceStart:Z

    iput-boolean p2, p0, Lcom/oneplus/systemui/OpSeekBar;->mLastTraceStart:Z

    iput p2, p0, Lcom/oneplus/systemui/OpSeekBar;->mVibratorLevel:I

    iput-boolean p2, p0, Lcom/oneplus/systemui/OpSeekBar;->mSystemVibrateEnabled:Z

    new-instance p1, Lcom/oneplus/systemui/OpSeekBar$1;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oneplus/systemui/OpSeekBar$1;-><init>(Lcom/oneplus/systemui/OpSeekBar;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oneplus/systemui/OpSeekBar;->mBackgroundHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p1, "systemui.debug.opseekbar"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/systemui/OpSeekBar;->DEBUG:Z

    iput p2, p0, Lcom/oneplus/systemui/OpSeekBar;->mProgress:I

    iput-boolean p2, p0, Lcom/oneplus/systemui/OpSeekBar;->mTraceStart:Z

    iput-boolean p2, p0, Lcom/oneplus/systemui/OpSeekBar;->mLastTraceStart:Z

    iput p2, p0, Lcom/oneplus/systemui/OpSeekBar;->mVibratorLevel:I

    iput-boolean p2, p0, Lcom/oneplus/systemui/OpSeekBar;->mSystemVibrateEnabled:Z

    new-instance p1, Lcom/oneplus/systemui/OpSeekBar$1;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oneplus/systemui/OpSeekBar$1;-><init>(Lcom/oneplus/systemui/OpSeekBar;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oneplus/systemui/OpSeekBar;->mBackgroundHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/SeekBar;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/SeekBar;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/oneplus/systemui/OpSeekBar;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onProgressChanged(IZ)V
    .locals 3

    iget v0, p0, Lcom/oneplus/systemui/OpSeekBar;->mProgress:I

    if-eq v0, p1, :cond_4

    iput p1, p0, Lcom/oneplus/systemui/OpSeekBar;->mProgress:I

    mul-int/lit8 v0, p1, 0x64

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    div-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xa

    iget-boolean v1, p0, Lcom/oneplus/systemui/OpSeekBar;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onProgressChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " MAX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fromUser:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mTraceStart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/systemui/OpSeekBar;->mTraceStart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " vibratorLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mVibratorLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/systemui/OpSeekBar;->mVibratorLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " VibrateEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/systemui/OpSeekBar;->mSystemVibrateEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpSeekBar"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/systemui/OpSeekBar;->mSystemVibrateEnabled:Z

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lcom/oneplus/systemui/OpSeekBar;->mTraceStart:Z

    if-nez p2, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/systemui/OpSeekBar;->mLastTraceStart:Z

    if-eq v1, p2, :cond_3

    :cond_1
    iget p2, p0, Lcom/oneplus/systemui/OpSeekBar;->mVibratorLevel:I

    if-ne v0, p2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p2

    if-ne p1, p2, :cond_3

    :cond_2
    iget-object p2, p0, Lcom/oneplus/systemui/OpSeekBar;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {p2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iput p1, p2, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Lcom/oneplus/systemui/OpSeekBar;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    iput v0, p0, Lcom/oneplus/systemui/OpSeekBar;->mVibratorLevel:I

    iget-boolean p1, p0, Lcom/oneplus/systemui/OpSeekBar;->mTraceStart:Z

    iput-boolean p1, p0, Lcom/oneplus/systemui/OpSeekBar;->mLastTraceStart:Z

    :cond_4
    return-void
.end method

.method public onStartTrackingTouch()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/common/VibratorSceneUtils;->systemVibrateEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/systemui/OpSeekBar;->mSystemVibrateEnabled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/systemui/OpSeekBar;->mTraceStart:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onStartTrackingTouch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpSeekBar"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStopTrackingTouch()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/systemui/OpSeekBar;->mTraceStart:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onStopTrackingTouch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpSeekBar"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
