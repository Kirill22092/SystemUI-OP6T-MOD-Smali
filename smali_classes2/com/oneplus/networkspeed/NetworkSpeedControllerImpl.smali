.class public Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "NetworkSpeedControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/oneplus/networkspeed/NetworkSpeedController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;,
        Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;,
        Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static ERTRY_POINT:J = 0x0L

.field private static HANDRED:I = 0x0

.field private static TAG:Ljava/lang/String; = "NetworkSpeedController"

.field private static TEN:I

.field private static THOUSAND:I

.field private static UNIT_GB:Ljava/lang/String;

.field private static UNIT_KB:Ljava/lang/String;

.field private static UNIT_MB:Ljava/lang/String;

.field private static UPDATE_INTERVAL:I


# instance fields
.field private MSG_MAYBE_STOP_NETWORTSPEED:I

.field private MSG_UPDATE_NETWORTSPEED:I

.field private MSG_UPDATE_SHOW:I

.field private MSG_UPDATE_SPEED_ON_BG:I

.field private mBackgroundHandler:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;

.field private mBlockNetworkSpeed:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;

.field private mHotSpotEnable:Z

.field private mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private mIsFirstLoad:Z

.field private mLastNetworkConnected:Z

.field private final mNetworkSpeedStateCallBack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/networkspeed/NetworkSpeedController$INetworkSpeedStateCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkTraceState:Z

.field private mShow:Z

.field private mSpeed:Ljava/lang/String;

.field private mSpeedMachine:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->DEBUG:Z

    const/16 v0, 0xa

    .line 38
    sput v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TEN:I

    const/16 v0, 0x64

    .line 39
    sput v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->HANDRED:I

    const/16 v0, 0x3e8

    .line 40
    sput v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->THOUSAND:I

    const-wide/16 v0, 0x400

    .line 42
    sput-wide v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->ERTRY_POINT:J

    const-string v0, "KB"

    .line 46
    sput-object v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->UNIT_KB:Ljava/lang/String;

    const-string v0, "MB"

    .line 47
    sput-object v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->UNIT_MB:Ljava/lang/String;

    const-string v0, "GB"

    .line 48
    sput-object v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->UNIT_GB:Ljava/lang/String;

    const/4 v0, 0x3

    .line 60
    sput v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->UPDATE_INTERVAL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 88
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, ""

    .line 52
    iput-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 53
    iput v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->MSG_UPDATE_NETWORTSPEED:I

    const/16 v0, 0x3e9

    .line 54
    iput v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->MSG_MAYBE_STOP_NETWORTSPEED:I

    const/16 v0, 0x3ea

    .line 55
    iput v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->MSG_UPDATE_SHOW:I

    const/16 v0, 0x7d1

    .line 57
    iput v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->MSG_UPDATE_SPEED_ON_BG:I

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mIsFirstLoad:Z

    .line 63
    new-instance v1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;-><init>(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mHandler:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;

    .line 65
    new-instance v1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;-><init>(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mBackgroundHandler:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;

    .line 66
    new-instance v1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;

    invoke-direct {v1, p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;-><init>(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)V

    iput-object v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;

    const/4 v1, 0x0

    .line 71
    iput-boolean v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mNetworkTraceState:Z

    .line 73
    iput-boolean v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mBlockNetworkSpeed:Z

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mNetworkSpeedStateCallBack:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 81
    iput-boolean v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mShow:Z

    .line 83
    iput-boolean v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mLastNetworkConnected:Z

    .line 113
    iput-boolean v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mHotSpotEnable:Z

    .line 89
    iput-object p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mContext:Landroid/content/Context;

    .line 90
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 91
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.TIME_SET"

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 94
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    iget-object p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 101
    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iput-object p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 102
    sget v0, Lcom/android/systemui/R$layout;->status_bar_network_speed:I

    iget-boolean v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mShow:Z

    const-string v2, "networkspeed"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setOPCustView(Ljava/lang/String;IZ)V

    .line 103
    iget-object p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-boolean v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mShow:Z

    invoke-interface {p1, v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 105
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    const-string v0, "icon_blacklist"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->MSG_UPDATE_NETWORTSPEED:I

    return p0
.end method

.method static synthetic access$1000(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->scheduleNextUpdate()V

    return-void
.end method

.method static synthetic access$102(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->isNetworkSpeedTracing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mIsFirstLoad:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mIsFirstLoad:Z

    return p1
.end method

.method static synthetic access$1300()Z
    .locals 1

    .line 34
    sget-boolean v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500()I
    .locals 1

    .line 34
    sget v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->UPDATE_INTERVAL:I

    return v0
.end method

.method static synthetic access$1600(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;J)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->formateSpeed(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mHandler:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->refreshSpeed()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->MSG_MAYBE_STOP_NETWORTSPEED:I

    return p0
.end method

.method static synthetic access$400(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->MSG_UPDATE_SHOW:I

    return p0
.end method

.method static synthetic access$500(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->onShowStateChange()V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->MSG_UPDATE_SPEED_ON_BG:I

    return p0
.end method

.method static synthetic access$700(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mBackgroundHandler:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;

    return-object p0
.end method

.method private divToFractionDigits(JJI)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long p0, p3, v0

    if-nez p0, :cond_0

    .line 136
    sget-object p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    const-string p1, "divisor shouldn\'t be 0"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Error"

    return-object p0

    .line 139
    :cond_0
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 141
    div-long v0, p1, p3

    .line 142
    rem-long/2addr p1, p3

    .line 143
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    if-lez p5, :cond_1

    const-string v0, "."

    .line 145
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_1

    const-wide/16 v1, 0xa

    mul-long/2addr p1, v1

    .line 148
    div-long v1, p1, p3

    .line 149
    rem-long/2addr p1, p3

    .line 150
    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private formateSpeed(J)Ljava/lang/String;
    .locals 12

    .line 157
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 158
    sget-object v1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->UNIT_KB:Ljava/lang/String;

    .line 159
    sget-wide v2, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->ERTRY_POINT:J

    cmp-long v4, p1, v2

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-gez v4, :cond_1

    :goto_0
    move v7, v6

    :cond_0
    :goto_1
    move-wide v5, v2

    goto/16 :goto_4

    :cond_1
    cmp-long v4, p1, v2

    if-ltz v4, :cond_4

    .line 165
    sget v4, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->THOUSAND:I

    int-to-long v8, v4

    mul-long/2addr v8, v2

    cmp-long v4, p1, v8

    if-gez v4, :cond_4

    cmp-long v4, p1, v2

    if-ltz v4, :cond_2

    .line 168
    sget v4, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TEN:I

    int-to-long v8, v4

    mul-long/2addr v8, v2

    cmp-long v4, p1, v8

    if-gez v4, :cond_2

    goto :goto_0

    .line 170
    :cond_2
    sget-wide v8, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->ERTRY_POINT:J

    sget v4, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TEN:I

    int-to-long v10, v4

    mul-long/2addr v10, v8

    cmp-long v4, p1, v10

    if-ltz v4, :cond_3

    sget v4, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->HANDRED:I

    int-to-long v10, v4

    mul-long/2addr v8, v10

    cmp-long v4, p1, v8

    if-gez v4, :cond_3

    move v7, v5

    goto :goto_1

    .line 172
    :cond_3
    sget-wide v4, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->ERTRY_POINT:J

    sget v6, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->HANDRED:I

    int-to-long v8, v6

    mul-long/2addr v8, v4

    cmp-long v6, p1, v8

    if-ltz v6, :cond_0

    sget v6, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->THOUSAND:I

    int-to-long v8, v6

    mul-long/2addr v4, v8

    cmp-long v4, p1, v4

    goto :goto_1

    .line 175
    :cond_4
    sget-wide v1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->ERTRY_POINT:J

    sget v3, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->THOUSAND:I

    int-to-long v8, v3

    mul-long/2addr v8, v1

    cmp-long v4, p1, v8

    if-ltz v4, :cond_8

    mul-long v8, v1, v1

    int-to-long v10, v3

    mul-long/2addr v8, v10

    cmp-long v4, p1, v8

    if-gez v4, :cond_8

    mul-long v8, v1, v1

    .line 177
    sget-object v4, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->UNIT_MB:Ljava/lang/String;

    int-to-long v10, v3

    mul-long/2addr v1, v10

    cmp-long v1, p1, v1

    if-ltz v1, :cond_5

    .line 178
    sget v1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TEN:I

    int-to-long v1, v1

    mul-long/2addr v1, v8

    cmp-long v1, p1, v1

    if-gez v1, :cond_5

    move-object v1, v4

    move v7, v6

    goto :goto_2

    .line 180
    :cond_5
    sget-wide v1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->ERTRY_POINT:J

    mul-long/2addr v1, v1

    sget v3, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TEN:I

    int-to-long v10, v3

    mul-long/2addr v1, v10

    cmp-long v1, p1, v1

    if-ltz v1, :cond_6

    sget v1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->HANDRED:I

    int-to-long v1, v1

    mul-long/2addr v1, v8

    cmp-long v1, p1, v1

    if-gez v1, :cond_6

    move-object v1, v4

    move v7, v5

    goto :goto_2

    .line 182
    :cond_6
    sget-wide v1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->ERTRY_POINT:J

    mul-long/2addr v1, v1

    sget v3, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->HANDRED:I

    int-to-long v5, v3

    mul-long/2addr v1, v5

    cmp-long v1, p1, v1

    if-ltz v1, :cond_7

    sget v1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->THOUSAND:I

    int-to-long v1, v1

    mul-long/2addr v1, v8

    cmp-long v1, p1, v1

    :cond_7
    move-object v1, v4

    :goto_2
    move-wide v5, v8

    goto :goto_4

    .line 186
    :cond_8
    sget-wide v1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->ERTRY_POINT:J

    mul-long v3, v1, v1

    mul-long/2addr v3, v1

    .line 187
    sget-object v8, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->UNIT_GB:Ljava/lang/String;

    mul-long/2addr v1, v1

    .line 188
    sget v9, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->THOUSAND:I

    int-to-long v9, v9

    mul-long/2addr v1, v9

    cmp-long v1, p1, v1

    if-ltz v1, :cond_9

    sget v1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TEN:I

    int-to-long v1, v1

    mul-long/2addr v1, v3

    cmp-long v1, p1, v1

    if-gez v1, :cond_9

    move v7, v6

    :goto_3
    move-object v1, v8

    move-wide v5, v3

    goto :goto_4

    .line 190
    :cond_9
    sget-wide v1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->ERTRY_POINT:J

    mul-long v9, v1, v1

    mul-long/2addr v9, v1

    sget v1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TEN:I

    int-to-long v1, v1

    mul-long/2addr v9, v1

    cmp-long v1, p1, v9

    if-ltz v1, :cond_a

    sget v1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->HANDRED:I

    int-to-long v1, v1

    mul-long/2addr v1, v3

    cmp-long v1, p1, v1

    if-gez v1, :cond_a

    move v7, v5

    goto :goto_3

    :cond_a
    move-wide v5, v3

    move-object v1, v8

    :goto_4
    move-object v2, p0

    move-wide v3, p1

    .line 196
    invoke-direct/range {v2 .. v7}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->divToFractionDigits(JJI)Ljava/lang/String;

    move-result-object p0

    .line 198
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "/S"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isNetworkConnected()Z
    .locals 4

    .line 409
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 414
    iget-object v2, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_1

    .line 415
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 417
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 419
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mLastNetworkConnected:Z

    if-eq v0, v1, :cond_4

    .line 420
    sget-boolean v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNetworkConnected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_3
    iput-boolean v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mLastNetworkConnected:Z

    :cond_4
    return v1
.end method

.method private isNetworkSpeedTracing()Z
    .locals 1

    .line 428
    invoke-direct {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mBlockNetworkSpeed:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onShowStateChange()V
    .locals 4

    .line 220
    iget-boolean v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mNetworkTraceState:Z

    .line 222
    iget-boolean v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mShow:Z

    if-eq v1, v0, :cond_2

    .line 223
    iput-boolean v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mShow:Z

    .line 224
    sget-boolean v1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShowStateChange s:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    if-eqz v1, :cond_1

    const-string v2, "networkspeed"

    .line 227
    invoke-interface {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 230
    :cond_1
    iget-object p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mNetworkSpeedStateCallBack:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/networkspeed/NetworkSpeedController$INetworkSpeedStateCallBack;

    .line 231
    invoke-interface {v1, v0}, Lcom/oneplus/networkspeed/NetworkSpeedController$INetworkSpeedStateCallBack;->onSpeedShow(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private onStartTraceSpeed()V
    .locals 2

    .line 237
    sget-boolean v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onStartTraceSpeed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->updateSpeed()V

    return-void
.end method

.method private onStopTraceSpeed()V
    .locals 2

    .line 242
    sget-boolean v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onStopTraceSpeed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 243
    iput-boolean v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mIsFirstLoad:Z

    .line 244
    invoke-direct {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->stopSpeed()V

    const-string v0, ""

    .line 246
    iput-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    return-void
.end method

.method private refreshSpeed()V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mNetworkSpeedStateCallBack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/networkspeed/NetworkSpeedController$INetworkSpeedStateCallBack;

    if-eqz v1, :cond_0

    .line 291
    iget-object v2, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/oneplus/networkspeed/NetworkSpeedController$INetworkSpeedStateCallBack;->onSpeedChange(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private scheduleNextUpdate()V
    .locals 4

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget v2, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->UPDATE_INTERVAL:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 273
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 274
    iget v3, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->MSG_UPDATE_SPEED_ON_BG:I

    iput v3, v2, Landroid/os/Message;->what:I

    .line 275
    iget-object p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mBackgroundHandler:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method private stopSpeed()V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->reset()V

    .line 282
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;

    invoke-virtual {v0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->setTurnOff()V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mBackgroundHandler:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;

    iget p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->MSG_UPDATE_SPEED_ON_BG:I

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private updateSpeed()V
    .locals 2

    const/4 v0, 0x1

    .line 250
    iput-boolean v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mIsFirstLoad:Z

    .line 251
    sget-boolean v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "updateSpeed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, ""

    .line 253
    iput-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mHandler:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 255
    iget v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->MSG_UPDATE_NETWORTSPEED:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 256
    iget-object v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 257
    iget-object v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mHandler:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 260
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {v0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->reset()V

    .line 262
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;

    invoke-virtual {v0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->setTurnOn()V

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mBackgroundHandler:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;

    iget v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->MSG_UPDATE_SPEED_ON_BG:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 265
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 266
    iget v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->MSG_UPDATE_SPEED_ON_BG:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 267
    iget-object p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mBackgroundHandler:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/oneplus/networkspeed/NetworkSpeedController$INetworkSpeedStateCallBack;)V
    .locals 2

    .line 447
    monitor-enter p0

    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mNetworkSpeedStateCallBack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/oneplus/networkspeed/NetworkSpeedController$INetworkSpeedStateCallBack;->onSpeedChange(Ljava/lang/String;)V

    .line 451
    iget-boolean v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mShow:Z

    invoke-interface {p1, v0}, Lcom/oneplus/networkspeed/NetworkSpeedController$INetworkSpeedStateCallBack;->onSpeedShow(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 453
    :try_start_2
    sget-object v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "Failed to call to IKeyguardStateCallback"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Lcom/oneplus/networkspeed/NetworkSpeedController$INetworkSpeedStateCallBack;

    invoke-virtual {p0, p1}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->addCallback(Lcom/oneplus/networkspeed/NetworkSpeedController$INetworkSpeedStateCallBack;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.TIME_SET"

    if-ne p1, v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->updateState()V

    goto :goto_1

    :cond_0
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    if-ne p1, v0, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->updateState()V

    goto :goto_1

    :cond_1
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    if-ne p1, v0, :cond_4

    const/16 p1, 0xe

    const-string v0, "wifi_state"

    .line 125
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xd

    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 127
    :goto_0
    iput-boolean p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mHotSpotEnable:Z

    .line 128
    sget-boolean p1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz p1, :cond_3

    sget-object p1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HotSpot enable:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mHotSpotEnable:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->updateState()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "icon_blacklist"

    .line 433
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 436
    :cond_0
    iget-object p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Landroid/content/Context;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    const-string p2, "networkspeed"

    .line 437
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 438
    iget-boolean p2, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mBlockNetworkSpeed:Z

    if-eq p1, p2, :cond_1

    .line 439
    sget-object p2, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onTuningChanged blocknetworkSpeed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iput-boolean p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mBlockNetworkSpeed:Z

    .line 441
    invoke-virtual {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->updateState()V

    :cond_1
    return-void
.end method

.method public removeCallback(Lcom/oneplus/networkspeed/NetworkSpeedController$INetworkSpeedStateCallBack;)V
    .locals 1

    .line 460
    monitor-enter p0

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mNetworkSpeedStateCallBack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 462
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Lcom/oneplus/networkspeed/NetworkSpeedController$INetworkSpeedStateCallBack;

    invoke-virtual {p0, p1}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->removeCallback(Lcom/oneplus/networkspeed/NetworkSpeedController$INetworkSpeedStateCallBack;)V

    return-void
.end method

.method public updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V
    .locals 3

    .line 109
    sget-boolean v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateConnectivity connectedTransports:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " validatedTransports:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->updateState()V

    return-void
.end method

.method public updateState()V
    .locals 4

    .line 204
    invoke-direct {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->isNetworkSpeedTracing()Z

    move-result v0

    .line 205
    sget-boolean v1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateState traceState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mNetworkTraceState:Z

    if-eq v1, v0, :cond_2

    .line 207
    iput-boolean v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mNetworkTraceState:Z

    if-eqz v0, :cond_1

    .line 209
    invoke-direct {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->onStartTraceSpeed()V

    goto :goto_0

    .line 211
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->onStopTraceSpeed()V

    .line 213
    :goto_0
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mHandler:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 214
    iget v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->MSG_UPDATE_SHOW:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 215
    iget-object p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mHandler:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method
