.class public final synthetic Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$l441pTGMx1gou2inAUrhn1G5pgI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

.field public final synthetic f$1:Landroid/hardware/Sensor;

.field public final synthetic f$2:Landroid/hardware/SensorEventListener;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/sensors/AsyncSensorManager;Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;IILandroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$l441pTGMx1gou2inAUrhn1G5pgI;->f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iput-object p2, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$l441pTGMx1gou2inAUrhn1G5pgI;->f$1:Landroid/hardware/Sensor;

    iput-object p3, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$l441pTGMx1gou2inAUrhn1G5pgI;->f$2:Landroid/hardware/SensorEventListener;

    iput p4, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$l441pTGMx1gou2inAUrhn1G5pgI;->f$3:I

    iput p5, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$l441pTGMx1gou2inAUrhn1G5pgI;->f$4:I

    iput-object p6, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$l441pTGMx1gou2inAUrhn1G5pgI;->f$5:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$l441pTGMx1gou2inAUrhn1G5pgI;->f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$l441pTGMx1gou2inAUrhn1G5pgI;->f$1:Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$l441pTGMx1gou2inAUrhn1G5pgI;->f$2:Landroid/hardware/SensorEventListener;

    iget v3, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$l441pTGMx1gou2inAUrhn1G5pgI;->f$3:I

    iget v4, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$l441pTGMx1gou2inAUrhn1G5pgI;->f$4:I

    iget-object v5, p0, Lcom/android/systemui/util/sensors/-$$Lambda$AsyncSensorManager$l441pTGMx1gou2inAUrhn1G5pgI;->f$5:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/util/sensors/AsyncSensorManager;->lambda$registerListenerImpl$0$AsyncSensorManager(Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;IILandroid/os/Handler;)V

    return-void
.end method
