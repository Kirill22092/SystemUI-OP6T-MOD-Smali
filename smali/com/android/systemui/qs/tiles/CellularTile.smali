.class public Lcom/android/systemui/qs/tiles/CellularTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "CellularTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;,
        Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;,
        Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$SignalState;",
        ">;"
    }
.end annotation


# static fields
.field static final CELLULAR_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mDataController:Lcom/android/settingslib/net/DataUsageController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

.field private final mSignalCallback:Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.security.action.USAGE_DATA_SUMMARY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/CellularTile;->CELLULAR_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 1

    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 86
    new-instance v0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/CellularTile;Lcom/android/systemui/qs/tiles/CellularTile$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;

    .line 97
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 98
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 99
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getMobileDataController()Lcom/android/settingslib/net/DataUsageController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 100
    new-instance p2, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/CellularTile;Lcom/android/systemui/qs/tiles/CellularTile$1;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    .line 101
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object p0, Lcom/android/systemui/qs/tiles/CellularTile;->CELLULAR_SETTINGS:Landroid/content/Intent;

    const-string/jumbo p1, "tracker_event"

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/settingslib/net/DataUsageController;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/statusbar/policy/NetworkController;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static getCellularSettingIntent()Landroid/content/Intent;
    .locals 3

    .line 439
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.NETWORK_OPERATOR_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 443
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    const-string v2, "android.provider.extra.SUB_ID"

    .line 442
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method private getDefaultDataSimIndex()I
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 187
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result p0

    return p0
.end method

.method private getVzwMobileDataContentName(Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;)Ljava/lang/CharSequence;
    .locals 0

    .line 358
    iget-object p0, p1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method private getVzwVolteAndNoWiFiCallingStatus()Z
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 533
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p0

    .line 534
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v0

    .line 535
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result p0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$showEnableDialog$1(ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 519
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 521
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.dialer.action.END_CALL"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 522
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private showEnableDialog(I)V
    .locals 8

    const/4 v0, 0x1

    const v1, 0x104000a

    const/high16 v2, 0x1040000

    if-ne p1, v0, :cond_0

    .line 506
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->mobile_data_off_alert_video_call:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 507
    sget v2, Lcom/android/systemui/R$string;->continue_call:I

    .line 508
    sget v3, Lcom/android/systemui/R$string;->end_call:I

    goto :goto_1

    .line 509
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CellularTile;->getVzwVolteAndNoWiFiCallingStatus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 510
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$string;->mobile_data_off_alert_support_volte_no_wfc:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 512
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$string;->mobile_data_off_alert:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v7, v3

    move v3, v1

    move-object v1, v7

    .line 514
    :goto_1
    new-instance v4, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 515
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$string;->mobile_data:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 516
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 517
    new-instance v1, Lcom/android/systemui/qs/tiles/-$$Lambda$CellularTile$ftDFwqD-2jEH_znO0fdOkcRe1Pw;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tiles/-$$Lambda$CellularTile$ftDFwqD-2jEH_znO0fdOkcRe1Pw;-><init>(Lcom/android/systemui/qs/tiles/CellularTile;I)V

    invoke-virtual {v4, v3, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const/4 p0, 0x0

    .line 525
    invoke-virtual {v4, v2, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 526
    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    .line 527
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public createTileView(Landroid/content/Context;)Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 1

    .line 119
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    new-instance p0, Lcom/oneplus/systemui/qs/OpVzwAlphaControlledSignalTileView;

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/qs/OpVzwAlphaControlledSignalTileView;-><init>(Landroid/content/Context;)V

    return-object p0

    .line 122
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->createTileView(Landroid/content/Context;)Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object p0

    return-object p0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 6

    const-string v0, "gsm.sim.state"

    .line 157
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, ","

    .line 160
    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    move v3, v2

    .line 161
    :goto_0
    :try_start_1
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 162
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    aget-object v4, v0, v2

    const-string v5, "ABSENT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    aget-object v4, v0, v2

    const-string v5, "NOT_READY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move v3, v1

    .line 168
    :catch_1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error to parse sim state"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_2
    sget-object v0, Lcom/android/systemui/qs/tiles/CellularTile;->CELLULAR_SETTINGS:Landroid/content/Intent;

    const-string v2, "select_tab"

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CellularTile;->getDefaultDataSimIndex()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Go to selected sim tab="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CellularTile;->getDefaultDataSimIndex()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 176
    :cond_3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v1, "Go to sim tab 0"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x73

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 253
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_cellular_detail_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 5

    .line 192
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez v0, :cond_0

    return-void

    .line 196
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "is_video_call"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 202
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleClick Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/CellularTile;->showEnableDialog(I)V

    goto :goto_1

    .line 207
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    :goto_1
    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 244
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 247
    invoke-static {}, Lcom/android/systemui/qs/tiles/CellularTile;->getCellularSettingIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V
    .locals 6

    .line 258
    check-cast p2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    if-nez p2, :cond_0

    .line 260
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->access$200(Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;)Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    move-result-object p2

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 264
    sget v1, Lcom/android/systemui/R$string;->mobile_data:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 265
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 266
    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 267
    :goto_0
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_2

    .line 268
    iget-boolean v3, p2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->activityIn:Z

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    if-eqz v0, :cond_3

    .line 269
    iget-boolean v3, p2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->activityOut:Z

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    .line 270
    const-class v3, Landroid/widget/Switch;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 271
    iget-boolean v3, p2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    if-eqz v3, :cond_4

    .line 276
    sget v3, Lcom/android/systemui/R$drawable;->op_ic_qs_no_sim:I

    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_3

    .line 279
    :cond_4
    sget v3, Lcom/android/systemui/R$drawable;->ic_swap_vert:I

    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 282
    :goto_3
    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_5

    .line 283
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleUpdateState: supported="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v5}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", enabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 284
    invoke-virtual {v5}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", noSim="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", airplaneMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->airplaneModeEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mobileDataEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", activityOut="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", activityIn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 283
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_5
    iget-boolean v3, p2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    if-eqz v3, :cond_6

    .line 293
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_4

    .line 297
    :cond_6
    iget-boolean v3, p2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->airplaneModeEnabled:Z

    if-eqz v3, :cond_7

    .line 298
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_8

    const/4 v0, 0x2

    .line 303
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 313
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 314
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tiles/CellularTile;->getVzwMobileDataContentName(Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_4

    .line 318
    :cond_8
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 324
    :cond_9
    :goto_4
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 325
    iget p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-ne p0, v1, :cond_a

    const-string p0, ""

    .line 327
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    goto :goto_5

    .line 329
    :cond_a
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    :goto_5
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 73
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/CellularTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    .line 369
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasMobileDataFeature()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$showEnableDialog$1$CellularTile(ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/tiles/CellularTile;->lambda$showEnableDialog$1(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$SignalState;
    .locals 0

    .line 110
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CellularTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    move-result-object p0

    return-object p0
.end method
