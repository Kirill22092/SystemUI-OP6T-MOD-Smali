.class public Lcom/android/systemui/qs/tiles/OPReverseChargeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "OPReverseChargeTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/OPReverseChargeTile$SettingsObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;"
    }
.end annotation


# instance fields
.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field protected final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCharging:Z

.field private mDebounce:Z

.field private mDisableObserver:Lcom/android/systemui/qs/tiles/OPReverseChargeTile$SettingsObserver;

.field private mHandler:Landroid/os/Handler;

.field private mLowBatt:Z

.field private mModeSetting:Lcom/oneplus/util/SystemSetting;

.field private mOverHeat:Z

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mLowBatt:Z

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mOverHeat:Z

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mCharging:Z

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mDebounce:Z

    new-instance v0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile$1;-><init>(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile$3;-><init>(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-interface {p2, v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/systemui/qs/tiles/OPReverseChargeTile$SettingsObserver;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile$SettingsObserver;-><init>(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mDisableObserver:Lcom/android/systemui/qs/tiles/OPReverseChargeTile$SettingsObserver;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile$SettingsObserver;->onChange(ZLandroid/net/Uri;)V

    new-instance p1, Lcom/android/systemui/qs/tiles/OPReverseChargeTile$2;

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const-string v5, "reverse_wireless_charging_status"

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile$2;-><init>(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mModeSetting:Lcom/oneplus/util/SystemSetting;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mDebounce:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->getDisabledReason()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mLowBatt:Z

    return p0
.end method

.method static synthetic access$802(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mLowBatt:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mOverHeat:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mOverHeat:Z

    return p1
.end method

.method private getDisabledReason()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "reverse_wireless_disable_reason"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$handleUpdateState$0()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->showNotification(Landroid/content/Context;Z)V

    return-void
.end method

.method private synthetic lambda$handleUpdateState$1(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {p0, p1}, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->showNotification(Landroid/content/Context;Z)V

    return-void
.end method

.method private popChargingToast()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->op_reverse_charge_toast_charging:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private popLowBatteryToast()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->op_reverse_charge_toast_low_battery:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private popOverHeatToast()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->op_reverse_charge_toast_over_heat:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private registerReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unRegisterReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.OP_REVERSE_WIRELESS_CHARGING_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7d7

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->op_reverse_charge_tile_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mCharging:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->popChargingToast()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mLowBatt:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->popLowBatteryToast()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mOverHeat:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->popOverHeatToast()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mDebounce:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "click too quickly, disable change value"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mDebounce:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->isEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    xor-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->setEnabled(Landroid/content/Context;Z)V

    return-void
.end method

.method protected handleSetListening(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mModeSetting:Lcom/oneplus/util/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/oneplus/util/SystemSetting;->setListening(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mDisableObserver:Lcom/android/systemui/qs/tiles/OPReverseChargeTile$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile$SettingsObserver;->register()V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->registerReceiver()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mDisableObserver:Lcom/android/systemui/qs/tiles/OPReverseChargeTile$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile$SettingsObserver;->unregister()V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->unRegisterReceiver()V

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mDebounce:Z

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->isEnabled()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->op_reverse_charge_tile_label:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    sget p2, Lcom/android/systemui/R$drawable;->op_qs_reverse_wireless_charge_icon:I

    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mLowBatt:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mOverHeat:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mCharging:Z

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/qs/tiles/-$$Lambda$OPReverseChargeTile$GOAuS5OHN9G6QYbzIYpoI-wl0uI;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/-$$Lambda$OPReverseChargeTile$GOAuS5OHN9G6QYbzIYpoI-wl0uI;-><init>(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;Lcom/android/systemui/plugins/qs/QSTile$BooleanState;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDisabled: low_batt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mLowBatt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", overheat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mOverHeat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", charging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/qs/tiles/-$$Lambda$OPReverseChargeTile$K8HXUXC9L3n36_CnlT4SSTbiB-U;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$OPReverseChargeTile$K8HXUXC9L3n36_CnlT4SSTbiB-U;-><init>(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 4

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    new-array v2, v0, [I

    const/16 v3, 0xed

    aput v3, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method public synthetic lambda$handleUpdateState$0$OPReverseChargeTile()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->lambda$handleUpdateState$0()V

    return-void
.end method

.method public synthetic lambda$handleUpdateState$1$OPReverseChargeTile(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->lambda$handleUpdateState$1(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 1

    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mCharging:Z

    if-eq p1, p3, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "charging="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mCharging:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "->"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p3, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->mCharging:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    :cond_0
    return-void
.end method
