.class public final synthetic Lcom/android/systemui/doze/-$$Lambda$DozeSensors$eWcsfaBj95QArTbTaV_jJjjsPh4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/util/sensors/ProximitySensor$ProximitySensorListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeSensors;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$eWcsfaBj95QArTbTaV_jJjjsPh4;->f$0:Lcom/android/systemui/doze/DozeSensors;

    return-void
.end method


# virtual methods
.method public final onSensorEvent(Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$eWcsfaBj95QArTbTaV_jJjjsPh4;->f$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeSensors;->lambda$new$0$DozeSensors(Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;)V

    return-void
.end method
