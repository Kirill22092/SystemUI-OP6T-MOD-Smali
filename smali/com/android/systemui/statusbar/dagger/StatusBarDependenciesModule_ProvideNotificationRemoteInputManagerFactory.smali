.class public final Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;
.super Ljava/lang/Object;
.source "StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final actionClickLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/ActionClickLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final clickNotifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationClickNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final lockscreenUserManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mainHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
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

.field private final remoteInputUriControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputUriController;",
            ">;"
        }
    .end annotation
.end field

.field private final smartReplyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputUriController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationClickNotifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/ActionClickLogger;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p2, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;->lockscreenUserManagerProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p3, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;->smartReplyControllerProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p4, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p5, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;->statusBarLazyProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p6, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p7, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p8, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;->remoteInputUriControllerProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p9, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;->clickNotifierProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p10, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;->actionClickLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputUriController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationClickNotifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/ActionClickLogger;",
            ">;)",
            "Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;"
        }
    .end annotation

    .line 119
    new-instance v11, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v11
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputUriController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationClickNotifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/ActionClickLogger;",
            ">;)",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;"
        }
    .end annotation

    .line 96
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 97
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 98
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/SmartReplyController;

    .line 99
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 100
    invoke-static {p4}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v4

    .line 101
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 102
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Handler;

    .line 103
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/policy/RemoteInputUriController;

    .line 104
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/NotificationClickNotifier;

    .line 105
    invoke-interface/range {p9 .. p9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/ActionClickLogger;

    move-object p0, v0

    move-object p1, v1

    move-object p2, v2

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    .line 95
    invoke-static/range {p0 .. p9}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;->proxyProvideNotificationRemoteInputManager(Landroid/content/Context;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Ldagger/Lazy;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/RemoteInputUriController;Lcom/android/systemui/statusbar/NotificationClickNotifier;Lcom/android/systemui/statusbar/ActionClickLogger;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-result-object v0

    return-object v0
.end method

.method public static proxyProvideNotificationRemoteInputManager(Landroid/content/Context;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Ldagger/Lazy;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/RemoteInputUriController;Lcom/android/systemui/statusbar/NotificationClickNotifier;Lcom/android/systemui/statusbar/ActionClickLogger;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/statusbar/policy/RemoteInputUriController;",
            "Lcom/android/systemui/statusbar/NotificationClickNotifier;",
            "Lcom/android/systemui/statusbar/ActionClickLogger;",
            ")",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;"
        }
    .end annotation

    .line 144
    invoke-static/range {p0 .. p9}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule;->provideNotificationRemoteInputManager(Landroid/content/Context;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Ldagger/Lazy;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/RemoteInputUriController;Lcom/android/systemui/statusbar/NotificationClickNotifier;Lcom/android/systemui/statusbar/ActionClickLogger;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 143
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
    .locals 10

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;->lockscreenUserManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;->smartReplyControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;->statusBarLazyProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;->remoteInputUriControllerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;->clickNotifierProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;->actionClickLoggerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v9}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationRemoteInputManagerFactory;->get()Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-result-object p0

    return-object p0
.end method
