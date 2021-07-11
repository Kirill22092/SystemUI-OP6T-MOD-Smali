.class public final Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;
.super Ljava/lang/Object;
.source "BubbleModule_NewBubbleControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/bubbles/BubbleController;",
        ">;"
    }
.end annotation


# instance fields
.field private final bubbleDataRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleDataRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final configurationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
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

.field private final dataProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleData;",
            ">;"
        }
    .end annotation
.end field

.field private final dumpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;"
        }
    .end annotation
.end field

.field private final entryManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;"
        }
    .end annotation
.end field

.field private final featureFlagsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final floatingContentCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/FloatingContentCoordinator;",
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

.field private final interruptionStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final launcherAppsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/LauncherApps;",
            ">;"
        }
    .end annotation
.end field

.field private final notifManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/INotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private final notifPipelineProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            ">;"
        }
    .end annotation
.end field

.field private final notifUserManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationShadeWindowControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;",
            ">;"
        }
    .end annotation
.end field

.field private final shadeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
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

.field private final sysUiStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;"
        }
    .end annotation
.end field

.field private final windowManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/WindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private final zenModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ZenModeController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleData;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ZenModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/FloatingContentCoordinator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleDataRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/INotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/WindowManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/LauncherApps;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 99
    iput-object v1, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->contextProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 100
    iput-object v1, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 101
    iput-object v1, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 102
    iput-object v1, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->shadeControllerProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 103
    iput-object v1, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->dataProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 104
    iput-object v1, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->configurationControllerProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 105
    iput-object v1, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->interruptionStateProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 106
    iput-object v1, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->zenModeControllerProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 107
    iput-object v1, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->notifUserManagerProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 108
    iput-object v1, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->groupManagerProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 109
    iput-object v1, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->entryManagerProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 110
    iput-object v1, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->notifPipelineProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 111
    iput-object v1, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->featureFlagsProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 112
    iput-object v1, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 113
    iput-object v1, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->floatingContentCoordinatorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 114
    iput-object v1, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->bubbleDataRepositoryProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 115
    iput-object v1, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->sysUiStateProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 116
    iput-object v1, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->notifManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    .line 117
    iput-object v1, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->statusBarServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p20

    .line 118
    iput-object v1, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->windowManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p21

    .line 119
    iput-object v1, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->launcherAppsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleData;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ZenModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/FloatingContentCoordinator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleDataRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/INotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/WindowManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/LauncherApps;",
            ">;)",
            "Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;"
        }
    .end annotation

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

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    .line 216
    new-instance v22, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;

    move-object/from16 v0, v22

    invoke-direct/range {v0 .. v21}, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v22
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/bubbles/BubbleController;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleData;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ZenModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/FloatingContentCoordinator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleDataRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/INotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/WindowManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/LauncherApps;",
            ">;)",
            "Lcom/android/systemui/bubbles/BubbleController;"
        }
    .end annotation

    .line 171
    invoke-interface/range {p0 .. p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    .line 172
    invoke-interface/range {p1 .. p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    .line 173
    invoke-interface/range {p2 .. p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 174
    invoke-interface/range {p3 .. p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 175
    invoke-interface/range {p4 .. p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/bubbles/BubbleData;

    .line 176
    invoke-interface/range {p5 .. p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 177
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    .line 178
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 179
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 180
    invoke-interface/range {p9 .. p9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 181
    invoke-interface/range {p10 .. p10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 182
    invoke-interface/range {p11 .. p11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 183
    invoke-interface/range {p12 .. p12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/systemui/statusbar/FeatureFlags;

    .line 184
    invoke-interface/range {p13 .. p13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/systemui/dump/DumpManager;

    .line 185
    invoke-interface/range {p14 .. p14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/systemui/util/FloatingContentCoordinator;

    .line 186
    invoke-interface/range {p15 .. p15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/systemui/bubbles/BubbleDataRepository;

    .line 187
    invoke-interface/range {p16 .. p16}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/systemui/model/SysUiState;

    .line 188
    invoke-interface/range {p17 .. p17}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/app/INotificationManager;

    .line 189
    invoke-interface/range {p18 .. p18}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/internal/statusbar/IStatusBarService;

    .line 190
    invoke-interface/range {p19 .. p19}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/view/WindowManager;

    .line 191
    invoke-interface/range {p20 .. p20}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/content/pm/LauncherApps;

    .line 170
    invoke-static/range {v1 .. v21}, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->proxyNewBubbleController(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/bubbles/BubbleData;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/FloatingContentCoordinator;Lcom/android/systemui/bubbles/BubbleDataRepository;Lcom/android/systemui/model/SysUiState;Landroid/app/INotificationManager;Lcom/android/internal/statusbar/IStatusBarService;Landroid/view/WindowManager;Landroid/content/pm/LauncherApps;)Lcom/android/systemui/bubbles/BubbleController;

    move-result-object v0

    return-object v0
.end method

.method public static proxyNewBubbleController(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/bubbles/BubbleData;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/FloatingContentCoordinator;Lcom/android/systemui/bubbles/BubbleDataRepository;Lcom/android/systemui/model/SysUiState;Landroid/app/INotificationManager;Lcom/android/internal/statusbar/IStatusBarService;Landroid/view/WindowManager;Landroid/content/pm/LauncherApps;)Lcom/android/systemui/bubbles/BubbleController;
    .locals 2

    .line 263
    invoke-static/range {p0 .. p20}, Lcom/android/systemui/bubbles/dagger/BubbleModule;->newBubbleController(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/bubbles/BubbleData;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/FloatingContentCoordinator;Lcom/android/systemui/bubbles/BubbleDataRepository;Lcom/android/systemui/model/SysUiState;Landroid/app/INotificationManager;Lcom/android/internal/statusbar/IStatusBarService;Landroid/view/WindowManager;Landroid/content/pm/LauncherApps;)Lcom/android/systemui/bubbles/BubbleController;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 262
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/bubbles/BubbleController;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/bubbles/BubbleController;
    .locals 23

    move-object/from16 v0, p0

    .line 124
    iget-object v1, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->shadeControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->dataProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->configurationControllerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->interruptionStateProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->zenModeControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->notifUserManagerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->groupManagerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->entryManagerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->notifPipelineProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->floatingContentCoordinatorProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->bubbleDataRepositoryProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->sysUiStateProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->notifManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->statusBarServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->windowManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v1

    iget-object v0, v0, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->launcherAppsProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v0

    move-object/from16 v1, v22

    invoke-static/range {v1 .. v21}, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/bubbles/BubbleController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/dagger/BubbleModule_NewBubbleControllerFactory;->get()Lcom/android/systemui/bubbles/BubbleController;

    move-result-object p0

    return-object p0
.end method
