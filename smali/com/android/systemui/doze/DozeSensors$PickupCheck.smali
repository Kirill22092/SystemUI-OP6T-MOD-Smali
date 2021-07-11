.class Lcom/android/systemui/doze/DozeSensors$PickupCheck;
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
    name = "PickupCheck"
.end annotation


# instance fields
.field private mCurrentState:I

.field private mFinished:Z

.field private mMaxRange:F

.field private mProximityChecking:Z

.field private mRegistered:Z

.field private mSensorType:I

.field final synthetic this$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeSensors;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 705
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mFinished:Z

    const p1, 0x1fa2652

    .line 716
    iput p1, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mSensorType:I

    .line 718
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "choose sensor: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "TYPE_PICK_UP"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DozeSensors"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private finishWithResult(I)V
    .locals 4

    .line 771
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    .line 775
    :cond_0
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isAlwaysOnEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 776
    iget v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mCurrentState:I

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 777
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$300(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$Callback;

    move-result-object v0

    const/4 v3, 0x3

    invoke-interface {v0, v3, v2, v2, v1}, Lcom/android/systemui/doze/DozeSensors$Callback;->onSensorPulse(IFF[F)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 779
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$300(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$Callback;

    move-result-object v0

    const/4 v3, -0x1

    invoke-interface {v0, v3, v2, v2, v1}, Lcom/android/systemui/doze/DozeSensors$Callback;->onSensorPulse(IFF[F)V

    .line 785
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mCurrentState:I

    return-void
.end method

.method private release()V
    .locals 2

    .line 801
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$600(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "DozeSensors.PickupCheck"

    const-string v1, "Unregister P Sensor"

    .line 804
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$600(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 806
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mRegistered:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public check()V
    .locals 8

    .line 722
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mFinished:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mRegistered:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$600(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mSensorType:I

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    const-string v0, "DozeSensors.PickupCheck"

    if-nez v4, :cond_2

    .line 725
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$700()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "No sensor found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    .line 726
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->finishWithResult(I)V

    return-void

    :cond_2
    const-string v1, "sensor registered"

    .line 729
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mMaxRange:F

    .line 732
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$600(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-result-object v2

    const/4 v5, 0x3

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    .line 733
    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$800(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v7

    move-object v3, p0

    .line 732
    invoke-virtual/range {v2 .. v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    .line 734
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$800(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 735
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mRegistered:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public isListened()Z
    .locals 0

    .line 789
    iget-boolean p0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mRegistered:Z

    return p0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSensorChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeSensors"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mProximityChecking:Z

    if-eqz v0, :cond_0

    return-void

    .line 746
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    const-string v1, "DozeSensors.PickupCheck"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 747
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$700()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Event has no values!"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->finishWithResult(I)V

    goto :goto_1

    .line 750
    :cond_2
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$700()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event: value="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " max="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mMaxRange:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_3
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    if-nez p1, :cond_4

    move v2, v0

    :cond_4
    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    .line 752
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->finishWithResult(I)V

    :goto_1
    return-void
.end method

.method public run()V
    .locals 0

    return-void
.end method

.method public setListening(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 794
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->check()V

    goto :goto_0

    .line 796
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->release()V

    :goto_0
    return-void
.end method
