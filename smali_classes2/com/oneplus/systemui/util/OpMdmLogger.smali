.class public Lcom/oneplus/systemui/util/OpMdmLogger;
.super Ljava/lang/Object;
.source "OpMdmLogger.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field private static final DEBUG:Z

.field private static mContext:Landroid/content/Context;

.field private static sAutomatic:Z

.field private static sCurOrien:Ljava/lang/String;

.field private static sFpType:Ljava/lang/String;

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sNpvExpanded:Z

.field private static sQsEvent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sQsExpanded:Z

.field private static sStatusBarPulled:Z

.field private static sTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "debug.mdm.systemui"

    const/4 v1, 0x0

    .line 29
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/systemui/util/OpMdmLogger;->DEBUG:Z

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sQsEvent:Ljava/util/HashMap;

    .line 38
    sput-boolean v1, Lcom/oneplus/systemui/util/OpMdmLogger;->sNpvExpanded:Z

    .line 39
    sput-boolean v1, Lcom/oneplus/systemui/util/OpMdmLogger;->sQsExpanded:Z

    .line 40
    sput-boolean v1, Lcom/oneplus/systemui/util/OpMdmLogger;->sStatusBarPulled:Z

    .line 45
    sput-boolean v1, Lcom/oneplus/systemui/util/OpMdmLogger;->sAutomatic:Z

    const/4 v0, 0x0

    .line 58
    sput-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sFpType:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.AirplaneModeTile"

    const-string v2, "quick_airplane"

    .line 68
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.BatterySaverTile"

    const-string v2, "quick_battery"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.BluetoothTile"

    const-string v2, "quick_bt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.CastTile"

    const-string v2, "quick_cast"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.CellularTile"

    const-string v2, "quick_mobile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.ColorInversionTile"

    const-string v2, "quick_invert"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.DataSaverTile"

    const-string v2, "quick_ds"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.FlashlightTile"

    const-string v2, "quick_fl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.GameModeTile"

    const-string v2, "quick_game"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.HotspotTile"

    const-string v2, "quick_hot"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.LocationTile"

    const-string v2, "quick_location"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.NfcTile"

    const-string v2, "quick_nfc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.NightDisplayTile"

    const-string v2, "quick_night"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.ReadModeTile"

    const-string v2, "quick_read"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.RotationLockTile"

    const-string v2, "quick_ar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.VPNTile"

    const-string v2, "quick_vpn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.WifiTile"

    const-string v2, "quick_wifi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.WorkModeTile"

    const-string v2, "quick_work"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.OtgTile"

    const-string v2, "quick_otg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sFpType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    sput-object p0, Lcom/oneplus/systemui/util/OpMdmLogger;->sFpType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .line 26
    sget-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 26
    sget-boolean v0, Lcom/oneplus/systemui/util/OpMdmLogger;->DEBUG:Z

    return v0
.end method

.method public static brightnessSliderClicked()V
    .locals 3

    .line 285
    sget-boolean v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sAutomatic:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "quick_bright"

    const-string v2, "manual"

    invoke-static {v1, v2, v0}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getOrientationEvent()Ljava/lang/String;
    .locals 1

    .line 237
    invoke-static {}, Lcom/oneplus/systemui/util/OpMdmLogger;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "landscape_pull"

    return-object v0

    :cond_0
    const-string v0, "portrait_pull"

    return-object v0
.end method

.method private static handleQsUpdate(Z)V
    .locals 2

    if-eqz p0, :cond_0

    .line 245
    invoke-static {}, Lcom/oneplus/systemui/util/OpMdmLogger;->getOrientationEvent()Ljava/lang/String;

    move-result-object p0

    const-string v0, "pull_down"

    const-string v1, "1"

    invoke-static {p0, v0, v1}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/oneplus/systemui/util/OpMdmLogger;->initQsEvent()V

    goto :goto_0

    .line 248
    :cond_0
    invoke-static {}, Lcom/oneplus/systemui/util/OpMdmLogger;->reportQsEvents()V

    :goto_0
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 93
    sput-object p0, Lcom/oneplus/systemui/util/OpMdmLogger;->mContext:Landroid/content/Context;

    .line 95
    sget-object p0, Lcom/oneplus/systemui/util/OpMdmLogger;->sHandlerThread:Landroid/os/HandlerThread;

    const-string v0, "MdmLogger"

    if-nez p0, :cond_0

    .line 96
    new-instance p0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object p0, Lcom/oneplus/systemui/util/OpMdmLogger;->sHandlerThread:Landroid/os/HandlerThread;

    .line 97
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 98
    new-instance p0, Landroid/os/Handler;

    sget-object v1, Lcom/oneplus/systemui/util/OpMdmLogger;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p0, Lcom/oneplus/systemui/util/OpMdmLogger;->sHandler:Landroid/os/Handler;

    .line 102
    :cond_0
    invoke-static {}, Lcom/oneplus/systemui/util/OpMdmLogger;->initQsEvent()V

    const-string p0, "MdmLogger is initialized"

    .line 105
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static initQsEvent()V
    .locals 3

    .line 110
    sget-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sQsEvent:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 111
    sget-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sQsEvent:Ljava/util/HashMap;

    const-string v1, "click_tile"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sQsEvent:Ljava/util/HashMap;

    const-string v1, "click_bright"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sQsEvent:Ljava/util/HashMap;

    const-string v1, "click_settings"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sQsEvent:Ljava/util/HashMap;

    const-string v1, "click_notif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sQsEvent:Ljava/util/HashMap;

    const-string v1, "swipe_notif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {}, Lcom/oneplus/systemui/util/OpMdmLogger;->getOrientationEvent()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sCurOrien:Ljava/lang/String;

    return-void
.end method

.method private static isLandscape()Z
    .locals 2

    .line 233
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "X9HFK50WT7"

    .line 123
    invoke-static {p0, p1, p2, v0}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 128
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static {p0, v0, p3}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 136
    sget-boolean v0, Lcom/oneplus/systemui/util/OpMdmLogger;->DEBUG:Z

    const-string v1, "MdmLogger"

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log:tag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", data="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", appId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "lock_unlock_success"

    .line 142
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez p1, :cond_1

    const-string p0, "data map shouldn\'t be null"

    .line 150
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "version"

    const-string v1, "1.0"

    .line 154
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appid"

    .line 157
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object p2, Lcom/oneplus/systemui/util/OpMdmLogger;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/systemui/util/OpMdmLogger$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/oneplus/systemui/util/OpMdmLogger$1;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/HashMap;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static logQsPanel(Ljava/lang/String;)V
    .locals 2

    .line 259
    invoke-static {}, Lcom/oneplus/systemui/util/OpMdmLogger;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "click_settings"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "click_notif"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 263
    :cond_0
    sget-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sQsEvent:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    sget-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sQsEvent:Ljava/util/HashMap;

    const-string v1, "1"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static logQsTile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 186
    sget-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sTagMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 189
    invoke-static {v0, p1, p2}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot get tag from tileTag : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MdmLogger"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static notifyBrightnessMode(Z)V
    .locals 0

    .line 281
    sput-boolean p0, Lcom/oneplus/systemui/util/OpMdmLogger;->sAutomatic:Z

    return-void
.end method

.method public static notifyNpvExpanded(Z)V
    .locals 3

    .line 197
    sget-boolean v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sNpvExpanded:Z

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 200
    sget-boolean v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sStatusBarPulled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 201
    sput-boolean v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sStatusBarPulled:Z

    const-string v0, "landscape_full_screen"

    const-string v1, "status_bar"

    const-string v2, "1"

    .line 202
    invoke-static {v0, v1, v2}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_1
    invoke-static {p0}, Lcom/oneplus/systemui/util/OpMdmLogger;->handleQsUpdate(Z)V

    .line 205
    sput-boolean p0, Lcom/oneplus/systemui/util/OpMdmLogger;->sNpvExpanded:Z

    return-void
.end method

.method public static notifyQsExpanded(Z)V
    .locals 1

    .line 209
    sget-boolean v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sQsExpanded:Z

    if-ne v0, p0, :cond_0

    return-void

    .line 212
    :cond_0
    sget-boolean v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sNpvExpanded:Z

    if-eqz v0, :cond_1

    return-void

    .line 215
    :cond_1
    invoke-static {p0}, Lcom/oneplus/systemui/util/OpMdmLogger;->handleQsUpdate(Z)V

    .line 216
    sput-boolean p0, Lcom/oneplus/systemui/util/OpMdmLogger;->sQsExpanded:Z

    return-void
.end method

.method private static reportQsEvents()V
    .locals 4

    .line 253
    sget-object v0, Lcom/oneplus/systemui/util/OpMdmLogger;->sQsEvent:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 254
    sget-object v2, Lcom/oneplus/systemui/util/OpMdmLogger;->sCurOrien:Ljava/lang/String;

    sget-object v3, Lcom/oneplus/systemui/util/OpMdmLogger;->sQsEvent:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
