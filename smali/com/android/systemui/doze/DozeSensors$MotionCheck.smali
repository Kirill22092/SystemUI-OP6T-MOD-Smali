.class Lcom/android/systemui/doze/DozeSensors$MotionCheck;
.super Ljava/lang/Object;
.source "DozeSensors.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionCheck"
.end annotation


# instance fields
.field private mConfigured:Z

.field private mCurrentState:I

.field private mFinished:Z

.field private mProximityChecking:Z

.field private mPulseReason:I

.field private mRegistered:Z

.field private mSensorType:I

.field final synthetic this$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeSensors;ZI)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->mFinished:Z

    const p1, 0x1fa2654

    iput p1, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->mSensorType:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "choose sensor: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "TYPE_MOTION"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DozeSensors"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p2, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->mConfigured:Z

    iput p3, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->mPulseReason:I

    return-void
.end method

.method private finishWithResult(I)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->mCurrentState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v0, :cond_1

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$300(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$Callback;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->mPulseReason:I

    invoke-interface {v0, v1, v3, v3, v2}, Lcom/android/systemui/doze/DozeSensors$Callback;->onSensorPulse(IFF[F)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->mCurrentState:I

    const/4 v4, 0x2

    if-eqz v0, :cond_2

    if-ne p1, v4, :cond_2

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$300(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$Callback;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->mPulseReason:I

    invoke-interface {v0, v1, v3, v3, v2}, Lcom/android/systemui/doze/DozeSensors$Callback;->onSensorPulse(IFF[F)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->mCurrentState:I

    if-eq v0, v4, :cond_3

    if-ne v0, v1, :cond_4

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$300(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$Callback;

    move-result-object p1

    const/4 v0, -0x1

    invoke-interface {p1, v0, v3, v3, v2}, Lcom/android/systemui/doze/DozeSensors$Callback;->onSensorPulse(IFF[F)V

    const/4 p1, 0x3

    :cond_4
    :goto_0
    iput p1, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->mCurrentState:I

    return-void
.end method

.method private release()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$600(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unregister Motion Sensor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeSensor.MotionCheck"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$600(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->mRegistered:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public check()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->mFinished:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->mRegistered:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->mConfigured:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$600(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->mSensorType:I

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    const-string v0, "DozeSensor.MotionCheck"

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$700()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "No sensor found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->finishWithResult(I)V

    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sensor registered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getMaximumRange()F

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$600(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-result-object v2

    const/4 v5, 0x3

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$800(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v7

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$800(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->mRegistered:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public getCurrentState()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->mCurrentState:I

    return p0
.end method

.method public isListened()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->mRegistered:Z

    return p0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSensorChanged: proximity checking = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->mProximityChecking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeSensor.MotionCheck"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->mProximityChecking:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v2, v0

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$700()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Event has no values!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->finishWithResult(I)V

    goto :goto_0

    :cond_2
    aget v2, v0, v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->finishWithResult(I)V

    goto :goto_0

    :cond_3
    aget v2, v0, v3

    float-to-double v4, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    cmpl-double v2, v4, v6

    if-nez v2, :cond_4

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->finishWithResult(I)V

    goto :goto_0

    :cond_4
    aget v2, v0, v3

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_5

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->finishWithResult(I)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$800(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    aget v0, v0, v3

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->finishWithResult(I)V

    :cond_6
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSensorChanged: value = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resetCurrentState()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->mCurrentState:I

    return-void
.end method

.method public run()V
    .locals 0

    return-void
.end method

.method public setListening(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->check()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->release()V

    :goto_0
    return-void
.end method
