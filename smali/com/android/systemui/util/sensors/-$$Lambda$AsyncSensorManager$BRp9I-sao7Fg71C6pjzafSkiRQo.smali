.class public final synthetic Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$BRp9I-sao7Fg71C6pjzafSkiRQo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

.field public final synthetic f$1:Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

.field public final synthetic f$2:Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$BRp9I-sao7Fg71C6pjzafSkiRQo;->f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iput-object p2, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$BRp9I-sao7Fg71C6pjzafSkiRQo;->f$1:Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    iput-object p3, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$BRp9I-sao7Fg71C6pjzafSkiRQo;->f$2:Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$BRp9I-sao7Fg71C6pjzafSkiRQo;->f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$BRp9I-sao7Fg71C6pjzafSkiRQo;->f$1:Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    iget-object p0, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$BRp9I-sao7Fg71C6pjzafSkiRQo;->f$2:Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/util/sensors/AsyncSensorManager;->lambda$unregisterPluginListener$6$AsyncSensorManager(Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;)V

    return-void
.end method
