.class Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;
.super Ljava/lang/Object;
.source "StatusBarNotificationActivityStarter.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationEntryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Handler;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/NotificationClickNotifier;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/app/KeyguardManager;Landroid/service/dreams/IDreamManager;Lcom/android/systemui/bubbles/BubbleController;Ldagger/Lazy;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;Lcom/android/systemui/ActivityIntentHelper;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPendingEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 6

    .line 245
    const-class v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 247
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 250
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 251
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 252
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v4

    :cond_1
    if-eqz v4, :cond_2

    const-string v3, "InCallActivity"

    .line 255
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->access$000(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    if-eqz v1, :cond_4

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    const-wide/16 v3, 0x44c

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 264
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    invoke-static {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->access$002(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Z)Z

    return-void

    .line 268
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
