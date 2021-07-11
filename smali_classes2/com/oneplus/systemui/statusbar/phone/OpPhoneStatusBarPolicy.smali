.class public Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;
.super Ljava/lang/Object;
.source "OpPhoneStatusBarPolicy.java"

# interfaces
.implements Lcom/oneplus/opzenmode/OpZenModeController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$SettingObserver;,
        Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;
    }
.end annotation


# static fields
.field private static DEBUG_ONEPLUS:Z


# instance fields
.field private final mBgHandler:Landroid/os/Handler;

.field private mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private mBluetoothBatteryLevel:I

.field private mBluetoothConnected:Z

.field private mBluetoothContentDescription:Ljava/lang/String;

.field private mBluetoothIconId:I

.field private mBluetoothIconVisible:Z

.field private mContext:Landroid/content/Context;

.field private mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsNotifyShown:Z

.field private final mNfcReceiver:Landroid/content/BroadcastReceiver;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOpZenModeController:Lcom/oneplus/opzenmode/OpZenModeController;

.field private final mSettingObserver:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$SettingObserver;

.field private mShowRunnable:Ljava/lang/Runnable;

.field private mSlotFemtoCell:Ljava/lang/String;

.field private mSlotVice:Ljava/lang/String;

.field private mVibrateWhenMute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Landroid/content/SharedPreferences;)V
    .locals 9

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance p3, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$SettingObserver;

    invoke-direct {p3, p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$SettingObserver;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)V

    iput-object p3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mSettingObserver:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$SettingObserver;

    const/4 p3, 0x0

    .line 81
    iput p3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mVibrateWhenMute:I

    .line 88
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBgHandler:Landroid/os/Handler;

    .line 89
    iput p3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothIconId:I

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothContentDescription:Ljava/lang/String;

    .line 91
    iput-boolean p3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothConnected:Z

    const/4 v1, -0x1

    .line 92
    iput v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothBatteryLevel:I

    .line 93
    iput-boolean p3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothIconVisible:Z

    .line 105
    iput-boolean p3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIsNotifyShown:Z

    .line 106
    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    .line 201
    new-instance v2, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$1;

    invoke-direct {v2, p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$1;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)V

    iput-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 325
    new-instance v2, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$2;

    invoke-direct {v2, p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$2;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)V

    iput-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mShowRunnable:Ljava/lang/Runnable;

    .line 520
    new-instance v2, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$3;

    invoke-direct {v2, p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$3;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)V

    iput-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    .line 136
    iput-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "oem_vibrate_under_silent"

    .line 140
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mSettingObserver:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$SettingObserver;

    .line 139
    invoke-virtual {p1, p2, p3, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 144
    const-class p1, Lcom/oneplus/opzenmode/OpZenModeController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/opzenmode/OpZenModeController;

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mOpZenModeController:Lcom/oneplus/opzenmode/OpZenModeController;

    .line 145
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 148
    const-class p1, Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/BluetoothController;

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 151
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    .line 153
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 p2, 0x1

    new-array v1, p2, [I

    const/16 v2, 0x30

    aput v2, v1, p3

    .line 156
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v2, "pref_name_notify_shown"

    invoke-virtual {v1, v2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_key_notify_shown"

    .line 158
    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIsNotifyShown:Z

    if-nez v1, :cond_0

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 160
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    .line 167
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "femtocell"

    .line 168
    iput-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mSlotFemtoCell:Ljava/lang/String;

    const-string v1, "oneplus.intent.action.VZW_FEMTOCELL_STATE_CHANGED"

    .line 169
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "vice"

    .line 172
    iput-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mSlotVice:Ljava/lang/String;

    const-string v1, "oneplus.intent.action.VZW_VICE_STATE_CHANGED"

    .line 173
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    const-string v1, "com.oem.intent.action.ACTION_USB_HEADSET_PLUG"

    .line 179
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 184
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_nfc:I

    const-string v2, "nfc"

    invoke-interface {p1, v2, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 187
    :try_start_0
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    .line 188
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move p2, p3

    :goto_0
    invoke-interface {v0, v2, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 190
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fail to get Nfc adapter "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpPhoneStatusBarPolicy"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-interface {p1, v2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 195
    :goto_1
    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v6, Landroid/content/IntentFilter;

    const-string p0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v6, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 76
    sget-boolean v0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->DEBUG_ONEPLUS:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->updateBluetooth()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->updateVolumeZen()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->updateHeadsetPlug(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;Z)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->updateFemtocell(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;Z)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->updateVice(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothIconVisible:Z

    return p0
.end method

.method static synthetic access$600(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)Ljava/lang/String;
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->getSlotBluetooth()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothIconId:I

    return p0
.end method

.method static synthetic access$800(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/phone/StatusBarIconController;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    return-object p0
.end method

.method private getBluetoothBatteryIcon(I)I
    .locals 0

    .line 479
    div-int/lit8 p1, p1, 0xa

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 512
    :pswitch_0
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_bt_battery_10:I

    goto :goto_0

    .line 509
    :pswitch_1
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_bt_battery_9:I

    goto :goto_0

    .line 506
    :pswitch_2
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_bt_battery_8:I

    goto :goto_0

    .line 503
    :pswitch_3
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_bt_battery_7:I

    goto :goto_0

    .line 500
    :pswitch_4
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_bt_battery_6:I

    goto :goto_0

    .line 497
    :pswitch_5
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_bt_battery_5:I

    goto :goto_0

    .line 494
    :pswitch_6
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_bt_battery_4:I

    goto :goto_0

    .line 491
    :pswitch_7
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_bt_battery_3:I

    goto :goto_0

    .line 488
    :pswitch_8
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_bt_battery_2:I

    goto :goto_0

    .line 485
    :pswitch_9
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_bt_battery_1:I

    goto :goto_0

    .line 482
    :pswitch_a
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_bt_battery_0:I

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    .line 610
    const-class v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    const-string v1, "mHandler"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method private getSlotBluetooth()Ljava/lang/String;
    .locals 2

    .line 620
    const-class v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    const-string v1, "mSlotBluetooth"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "OpPhoneStatusBarPolicy"

    const-string v1, "getSlotBluetooth fail"

    .line 623
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v0, 0x1040797

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private synthetic lambda$OpUpdateBluetooth$0()V
    .locals 10

    .line 253
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    const/4 v1, -0x1

    const-string v2, "OpPhoneStatusBarPolicy"

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 255
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothConnected()Z

    move-result v0

    .line 257
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUST()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 258
    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothEnabled()Z

    move-result v3

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 262
    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothEnabled()Z

    move-result v3

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 269
    iget-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->accessibility_bluetooth_connected:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 270
    iget-object v5, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBatteryLevel()I

    move-result v5

    if-eq v5, v1, :cond_2

    .line 272
    invoke-direct {p0, v5}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->getBluetoothBatteryIcon(I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 273
    invoke-direct {p0, v5}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->getBluetoothBatteryIcon(I)I

    move-result v1

    goto :goto_1

    .line 275
    :cond_2
    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_data_bluetooth_connected:I

    :goto_1
    move v8, v3

    move v3, v0

    move v0, v8

    goto :goto_2

    .line 278
    :cond_3
    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_data_bluetooth:I

    .line 279
    iget-object v5, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->accessibility_quick_settings_bluetooth_on:I

    .line 280
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v8, v3

    move v3, v0

    move v0, v8

    move-object v9, v5

    move v5, v1

    move v1, v4

    move-object v4, v9

    goto :goto_2

    :cond_4
    const-string v0, "BluetoothController == null"

    .line 284
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_bluetooth:I

    .line 287
    iget-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->accessibility_quick_settings_bluetooth_on:I

    .line 288
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v5, v1

    move v1, v0

    move v0, v3

    .line 292
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OpUpdateBluetooth, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget v6, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothIconId:I

    if-ne v6, v1, :cond_5

    iget-boolean v6, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothIconVisible:Z

    if-ne v6, v0, :cond_5

    iget-boolean v6, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothConnected:Z

    if-ne v6, v3, :cond_5

    iget v6, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothBatteryLevel:I

    if-ne v6, v5, :cond_5

    if-eqz v4, :cond_7

    iget-object v6, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothContentDescription:Ljava/lang/String;

    .line 297
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 298
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "updateBluetooth"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " mBluetooth is "

    .line 299
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    if-nez v7, :cond_6

    const-string v7, ""

    goto :goto_3

    :cond_6
    const-string v7, "not "

    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " mIconId="

    .line 300
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothIconId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " iconId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mConnected="

    .line 301
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothConnected:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " connected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mVisible="

    .line 302
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothIconVisible:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", visible="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mDescrip="

    .line 303
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothContentDescription:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", descrip="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " mLevel="

    .line 304
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothBatteryLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " batteryLevel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iput v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothIconId:I

    .line 308
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothIconVisible:Z

    .line 309
    iput-boolean v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothConnected:Z

    .line 310
    iput v5, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothBatteryLevel:I

    .line 311
    iput-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothContentDescription:Ljava/lang/String;

    .line 313
    :cond_7
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->postShowBT()V

    return-void
.end method

.method private postShowBT()V
    .locals 3

    .line 321
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 322
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mShowRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateBluetooth()V
    .locals 3

    .line 630
    const-class v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "updateBluetooth"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updateFemtocell(Z)V
    .locals 4

    .line 647
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mSlotFemtoCell:Ljava/lang/String;

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_femtocell:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 649
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mSlotFemtoCell:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 651
    :cond_0
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mSlotFemtoCell:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private updateHeadsetPlug(Landroid/content/Intent;)V
    .locals 5

    .line 635
    const-class v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Intent;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "updateHeadsetPlug"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 637
    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updateVice(Z)V
    .locals 4

    .line 658
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mSlotVice:Ljava/lang/String;

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_vice_call_pull:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 660
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mSlotVice:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 662
    :cond_0
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mSlotVice:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private updateVolumeZen()V
    .locals 3

    .line 615
    const-class v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "updateVolumeZen"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected OpUpdateBluetooth()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpPhoneStatusBarPolicy$YxXtr18s6494UMI7t9rSTB_EmFk;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpPhoneStatusBarPolicy$YxXtr18s6494UMI7t9rSTB_EmFk;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected cancelHeadsetNotify()V
    .locals 3

    .line 580
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz p0, :cond_0

    const v0, 0xd348

    .line 581
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "headset"

    invoke-virtual {p0, v2, v0, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$OpUpdateBluetooth$0$OpPhoneStatusBarPolicy()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->lambda$OpUpdateBluetooth$0()V

    return-void
.end method

.method public onDndChanged(Z)V
    .locals 1

    .line 547
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$5;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$5;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onThreeKeyStatus(I)V
    .locals 1

    const-string p1, "OpPhoneStatusBarPolicy"

    const-string v0, " onThreeKeyStatus"

    .line 536
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$4;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$4;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected sendHeadsetNotify()V
    .locals 8

    .line 558
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIsNotifyShown:Z

    if-nez v0, :cond_0

    .line 559
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v1, Lcom/android/systemui/R$drawable;->ic_earphone:I

    .line 561
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->non_op_earphone_notification_title:I

    .line 562
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->non_op_earphone_notification_content:I

    .line 563
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 565
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.oneplus.EARPHONE_MODE_SETTINGS"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "earmode_from_notify"

    const/4 v7, 0x1

    .line 566
    invoke-virtual {v3, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 567
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 569
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 570
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v7}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 571
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 572
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    const v2, 0xd348

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "headset"

    invoke-virtual {v1, v4, v2, v0, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 573
    iput-boolean v7, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIsNotifyShown:Z

    .line 574
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "pref_name_notify_shown"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 575
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_key_notify_shown"

    invoke-interface {p0, v0, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method protected updateVolumeZen(I)Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;
    .locals 12

    .line 337
    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 348
    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    const-string v5, "oem_vibrate_under_silent"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mVibrateWhenMute:I

    .line 351
    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mOpZenModeController:Lcom/oneplus/opzenmode/OpZenModeController;

    invoke-interface {v3}, Lcom/oneplus/opzenmode/OpZenModeController;->getThreeKeySatus()I

    .line 352
    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mOpZenModeController:Lcom/oneplus/opzenmode/OpZenModeController;

    invoke-interface {v3}, Lcom/oneplus/opzenmode/OpZenModeController;->getDndEnable()Z

    move-result v3

    .line 354
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportSOCThreekey()Z

    move-result v4

    const-string v5, "show silent icon on status bar"

    const-string v7, "three key in normal state, no icon shows on status bar"

    const-string v8, "show no disturb icon on status bar"

    const/4 v9, 0x3

    const/16 v10, 0x17

    const/4 v11, 0x1

    if-eqz v4, :cond_1

    if-eqz v3, :cond_0

    .line 357
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_three_key_no_disturb:I

    .line 358
    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->interruption_level_none:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/Object;

    const-string v8, "show disturb icon on status bar"

    aput-object v8, v4, v6

    .line 359
    invoke-static {v10, v4}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    goto :goto_2

    .line 362
    :cond_0
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_three_key_no_disturb:I

    .line 363
    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->interruption_level_none:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v8, v4, v6

    .line 364
    invoke-static {v10, v4}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eq p1, v11, :cond_4

    if-eq p1, v9, :cond_2

    .line 392
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_three_key_normal:I

    .line 393
    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->quick_settings_dnd_label:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v7, v4, v6

    .line 395
    invoke-static {v10, v4}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    :goto_0
    move v4, v0

    move-object v8, v3

    move v3, v6

    goto :goto_3

    .line 380
    :cond_2
    iget v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mVibrateWhenMute:I

    if-ne v0, v11, :cond_3

    .line 381
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_ringer_vibrate:I

    goto :goto_1

    .line 383
    :cond_3
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_three_key_silent:I

    .line 386
    :goto_1
    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->interruption_level_priority:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v5, v4, v6

    .line 388
    invoke-static {v10, v4}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    goto :goto_2

    .line 372
    :cond_4
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_three_key_no_disturb:I

    .line 373
    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->interruption_level_none:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v8, v4, v6

    .line 375
    invoke-static {v10, v4}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    :goto_2
    move v4, v0

    move-object v8, v3

    move v3, v11

    .line 404
    :goto_3
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_6

    if-eq v0, v11, :cond_5

    goto :goto_4

    :cond_5
    move v9, v2

    goto :goto_4

    :cond_6
    move v9, v11

    :goto_4
    if-eq v9, v11, :cond_8

    if-eq v9, v2, :cond_7

    .line 432
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_three_key_normal:I

    .line 433
    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->quick_settings_dnd_label:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v7, v5, v6

    .line 435
    invoke-static {v10, v5}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    move-object v7, v2

    move v5, v6

    move v6, v0

    goto :goto_6

    .line 420
    :cond_7
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_ringer_vibrate:I

    .line 421
    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->accessibility_ringer_vibrate:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v11, [Ljava/lang/Object;

    const-string v7, "show vibrate icon on status bar"

    aput-object v7, v5, v6

    .line 422
    invoke-static {v10, v5}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    goto :goto_5

    .line 426
    :cond_8
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_three_key_silent:I

    .line 427
    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->accessibility_ringer_silent:I

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v5, v7, v6

    .line 428
    invoke-static {v10, v7}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    :goto_5
    move v6, v0

    move-object v7, v2

    move v5, v11

    .line 451
    :goto_6
    new-instance v9, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;

    move-object v0, v9

    move-object v1, p0

    move v2, v3

    move v3, v4

    move-object v4, v8

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;ZILjava/lang/String;ZILjava/lang/String;)V

    return-object v9
.end method
