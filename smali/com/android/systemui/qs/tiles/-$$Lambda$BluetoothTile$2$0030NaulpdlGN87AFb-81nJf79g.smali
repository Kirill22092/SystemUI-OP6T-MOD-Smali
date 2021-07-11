.class public final synthetic Lcom/android/systemui/qs/tiles/-$$Lambda$BluetoothTile$2$0030NaulpdlGN87AFb-81nJf79g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/BluetoothTile$2;

.field public final synthetic f$1:Lcom/android/systemui/qs/tiles/BluetoothTile$BatteryInfo;

.field public final synthetic f$2:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/BluetoothTile$2;Lcom/android/systemui/qs/tiles/BluetoothTile$BatteryInfo;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$BluetoothTile$2$0030NaulpdlGN87AFb-81nJf79g;->f$0:Lcom/android/systemui/qs/tiles/BluetoothTile$2;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$BluetoothTile$2$0030NaulpdlGN87AFb-81nJf79g;->f$1:Lcom/android/systemui/qs/tiles/BluetoothTile$BatteryInfo;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$BluetoothTile$2$0030NaulpdlGN87AFb-81nJf79g;->f$2:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$BluetoothTile$2$0030NaulpdlGN87AFb-81nJf79g;->f$0:Lcom/android/systemui/qs/tiles/BluetoothTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$BluetoothTile$2$0030NaulpdlGN87AFb-81nJf79g;->f$1:Lcom/android/systemui/qs/tiles/BluetoothTile$BatteryInfo;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$BluetoothTile$2$0030NaulpdlGN87AFb-81nJf79g;->f$2:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$2;->lambda$onReceive$0$BluetoothTile$2(Lcom/android/systemui/qs/tiles/BluetoothTile$BatteryInfo;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
