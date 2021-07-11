.class public Lcom/android/systemui/screenshot/ScreenshotNotificationsController;
.super Ljava/lang/Object;
.source "ScreenshotNotificationsController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mResources:Landroid/content/res/Resources;

    const-string v0, "notification"

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 69
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mResources:Landroid/content/res/Resources;

    const v0, 0x1050006

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 72
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 73
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 79
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/android/systemui/R$dimen;->notification_panel_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 87
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/android/systemui/R$dimen;->notification_max_height:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 90
    new-instance p0, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {p0}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    return-void
.end method

.method static cancelScreenshotNotification(Landroid/content/Context;)V
    .locals 1

    const-string v0, "notification"

    .line 290
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/4 v0, 0x1

    .line 291
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method


# virtual methods
.method public notifyScreenshotError(I)V
    .locals 10

    .line 234
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 235
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 238
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v2, Lcom/android/systemui/R$string;->screenshot_failed_title:I

    .line 239
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->screenshot_failed_title:I

    .line 240
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 241
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->stat_notify_image_error:I

    .line 242
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 244
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v2, "err"

    .line 245
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 246
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mContext:Landroid/content/Context;

    const v3, 0x106001c

    .line 247
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 249
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    .line 250
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    const-string v3, "policy_disable_screen_capture"

    .line 252
    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 254
    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v7, 0x4000000

    const/4 v8, 0x0

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 256
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 259
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 261
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 262
    invoke-virtual {v2, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    .line 263
    invoke-virtual {p1}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object p1

    .line 264
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
