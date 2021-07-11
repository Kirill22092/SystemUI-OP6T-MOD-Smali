.class public Lcom/oneplus/util/OpReverseWirelessChargeUtils;
.super Ljava/lang/Object;
.source "OpReverseWirelessChargeUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpReverseWirelessChargeUtils"

.field private static mAudioManager:Landroid/media/AudioManager; = null

.field private static mDischargingDisconnectedSound:Landroid/media/SoundPool; = null

.field private static mDischargingDisconnectedSoundId:I = 0x0

.field private static sDischarging:Z = false

.field private static sHandler:Landroid/os/Handler; = null

.field private static sModeSetting:Lcom/oneplus/util/SystemSetting; = null

.field private static sReverseWirelessReceiver:Landroid/content/BroadcastReceiver; = null

.field private static sShow:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .line 26
    sget-object v0, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 26
    invoke-static {}, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->isDischarging()Z

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 10

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0xed

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 58
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 62
    :cond_0
    sput-object p1, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->sHandler:Landroid/os/Handler;

    .line 64
    sget-object p1, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->sReverseWirelessReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 67
    :cond_1
    new-instance p1, Lcom/oneplus/util/OpReverseWirelessChargeUtils$1;

    invoke-direct {p1}, Lcom/oneplus/util/OpReverseWirelessChargeUtils$1;-><init>()V

    sput-object p1, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->sReverseWirelessReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.oneplus.systemui.REVERSE_WIRELESS_CHARGING_OPEN"

    .line 82
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.oneplus.systemui.REVERSE_WIRELESS_CHARGING_STOP"

    .line 83
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    sget-object v1, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->sReverseWirelessReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    const-string v4, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p0, v1, p1, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 87
    sget-object p1, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->sModeSetting:Lcom/oneplus/util/SystemSetting;

    if-eqz p1, :cond_2

    .line 88
    invoke-virtual {p1, v3}, Lcom/oneplus/util/SystemSetting;->setListening(Z)V

    .line 90
    :cond_2
    new-instance p1, Lcom/oneplus/util/OpReverseWirelessChargeUtils$2;

    const/4 v6, 0x0

    const/4 v8, 0x1

    const-string v7, "reverse_wireless_charging_status"

    move-object v4, p1

    move-object v5, p0

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/util/OpReverseWirelessChargeUtils$2;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ZLandroid/content/Context;)V

    sput-object p1, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->sModeSetting:Lcom/oneplus/util/SystemSetting;

    .line 99
    invoke-virtual {p1, v0}, Lcom/oneplus/util/SystemSetting;->setListening(Z)V

    const-string p1, "audio"

    .line 102
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    sput-object p1, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->mAudioManager:Landroid/media/AudioManager;

    .line 103
    new-instance p1, Landroid/media/SoundPool;

    invoke-direct {p1, v0, v0, v3}, Landroid/media/SoundPool;-><init>(III)V

    sput-object p1, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->mDischargingDisconnectedSound:Landroid/media/SoundPool;

    .line 104
    sget v1, Lcom/android/systemui/R$raw;->discharging_disconnect_sound:I

    invoke-virtual {p1, p0, v1, v0}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p0

    sput p0, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->mDischargingDisconnectedSoundId:I

    return-void
.end method

.method private static isDischarging()Z
    .locals 3

    .line 194
    sget-object v0, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->sModeSetting:Lcom/oneplus/util/SystemSetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/oneplus/util/SystemSetting;->getValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isEnabled()Z
    .locals 2

    .line 184
    sget-object v0, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->sModeSetting:Lcom/oneplus/util/SystemSetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lcom/oneplus/util/SystemSetting;->getValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static playDischargingDisconnectedSound()V
    .locals 10

    .line 204
    sget-object v0, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->mDischargingDisconnectedSound:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    sget v1, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->mDischargingDisconnectedSoundId:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 208
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    .line 209
    sget-object v1, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play disCharging disconnect sound, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    .line 212
    sget-object v3, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->mDischargingDisconnectedSound:Landroid/media/SoundPool;

    sget v4, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->mDischargingDisconnectedSoundId:I

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_1
    return-void

    .line 205
    :cond_2
    :goto_0
    sget-object v0, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->TAG:Ljava/lang/String;

    const-string v1, "OpReverseWirelessChargeUtils doesn\'t init yet!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setEnabled(Landroid/content/Context;Z)V
    .locals 2

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "reverse_wireless_charging_status"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static showNotification(Landroid/content/Context;Z)V
    .locals 10

    .line 109
    invoke-static {}, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->isDischarging()Z

    move-result v0

    .line 110
    sget-boolean v1, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->sShow:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, p1, :cond_1

    sget-boolean v1, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->sDischarging:Z

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 112
    :goto_1
    sget-boolean v4, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->sDischarging:Z

    if-eq v4, v0, :cond_2

    if-nez v0, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    .line 115
    :goto_2
    sget-object v5, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showNotification: show="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->sShow:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", discharging="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v8, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->sDischarging:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", diff="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sput-boolean p1, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->sShow:Z

    .line 119
    sput-boolean v0, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->sDischarging:Z

    .line 121
    const-class v5, Landroid/app/NotificationManager;

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    const/4 v6, 0x0

    if-eqz p1, :cond_6

    if-nez v1, :cond_3

    return-void

    .line 126
    :cond_3
    new-instance p1, Landroid/app/NotificationChannel;

    sget v1, Lcom/android/systemui/R$string;->op_reverse_charge_notification_title:I

    .line 127
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x3

    const-string v8, "OP_REVERSE_CHARGE"

    invoke-direct {p1, v8, v1, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 129
    invoke-virtual {p1, v3}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    if-nez v0, :cond_4

    .line 131
    invoke-virtual {p1, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 132
    invoke-virtual {p1, v6, v6}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    :cond_4
    new-array v1, v3, [Landroid/app/NotificationChannel;

    aput-object p1, v1, v2

    .line 134
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    .line 136
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.oneplus.systemui.REVERSE_WIRELESS_CHARGING_OPEN"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x8000000

    invoke-static {p0, v2, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 139
    new-instance v7, Landroid/content/Intent;

    const-string v9, "com.oneplus.systemui.REVERSE_WIRELESS_CHARGING_STOP"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 142
    new-instance v2, Landroid/app/Notification$Action$Builder;

    sget v7, Lcom/android/systemui/R$drawable;->op_qs_reverse_wireless_charge_icon:I

    sget v9, Lcom/android/systemui/R$string;->op_reverse_charge_notification_btn:I

    .line 144
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v7, v9, v1}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 147
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v7, Lcom/android/systemui/R$drawable;->op_qs_reverse_wireless_charge_icon:I

    .line 148
    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v7, Lcom/android/systemui/R$string;->op_reverse_charge_notification_title:I

    .line 149
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 150
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 151
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 152
    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 153
    invoke-virtual {p1, v8}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    if-eqz v0, :cond_5

    .line 155
    sget v0, Lcom/android/systemui/R$string;->op_reverse_charge_notification_discharging:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_3

    .line 157
    :cond_5
    sget v0, Lcom/android/systemui/R$string;->op_reverse_charge_notification_subtitle:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 160
    :goto_3
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v3, p0, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    if-eqz v4, :cond_7

    .line 165
    invoke-static {}, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->playDischargingDisconnectedSound()V

    goto :goto_4

    .line 170
    :cond_6
    sget-object p0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v3, p0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_7
    :goto_4
    return-void
.end method
