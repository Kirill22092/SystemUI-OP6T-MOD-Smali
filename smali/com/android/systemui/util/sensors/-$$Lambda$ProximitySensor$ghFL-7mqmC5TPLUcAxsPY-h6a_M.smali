.class public final synthetic Lcom/android/systemui/util/sensors/-$$Lambda$ProximitySensor$ghFL-7mqmC5TPLUcAxsPY-h6a_M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/sensors/ProximitySensor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/sensors/ProximitySensor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/sensors/-$$Lambda$ProximitySensor$ghFL-7mqmC5TPLUcAxsPY-h6a_M;->f$0:Lcom/android/systemui/util/sensors/ProximitySensor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/sensors/-$$Lambda$ProximitySensor$ghFL-7mqmC5TPLUcAxsPY-h6a_M;->f$0:Lcom/android/systemui/util/sensors/ProximitySensor;

    check-cast p1, Lcom/android/systemui/util/sensors/ProximitySensor$ProximitySensorListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->lambda$alertListeners$0$ProximitySensor(Lcom/android/systemui/util/sensors/ProximitySensor$ProximitySensorListener;)V

    return-void
.end method
