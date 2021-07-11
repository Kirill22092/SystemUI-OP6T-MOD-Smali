.class public Lcom/android/systemui/qs/tiles/HotspotTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "HotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/HotspotTile$MobileDataContentObserver;,
        Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;,
        Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;,
        Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;
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
.field private static final DEBUG_ONEPLUS:Z


# instance fields
.field private config:Landroid/net/wifi/WifiConfiguration;

.field private mCallBack:Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient$ICallback;

.field private final mCallbacks:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

.field mClient:Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient;

.field private final mDataController:Lcom/android/settingslib/net/DataUsageController;

.field private final mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

.field private final mEnabledStatic:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

.field mIsAuthorizationClient:I

.field private mListening:Z

.field private mMobileDataObserver:Lcom/android/systemui/qs/tiles/HotspotTile$MobileDataContentObserver;

.field protected final mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mNoSimError:Z

.field private mOperatorDialogShowing:Z

.field private final mOverHeatMode:Lcom/android/systemui/qs/GlobalSetting;

.field private mReguireTileToGray:Z

.field protected final mSignalCallback:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mVirtualSimExist:Z

.field private final mWifi4EnabledStatic:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mWifi5EnabledStatic:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mWifi6EnabledStatic:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/qs/tiles/HotspotTile;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/DataSaverController;)V
    .locals 2

    .line 149
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 107
    sget p1, Lcom/android/systemui/R$drawable;->ic_hotspot:I

    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnabledStatic:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 108
    sget p1, Lcom/android/systemui/R$drawable;->ic_wifi_4_hotspot:I

    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifi4EnabledStatic:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 109
    sget p1, Lcom/android/systemui/R$drawable;->ic_wifi_5_hotspot:I

    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifi5EnabledStatic:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 110
    sget p1, Lcom/android/systemui/R$drawable;->ic_wifi_6_hotspot:I

    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifi6EnabledStatic:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 115
    new-instance p1, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Lcom/android/systemui/qs/tiles/HotspotTile$1;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallbacks:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    .line 120
    new-instance p1, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;

    const/4 p1, 0x0

    .line 122
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mVirtualSimExist:Z

    .line 129
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mNoSimError:Z

    .line 130
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mReguireTileToGray:Z

    .line 131
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mOperatorDialogShowing:Z

    const/4 v1, -0x1

    .line 140
    iput v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mIsAuthorizationClient:I

    .line 698
    new-instance v1, Lcom/android/systemui/qs/tiles/HotspotTile$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$3;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallBack:Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient$ICallback;

    .line 150
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 151
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    .line 152
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallbacks:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    invoke-interface {p2, p0, p3}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallbacks:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    invoke-interface {p2, p0, p3}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string/jumbo p3, "wifi"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 157
    const-class p2, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 161
    new-instance p2, Lcom/android/systemui/qs/tiles/HotspotTile$1;

    iget-object p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string v1, "op_overheat_temperature_type"

    invoke-direct {p2, p0, p3, v0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile$1;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mOverHeatMode:Lcom/android/systemui/qs/GlobalSetting;

    .line 169
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getMobileDataController()Lcom/android/settingslib/net/DataUsageController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 170
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 171
    new-instance p2, Lcom/android/systemui/qs/tiles/HotspotTile$MobileDataContentObserver;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$MobileDataContentObserver;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mMobileDataObserver:Lcom/android/systemui/qs/tiles/HotspotTile$MobileDataContentObserver;

    .line 172
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "mobile_data"

    .line 173
    invoke-static {p3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mMobileDataObserver:Lcom/android/systemui/qs/tiles/HotspotTile$MobileDataContentObserver;

    .line 172
    invoke-virtual {p2, p3, p1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 106
    sget-boolean v0, Lcom/android/systemui/qs/tiles/HotspotTile;->DEBUG_ONEPLUS:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/qs/tiles/HotspotTile;Z)Z
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mNoSimError:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/systemui/qs/tiles/HotspotTile;Z)Z
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mReguireTileToGray:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/policy/HotspotController;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/android/systemui/qs/tiles/HotspotTile;Z)Z
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mOperatorDialogShowing:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/HotspotTile;Z)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->onMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->dismissDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2100()Ljava/lang/Object;
    .locals 1

    .line 106
    sget-object v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->config:Landroid/net/wifi/WifiConfiguration;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->config:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSHost;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/HotspotTile;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mVirtualSimExist:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/systemui/qs/tiles/HotspotTile;Z)Z
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mVirtualSimExist:Z

    return p1
.end method

.method private dismissDialog()V
    .locals 0

    .line 783
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p0, :cond_0

    .line 784
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private getMhsProgressDialog()Landroid/app/Dialog;
    .locals 3

    .line 789
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 790
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 791
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->dialog_mhs_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 792
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 793
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 794
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 799
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method private getSecondaryLabel(ZZZI)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    .line 450
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_hotspot_secondary_label_transient:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p3, :cond_1

    .line 452
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_hotspot_secondary_label_data_saver_enabled:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-lez p4, :cond_2

    if-eqz p1, :cond_2

    .line 455
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$plurals;->quick_settings_hotspot_secondary_label_num_devices:I

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 458
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, p3

    .line 455
    invoke-virtual {p0, p1, p4, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 460
    :cond_2
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result p0

    if-nez p0, :cond_3

    :cond_3
    return-object p2
.end method

.method private isHaveProfile()Z
    .locals 9

    .line 597
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isSprintMccMnc(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/oneplus/util/OpUtils;->getMmcMnc(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 600
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 605
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string p0, "apn"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v5

    const/4 p0, 0x4

    new-array v7, p0, [Ljava/lang/String;

    const-string p0, "dun"

    aput-object p0, v7, v2

    aput-object v0, v7, v1

    const/4 p0, 0x2

    const-string v0, "0"

    aput-object v0, v7, p0

    const/4 p0, 0x3

    const-string v0, "3G_HOT"

    aput-object v0, v7, p0

    const/4 v8, 0x0

    const-string/jumbo v6, "type = ? and numeric = ? and user_visible != ? and name != ?"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 607
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 608
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v1

    .line 612
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v2

    .line 601
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "no mccmnc"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isOperatorValid()Z
    .locals 2

    .line 617
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 620
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mNoSimError:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isHaveProfile()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isVerizonSim()Z
    .locals 1

    const-string p0, "ril.sim.carrier.name.slot0"

    .line 803
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "VZW"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$operatorAlertDialog$0(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, -0x1

    .line 660
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/high16 p1, -0x10000

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private onMobileDataEnabled(Z)V
    .locals 4

    .line 685
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMobileDataEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    invoke-direct {v0}, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;-><init>()V

    xor-int/lit8 v1, p1, 0x1

    .line 688
    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->isDataSaverEnabled:Z

    .line 689
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUsvMode onMobileDataEnabled() called with: enabled = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 691
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 692
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    :cond_0
    return-void
.end method

.method private operatorAlertDialog()V
    .locals 6

    .line 627
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mOperatorDialogShowing:Z

    if-eqz v0, :cond_0

    return-void

    .line 632
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mNoSimError:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 633
    sget v0, Lcom/android/systemui/R$string;->hotspot_operator_dialog_nosim_title:I

    .line 634
    sget v2, Lcom/android/systemui/R$string;->hotspot_operator_dialog_nosim_msg:I

    .line 635
    sget v3, Lcom/android/systemui/R$string;->hotspot_operator_dialog_nosim_button:I

    goto :goto_0

    .line 636
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isHaveProfile()Z

    move-result v0

    if-nez v0, :cond_2

    .line 637
    sget v0, Lcom/android/systemui/R$string;->hotspot_operator_dialog_othererror_title:I

    .line 638
    sget v2, Lcom/android/systemui/R$string;->hotspot_operator_dialog_othererror_msg:I

    .line 639
    sget v3, Lcom/android/systemui/R$string;->hotspot_operator_dialog_othererror_button:I

    goto :goto_0

    :cond_2
    move v0, v1

    move v2, v0

    move v3, v2

    .line 644
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 646
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 647
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 648
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/HotspotTile$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$2;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    .line 649
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 654
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 655
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 659
    new-instance v1, Lcom/android/systemui/qs/tiles/-$$Lambda$HotspotTile$27H8jHShXYGUqAqpjyv366eDPu8;

    invoke-direct {v1, v0}, Lcom/android/systemui/qs/tiles/-$$Lambda$HotspotTile$27H8jHShXYGUqAqpjyv366eDPu8;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    const/4 v1, 0x1

    .line 663
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mOperatorDialogShowing:Z

    .line 664
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 476
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_hotspot_changed_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 478
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_hotspot_changed_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 2

    .line 232
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.TETHER_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "from_quick_setting"

    const-string v1, "1"

    .line 233
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x78

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 317
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_hotspot_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 5

    .line 246
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUSS()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    sget-boolean v0, Lcom/android/systemui/qs/tiles/HotspotTile;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleClick / mNoSimError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mNoSimError:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " / !isHaveProfile():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isHaveProfile()Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isOperatorValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v1, "!isOperatorValid() AlertDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    .line 254
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->operatorAlertDialog()V

    .line 255
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void

    .line 260
    :cond_2
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->mCallbackInfo:Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    iget-boolean v0, v0, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->airplaneModeEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-ne v0, v1, :cond_3

    .line 261
    iput v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mIsAuthorizationClient:I

    .line 262
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->mobile_hotspot:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->mobile_hotspot_airplane_off_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->showMHSErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 267
    :cond_3
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-ne v0, v1, :cond_4

    .line 268
    iput v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mIsAuthorizationClient:I

    .line 269
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->mobile_hotspot:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->mobile_hotspot_data_off_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->showMHSErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 272
    :cond_4
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->mCallbackInfo:Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    iget-boolean v0, v0, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->airplaneModeEnabled:Z

    if-eqz v0, :cond_5

    return-void

    .line 276
    :cond_5
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isVerizonSim()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 277
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getMhsProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 278
    new-instance v0, Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallBack:Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient$ICallback;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient;-><init>(Landroid/content/Context;Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient$ICallback;Ljava/lang/Integer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mClient:Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient;

    const-wide/16 v1, 0x61a8

    .line 279
    invoke-virtual {v0, v1, v2}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->sendRequest(J)V

    return-void

    .line 285
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_7

    .line 286
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/DataSaverController;->isDataSaverEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    return-void

    .line 290
    :cond_7
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mVirtualSimExist:Z

    if-eqz v2, :cond_8

    .line 291
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "virtual sim exist. ignore click."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    if-nez v0, :cond_9

    .line 297
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mOverHeatMode:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v2

    if-eqz v2, :cond_9

    .line 298
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->overheat_toast_content:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_9
    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move-object v3, v2

    goto :goto_0

    .line 303
    :cond_a
    sget-object v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 305
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUST()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oneplus/systemui/util/OpTetherUtils;->isWifiEnable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_c

    if-nez v0, :cond_c

    .line 306
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oneplus/systemui/util/OpTetherUtils;->isNeedShowDialog(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 307
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v1}, Lcom/oneplus/systemui/util/OpTetherUtils;->showUstAlertDialog(Landroid/content/Context;Lcom/oneplus/systemui/util/OpTetherUtils$OnDialogConfirmCallback;Z)V

    .line 309
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/systemui/util/OpTetherUtils;->disableTmoWifi(Landroid/content/Context;)V

    .line 312
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    xor-int/2addr v0, v1

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    return-void
.end method

.method protected handleDestroy()V
    .locals 1

    .line 191
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 193
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mMobileDataObserver:Lcom/android/systemui/qs/tiles/HotspotTile$MobileDataContentObserver;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mMobileDataObserver:Lcom/android/systemui/qs/tiles/HotspotTile$MobileDataContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 2

    .line 201
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 202
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 203
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    if-eqz p1, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 217
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mClient:Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient;

    invoke-virtual {v0}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->cancelRequest()V

    .line 219
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->dismissDialog()V

    .line 225
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mOverHeatMode:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 9

    .line 322
    sget-object v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 323
    :goto_0
    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez v3, :cond_1

    .line 324
    new-instance v3, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {v3}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    :cond_1
    if-nez v0, :cond_3

    .line 328
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotTransient()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v1

    :goto_2
    const-string v4, "no_config_tethering"

    .line 337
    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    .line 339
    instance-of v4, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    if-eqz v4, :cond_6

    .line 340
    check-cast p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    if-nez v0, :cond_5

    .line 341
    iget-boolean v0, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->isHotspotEnabled:Z

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    :goto_3
    move v0, v1

    :goto_4
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 342
    iget v0, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->numConnectedDevices:I

    .line 344
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/DataSaverController;->isDataSaverEnabled()Z

    move-result v4

    .line 347
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 348
    iget-boolean v5, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->airplaneModeEnabled:Z

    .line 350
    iget-boolean p2, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->mobileDataEnabled:Z

    goto :goto_7

    :cond_6
    if-nez v0, :cond_8

    .line 355
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_5

    :cond_7
    move p2, v2

    goto :goto_6

    :cond_8
    :goto_5
    move p2, v1

    :goto_6
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 356
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/HotspotController;->getNumConnectedDevices()I

    move-result v0

    .line 357
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/DataSaverController;->isDataSaverEnabled()Z

    move-result v4

    .line 359
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 360
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v5

    move p2, v2

    goto :goto_7

    :cond_9
    move p2, v2

    move v5, p2

    .line 366
    :goto_7
    iget-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    or-int/2addr v6, v3

    iput-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 368
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnabledStatic:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 369
    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->quick_settings_hotspot_label:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 370
    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    .line 371
    iget-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iget-boolean v7, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v7, :cond_a

    if-nez v3, :cond_a

    move v7, v1

    goto :goto_8

    :cond_a
    move v7, v2

    :goto_8
    iput-boolean v7, v6, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 377
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUST()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUSS()Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_9

    .line 379
    :cond_b
    iget-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    if-eqz v6, :cond_c

    const v6, 0x10803ad

    .line 380
    invoke-static {v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_9

    .line 389
    :cond_c
    iget-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v6, :cond_d

    new-array v6, v1, [I

    const/16 v7, 0xc5

    aput v7, v6, v2

    .line 390
    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 394
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifi6EnabledStatic:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 401
    :cond_d
    :goto_9
    const-class v6, Landroid/widget/Switch;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 402
    iget-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    if-nez v4, :cond_f

    .line 410
    iget-boolean v6, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mVirtualSimExist:Z

    if-nez v6, :cond_f

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUSS()Z

    move-result v6

    if-eqz v6, :cond_e

    iget-boolean v6, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mReguireTileToGray:Z

    if-eqz v6, :cond_e

    goto :goto_a

    :cond_e
    move v6, v2

    goto :goto_b

    :cond_f
    :goto_a
    move v6, v1

    .line 414
    :goto_b
    iget-boolean v7, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mVirtualSimExist:Z

    if-eqz v7, :cond_10

    .line 415
    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "virtual sim exist, set to unavailable."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_10
    iget-boolean v7, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v7, :cond_12

    iget-boolean v7, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    if-eqz v7, :cond_11

    goto :goto_c

    :cond_11
    move v7, v2

    goto :goto_d

    :cond_12
    :goto_c
    move v7, v1

    :goto_d
    if-eqz v6, :cond_13

    .line 422
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_f

    .line 424
    :cond_13
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v5, :cond_14

    goto :goto_e

    :cond_14
    if-eqz v7, :cond_15

    const/4 v1, 0x2

    :cond_15
    :goto_e
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 428
    :goto_f
    sget-boolean v1, Lcom/android/systemui/qs/tiles/HotspotTile;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_16

    .line 429
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleUpdateState: state.state="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", state.value="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", state.isTransient="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isTileUnavailable="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isDataSaverEnabled="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isMobileDataEnabled="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isUsvMode="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isUSS="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUSS()Z

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mReguireTileToGray:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mReguireTileToGray:Z

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 429
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_16
    invoke-direct {p0, v7, v3, v4, v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getSecondaryLabel(ZZZI)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 443
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 106
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/HotspotTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/HotspotController;->isOperatorHotspotDisable()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 240
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method

.method public showMHSErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 737
    iget v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mIsAuthorizationClient:I

    if-nez v0, :cond_0

    .line 738
    sget v0, Lcom/android/systemui/R$string;->mhs_app:I

    goto :goto_0

    :cond_0
    const v0, 0x104000a

    .line 743
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$layout;->dialog_checkbox_airplanemode:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 744
    sget v2, Lcom/android/systemui/R$id;->checkbox:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 746
    new-instance v4, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 747
    invoke-virtual {v4, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 748
    invoke-virtual {v4, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 749
    new-instance p1, Lcom/android/systemui/qs/tiles/HotspotTile$4;

    invoke-direct {p1, p0, v2}, Lcom/android/systemui/qs/tiles/HotspotTile$4;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 776
    iget p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mIsAuthorizationClient:I

    const/4 p1, 0x1

    if-nez p0, :cond_1

    const/high16 p0, 0x1040000

    .line 777
    invoke-virtual {v4, p0, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    :cond_1
    if-ne p0, p1, :cond_2

    .line 778
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 779
    :cond_2
    :goto_1
    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    .line 780
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
