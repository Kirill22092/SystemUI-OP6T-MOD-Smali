.class public final Lcom/android/systemui/dagger/SystemServicesModule_ProvideLocalBluetoothControllerFactory;
.super Ljava/lang/Object;
.source "SystemServicesModule_ProvideLocalBluetoothControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final bgHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
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
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/systemui/dagger/SystemServicesModule_ProvideLocalBluetoothControllerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/android/systemui/dagger/SystemServicesModule_ProvideLocalBluetoothControllerFactory;->bgHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideLocalBluetoothControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)",
            "Lcom/android/systemui/dagger/SystemServicesModule_ProvideLocalBluetoothControllerFactory;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/android/systemui/dagger/SystemServicesModule_ProvideLocalBluetoothControllerFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideLocalBluetoothControllerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;"
        }
    .end annotation

    .line 35
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    invoke-static {p0, p1}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideLocalBluetoothControllerFactory;->proxyProvideLocalBluetoothController(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideLocalBluetoothController(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lcom/android/systemui/dagger/SystemServicesModule;->provideLocalBluetoothController(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/android/systemui/dagger/SystemServicesModule_ProvideLocalBluetoothControllerFactory;->contextProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/dagger/SystemServicesModule_ProvideLocalBluetoothControllerFactory;->bgHandlerProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideLocalBluetoothControllerFactory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideLocalBluetoothControllerFactory;->get()Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method
