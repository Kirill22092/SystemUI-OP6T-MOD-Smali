.class public final Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationBlockingHelperManagerFactory;
.super Ljava/lang/Object;
.source "NotificationsModule_ProvideNotificationBlockingHelperManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final metricsLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationEntryManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationGutsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationBlockingHelperManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationBlockingHelperManagerFactory;->notificationGutsManagerProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationBlockingHelperManagerFactory;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationBlockingHelperManagerFactory;->metricsLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationBlockingHelperManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationBlockingHelperManagerFactory;"
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationBlockingHelperManagerFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationBlockingHelperManagerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;"
        }
    .end annotation

    .line 52
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    .line 53
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 54
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 55
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/logging/MetricsLogger;

    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationBlockingHelperManagerFactory;->proxyProvideNotificationBlockingHelperManager(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/internal/logging/MetricsLogger;)Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideNotificationBlockingHelperManager(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/internal/logging/MetricsLogger;)Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;
    .locals 0

    .line 76
    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule;->provideNotificationBlockingHelperManager(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/internal/logging/MetricsLogger;)Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 75
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationBlockingHelperManagerFactory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationBlockingHelperManagerFactory;->notificationGutsManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationBlockingHelperManagerFactory;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationBlockingHelperManagerFactory;->metricsLoggerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationBlockingHelperManagerFactory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationBlockingHelperManagerFactory;->get()Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;

    move-result-object p0

    return-object p0
.end method
