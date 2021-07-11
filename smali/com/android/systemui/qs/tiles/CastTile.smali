.class public Lcom/android/systemui/qs/tiles/CastTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "CastTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;,
        Lcom/android/systemui/qs/tiles/CastTile$Callback;
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
.field private static final CAST_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mCallback:Lcom/android/systemui/qs/tiles/CastTile$Callback;

.field private final mController:Lcom/android/systemui/statusbar/policy/CastController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

.field private mDialog:Landroid/app/Dialog;

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

.field private mWifiConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.CAST_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/CastTile;->CAST_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 1

    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 67
    new-instance p1, Lcom/android/systemui/qs/tiles/CastTile$Callback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/CastTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/qs/tiles/CastTile$1;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mCallback:Lcom/android/systemui/qs/tiles/CastTile$Callback;

    .line 269
    new-instance p1, Lcom/android/systemui/qs/tiles/CastTile$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/CastTile$1;-><init>(Lcom/android/systemui/qs/tiles/CastTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 78
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    .line 79
    new-instance p1, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/qs/tiles/CastTile$1;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    .line 80
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/CastTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 81
    iput-object p4, p0, Lcom/android/systemui/qs/tiles/CastTile;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 82
    iput-object p5, p0, Lcom/android/systemui/qs/tiles/CastTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 83
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/CastTile;->mCallback:Lcom/android/systemui/qs/tiles/CastTile$Callback;

    invoke-interface {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/CastTile;->mCallback:Lcom/android/systemui/qs/tiles/CastTile$Callback;

    invoke-interface {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/CastTile;->mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-interface {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    .line 59
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/CastTile;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/CastTile;)Lcom/android/systemui/statusbar/policy/CastController;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)Ljava/lang/String;
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/CastTile;->getDeviceName(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/CastTile;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mWifiConnected:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/tiles/CastTile;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mWifiConnected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500()Landroid/content/Intent;
    .locals 1

    .line 59
    sget-object v0, Lcom/android/systemui/qs/tiles/CastTile;->CAST_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 59
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/CastTile;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800()Z
    .locals 1

    .line 59
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/CastTile;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private getActiveDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/policy/CastController$CastDevice;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/CastController;->getCastDevices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 157
    iget v2, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 159
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getDeviceName(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)Ljava/lang/String;
    .locals 0

    .line 265
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->name:Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_cast_device_default_name:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private synthetic lambda$handleClick$0()V
    .locals 1

    const/4 v0, 0x1

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/CastTile;->showDetail(Z)V

    return-void
.end method

.method private synthetic lambda$showDetail$1(Landroid/view/View;)V
    .locals 1

    .line 171
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 172
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CastTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method private synthetic lambda$showDetail$2()V
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private synthetic lambda$showDetail$3()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$$Lambda$CastTile$4kXW6ECEqBpSUmuEtdBz8p9QY1w;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$CastTile$4kXW6ECEqBpSUmuEtdBz8p9QY1w;-><init>(Lcom/android/systemui/qs/tiles/CastTile;)V

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lcom/android/internal/app/MediaRouteDialogPresenter;->createDialog(Landroid/content/Context;ILandroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDialog:Landroid/app/Dialog;

    .line 175
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;Z)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDialog:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->registerDismissListener(Landroid/app/Dialog;)V

    .line 178
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDialog:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setWindowOnTop(Landroid/app/Dialog;)V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$$Lambda$CastTile$MhJepZXXVH2Vaj80AOmfpppL58s;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$CastTile$MhJepZXXVH2Vaj80AOmfpppL58s;-><init>(Lcom/android/systemui/qs/tiles/CastTile;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_0

    .line 259
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_casting_turned_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 121
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.CAST_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x72

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 186
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_cast_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 3

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CastTile;->getActiveDevices()Ljava/util/List;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->tag:Ljava/lang/Object;

    instance-of v2, v2, Landroid/media/MediaRouter$RouteInfo;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 150
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/policy/CastController;->stopCasting(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)V

    goto :goto_1

    .line 146
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$$Lambda$CastTile$0TU5SvbFGUs5F0udF1tvlhHVObs;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$CastTile$0TU5SvbFGUs5F0udF1tvlhHVObs;-><init>(Lcom/android/systemui/qs/tiles/CastTile;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method protected handleLongClick()V
    .locals 0

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CastTile;->handleClick()V

    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 0

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CastTile;->handleClick()V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 3

    .line 106
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 107
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetListening "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    .line 109
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/CastController;->setDiscovering(Z)V

    :cond_1
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 10

    .line 191
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_cast_title:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 192
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    const-string p2, ""

    .line 193
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 194
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 195
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/CastController;->getCastDevices()Ljava/util/List;

    move-result-object v1

    .line 199
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, ","

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 200
    iget v8, v4, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    if-ne v8, v6, :cond_1

    .line 201
    iput-boolean v7, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 202
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/CastTile;->getDeviceName(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->accessibility_cast_name:I

    new-array v8, v7, [Ljava/lang/Object;

    iget-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    aput-object v9, v8, v0

    .line 204
    invoke-virtual {v3, v4, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    if-ne v8, v7, :cond_0

    move v3, v7

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    .line 212
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->quick_settings_connecting:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 220
    :cond_3
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/android/systemui/R$drawable;->ic_cast_connected:I

    goto :goto_2

    .line 221
    :cond_4
    sget v0, Lcom/android/systemui/R$drawable;->op_ic_qs_cast:I

    .line 220
    :goto_2
    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 228
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v6, v7

    :goto_3
    iput v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 229
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_6

    .line 230
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 232
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->accessibility_quick_settings_open_details:I

    .line 233
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 234
    const-class p2, Landroid/widget/Button;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 246
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 247
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    invoke-static {p0, v1}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->access$200(Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;Ljava/util/List;)V

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/CastTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 0

    .line 115
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUserSwitch(I)V

    .line 116
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/CastController;->setCurrentUserId(I)V

    return-void
.end method

.method public synthetic lambda$handleClick$0$CastTile()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CastTile;->lambda$handleClick$0()V

    return-void
.end method

.method public synthetic lambda$showDetail$1$CastTile(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/CastTile;->lambda$showDetail$1(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$showDetail$2$CastTile()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CastTile;->lambda$showDetail$2()V

    return-void
.end method

.method public synthetic lambda$showDetail$3$CastTile()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CastTile;->lambda$showDetail$3()V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 95
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CastTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method

.method public showDetail(Z)V
    .locals 1

    .line 168
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/qs/tiles/-$$Lambda$CastTile$WPXsuhhRJ1um-wt53q0kaFd3rzI;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$CastTile$WPXsuhhRJ1um-wt53q0kaFd3rzI;-><init>(Lcom/android/systemui/qs/tiles/CastTile;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
