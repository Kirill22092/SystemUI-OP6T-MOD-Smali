.class public final synthetic Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$I0ubq9rKvg-slyfuYRTkWnHfBQA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

.field public final synthetic f$1:Landroid/hardware/SensorAdditionalInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/sensors/AsyncSensorManager;Landroid/hardware/SensorAdditionalInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$I0ubq9rKvg-slyfuYRTkWnHfBQA;->f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iput-object p2, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$I0ubq9rKvg-slyfuYRTkWnHfBQA;->f$1:Landroid/hardware/SensorAdditionalInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$I0ubq9rKvg-slyfuYRTkWnHfBQA;->f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iget-object p0, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$I0ubq9rKvg-slyfuYRTkWnHfBQA;->f$1:Landroid/hardware/SensorAdditionalInfo;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/sensors/AsyncSensorManager;->lambda$setOperationParameterImpl$7$AsyncSensorManager(Landroid/hardware/SensorAdditionalInfo;)V

    return-void
.end method
