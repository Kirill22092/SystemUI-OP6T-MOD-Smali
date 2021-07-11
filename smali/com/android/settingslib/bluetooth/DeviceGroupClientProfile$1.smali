.class Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$1;
.super Landroid/bluetooth/BluetoothGroupCallback;
.source "DeviceGroupClientProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;


# direct methods
.method constructor <init>(Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$1;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGroupCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupDiscoveryStatusChanged(III)V
    .locals 2

    const-string v0, "DeviceGroupClientProfile"

    const-string v1, "onGroupDiscoveryStatusChanged()"

    .line 121
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$1;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->access$600(Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchGroupDiscoveryStatusChanged(III)V

    return-void
.end method

.method public onNewGroupFound(ILandroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)V
    .locals 2

    const-string v0, "DeviceGroupClientProfile"

    const-string v1, "onNewGroupFound()"

    .line 104
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$1;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    invoke-static {v1}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->access$500(Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$1;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    invoke-static {v1}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->access$500(Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 111
    :cond_0
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$1;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    invoke-static {p2}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->access$600(Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p2

    iget-object p2, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p2, v1, p1, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchNewGroupFound(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;ILjava/util/UUID;)V

    const-string p2, "Start Group Discovery for Audio capable device"

    .line 113
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$1;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->access$100(Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;)Landroid/bluetooth/BluetoothDeviceGroup;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceGroup;->startGroupDiscovery(I)Z

    return-void
.end method
