.class public Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;
.super Ljava/lang/Object;
.source "HotspotControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/HotspotController;
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_ONEPLUS:Z


# instance fields
.field private mBluetoothRegexs:[Ljava/lang/String;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/HotspotController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDisableByOperator:Z

.field private volatile mHasTetherableWifiRegexs:Z

.field private mHotspotState:I

.field private volatile mIsTetheringSupported:Z

.field private mLastNotificationId:I

.field private final mMainHandler:Landroid/os/Handler;

.field private mNetwork:Landroid/net/Network;

.field private volatile mNumConnectedDevices:I

.field private final mPublicSync:Ljava/lang/Object;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetheredData:Lcom/android/systemui/qs/GlobalSetting;

.field private mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

.field private mTetheringCallback:Landroid/net/TetheringManager$TetheringEventCallback;

.field private final mTetheringManager:Landroid/net/TetheringManager;

.field private mUsbRegexs:[Ljava/lang/String;

.field private mWaitingForTerminalState:Z

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "HotspotController"

    const/4 v1, 0x3

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    .line 87
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mIsTetheringSupported:Z

    .line 99
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHasTetherableWifiRegexs:Z

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mDisableByOperator:Z

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mPublicSync:Ljava/lang/Object;

    .line 120
    new-instance v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mTetheringCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    .line 161
    new-instance v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 222
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    .line 223
    const-class v0, Landroid/net/TetheringManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mTetheringManager:Landroid/net/TetheringManager;

    const-string/jumbo v0, "wifi"

    .line 224
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 225
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mMainHandler:Landroid/os/Handler;

    .line 226
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mTetheringManager:Landroid/net/TetheringManager;

    new-instance p2, Landroid/os/HandlerExecutor;

    invoke-direct {p2, p3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mTetheringCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    invoke-virtual {p1, p2, p0}, Landroid/net/TetheringManager;->registerTetheringEventCallback(Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$TetheringEventCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mIsTetheringSupported:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)Z
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mIsTetheringSupported:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->fireHotspotAvailabilityChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->fireHotspotChangedCallback()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHasTetherableWifiRegexs:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)Z
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHasTetherableWifiRegexs:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Landroid/net/Network;)Landroid/net/Network;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 82
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG_ONEPLUS:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->updateState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mDisableByOperator:Z

    return p0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)Z
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mDisableByOperator:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->fireOperatorChangedCallback(Z)V

    return-void
.end method

.method static synthetic access$800()Z
    .locals 1

    .line 82
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->maybeResetSoftApState()V

    return-void
.end method

.method private fireHotspotAvailabilityChanged()V
    .locals 3

    .line 656
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 657
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 658
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    .line 660
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotSupported()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;->onHotspotAvailabilityChanged(Z)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 658
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private fireHotspotChangedCallback()V
    .locals 5

    .line 415
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 416
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 417
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    .line 419
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotEnabled()Z

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    .line 420
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->getHotspotWifiStandard()I

    move-result v4

    .line 419
    invoke-interface {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;->onHotspotChanged(ZII)V

    goto :goto_0

    .line 423
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->updateState()V

    return-void

    :catchall_0
    move-exception p0

    .line 417
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private fireOperatorChangedCallback(Z)V
    .locals 2

    .line 666
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fireOperatorChangedCallback / enabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / codeStack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HotspotController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 668
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    .line 669
    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;->onOperatorHotspotChanged(Z)V

    goto :goto_0

    .line 671
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getNetworkTransport(Landroid/net/Network;)I
    .locals 1

    .line 428
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 430
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    const/4 p1, 0x0

    .line 431
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x1

    .line 433
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_1

    return p1

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private initRegexs()V
    .locals 4

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 240
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mUsbRegexs:[Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mBluetoothRegexs:[Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWifiRegexs:[Ljava/lang/String;

    .line 244
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    .line 245
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 250
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUSS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    new-instance v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$3;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "TetheredData"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mTetheredData:Lcom/android/systemui/qs/GlobalSetting;

    const/4 v1, 0x1

    .line 262
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mTetheredData:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mDisableByOperator:Z

    :cond_1
    return-void
.end method

.method private synthetic lambda$addCallback$0(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V
    .locals 2

    .line 326
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotEnabled()Z

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    .line 327
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->getHotspotWifiStandard()I

    move-result p0

    .line 326
    invoke-interface {p1, v0, v1, p0}, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;->onHotspotChanged(ZII)V

    return-void
.end method

.method private maybeResetSoftApState()V
    .locals 3

    .line 694
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForTerminalState:Z

    if-nez v0, :cond_0

    return-void

    .line 697
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mTetheringManager:Landroid/net/TetheringManager;

    invoke-virtual {v0, v2}, Landroid/net/TetheringManager;->stopTethering(I)V

    .line 704
    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForTerminalState:Z

    :goto_0
    return-void
.end method

.method private showTetheredNotification(I)V
    .locals 1

    const/4 v0, 0x1

    .line 441
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->showTetheredNotification(IZ)V

    return-void
.end method

.method private static stateToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "FAILED"

    return-object p0

    :pswitch_1
    const-string p0, "ENABLED"

    return-object p0

    :pswitch_2
    const-string p0, "ENABLING"

    return-object p0

    :pswitch_3
    const-string p0, "DISABLED"

    return-object p0

    :pswitch_4
    const-string p0, "DISABLING"

    return-object p0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateState()V
    .locals 14

    const-string v0, "HotspotController"

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v4, v2, :cond_6

    aget-object v8, v1, v4

    .line 178
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mUsbRegexs:[Ljava/lang/String;

    array-length v10, v9

    move v11, v3

    :goto_1
    const/4 v12, 0x1

    if-ge v11, v10, :cond_1

    aget-object v13, v9, v11

    .line 179
    invoke-virtual {v8, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    move v5, v12

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 181
    :cond_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v10, v9

    move v11, v3

    :goto_2
    if-ge v11, v10, :cond_3

    aget-object v13, v9, v11

    .line 182
    invoke-virtual {v8, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    move v7, v12

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 184
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWifiRegexs:[Ljava/lang/String;

    array-length v10, v9

    move v11, v3

    :goto_3
    if-ge v11, v10, :cond_5

    aget-object v13, v9, v11

    .line 185
    invoke-virtual {v8, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    move v6, v12

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 189
    :cond_6
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_7

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateState usbTethered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " wifiTethered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " bluetoothTethered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isHotspotEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/16 v1, 0xe

    if-eqz v5, :cond_a

    if-nez v6, :cond_9

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_8
    const/16 v1, 0xf

    .line 196
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->showTetheredNotification(I)V

    goto :goto_5

    .line 194
    :cond_9
    :goto_4
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->showTetheredNotification(I)V

    goto :goto_5

    :cond_a
    if-eqz v6, :cond_c

    if-eqz v7, :cond_b

    .line 200
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->showTetheredNotification(I)V

    goto :goto_5

    :cond_b
    const v1, 0x33954ba

    .line 203
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->showTetheredNotification(I)V

    goto :goto_5

    :cond_c
    if-eqz v7, :cond_d

    const/16 v1, 0x10

    .line 206
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->showTetheredNotification(I)V

    goto :goto_5

    .line 208
    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->clearTetheredNotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showTetheredNotification e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V
    .locals 4

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    if-eqz p1, :cond_5

    .line 315
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 316
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "HotspotController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_3

    .line 319
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 320
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v2, Landroid/os/HandlerExecutor;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, v2, p0}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    goto :goto_0

    .line 325
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/policy/-$$Lambda$HotspotControllerImpl$C17PPPxxCR-pTmr2izVaDhyC9AQ;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$HotspotControllerImpl$C17PPPxxCR-pTmr2izVaDhyC9AQ;-><init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 332
    :cond_3
    :goto_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUSS()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isOperatorHotspotDisable()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;->onOperatorHotspotChanged(Z)V

    .line 334
    :cond_4
    monitor-exit v0

    return-void

    .line 315
    :cond_5
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 334
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 81
    check-cast p1, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V

    return-void
.end method

.method protected clearTetheredNotification()V
    .locals 4

    .line 641
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    .line 642
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 643
    iget v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mLastNotificationId:I

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 644
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    const/4 v0, 0x0

    .line 646
    iput v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mLastNotificationId:I

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "HotspotController state:"

    .line 285
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  available="

    .line 286
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotSupported()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mHotspotState="

    .line 287
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->stateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mNumConnectedDevices="

    .line 288
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "  mWaitingForTerminalState="

    .line 289
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForTerminalState:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getHotspotWifiStandard()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getNumConnectedDevices()I
    .locals 0

    .line 405
    iget p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    return p0
.end method

.method public isHotspotEnabled()Z
    .locals 1

    .line 360
    iget p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHotspotSupported()Z
    .locals 1

    .line 280
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mIsTetheringSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHasTetherableWifiRegexs:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    .line 281
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHotspotTransient()Z
    .locals 1

    .line 376
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForTerminalState:Z

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I

    const/16 v0, 0xc

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isOperatorHotspotDisable()Z
    .locals 1

    .line 366
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUSS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mDisableByOperator:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$addCallback$0$HotspotControllerImpl(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->lambda$addCallback$0(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V

    return-void
.end method

.method public onBootCompleted()V
    .locals 2

    const-string v0, "HotspotController"

    const-string v1, "onBootComplete"

    .line 233
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->initRegexs()V

    return-void
.end method

.method public onConnectedClientsChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;)V"
        }
    .end annotation

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectedClientsChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HotspotController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    .line 719
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->fireHotspotChangedCallback()V

    return-void
.end method

.method public onStateChanged(II)V
    .locals 2

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChanged state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " failureReason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "HotspotController"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iput p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I

    .line 683
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->maybeResetSoftApState()V

    .line 684
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 687
    iput p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    .line 690
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->fireHotspotChangedCallback()V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 340
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeCallback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HotspotController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 343
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_2

    .line 344
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiManager;->unregisterSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;)V

    .line 346
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 81
    check-cast p1, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V

    return-void
.end method

.method public setHotspotEnabled(Z)V
    .locals 3

    .line 381
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForTerminalState:Z

    const-string v1, "HotspotController"

    if-eqz v0, :cond_1

    .line 382
    sget-boolean p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Ignoring setHotspotEnabled; waiting for terminal state."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 386
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForTerminalState:Z

    .line 387
    sget-boolean p1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "Starting tethering"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mTetheringManager:Landroid/net/TetheringManager;

    new-instance v1, Landroid/net/TetheringManager$TetheringRequest$Builder;

    invoke-direct {v1, v0}, Landroid/net/TetheringManager$TetheringRequest$Builder;-><init>(I)V

    invoke-virtual {v1}, Landroid/net/TetheringManager$TetheringRequest$Builder;->build()Landroid/net/TetheringManager$TetheringRequest;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$4;-><init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/net/TetheringManager;->startTethering(Landroid/net/TetheringManager$TetheringRequest;Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$StartTetheringCallback;)V

    goto :goto_0

    .line 399
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mTetheringManager:Landroid/net/TetheringManager;

    invoke-virtual {p0, v0}, Landroid/net/TetheringManager;->stopTethering(I)V

    :goto_0
    return-void
.end method

.method protected showTetheredNotification(IZ)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    .line 445
    iget-object v3, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    .line 446
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    if-nez v3, :cond_0

    return-void

    .line 450
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showTetheredNotification id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " tetheringOn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " NumConnectedDevices "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HotspotController"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x10

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    const v8, 0x33954ba

    if-eq v0, v8, :cond_1

    .line 466
    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_tether_general:I

    :goto_0
    move v9, v7

    goto :goto_1

    .line 461
    :cond_1
    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_tether_wifi:I

    move v9, v6

    goto :goto_1

    .line 458
    :cond_2
    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_tether_bluetooth:I

    goto :goto_0

    .line 455
    :cond_3
    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_tether_usb:I

    goto :goto_0

    .line 471
    :goto_1
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUST()Z

    move-result v10

    if-eqz v10, :cond_4

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_4

    .line 473
    sget v8, Lcom/android/systemui/R$drawable;->ic_hotspot:I

    .line 476
    :cond_4
    iget v4, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mLastNotificationId:I

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    if-eq v4, v8, :cond_5

    .line 478
    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v5, v4, v10}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 480
    iput v6, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mLastNotificationId:I

    .line 484
    :cond_5
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.settings"

    const-string v10, "com.android.settings.TetherSettings"

    .line 485
    invoke-virtual {v13, v4, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v4, 0x10008000

    .line 486
    invoke-virtual {v13, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 488
    iget-object v11, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget-object v16, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v11 .. v16}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 491
    iget-object v10, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-eqz v2, :cond_1d

    .line 496
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUST()Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0xe

    if-ne v0, v2, :cond_6

    .line 498
    sget v0, Lcom/android/systemui/R$string;->tethered_notification_multi_tether_title:I

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    .line 500
    :cond_6
    sget v0, Lcom/android/systemui/R$string;->tethered_notification_title:I

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    .line 503
    :cond_7
    sget v0, Lcom/android/systemui/R$string;->tethered_notification_title:I

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_2
    new-array v2, v7, [I

    const/16 v11, 0xfe

    aput v11, v2, v6

    .line 506
    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 507
    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNetwork:Landroid/net/Network;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->getNetworkTransport(Landroid/net/Network;)I

    move-result v2

    .line 508
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "showTetheredNotification transport:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "HotspotController"

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    sget v11, Lcom/android/systemui/R$drawable;->stat_sys_tether_wifi:I

    const/4 v12, -0x1

    if-eq v8, v11, :cond_c

    sget v11, Lcom/android/systemui/R$drawable;->ic_hotspot:I

    if-ne v8, v11, :cond_8

    goto :goto_3

    :cond_8
    if-ne v2, v7, :cond_9

    .line 568
    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/systemui/R$string;->tethered_notification_hybrid_sharing_wifi:I

    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    :cond_9
    if-nez v2, :cond_a

    .line 570
    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/systemui/R$string;->tethered_notification_hybrid_sharing_mobile:I

    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    :cond_a
    if-ne v2, v12, :cond_b

    .line 572
    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/systemui/R$string;->tethered_notification_hybrid_sharing_none:I

    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    .line 574
    :cond_b
    sget v2, Lcom/android/systemui/R$string;->tethered_notification_message:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_5

    :cond_c
    :goto_3
    if-ne v2, v7, :cond_f

    .line 512
    iget v2, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    if-nez v2, :cond_d

    .line 513
    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/systemui/R$string;->tethered_notification_sharing_wifi_no:I

    .line 514
    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v10, v7, [Ljava/lang/Object;

    iget v11, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    .line 515
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    .line 513
    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    .line 516
    :cond_d
    iget v2, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    if-ne v2, v7, :cond_e

    .line 517
    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/systemui/R$string;->tethered_notification_sharing_wifi_single:I

    .line 518
    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v10, v7, [Ljava/lang/Object;

    iget v11, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    .line 519
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    .line 517
    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    .line 521
    :cond_e
    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/systemui/R$string;->tethered_notification_sharing_wifi_multi:I

    .line 522
    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v10, v7, [Ljava/lang/Object;

    iget v11, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    .line 523
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    .line 521
    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    :cond_f
    if-nez v2, :cond_12

    .line 526
    iget v2, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    if-nez v2, :cond_10

    .line 527
    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/systemui/R$string;->tethered_notification_sharing_mobile_no:I

    .line 528
    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v10, v7, [Ljava/lang/Object;

    iget v11, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    .line 529
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    .line 527
    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    .line 530
    :cond_10
    iget v2, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    if-ne v2, v7, :cond_11

    .line 531
    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/systemui/R$string;->tethered_notification_sharing_mobile_single:I

    .line 532
    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v10, v7, [Ljava/lang/Object;

    iget v11, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    .line 533
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    .line 531
    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    .line 535
    :cond_11
    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/systemui/R$string;->tethered_notification_sharing_mobile_multi:I

    .line 536
    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v10, v7, [Ljava/lang/Object;

    iget v11, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    .line 537
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    .line 535
    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    :cond_12
    if-ne v2, v12, :cond_15

    .line 540
    iget v2, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    if-nez v2, :cond_13

    .line 541
    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/systemui/R$string;->tethered_notification_sharing_none_no:I

    .line 542
    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v10, v7, [Ljava/lang/Object;

    iget v11, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    .line 543
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    .line 541
    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    .line 544
    :cond_13
    iget v2, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    if-ne v2, v7, :cond_14

    .line 545
    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/systemui/R$string;->tethered_notification_sharing_none_single:I

    .line 546
    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v10, v7, [Ljava/lang/Object;

    iget v11, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    .line 547
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    .line 545
    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    .line 549
    :cond_14
    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/systemui/R$string;->tethered_notification_sharing_none_multi:I

    .line 550
    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v10, v7, [Ljava/lang/Object;

    iget v11, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    .line 551
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    .line 549
    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    .line 554
    :cond_15
    iget v2, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    if-nez v2, :cond_16

    .line 555
    sget v2, Lcom/android/systemui/R$string;->tethered_notification_no_device_message:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_5

    .line 556
    :cond_16
    iget v2, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    if-ne v2, v7, :cond_17

    .line 557
    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/systemui/R$string;->tethered_notification_one_device_message:I

    .line 558
    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v10, v7, [Ljava/lang/Object;

    iget v11, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    .line 559
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    .line 557
    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    .line 561
    :cond_17
    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/systemui/R$string;->tethered_notification_multi_device_message:I

    .line 562
    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v10, v7, [Ljava/lang/Object;

    iget v11, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    .line 563
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    .line 561
    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 578
    :cond_18
    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_tether_wifi:I

    if-eq v8, v2, :cond_1a

    sget v2, Lcom/android/systemui/R$drawable;->ic_hotspot:I

    if-ne v8, v2, :cond_19

    goto :goto_4

    .line 591
    :cond_19
    sget v2, Lcom/android/systemui/R$string;->tethered_notification_message:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_5

    .line 579
    :cond_1a
    :goto_4
    iget v2, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    if-nez v2, :cond_1b

    .line 580
    sget v2, Lcom/android/systemui/R$string;->tethered_notification_no_device_message:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_5

    .line 581
    :cond_1b
    iget v2, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    if-ne v2, v7, :cond_1c

    .line 582
    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/systemui/R$string;->tethered_notification_one_device_message:I

    .line 583
    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v10, v7, [Ljava/lang/Object;

    iget v11, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    .line 584
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    .line 582
    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 586
    :cond_1c
    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/systemui/R$string;->tethered_notification_multi_device_message:I

    .line 587
    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v10, v7, [Ljava/lang/Object;

    iget v11, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    .line 588
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    .line 586
    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 595
    :cond_1d
    sget v0, Lcom/android/systemui/R$string;->disable_tether_notification_title:I

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 596
    sget v2, Lcom/android/systemui/R$string;->disable_tether_notification_message:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 599
    :goto_5
    new-instance v10, Landroid/app/NotificationChannel;

    iget-object v11, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    sget v12, Lcom/android/systemui/R$string;->notification_channel_tethering_status:I

    .line 601
    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    const-string v13, "HOTSPOT_TETHERING_STATUS"

    invoke-direct {v10, v13, v11, v12}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 603
    invoke-virtual {v10, v6}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 604
    invoke-virtual {v10, v5, v5}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 605
    invoke-virtual {v10, v6}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 606
    invoke-virtual {v3, v10}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 608
    iget-object v10, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mPublicSync:Ljava/lang/Object;

    monitor-enter v10

    .line 609
    :try_start_0
    iget-object v11, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    if-nez v11, :cond_1e

    .line 610
    new-instance v11, Landroid/app/Notification$Builder;

    iget-object v12, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    const-string v13, "HOTSPOT_TETHERING_STATUS"

    invoke-direct {v11, v12, v13}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v11, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    const-wide/16 v12, 0x0

    .line 612
    invoke-virtual {v11, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 613
    invoke-virtual {v11, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v11

    iget-object v12, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    const v13, 0x106001c

    .line 614
    invoke-virtual {v12, v13}, Landroid/content/Context;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 616
    invoke-virtual {v11, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v11

    const-string/jumbo v12, "status"

    .line 617
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 619
    :cond_1e
    iget-object v11, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v11, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 620
    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 621
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 622
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 623
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    :try_start_1
    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 627
    :try_start_2
    iget-object v0, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "hide_icon"

    if-nez v9, :cond_1f

    move v6, v7

    :cond_1f
    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v2, v5

    :goto_6
    :try_start_3
    const-string v4, "HotspotController"

    .line 629
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TetheredNotificationBuilder build e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :goto_7
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_20

    .line 634
    iput v8, v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mLastNotificationId:I

    .line 635
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v5, v8, v2, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :cond_20
    return-void

    :catchall_0
    move-exception v0

    .line 631
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
