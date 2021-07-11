.class Lcom/android/systemui/util/sensors/ProximitySensor$1;
.super Ljava/lang/Object;
.source "ProximitySensor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/sensors/ProximitySensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/sensors/ProximitySensor;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/sensors/ProximitySensor;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor$1;->this$0:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$1;->this$0:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-static {v0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->access$000(Lcom/android/systemui/util/sensors/ProximitySensor;Landroid/hardware/SensorEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
