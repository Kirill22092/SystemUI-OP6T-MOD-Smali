.class public Lcom/android/systemui/pip/tv/PipNotification;
.super Ljava/lang/Object;
.source "PipNotification.java"


# static fields
.field private static final DEBUG:Z

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "PipNotification"


# instance fields
.field private mArt:Landroid/graphics/Bitmap;

.field private mDefaultIconResId:I

.field private mDefaultTitle:Ljava/lang/String;

.field private final mEventReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaController:Landroid/media/session/MediaController;

.field private mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

.field private mMediaTitle:Ljava/lang/String;

.field private final mNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mNotified:Z

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;

.field private mPipListener:Lcom/android/systemui/pip/tv/PipManager$Listener;

.field private final mPipManager:Lcom/android/systemui/pip/tv/PipManager;

.field private final mPipMediaListener:Lcom/android/systemui/pip/tv/PipManager$MediaListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/pip/tv/PipNotification;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/pip/tv/PipManager;)V
    .locals 5

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/android/systemui/pip/tv/PipNotification$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipNotification$1;-><init>(Lcom/android/systemui/pip/tv/PipNotification;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipListener:Lcom/android/systemui/pip/tv/PipManager$Listener;

    .line 108
    new-instance v0, Lcom/android/systemui/pip/tv/PipNotification$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipNotification$2;-><init>(Lcom/android/systemui/pip/tv/PipNotification;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    .line 118
    new-instance v0, Lcom/android/systemui/pip/tv/PipNotification$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipNotification$3;-><init>(Lcom/android/systemui/pip/tv/PipNotification;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipMediaListener:Lcom/android/systemui/pip/tv/PipManager$MediaListener;

    .line 139
    new-instance v0, Lcom/android/systemui/pip/tv/PipNotification$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipNotification$4;-><init>(Lcom/android/systemui/pip/tv/PipNotification;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "notification"

    .line 160
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 163
    new-instance v0, Landroid/app/Notification$Builder;

    sget-object v1, Lcom/android/systemui/util/NotificationChannels;->TVPIP:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 164
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 165
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string/jumbo v1, "sys"

    .line 166
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$TvExtender;

    invoke-direct {v1}, Landroid/app/Notification$TvExtender;-><init>()V

    const-string v2, "PipNotification.menu"

    .line 168
    invoke-static {p1, v2}, Lcom/android/systemui/pip/tv/PipNotification;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$TvExtender;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$TvExtender;

    move-result-object v1

    const-string v3, "PipNotification.close"

    .line 169
    invoke-static {p1, v3}, Lcom/android/systemui/pip/tv/PipNotification;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$TvExtender;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$TvExtender;

    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 171
    iput-object p3, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    .line 172
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipListener:Lcom/android/systemui/pip/tv/PipManager$Listener;

    invoke-virtual {p3, v0}, Lcom/android/systemui/pip/tv/PipManager;->addListener(Lcom/android/systemui/pip/tv/PipManager$Listener;)V

    .line 173
    iget-object p3, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipMediaListener:Lcom/android/systemui/pip/tv/PipManager$MediaListener;

    invoke-virtual {p3, v0}, Lcom/android/systemui/pip/tv/PipManager;->addMediaListener(Lcom/android/systemui/pip/tv/PipManager$MediaListener;)V

    .line 175
    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    .line 176
    invoke-virtual {p3, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p3, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v0, p3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/tv/PipNotification;->onConfigurationChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/pip/tv/PipNotification;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/pip/tv/PipNotification;)Z
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipNotification;->updateMediaControllerMetadata()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/pip/tv/PipNotification;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipNotification;->notifyPipNotification()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/pip/tv/PipNotification;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipNotification;->dismissPipNotification()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/pip/tv/PipNotification;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotified:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/pip/tv/PipNotification;)Lcom/android/systemui/pip/tv/PipManager;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/pip/tv/PipNotification;)Landroid/media/session/MediaController;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mMediaController:Landroid/media/session/MediaController;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/systemui/pip/tv/PipNotification;Landroid/media/session/MediaController;)Landroid/media/session/MediaController;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mMediaController:Landroid/media/session/MediaController;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/pip/tv/PipNotification;)Landroid/media/session/MediaController$Callback;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    return-object p0
.end method

.method static synthetic access$800()Z
    .locals 1

    .line 47
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipNotification;->DEBUG:Z

    return v0
.end method

.method private static createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .line 265
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/high16 v1, 0x10000000

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private dismissPipNotification()V
    .locals 2

    const/4 v0, 0x0

    .line 214
    iput-boolean v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotified:Z

    .line 215
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v0, Lcom/android/systemui/pip/tv/PipNotification;->NOTIFICATION_TAG:Ljava/lang/String;

    const/16 v1, 0x44c

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method private getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 258
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getNotificationTitle()Ljava/lang/String;
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mMediaTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mMediaTitle:Ljava/lang/String;

    return-object p0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/tv/PipNotification;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 252
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mDefaultTitle:Ljava/lang/String;

    return-object p0
.end method

.method private notifyPipNotification()V
    .locals 3

    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotified:Z

    .line 198
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 199
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mDefaultIconResId:I

    .line 201
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipNotification;->getNotificationTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 203
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mArt:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v1, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipNotification;->mArt:Landroid/graphics/Bitmap;

    .line 205
    invoke-virtual {v1, v2}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 209
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/android/systemui/pip/tv/PipNotification;->NOTIFICATION_TAG:Ljava/lang/String;

    const/16 v2, 0x44c

    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 210
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    .line 209
    invoke-virtual {v0, v1, v2, p0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private updateMediaControllerMetadata()Z
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/pip/tv/PipManager;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/pip/tv/PipManager;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "android.media.metadata.DISPLAY_TITLE"

    .line 224
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "android.media.metadata.TITLE"

    .line 226
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "android.media.metadata.ALBUM_ART"

    .line 228
    invoke-virtual {v0, v2}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "android.media.metadata.ART"

    .line 230
    invoke-virtual {v0, v2}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 234
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipNotification;->mMediaTitle:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipNotification;->mArt:Landroid/graphics/Bitmap;

    if-eq v0, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return p0

    .line 235
    :cond_4
    :goto_1
    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mMediaTitle:Ljava/lang/String;

    .line 236
    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mArt:Landroid/graphics/Bitmap;

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method onConfigurationChanged(Landroid/content/Context;)V
    .locals 1

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 188
    sget v0, Lcom/android/systemui/R$string;->pip_notification_unknown_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mDefaultTitle:Ljava/lang/String;

    .line 189
    sget p1, Lcom/android/systemui/R$drawable;->pip_icon:I

    iput p1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mDefaultIconResId:I

    .line 190
    iget-boolean p1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotified:Z

    if-eqz p1, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipNotification;->notifyPipNotification()V

    :cond_0
    return-void
.end method
