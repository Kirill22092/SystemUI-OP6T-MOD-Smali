.class public final synthetic Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$rUtRem6mSTBr22Jz6SCHZv3qC7c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

.field public final synthetic f$1:Landroid/hardware/TriggerEventListener;

.field public final synthetic f$2:Landroid/hardware/Sensor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/sensors/AsyncSensorManager;Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$rUtRem6mSTBr22Jz6SCHZv3qC7c;->f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iput-object p2, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$rUtRem6mSTBr22Jz6SCHZv3qC7c;->f$1:Landroid/hardware/TriggerEventListener;

    iput-object p3, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$rUtRem6mSTBr22Jz6SCHZv3qC7c;->f$2:Landroid/hardware/Sensor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$rUtRem6mSTBr22Jz6SCHZv3qC7c;->f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$rUtRem6mSTBr22Jz6SCHZv3qC7c;->f$1:Landroid/hardware/TriggerEventListener;

    iget-object p0, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$rUtRem6mSTBr22Jz6SCHZv3qC7c;->f$2:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/util/sensors/AsyncSensorManager;->lambda$cancelTriggerSensorImpl$4$AsyncSensorManager(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method
