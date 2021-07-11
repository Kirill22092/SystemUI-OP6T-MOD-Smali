.class public final Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationLoggerFactory;
.super Ljava/lang/Object;
.source "NotificationsModule_ProvideNotificationLoggerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
        ">;"
    }
.end annotation


# instance fields
.field private final entryManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;"
        }
    .end annotation
.end field

.field private final expansionStateLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationPanelLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final uiBgExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationLoggerFactory;->notificationListenerProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationLoggerFactory;->uiBgExecutorProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationLoggerFactory;->entryManagerProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationLoggerFactory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationLoggerFactory;->expansionStateLoggerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationLoggerFactory;->notificationPanelLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationLoggerFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationLoggerFactory;"
        }
    .end annotation

    .line 80
    new-instance v7, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationLoggerFactory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationLoggerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;"
        }
    .end annotation

    .line 65
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationListener;

    .line 66
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 67
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 68
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 69
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;

    .line 70
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;

    .line 64
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationLoggerFactory;->proxyProvideNotificationLogger(Lcom/android/systemui/statusbar/NotificationListener;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideNotificationLogger(Lcom/android/systemui/statusbar/NotificationListener;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;
    .locals 0

    .line 97
    invoke-static/range {p0 .. p5}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule;->provideNotificationLogger(Lcom/android/systemui/statusbar/NotificationListener;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 96
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;
    .locals 6

    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationLoggerFactory;->notificationListenerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationLoggerFactory;->uiBgExecutorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationLoggerFactory;->entryManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationLoggerFactory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationLoggerFactory;->expansionStateLoggerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationLoggerFactory;->notificationPanelLoggerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationLoggerFactory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationLoggerFactory;->get()Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    move-result-object p0

    return-object p0
.end method
