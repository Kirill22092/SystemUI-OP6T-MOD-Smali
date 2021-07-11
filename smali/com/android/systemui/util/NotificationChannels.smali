.class public Lcom/android/systemui/util/NotificationChannels;
.super Lcom/android/systemui/SystemUI;
.source "NotificationChannels.java"


# static fields
.field public static ALERTS:Ljava/lang/String; = "ALR"

.field public static BATTERY:Ljava/lang/String; = "BAT"

.field public static GENERAL:Ljava/lang/String; = "GEN"

.field public static HINTS:Ljava/lang/String; = "HNT"

.field public static ONEPLUS_PACKAGENAME_MMS:Ljava/lang/String; = "com.oneplus.mms"

.field public static SCREENSHOTS_HEADSUP:Ljava/lang/String; = "SCN_HEADSUP"

.field public static SCREENSHOTS_LEGACY:Ljava/lang/String; = "SCN"

.field public static STORAGE:Ljava/lang/String; = "DSK"

.field public static TVPIP:Ljava/lang/String; = "TPP"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static createAll(Landroid/content/Context;)V
    .locals 14

    .line 62
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 63
    new-instance v1, Landroid/app/NotificationChannel;

    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->BATTERY:Ljava/lang/String;

    sget v3, Lcom/android/systemui/R$string;->notification_channel_battery:I

    .line 64
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "low_battery_sound"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v5, 0x4

    .line 69
    invoke-virtual {v3, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    const/16 v6, 0xa

    .line 70
    invoke-virtual {v3, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 71
    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    .line 68
    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 v2, 0x1

    .line 72
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 74
    new-instance v3, Landroid/app/NotificationChannel;

    sget-object v6, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    sget v7, Lcom/android/systemui/R$string;->notification_channel_alerts:I

    .line 76
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v6, v7, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 79
    new-instance v6, Landroid/app/NotificationChannel;

    sget-object v7, Lcom/android/systemui/util/NotificationChannels;->GENERAL:Ljava/lang/String;

    sget v8, Lcom/android/systemui/R$string;->notification_channel_general:I

    .line 81
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 84
    new-instance v7, Landroid/app/NotificationChannel;

    sget-object v8, Lcom/android/systemui/util/NotificationChannels;->STORAGE:Ljava/lang/String;

    sget v9, Lcom/android/systemui/R$string;->notification_channel_storage:I

    .line 86
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 87
    invoke-static {p0}, Lcom/android/systemui/util/NotificationChannels;->isTv(Landroid/content/Context;)Z

    move-result v10

    const/4 v11, 0x2

    const/4 v12, 0x3

    if-eqz v10, :cond_0

    move v10, v12

    goto :goto_0

    :cond_0
    move v10, v11

    .line 89
    :goto_0
    invoke-direct {v7, v8, v9, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 91
    new-instance v8, Landroid/app/NotificationChannel;

    sget-object v9, Lcom/android/systemui/util/NotificationChannels;->HINTS:Ljava/lang/String;

    sget v10, Lcom/android/systemui/R$string;->notification_channel_hints:I

    .line 93
    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10, v12}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 98
    sget v9, Lcom/android/systemui/R$string;->privacy_alert_application_name:I

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 99
    new-instance v10, Landroid/app/NotificationChannel;

    const-string v13, "privacy_alert"

    invoke-direct {v10, v13, v9, v12}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v9, 0x0

    .line 102
    invoke-virtual {v10, v9}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 v13, 0x0

    .line 103
    invoke-virtual {v10, v13, v13}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 104
    invoke-virtual {v10, v9}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/4 v13, 0x7

    new-array v13, v13, [Landroid/app/NotificationChannel;

    aput-object v3, v13, v9

    aput-object v6, v13, v2

    aput-object v7, v13, v11

    .line 107
    sget v2, Lcom/android/systemui/R$string;->notification_channel_screenshot:I

    .line 112
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS_LEGACY:Ljava/lang/String;

    .line 113
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v3

    .line 111
    invoke-static {v2, v3}, Lcom/android/systemui/util/NotificationChannels;->createScreenshotChannel(Ljava/lang/String;Landroid/app/NotificationChannel;)Landroid/app/NotificationChannel;

    move-result-object v2

    aput-object v2, v13, v12

    aput-object v1, v13, v5

    aput-object v10, v13, v4

    const/4 v1, 0x6

    aput-object v8, v13, v1

    .line 107
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    .line 124
    sget-object v1, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS_LEGACY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 127
    invoke-static {p0}, Lcom/android/systemui/util/NotificationChannels;->isTv(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    new-instance v1, Landroid/app/NotificationChannel;

    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->TVPIP:Ljava/lang/String;

    sget v3, Lcom/android/systemui/R$string;->notification_channel_tv_pip:I

    .line 133
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 131
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 137
    :cond_1
    invoke-static {p0, v0}, Lcom/android/systemui/util/NotificationChannels;->resetMMSDefaultChannelIfNeeded(Landroid/content/Context;Landroid/app/NotificationManager;)V

    return-void
.end method

.method static createScreenshotChannel(Ljava/lang/String;Landroid/app/NotificationChannel;)Landroid/app/NotificationChannel;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 170
    new-instance v0, Landroid/app/NotificationChannel;

    sget-object v1, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS_HEADSUP:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-direct {v0, v1, p0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 173
    new-instance p0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x5

    .line 174
    invoke-virtual {p0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    const/4 v1, 0x0

    .line 173
    invoke-virtual {v0, v1, p0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 p0, 0x1

    .line 175
    invoke-virtual {v0, p0}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    if-eqz p1, :cond_3

    .line 179
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result p0

    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setImportance(I)V

    :cond_0
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_1

    .line 184
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    :cond_1
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_2

    .line 187
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    :cond_2
    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_3

    .line 190
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/NotificationChannel;->setLightColor(I)V

    :cond_3
    return-object v0
.end method

.method private static isTv(Landroid/content/Context;)Z
    .locals 1

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.software.leanback"

    .line 205
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static resetMMSDefaultChannelIfNeeded(Landroid/content/Context;Landroid/app/NotificationManager;)V
    .locals 8

    const-string p1, "notification"

    .line 143
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p1

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x200

    .line 145
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    move v6, v0

    .line 146
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 147
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_0

    .line 148
    sget-object v0, Lcom/android/systemui/util/NotificationChannels;->ONEPLUS_PACKAGENAME_MMS:Ljava/lang/String;

    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    :try_start_0
    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v3, "default"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Landroid/app/INotificationManager;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 152
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 153
    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {p1, v1, v2, v0}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public start()V
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/NotificationChannels;->createAll(Landroid/content/Context;)V

    return-void
.end method
