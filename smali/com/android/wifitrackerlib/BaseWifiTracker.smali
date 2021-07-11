.class public Lcom/android/wifitrackerlib/BaseWifiTracker;
.super Ljava/lang/Object;
.source "BaseWifiTracker.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;
    }
.end annotation


# static fields
.field private static sVerboseLogging:Z


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected final mConnectivityManager:Landroid/net/ConnectivityManager;

.field protected final mContext:Landroid/content/Context;

.field protected final mMainHandler:Landroid/os/Handler;

.field protected final mMaxScanAgeMillis:J

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field protected final mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private final mRequestedScoreKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/NetworkKey;",
            ">;"
        }
    .end annotation
.end field

.field protected final mScanIntervalMillis:J

.field protected final mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

.field private final mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

.field private final mTag:Ljava/lang/String;

.field protected final mWifiManager:Landroid/net/wifi/WifiManager;

.field protected final mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

.field protected final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static synthetic access$000(Lcom/android/wifitrackerlib/BaseWifiTracker;)Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public static isVerboseLoggingEnabled()Z
    .locals 1

    .line 86
    sget-boolean v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->sVerboseLogging:Z

    return v0
.end method

.method static synthetic lambda$onStart$0(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V
    .locals 0

    .line 235
    invoke-static {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->access$200(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V

    return-void
.end method

.method static synthetic lambda$onStart$1(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V
    .locals 0

    .line 237
    invoke-static {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->access$300(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V

    return-void
.end method

.method static synthetic lambda$onStop$2(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V
    .locals 0

    .line 248
    invoke-static {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->access$300(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V

    return-void
.end method


# virtual methods
.method protected handleOnStart()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 5
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 219
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 220
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 221
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.qualcomm.qti.net.wifi.PARTIAL_SCAN_RESULTS"

    .line 222
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 223
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 224
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    .line 225
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 228
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 230
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    .line 234
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/wifitrackerlib/-$$Lambda$BaseWifiTracker$pw9dhfMm5LbxL1gY1jP_JJmuRkU;

    invoke-direct {v2, v1}, Lcom/android/wifitrackerlib/-$$Lambda$BaseWifiTracker$pw9dhfMm5LbxL1gY1jP_JJmuRkU;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/wifitrackerlib/-$$Lambda$BaseWifiTracker$KvY90710q6wRJD152kDBMW9ndFs;

    invoke-direct {v2, v1}, Lcom/android/wifitrackerlib/-$$Lambda$BaseWifiTracker$KvY90710q6wRJD152kDBMW9ndFs;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    :goto_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/wifitrackerlib/-$$Lambda$S9fuCAjG-YC38JCa05_AkNB8B-E;

    invoke-direct {v1, p0}, Lcom/android/wifitrackerlib/-$$Lambda$S9fuCAjG-YC38JCa05_AkNB8B-E;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStop()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/wifitrackerlib/-$$Lambda$BaseWifiTracker$QlWe0ki0RbTEAz4j0GPGXOVBvC0;

    invoke-direct {v2, v1}, Lcom/android/wifitrackerlib/-$$Lambda$BaseWifiTracker$QlWe0ki0RbTEAz4j0GPGXOVBvC0;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 249
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 250
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 251
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/net/NetworkScoreManager;->unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    .line 253
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mRequestedScoreKeys:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/wifitrackerlib/-$$Lambda$gWMviBWa7YejsjM1KbUOIv9j1JA;

    invoke-direct {v1, p0}, Lcom/android/wifitrackerlib/-$$Lambda$gWMviBWa7YejsjM1KbUOIv9j1JA;-><init>(Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
