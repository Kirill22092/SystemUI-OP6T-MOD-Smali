.class public Lcom/android/systemui/screenshot/GlobalScreenshot$DeleteScreenshotReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteScreenshotReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1211
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p0, "android:screenshot_uri_id"

    .line 1214
    invoke-virtual {p2, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1219
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->cancelScreenshotNotification(Landroid/content/Context;)V

    .line 1222
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 1223
    new-instance v0, Lcom/android/systemui/screenshot/DeleteImageInBackgroundTask;

    invoke-direct {v0, p1}, Lcom/android/systemui/screenshot/DeleteImageInBackgroundTask;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string p0, "android:smart_actions_enabled"

    .line 1224
    invoke-virtual {p2, p0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "android:screenshot_id"

    .line 1226
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "Delete"

    .line 1225
    invoke-static {p1, p0, p2, v2}, Lcom/android/systemui/screenshot/ScreenshotSmartActions;->notifyScreenshotAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
