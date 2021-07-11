.class public final synthetic Lcom/android/systemui/util/sensors/-$$Lambda$ProximitySensor$ProximityCheck$ruTS1Tk02_hYvk7mh0KkebUZDkE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/sensors/-$$Lambda$ProximitySensor$ProximityCheck$ruTS1Tk02_hYvk7mh0KkebUZDkE;->f$0:Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/sensors/-$$Lambda$ProximitySensor$ProximityCheck$ruTS1Tk02_hYvk7mh0KkebUZDkE;->f$0:Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;

    check-cast p1, Ljava/util/function/Consumer;

    invoke-static {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->lambda$onProximityEvent$0(Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;Ljava/util/function/Consumer;)V

    return-void
.end method
