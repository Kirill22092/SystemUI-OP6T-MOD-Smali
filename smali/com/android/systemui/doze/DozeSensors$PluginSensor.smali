.class Lcom/android/systemui/doze/DozeSensors$PluginSensor;
.super Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
.source "DozeSensors.java"

# interfaces
.implements Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PluginSensor"
.end annotation


# instance fields
.field private mDebounce:J

.field final mPluginSensor:Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

.field final synthetic this$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Ljava/lang/String;ZIZZJLcom/android/systemui/doze/DozeLog;)V
    .locals 10

    move-object v9, p0

    move-object v1, p1

    .line 1215
    iput-object v1, v9, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p10

    .line 1216
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZIZZLcom/android/systemui/doze/DozeLog;)V

    move-object v0, p2

    .line 1218
    iput-object v0, v9, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->mPluginSensor:Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    move-wide/from16 v0, p8

    .line 1219
    iput-wide v0, v9, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->mDebounce:J

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Ljava/lang/String;ZIZZLcom/android/systemui/doze/DozeLog;)V
    .locals 11

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v10, p8

    .line 1209
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/doze/DozeSensors$PluginSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Ljava/lang/String;ZIZZJLcom/android/systemui/doze/DozeLog;)V

    return-void
.end method

.method private synthetic lambda$onSensorChanged$0(Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;)V
    .locals 6

    .line 1265
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1266
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeSensors;->access$1600(Lcom/android/systemui/doze/DozeSensors;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->mDebounce:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    const-string v1, "DozeSensors"

    if-gez v0, :cond_0

    .line 1267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSensorEvent dropped: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->triggerEventToString(Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1270
    :cond_0
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$700()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSensorEvent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->triggerEventToString(Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$300(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$Callback;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mPulseReason:I

    invoke-virtual {p1}, Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;->getValues()[F

    move-result-object p1

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {v0, p0, v1, v1, p1}, Lcom/android/systemui/doze/DozeSensors$Callback;->onSensorPulse(IFF[F)V

    return-void
.end method

.method private triggerEventToString(Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1250
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "PluginTriggerEvent["

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1251
    invoke-virtual {p1}, Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;->getSensor()Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1252
    invoke-virtual {p1}, Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;->getVendorType()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1253
    invoke-virtual {p1}, Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;->getValues()[F

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 1254
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;->getValues()[F

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1255
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;->getValues()[F

    move-result-object v2

    aget v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x5d

    .line 1258
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public synthetic lambda$onSensorChanged$0$DozeSensors$PluginSensor(Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->lambda$onSensorChanged$0(Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;)V

    return-void
.end method

.method public onSensorChanged(Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;)V
    .locals 3

    .line 1263
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mPulseReason:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeLog;->traceSensor(I)V

    .line 1264
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$800(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeSensors;->access$1300(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$PluginSensor$EFDqlQhDL6RwEmmtbTd8M88V_8Y;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$PluginSensor$EFDqlQhDL6RwEmmtbTd8M88V_8Y;-><init>(Lcom/android/systemui/doze/DozeSensors$PluginSensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{mRegistered="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRequested="

    .line 1241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDisabled="

    .line 1242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mConfigured="

    .line 1243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIgnoresSetting="

    .line 1244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mIgnoresSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSensor="

    .line 1245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->mPluginSensor:Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateListening()V
    .locals 3

    .line 1224
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    if-nez v0, :cond_0

    return-void

    .line 1225
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$600(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-result-object v0

    .line 1226
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequested:Z

    const-string v2, "DozeSensors"

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mDisabled:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->enabledBySetting()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mIgnoresSetting:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    if-nez v1, :cond_2

    .line 1228
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->mPluginSensor:Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/util/sensors/AsyncSensorManager;->registerPluginListener(Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;)Z

    const/4 v0, 0x1

    .line 1229
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    .line 1230
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$700()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "registerPluginListener"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1231
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    if-eqz v1, :cond_3

    .line 1232
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->mPluginSensor:Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/util/sensors/AsyncSensorManager;->unregisterPluginListener(Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;)V

    const/4 v0, 0x0

    .line 1233
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    .line 1234
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$700()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string/jumbo p0, "unregisterPluginListener"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
