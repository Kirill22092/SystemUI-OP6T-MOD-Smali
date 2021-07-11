.class public final Lcom/android/systemui/util/sensors/ProximitySensor_ProximityCheck_Factory;
.super Ljava/lang/Object;
.source "ProximitySensor_ProximityCheck_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;",
        ">;"
    }
.end annotation


# instance fields
.field private final delayableExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final sensorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/ProximitySensor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/ProximitySensor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor_ProximityCheck_Factory;->sensorProvider:Ljavax/inject/Provider;

    .line 21
    iput-object p2, p0, Lcom/android/systemui/util/sensors/ProximitySensor_ProximityCheck_Factory;->delayableExecutorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/sensors/ProximitySensor_ProximityCheck_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/ProximitySensor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;)",
            "Lcom/android/systemui/util/sensors/ProximitySensor_ProximityCheck_Factory;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/android/systemui/util/sensors/ProximitySensor_ProximityCheck_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor_ProximityCheck_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/ProximitySensor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;)",
            "Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;

    .line 33
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;-><init>(Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor_ProximityCheck_Factory;->sensorProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor_ProximityCheck_Factory;->delayableExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/util/sensors/ProximitySensor_ProximityCheck_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor_ProximityCheck_Factory;->get()Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;

    move-result-object p0

    return-object p0
.end method
