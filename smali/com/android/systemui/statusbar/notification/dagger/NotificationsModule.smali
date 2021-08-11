.class public interface abstract Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule;
.super Ljava/lang/Object;
.source "NotificationsModule.java"


# direct methods
.method public static provideCommonNotifCollection(Lcom/android/systemui/statusbar/FeatureFlags;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ")",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/FeatureFlags;->isNewNotifPipelineRenderingEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    :cond_0
    return-object p2
.end method

.method public static provideNotificationBlockingHelperManager(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/internal/logging/MetricsLogger;)Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/internal/logging/MetricsLogger;)V

    return-object v0
.end method

.method public static provideNotificationEntryManager(Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;Lcom/android/systemui/statusbar/FeatureFlags;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/util/leak/LeakDetector;Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinder;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;",
            "Lcom/android/systemui/util/leak/LeakDetector;",
            "Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;",
            ")",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;"
        }
    .end annotation

    new-instance v10, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;-><init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;Lcom/android/systemui/statusbar/FeatureFlags;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/util/leak/LeakDetector;Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;)V

    return-object v10
.end method

.method public static provideNotificationGutsManager(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Ldagger/Lazy;Landroid/os/Handler;Landroid/os/Handler;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;Landroid/app/INotificationManager;Landroid/content/pm/LauncherApps;Landroid/content/pm/ShortcutManager;Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;Lcom/android/systemui/settings/CurrentUserContextTracker;Ljavax/inject/Provider;Lcom/android/systemui/bubbles/BubbleController;Lcom/android/internal/logging/UiEventLogger;)Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Landroid/os/Handler;",
            "Landroid/os/Handler;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;",
            "Landroid/app/INotificationManager;",
            "Landroid/content/pm/LauncherApps;",
            "Landroid/content/pm/ShortcutManager;",
            "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;",
            "Lcom/android/systemui/settings/CurrentUserContextTracker;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/PriorityOnboardingDialogController$Builder;",
            ">;",
            "Lcom/android/systemui/bubbles/BubbleController;",
            "Lcom/android/internal/logging/UiEventLogger;",
            ")",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;"
        }
    .end annotation

    new-instance v16, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Ldagger/Lazy;Landroid/os/Handler;Landroid/os/Handler;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;Landroid/app/INotificationManager;Landroid/content/pm/LauncherApps;Landroid/content/pm/ShortcutManager;Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;Lcom/android/systemui/settings/CurrentUserContextTracker;Ljavax/inject/Provider;Lcom/android/systemui/bubbles/BubbleController;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v16
.end method

.method public static provideNotificationLogger(Lcom/android/systemui/statusbar/NotificationListener;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;
    .locals 8

    new-instance v7, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;-><init>(Lcom/android/systemui/statusbar/NotificationListener;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;)V

    return-object v7
.end method

.method public static provideNotificationPanelLogger()Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLoggerImpl;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLoggerImpl;-><init>()V

    return-object v0
.end method

.method public static provideNotificationsController(Landroid/content/Context;Ldagger/Lazy;Ldagger/Lazy;)Lcom/android/systemui/statusbar/notification/init/NotificationsController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsControllerStub;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsController;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$bool;->config_renderNotifications:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    return-object p0

    :cond_0
    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    return-object p0
.end method

.method public static provideVisualStabilityManager(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Landroid/os/Handler;)Lcom/android/systemui/statusbar/notification/VisualStabilityManager;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;-><init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Landroid/os/Handler;)V

    return-object v0
.end method
