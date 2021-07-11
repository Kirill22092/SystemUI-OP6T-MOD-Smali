.class public final Lcom/android/systemui/util/sensors/ProximitySensor_Factory;
.super Ljava/lang/Object;
.source "ProximitySensor_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/util/sensors/ProximitySensor;",
        ">;"
    }
.end annotation


# instance fields
.field private final resourcesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private final sensorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
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
            "Landroid/content/res/Resources;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor_Factory;->resourcesProvider:Ljavax/inject/Provider;

    .line 19
    iput-object p2, p0, Lcom/android/systemui/util/sensors/ProximitySensor_Factory;->sensorManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/sensors/ProximitySensor_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
            ">;)",
            "Lcom/android/systemui/util/sensors/ProximitySensor_Factory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/android/systemui/util/sensors/ProximitySensor_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/sensors/ProximitySensor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
            ">;)",
            "Lcom/android/systemui/util/sensors/ProximitySensor;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/Resources;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/sensors/AsyncSensorManager;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;-><init>(Landroid/content/res/Resources;Lcom/android/systemui/util/sensors/AsyncSensorManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/util/sensors/ProximitySensor;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor_Factory;->resourcesProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor_Factory;->sensorManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/util/sensors/ProximitySensor_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/sensors/ProximitySensor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor_Factory;->get()Lcom/android/systemui/util/sensors/ProximitySensor;

    move-result-object p0

    return-object p0
.end method
