.class public Lcom/android/systemui/statusbar/policy/WifiSignalController;
.super Lcom/android/systemui/statusbar/policy/SignalController;
.source "WifiSignalController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;,
        Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiTrafficStateCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/policy/SignalController<",
        "Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;",
        "Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDefaultWifiIconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

.field private final mHasMobileDataFeature:Z

.field private final mOpDefaultWifiIconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

.field private final mWifi4IconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

.field private final mWifi5IconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

.field private final mWifi6IconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

.field private final mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;)V
    .locals 27

    move-object/from16 v6, p0

    move-object/from16 v7, p5

    const-string v1, "WifiSignalController"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 69
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 71
    new-instance v8, Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/systemui/statusbar/policy/-$$Lambda$WifiSignalController$AffzGdHvQakHA4bIzi_tW1MVLCY;

    invoke-direct {v5, v6}, Lcom/android/systemui/statusbar/policy/-$$Lambda$WifiSignalController$AffzGdHvQakHA4bIzi_tW1MVLCY;-><init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;)V

    move-object v0, v8

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move-object/from16 v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/wifi/WifiStatusTracker;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/NetworkScoreManager;Landroid/net/ConnectivityManager;Ljava/lang/Runnable;)V

    iput-object v8, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    const/4 v0, 0x1

    .line 73
    invoke-virtual {v8, v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->setListening(Z)V

    move/from16 v0, p2

    .line 74
    iput-boolean v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mHasMobileDataFeature:Z

    if-eqz v7, :cond_0

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiTrafficStateCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v6, v2}, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiTrafficStateCallback;-><init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;Lcom/android/systemui/statusbar/policy/WifiSignalController$1;)V

    invoke-virtual {v7, v0, v1}, Landroid/net/wifi/WifiManager;->registerTrafficStateCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$TrafficStateCallback;)V

    .line 81
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v9, Lcom/oneplus/systemui/statusbar/policy/OpWifiIcons;->OP_WIFI_SIGNAL_STRENGTH:[[I

    sget-object v10, Lcom/oneplus/systemui/statusbar/policy/OpWifiIcons;->OP_QS_WIFI_SIGNAL_STRENGTH:[[I

    sget-object v11, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    sget v12, Lcom/oneplus/systemui/statusbar/policy/OpWifiIcons;->OP_WIFI_NO_NETWORK:I

    sget v13, Lcom/oneplus/systemui/statusbar/policy/OpWifiIcons;->OP_QS_WIFI_NO_NETWORK:I

    sget v14, Lcom/oneplus/systemui/statusbar/policy/OpWifiIcons;->OP_WIFI_NO_NETWORK:I

    sget v15, Lcom/oneplus/systemui/statusbar/policy/OpWifiIcons;->OP_QS_WIFI_NO_NETWORK:I

    sget v16, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_NO_CONNECTION:I

    const-string v8, "Wi-Fi Icons"

    move-object v7, v0

    invoke-direct/range {v7 .. v16}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mOpDefaultWifiIconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 94
    new-instance v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    sget-object v20, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    sget-object v21, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    sget v22, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_NO_NETWORK:I

    sget v23, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_NO_NETWORK:I

    sget v24, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_NO_NETWORK:I

    sget v25, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_NO_NETWORK:I

    sget v26, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_NO_CONNECTION:I

    const-string v18, "Wi-Fi Icons"

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v26}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mDefaultWifiIconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 106
    new-instance v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v9, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_4_SIGNAL_STRENGTH:[[I

    sget-object v10, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_4_SIGNAL_STRENGTH:[[I

    sget-object v11, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    sget v12, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_NO_NETWORK:I

    sget v13, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_NO_NETWORK:I

    sget v14, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_NO_NETWORK:I

    sget v15, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_NO_NETWORK:I

    sget v16, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_NO_CONNECTION:I

    const-string v8, "Wi-Fi 4 Icons"

    move-object v7, v0

    invoke-direct/range {v7 .. v16}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifi4IconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 118
    new-instance v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v19, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_5_SIGNAL_STRENGTH:[[I

    sget-object v20, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_5_SIGNAL_STRENGTH:[[I

    sget-object v21, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    sget v22, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_NO_NETWORK:I

    sget v23, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_NO_NETWORK:I

    sget v24, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_NO_NETWORK:I

    sget v25, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_NO_NETWORK:I

    sget v26, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_NO_CONNECTION:I

    const-string v18, "Wi-Fi 5 Icons"

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v26}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifi5IconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 130
    new-instance v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v9, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_6_SIGNAL_STRENGTH:[[I

    sget-object v10, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_6_SIGNAL_STRENGTH:[[I

    sget-object v11, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    sget v12, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_NO_NETWORK:I

    sget v13, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_NO_NETWORK:I

    sget v14, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_NO_NETWORK:I

    sget v15, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_NO_NETWORK:I

    sget v16, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_NO_CONNECTION:I

    const-string v8, "Wi-Fi 6 Icons"

    move-object v7, v0

    invoke-direct/range {v7 .. v16}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifi6IconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 142
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mDefaultWifiIconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    return-void
.end method

.method private handleStatusUpdated()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v1, v1, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    .line 261
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public static synthetic lambda$AffzGdHvQakHA4bIzi_tW1MVLCY(Lcom/android/systemui/statusbar/policy/WifiSignalController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->handleStatusUpdated()V

    return-void
.end method

.method private sendConnectedBroadcast()V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/worklife/OPWLBHelper;->getInstance(Landroid/content/Context;)Lcom/oneplus/worklife/OPWLBHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    invoke-virtual {v0, p0}, Lcom/oneplus/worklife/OPWLBHelper;->processWifiConnectivity(Z)V

    return-void
.end method

.method private updateIconGroup()V
    .locals 3

    .line 189
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUSS()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsVisMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xc5

    aput v2, v0, v1

    .line 192
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mDefaultWifiIconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object p0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_2

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiStandard:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 196
    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifi4IconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object p0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_2

    .line 197
    :cond_2
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiStandard:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 198
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isReady:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifi6IconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifi5IconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    :goto_0
    iput-object p0, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_2

    .line 199
    :cond_4
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiStandard:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    .line 200
    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifi6IconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object p0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_2

    .line 202
    :cond_5
    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mDefaultWifiIconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object p0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_2

    .line 190
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mOpDefaultWifiIconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object p0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    :goto_2
    return-void
.end method


# virtual methods
.method protected bridge synthetic cleanState()Lcom/android/systemui/statusbar/policy/SignalController$State;
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->cleanState()Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    move-result-object p0

    return-object p0
.end method

.method protected cleanState()Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;
    .locals 0

    .line 147
    new-instance p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;-><init>()V

    return-object p0
.end method

.method public fetchInitialState()V
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->fetchInitialState()V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    .line 213
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    .line 214
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    .line 215
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    iput v3, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->rssi:I

    .line 216
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->level:I

    iput v3, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 217
    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v1, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    .line 218
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 5

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->handleBroadcast(Landroid/content/Intent;)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    .line 227
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    .line 228
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    .line 229
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    iput v3, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->rssi:I

    .line 230
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->level:I

    iput v3, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 231
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    .line 232
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->wifiStandard:I

    iput v3, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiStandard:I

    .line 233
    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->vhtMax8SpatialStreamsSupport:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->he8ssCapableAp:Z

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isReady:Z

    .line 235
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->updateIconGroup()V

    .line 240
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "wifi_enable_cancel"

    .line 241
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_1

    const-string p1, "WifiSignalController"

    const-string/jumbo v0, "wifi change with cancel. force notify."

    .line 242
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary(Z)V

    goto :goto_1

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    .line 249
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->sendConnectedBroadcast()V

    return-void
.end method

.method public notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 13

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    if-eq v0, v3, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mHasMobileDataFeature:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v0, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->isDefaultNetwork:Z

    if-eqz v0, :cond_2

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-eqz v4, :cond_3

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    move-object v10, v1

    if-eqz v0, :cond_4

    .line 161
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v2

    .line 162
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getContentDescription()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 163
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v5, v5, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    if-nez v5, :cond_5

    .line 164
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->data_connection_no_internet:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 166
    :cond_5
    new-instance v6, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getCurrentIconId()I

    move-result v5

    invoke-direct {v6, v0, v5, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 167
    new-instance v7, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    .line 168
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v5, v5, Lcom/android/settingslib/wifi/WifiStatusTracker;->isCaptivePortal:Z

    if-eqz v5, :cond_6

    sget v5, Lcom/android/systemui/R$drawable;->ic_qs_wifi_disconnected:I

    goto :goto_3

    .line 169
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getQsCurrentIconId()I

    move-result v5

    :goto_3
    invoke-direct {v7, v0, v5, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 171
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_7

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wifi icon res name:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    iget v5, v6, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    invoke-static {v4, v5}, Lcom/oneplus/util/OpUtils;->getResourceName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "WifiSignalController"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v5, v4, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    if-eqz v1, :cond_8

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    if-eqz v0, :cond_8

    move v8, v3

    goto :goto_4

    :cond_8
    move v8, v2

    :goto_4
    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    if-eqz v0, :cond_9

    move v9, v3

    goto :goto_5

    :cond_9
    move v9, v2

    :goto_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v11, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isTransient:Z

    check-cast p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    move-object v4, p1

    invoke-interface/range {v4 .. v12}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method refreshLocale()V
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->refreshLocale()V

    return-void
.end method

.method setActivity(I)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p1, v2, :cond_1

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    :cond_2
    move v1, v3

    :cond_3
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    .line 270
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method
