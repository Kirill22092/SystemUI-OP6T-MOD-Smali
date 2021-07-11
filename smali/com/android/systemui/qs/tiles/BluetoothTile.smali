.class public Lcom/android/systemui/qs/tiles/BluetoothTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "BluetoothTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;,
        Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothConnectedTileIcon;,
        Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothBatteryTileIcon;,
        Lcom/android/systemui/qs/tiles/BluetoothTile$BatteryInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final BLUETOOTH_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mBatteryInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/qs/tiles/BluetoothTile$BatteryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBindingPodsService:Z

.field private final mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

.field private mConnecttion:Landroid/content/ServiceConnection;

.field private final mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private mCurrentAddress:Ljava/lang/String;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

.field private mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStub:Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;

.field private mTWSPodsHandler:Landroid/os/Handler;

.field private mTWSPodsThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/BluetoothTile;->BLUETOOTH_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0

    .line 315
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 116
    new-instance p1, Lcom/android/systemui/qs/tiles/BluetoothTile$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$1;-><init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mStub:Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;

    .line 167
    new-instance p1, Lcom/android/systemui/qs/tiles/BluetoothTile$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$2;-><init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 239
    new-instance p1, Lcom/android/systemui/qs/tiles/BluetoothTile$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$3;-><init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mConnecttion:Landroid/content/ServiceConnection;

    const/4 p1, 0x0

    .line 272
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mBindingPodsService:Z

    .line 617
    new-instance p1, Lcom/android/systemui/qs/tiles/BluetoothTile$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$4;-><init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .line 316
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 317
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 318
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->createDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    .line 319
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-interface {p1, p2, p3}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string p2, "BluetoothTile.<init>: Creating TWS pods thread ..."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance p1, Landroid/os/HandlerThread;

    const-string/jumbo p2, "tws_pods"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mTWSPodsThread:Landroid/os/HandlerThread;

    .line 323
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 324
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mTWSPodsThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mTWSPodsHandler:Landroid/os/Handler;

    .line 326
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string p2, "BluetoothTile.<init>: Registering for TWS broadcast ..."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

    .line 328
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 331
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mBatteryInfoMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/os/Handler;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mTWSPodsHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/BluetoothTile;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/BluetoothTile;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/qs/tiles/BluetoothTile;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mBindingPodsService:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mStub:Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/BluetoothTile;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mCurrentAddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/BluetoothTile;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/BluetoothTile;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/BluetoothTile;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/BluetoothTile;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->isShowingDetail()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/tiles/BluetoothTile;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/BluetoothTile;Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/tiles/BluetoothTile;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->isShowingDetail()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/content/Context;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    return-object p0
.end method

.method static synthetic access$2500()Landroid/content/Intent;
    .locals 1

    .line 75
    sget-object v0, Lcom/android/systemui/qs/tiles/BluetoothTile;->BLUETOOTH_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/content/Context;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/content/Context;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/content/Context;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/BluetoothTile;Ljava/lang/String;)Lcom/android/systemui/qs/tiles/BluetoothTile$BatteryInfo;
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->getBatteryInfo(Ljava/lang/String;)Lcom/android/systemui/qs/tiles/BluetoothTile$BatteryInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/content/Context;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/BluetoothTile;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/BluetoothTile;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/BluetoothTile;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/BluetoothTile;Ljava/lang/Object;)I
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->getBatteryLevel(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/BluetoothTile;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/BluetoothTile;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private bindOnePlusPodsService(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 4

    .line 275
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindOnePlusPodsService(): mPodsService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", binding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mBindingPodsService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mBindingPodsService:Z

    if-nez v0, :cond_1

    .line 281
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.oneplus.twspods"

    const-string v2, "com.oos.onepluspods.service.MultiDeviceCoreService"

    .line 282
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "address"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 286
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mConnecttion:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 288
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mCurrentAddress:Ljava/lang/String;

    .line 291
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/qs/tiles/-$$Lambda$BluetoothTile$eqFUzQb3kRYA30JP7ri6MkZ1kqI;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$BluetoothTile$eqFUzQb3kRYA30JP7ri6MkZ1kqI;-><init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 293
    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mBindingPodsService:Z

    :cond_1
    return-void
.end method

.method private getBatteryInfo(Ljava/lang/String;)Lcom/android/systemui/qs/tiles/BluetoothTile$BatteryInfo;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 101
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 103
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mBatteryInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mBatteryInfoMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/systemui/qs/tiles/BluetoothTile$BatteryInfo;

    invoke-direct {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile$BatteryInfo;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mBatteryInfoMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BatteryInfo;

    return-object p0
.end method

.method private getBatteryLevel(Ljava/lang/Object;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 153
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 156
    :cond_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x3e8

    if-le p1, v0, :cond_2

    .line 159
    rem-int/lit16 v0, p1, 0x3e8

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p1, 0x1

    mul-int/lit8 v0, v0, 0xa

    .line 163
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBatteryLevel value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " level = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getBatteryString(II)Ljava/lang/String;
    .locals 7

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez p1, :cond_0

    .line 491
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->earphone_support_battery_info_left:I

    new-array v5, v2, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "% "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-lez p2, :cond_1

    .line 494
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->earphone_support_battery_info_right:I

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSecondaryLabel(ZZZZ)Ljava/lang/String;
    .locals 4

    .line 512
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSecondaryLabel: enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", connecting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", transient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 515
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_connecting:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p4, :cond_1

    .line 518
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_bluetooth_secondary_label_transient:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 521
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getConnectedDevices()Ljava/util/List;

    move-result-object p2

    .line 522
    sget-boolean p4, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p4, :cond_2

    .line 523
    iget-object p4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "** getSecondaryLabel: num_connected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", devices: [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 524
    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ], mPodsService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p4, 0x0

    if-eqz p1, :cond_c

    if-eqz p3, :cond_c

    .line 528
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    .line 529
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-le p1, v0, :cond_3

    .line 531
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$plurals;->quick_settings_hotspot_secondary_label_num_devices:I

    .line 533
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    new-array v0, v0, [Ljava/lang/Object;

    .line 534
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p3

    .line 531
    invoke-virtual {p0, p1, p4, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 537
    :cond_3
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 538
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBatteryLevel()I

    move-result p2

    const/4 v1, -0x1

    if-le p2, v1, :cond_8

    .line 543
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mBindingPodsService:Z

    if-nez v1, :cond_5

    .line 545
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mTWSPodsHandler:Landroid/os/Handler;

    if-eqz p2, :cond_4

    .line 546
    new-instance p3, Lcom/android/systemui/qs/tiles/-$$Lambda$BluetoothTile$pgLdrpl2l9ui3HKUmyyLqCB83kM;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/qs/tiles/-$$Lambda$BluetoothTile$pgLdrpl2l9ui3HKUmyyLqCB83kM;-><init>(Lcom/android/systemui/qs/tiles/BluetoothTile;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-object p4

    .line 551
    :cond_5
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/android/systemui/qs/tiles/BluetoothTile;->getBatteryInfo(Ljava/lang/String;)Lcom/android/systemui/qs/tiles/BluetoothTile$BatteryInfo;

    move-result-object p4

    .line 552
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "** getSecondaryLabel: device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", info="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_7

    .line 554
    iget-boolean p1, p4, Lcom/android/systemui/qs/tiles/BluetoothTile$BatteryInfo;->isOnePlusPods:Z

    if-eqz p1, :cond_7

    .line 555
    iget p1, p4, Lcom/android/systemui/qs/tiles/BluetoothTile$BatteryInfo;->leftBattery:I

    .line 556
    iget p4, p4, Lcom/android/systemui/qs/tiles/BluetoothTile$BatteryInfo;->rightBattery:I

    if-gez p1, :cond_6

    if-ltz p4, :cond_7

    .line 565
    :cond_6
    invoke-direct {p0, p1, p4}, Lcom/android/systemui/qs/tiles/BluetoothTile;->getBatteryString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 571
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_bluetooth_secondary_label_battery_level:I

    new-array p4, v0, [Ljava/lang/Object;

    .line 573
    invoke-static {p2}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p4, p3

    .line 571
    invoke-virtual {p0, p1, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 576
    :cond_8
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 578
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isHearingAidDevice()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 579
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_bluetooth_secondary_label_hearing_aids:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 581
    :cond_9
    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 582
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_bluetooth_secondary_label_audio:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 584
    :cond_a
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 585
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_bluetooth_secondary_label_headset:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p1, 0x3

    .line 587
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 588
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_bluetooth_secondary_label_input:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    return-object p4
.end method

.method private synthetic lambda$bindOnePlusPodsService$0()V
    .locals 1

    const/4 v0, 0x0

    .line 292
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mBindingPodsService:Z

    return-void
.end method

.method private synthetic lambda$getSecondaryLabel$2(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 546
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->bindOnePlusPodsService(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method private synthetic lambda$handleDestroy$1()V
    .locals 0

    .line 337
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->unBindOnePlusPodsService()V

    return-void
.end method

.method private unBindOnePlusPodsService()V
    .locals 3

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unBindOnePlusPodsService(): mPodsService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->setIOnePlusUpdate(Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate;)V

    .line 303
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mConnecttion:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 304
    iput-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 307
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error unbindService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 606
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_bluetooth_changed_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 608
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_bluetooth_changed_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected createDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    .line 642
    new-instance v0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 351
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 385
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x71

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 403
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_bluetooth_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 4

    .line 362
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothTransientEnabling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "transient enabling. skip."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 370
    :cond_1
    sget-object v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    if-nez v0, :cond_2

    .line 373
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->setBluetoothTransientEnabling()V

    .line 375
    :cond_2
    sget-boolean v1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_3

    .line 376
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleClick, !isEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->setBluetoothEnabled(Z)V

    return-void
.end method

.method protected handleDestroy()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mTWSPodsHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 337
    new-instance v1, Lcom/android/systemui/qs/tiles/-$$Lambda$BluetoothTile$0xzTgBmK363_YXVbrz1i8wN7z0M;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$BluetoothTile$0xzTgBmK363_YXVbrz1i8wN7z0M;-><init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 339
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleDestroy(): Unregistered for TWS broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 342
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleDestroy(): Stopping TWS pods thread ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mTWSPodsThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mTWSPodsHandler:Landroid/os/Handler;

    .line 346
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->canConfigBluetooth()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 395
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    .line 396
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v1, :cond_1

    .line 397
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->setBluetoothEnabled(Z)V

    :cond_1
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 10

    .line 412
    sget-object v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothConnecting()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 413
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothTransientEnabling()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v2

    :goto_1
    if-nez p2, :cond_3

    .line 415
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v2

    .line 416
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothConnected()Z

    move-result v3

    .line 417
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothConnecting()Z

    move-result v4

    if-nez p2, :cond_5

    if-nez v4, :cond_5

    .line 419
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 420
    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBluetoothState()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_4

    goto :goto_4

    :cond_4
    move v5, v1

    goto :goto_5

    :cond_5
    :goto_4
    move v5, v2

    :goto_5
    iput-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    .line 421
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 422
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 423
    iget-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez v5, :cond_6

    .line 424
    new-instance v5, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {v5}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 426
    :cond_6
    iget-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    xor-int/lit8 v6, v0, 0x1

    iput-boolean v6, v5, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 427
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->quick_settings_bluetooth_label:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 428
    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    .line 429
    invoke-direct {p0, v0, v4, v3, v5}, Lcom/android/systemui/qs/tiles/BluetoothTile;->getSecondaryLabel(ZZZZ)Ljava/lang/String;

    move-result-object v5

    .line 428
    invoke-static {v5}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 430
    iget-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    const-string v5, ""

    .line 431
    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    if-eqz v3, :cond_8

    .line 434
    new-instance v5, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothConnectedTileIcon;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothConnectedTileIcon;-><init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 435
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getConnectedDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 436
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getConnectedDeviceName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 438
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->accessibility_bluetooth_name:I

    new-array v8, v2, [Ljava/lang/Object;

    iget-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    aput-object v9, v8, v1

    .line 439
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    goto :goto_6

    .line 441
    :cond_8
    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    if-eqz v5, :cond_9

    const v5, 0x1080331

    .line 442
    invoke-static {v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 444
    iget-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    goto :goto_6

    .line 451
    :cond_9
    sget v5, Lcom/android/systemui/R$drawable;->op_ic_qs_bluetooth:I

    invoke-static {v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 453
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->accessibility_quick_settings_bluetooth:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 455
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->accessibility_not_connected:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    :goto_6
    const/4 v5, 0x2

    .line 457
    iput v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_7

    .line 463
    :cond_a
    sget v5, Lcom/android/systemui/R$drawable;->op_ic_qs_bluetooth:I

    invoke-static {v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 465
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->accessibility_quick_settings_bluetooth:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 467
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 470
    :goto_7
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$string;->accessibility_quick_settings_open_settings:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 471
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v2, v1

    .line 470
    invoke-virtual {v5, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    .line 472
    const-class v1, Landroid/widget/Switch;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 475
    sget-boolean v1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_b

    .line 476
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bt handleUpdateState end, state.state"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", enabled:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", connected:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", connecting:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", transientEnabling:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", bluetoothState: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 481
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBluetoothState()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 476
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/BluetoothTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    .line 614
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothSupported()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$bindOnePlusPodsService$0$BluetoothTile()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->lambda$bindOnePlusPodsService$0()V

    return-void
.end method

.method public synthetic lambda$getSecondaryLabel$2$BluetoothTile(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->lambda$getSecondaryLabel$2(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public synthetic lambda$handleDestroy$1$BluetoothTile()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->lambda$handleDestroy$1()V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 356
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
