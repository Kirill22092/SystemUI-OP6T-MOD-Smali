.class final Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$GroupClientServiceListener;
.super Ljava/lang/Object;
.source "DeviceGroupClientProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GroupClientServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$GroupClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$GroupClientServiceListener;-><init>(Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$GroupClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    check-cast p2, Landroid/bluetooth/BluetoothDeviceGroup;

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->access$102(Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;Landroid/bluetooth/BluetoothDeviceGroup;)Landroid/bluetooth/BluetoothDeviceGroup;

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$GroupClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->access$202(Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onServiceConnected: mCallingPackage = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$GroupClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    invoke-static {p2}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->access$300(Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DeviceGroupClientProfile"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$GroupClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->access$300(Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.settings"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$GroupClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->access$100(Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;)Landroid/bluetooth/BluetoothDeviceGroup;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$GroupClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->access$400(Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;)Landroid/bluetooth/BluetoothGroupCallback;

    move-result-object p0

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, p0, p2}, Landroid/bluetooth/BluetoothDeviceGroup;->registerGroupClientApp(Landroid/bluetooth/BluetoothGroupCallback;Landroid/os/Handler;)Z

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile$GroupClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;->access$202(Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;Z)Z

    return-void
.end method
