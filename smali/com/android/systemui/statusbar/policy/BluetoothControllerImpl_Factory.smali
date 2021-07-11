.class public final Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;
.super Ljava/lang/Object;
.source "BluetoothControllerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final bgLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
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

.field private final localBluetoothManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mainLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;->bgLooperProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;->mainLooperProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;->localBluetoothManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
            ">;)",
            "Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
            ">;)",
            "Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 45
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    .line 46
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Looper;

    .line 47
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Looper;

    .line 48
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;->bgLooperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;->mainLooperProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;->localBluetoothManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;->get()Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    move-result-object p0

    return-object p0
.end method
