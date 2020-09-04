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

.field private final mNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mNotified:Z

.field private mPipListener:Lcom/android/systemui/pip/tv/PipManager$Listener;

.field private final mPipManager:Lcom/android/systemui/pip/tv/PipManager;

.field private final mPipMediaListener:Lcom/android/systemui/pip/tv/PipManager$MediaListener;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/pip/tv/PipNotification;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Lcom/android/systemui/pip/tv/PipManager;->getInstance()Lcom/android/systemui/pip/tv/PipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    .line 65
    new-instance v0, Lcom/android/systemui/pip/tv/PipNotification$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipNotification$1;-><init>(Lcom/android/systemui/pip/tv/PipNotification;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipListener:Lcom/android/systemui/pip/tv/PipManager$Listener;

    .line 98
    new-instance v0, Lcom/android/systemui/pip/tv/PipNotification$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipNotification$2;-><init>(Lcom/android/systemui/pip/tv/PipNotification;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    .line 108
    new-instance v0, Lcom/android/systemui/pip/tv/PipNotification$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipNotification$3;-><init>(Lcom/android/systemui/pip/tv/PipNotification;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipMediaListener:Lcom/android/systemui/pip/tv/PipManager$MediaListener;

    .line 129
    new-instance v0, Lcom/android/systemui/pip/tv/PipNotification$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipNotification$4;-><init>(Lcom/android/systemui/pip/tv/PipNotification;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mEventReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "notification"

    .line 147
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 150
    new-instance v0, Landroid/app/Notification$Builder;

    sget-object v1, Lcom/android/systemui/util/NotificationChannels;->TVPIP:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 151
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 152
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "sys"

    .line 153
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$TvExtender;

    invoke-direct {v1}, Landroid/app/Notification$TvExtender;-><init>()V

    const-string v2, "PipNotification.menu"

    .line 155
    invoke-static {p1, v2}, Lcom/android/systemui/pip/tv/PipNotification;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$TvExtender;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$TvExtender;

    move-result-object v1

    const-string v3, "PipNotification.close"

    .line 156
    invoke-static {p1, v3}, Lcom/android/systemui/pip/tv/PipNotification;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$TvExtender;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$TvExtender;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 158
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipListener:Lcom/android/systemui/pip/tv/PipManager$Listener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipManager;->addListener(Lcom/android/systemui/pip/tv/PipManager$Listener;)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipMediaListener:Lcom/android/systemui/pip/tv/PipManager$MediaListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipManager;->addMediaListener(Lcom/android/systemui/pip/tv/PipManager$MediaListener;)V

    .line 161
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 162
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/tv/PipNotification;->onConfigurationChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/pip/tv/PipNotification;)Z
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipNotification;->updateMediaControllerMetadata()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/pip/tv/PipNotification;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipNotification;->notifyPipNotification()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/pip/tv/PipNotification;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipNotification;->dismissPipNotification()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/pip/tv/PipNotification;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotified:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/pip/tv/PipNotification;)Lcom/android/systemui/pip/tv/PipManager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/pip/tv/PipNotification;)Landroid/media/session/MediaController;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mMediaController:Landroid/media/session/MediaController;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/systemui/pip/tv/PipNotification;Landroid/media/session/MediaController;)Landroid/media/session/MediaController;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mMediaController:Landroid/media/session/MediaController;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/pip/tv/PipNotification;)Landroid/media/session/MediaController$Callback;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    return-object p0
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 44
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipNotification;->DEBUG:Z

    return v0
.end method

.method private static createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .line 229
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

    .line 200
    iput-boolean v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotified:Z

    .line 201
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v0, Lcom/android/systemui/pip/tv/PipNotification;->NOTIFICATION_TAG:Ljava/lang/String;

    const/16 v1, 0x44c

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method private notifyPipNotification()V
    .locals 3

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotified:Z

    .line 184
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 185
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mDefaultIconResId:I

    .line 187
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mTitle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mDefaultTitle:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 189
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mArt:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v1, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipNotification;->mArt:Landroid/graphics/Bitmap;

    .line 191
    invoke-virtual {v1, v2}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v1

    .line 190
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 195
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/android/systemui/pip/tv/PipNotification;->NOTIFICATION_TAG:Ljava/lang/String;

    const/16 v2, 0x44c

    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 196
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    .line 195
    invoke-virtual {v0, v1, v2, p0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private updateMediaControllerMetadata()Z
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/pip/tv/PipManager;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/pip/tv/PipManager;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "android.media.metadata.DISPLAY_TITLE"

    .line 210
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "android.media.metadata.TITLE"

    .line 212
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "android.media.metadata.ALBUM_ART"

    .line 214
    invoke-virtual {v0, v2}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "android.media.metadata.ART"

    .line 216
    invoke-virtual {v0, v2}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 220
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipNotification;->mTitle:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipNotification;->mArt:Landroid/graphics/Bitmap;

    if-eq v0, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return p0

    .line 221
    :cond_4
    :goto_1
    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mTitle:Ljava/lang/String;

    .line 222
    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mArt:Landroid/graphics/Bitmap;

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method onConfigurationChanged(Landroid/content/Context;)V
    .locals 1

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 174
    sget v0, Lcom/android/systemui/R$string;->pip_notification_unknown_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mDefaultTitle:Ljava/lang/String;

    .line 175
    sget p1, Lcom/android/systemui/R$drawable;->pip_icon:I

    iput p1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mDefaultIconResId:I

    .line 176
    iget-boolean p1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotified:Z

    if-eqz p1, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipNotification;->notifyPipNotification()V

    :cond_0
    return-void
.end method
