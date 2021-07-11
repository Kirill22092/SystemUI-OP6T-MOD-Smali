.class public final Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;
.super Ljava/lang/Object;
.source "StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final bubbleControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleController;",
            ">;"
        }
    .end annotation
.end field

.field private final bypassControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
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

.field private final dynamicChildBindControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/DynamicChildBindController;",
            ">;"
        }
    .end annotation
.end field

.field private final fgsSectionControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;",
            ">;"
        }
    .end annotation
.end field

.field private final groupManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;"
        }
    .end annotation
.end field

.field private final lowPriorityInflationHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;",
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

.field private final notificationLockscreenUserManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;"
        }
    .end annotation
.end field

.field private final privacyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
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

.field private final visualStabilityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/DynamicChildBindController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 69
    iput-object p2, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    .line 70
    iput-object p3, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->notificationLockscreenUserManagerProvider:Ljavax/inject/Provider;

    .line 71
    iput-object p4, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->groupManagerProvider:Ljavax/inject/Provider;

    .line 72
    iput-object p5, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    .line 73
    iput-object p6, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 74
    iput-object p7, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    .line 75
    iput-object p8, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->bypassControllerProvider:Ljavax/inject/Provider;

    .line 76
    iput-object p9, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->bubbleControllerProvider:Ljavax/inject/Provider;

    .line 77
    iput-object p10, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->privacyControllerProvider:Ljavax/inject/Provider;

    .line 78
    iput-object p11, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->fgsSectionControllerProvider:Ljavax/inject/Provider;

    .line 79
    iput-object p12, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->dynamicChildBindControllerProvider:Ljavax/inject/Provider;

    .line 80
    iput-object p13, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->lowPriorityInflationHelperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/DynamicChildBindController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;",
            ">;)",
            "Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;"
        }
    .end annotation

    .line 145
    new-instance v14, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;

    move-object v0, v14

    move-object v1, p0

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

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v14
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/DynamicChildBindController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;",
            ">;)",
            "Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;"
        }
    .end annotation

    .line 116
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 117
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 118
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 119
    invoke-interface/range {p3 .. p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 120
    invoke-interface/range {p4 .. p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 121
    invoke-interface/range {p5 .. p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 122
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 123
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 124
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/bubbles/BubbleController;

    .line 125
    invoke-interface/range {p9 .. p9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    .line 126
    invoke-interface/range {p10 .. p10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;

    .line 127
    invoke-interface/range {p11 .. p11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/notification/DynamicChildBindController;

    .line 128
    invoke-interface/range {p12 .. p12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;

    move-object p0, v0

    move-object p1, v1

    move-object p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    .line 115
    invoke-static/range {p0 .. p12}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->proxyProvideNotificationViewHierarchyManager(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;Lcom/android/systemui/statusbar/notification/DynamicChildBindController;Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;)Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    move-result-object v0

    return-object v0
.end method

.method public static proxyProvideNotificationViewHierarchyManager(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;Lcom/android/systemui/statusbar/notification/DynamicChildBindController;Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;)Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;
    .locals 0

    .line 176
    invoke-static/range {p0 .. p12}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule;->provideNotificationViewHierarchyManager(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;Lcom/android/systemui/statusbar/notification/DynamicChildBindController;Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;)Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 175
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;
    .locals 13

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->notificationLockscreenUserManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->groupManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->bypassControllerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->bubbleControllerProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->privacyControllerProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->fgsSectionControllerProvider:Ljavax/inject/Provider;

    iget-object v11, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->dynamicChildBindControllerProvider:Ljavax/inject/Provider;

    iget-object v12, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->lowPriorityInflationHelperProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v12}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_ProvideNotificationViewHierarchyManagerFactory;->get()Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    move-result-object p0

    return-object p0
.end method
