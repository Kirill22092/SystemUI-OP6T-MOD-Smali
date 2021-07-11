.class public Lcom/android/systemui/screenshot/GlobalScreenshot$ActionProxyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionProxyReceiver"
.end annotation


# instance fields
.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public constructor <init>(Ljava/util/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;)V"
        }
    .end annotation

    .line 1147
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 1148
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldagger/Lazy;

    if-eqz p1, :cond_0

    .line 1149
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    :cond_0
    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$ActionProxyReceiver;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method static synthetic lambda$onReceive$0(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 10

    const-string v0, "GlobalScreenshot"

    .line 1156
    :try_start_0
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    const-string v2, "screenshot"

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->closeSystemWindows(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1157
    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, "android:screenshot_action_intent"

    .line 1164
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/app/PendingIntent;

    const-string v1, "android:screenshot_cancel_notification"

    const/4 v3, 0x0

    .line 1165
    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1166
    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->cancelScreenshotNotification(Landroid/content/Context;)V

    .line 1168
    :cond_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    const-string v4, "android:screenshot_disallow_enter_pip"

    .line 1170
    invoke-virtual {p0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    .line 1169
    invoke-virtual {v1, p0}, Landroid/app/ActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1172
    :try_start_1
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Pending intent canceled"

    .line 1174
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :catch_1
    move-exception p0

    const-string p1, "Unable to share screenshot"

    .line 1160
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1154
    new-instance v1, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$ActionProxyReceiver$tBhjeKzNYNKU1TanWTPaMXUfmOc;

    invoke-direct {v1, p2, p1}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$ActionProxyReceiver$tBhjeKzNYNKU1TanWTPaMXUfmOc;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    .line 1179
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$ActionProxyReceiver;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 1180
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    goto :goto_0

    .line 1184
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    const-string p0, "android:smart_actions_enabled"

    const/4 v0, 0x0

    .line 1187
    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1188
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Edit"

    goto :goto_1

    :cond_1
    const-string p0, "Share"

    :goto_1
    const-string v1, "android:screenshot_id"

    .line 1192
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1191
    invoke-static {p1, p2, p0, v0}, Lcom/android/systemui/screenshot/ScreenshotSmartActions;->notifyScreenshotAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method
