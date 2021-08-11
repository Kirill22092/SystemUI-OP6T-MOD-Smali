.class public final synthetic Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$jlPEINewb64o1tvevL779Llyz9o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

.field public final synthetic f$1:Landroid/hardware/SensorManager$DynamicSensorCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/sensors/AsyncSensorManager;Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$jlPEINewb64o1tvevL779Llyz9o;->f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iput-object p2, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$jlPEINewb64o1tvevL779Llyz9o;->f$1:Landroid/hardware/SensorManager$DynamicSensorCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$jlPEINewb64o1tvevL779Llyz9o;->f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iget-object p0, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$jlPEINewb64o1tvevL779Llyz9o;->f$1:Landroid/hardware/SensorManager$DynamicSensorCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/sensors/AsyncSensorManager;->lambda$unregisterDynamicSensorCallbackImpl$2$AsyncSensorManager(Landroid/hardware/SensorManager$DynamicSensorCallback;)V

    return-void
.end method
