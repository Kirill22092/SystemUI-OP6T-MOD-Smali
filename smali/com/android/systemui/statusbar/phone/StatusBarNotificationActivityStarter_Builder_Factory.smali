.class public final Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;
.super Ljava/lang/Object;
.source "StatusBarNotificationActivityStarter_Builder_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityIntentHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ActivityIntentHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final activityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field private final assistManagerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;"
        }
    .end annotation
.end field

.field private final backgroundHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final bubbleControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleController;",
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

.field private final commandQueueProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
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

.field private final dreamManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/service/dreams/IDreamManager;",
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

.field private final groupManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;"
        }
    .end annotation
.end field

.field private final headsUpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/KeyguardManager;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final lockPatternUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/widget/LockPatternUtils;",
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

.field private final loggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final mainThreadHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
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

.field private final notifCollectionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifCollection;",
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

.field private final notificationInterruptStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteInputCallbackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteInputManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
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

.field private final statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifCollection;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationClickNotifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/KeyguardManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/service/dreams/IDreamManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ActivityIntentHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 124
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->contextProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 125
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->commandQueueProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 126
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->mainThreadHandlerProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 127
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->backgroundHandlerProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 128
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->uiBgExecutorProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 129
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->entryManagerProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 130
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->notifPipelineProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 131
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->notifCollectionProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 132
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->headsUpManagerProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 133
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 134
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->clickNotifierProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 135
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 136
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 137
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->keyguardManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 138
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->dreamManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 139
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->bubbleControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 140
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->assistManagerLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 141
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->remoteInputManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    .line 142
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->groupManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p20

    .line 143
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->lockscreenUserManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p21

    .line 144
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->shadeControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p22

    .line 145
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p23

    .line 146
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->notificationInterruptStateProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p24

    .line 147
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->lockPatternUtilsProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p25

    .line 148
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->remoteInputCallbackProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p26

    .line 149
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->activityIntentHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p27

    .line 150
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p28

    .line 151
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->metricsLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p29

    .line 152
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->loggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifCollection;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationClickNotifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/KeyguardManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/service/dreams/IDreamManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ActivityIntentHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;"
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

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    .line 281
    new-instance v30, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;

    move-object/from16 v0, v30

    invoke-direct/range {v0 .. v29}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v30
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifCollection;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationClickNotifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/KeyguardManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/service/dreams/IDreamManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ActivityIntentHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;"
        }
    .end annotation

    .line 219
    new-instance v30, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;

    move-object/from16 v0, v30

    .line 220
    invoke-interface/range {p0 .. p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 221
    invoke-interface/range {p1 .. p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue;

    .line 222
    invoke-interface/range {p2 .. p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 223
    invoke-interface/range {p3 .. p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    .line 224
    invoke-interface/range {p4 .. p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Executor;

    .line 225
    invoke-interface/range {p5 .. p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 226
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 227
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 228
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 229
    invoke-interface/range {p9 .. p9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/plugins/ActivityStarter;

    .line 230
    invoke-interface/range {p10 .. p10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/NotificationClickNotifier;

    .line 231
    invoke-interface/range {p11 .. p11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 232
    invoke-interface/range {p12 .. p12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 233
    invoke-interface/range {p13 .. p13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/KeyguardManager;

    .line 234
    invoke-interface/range {p14 .. p14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/service/dreams/IDreamManager;

    .line 235
    invoke-interface/range {p15 .. p15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/bubbles/BubbleController;

    .line 236
    invoke-static/range {p16 .. p16}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v17

    .line 237
    invoke-interface/range {p17 .. p17}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 238
    invoke-interface/range {p18 .. p18}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 239
    invoke-interface/range {p19 .. p19}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 240
    invoke-interface/range {p20 .. p20}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 241
    invoke-interface/range {p21 .. p21}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 242
    invoke-interface/range {p22 .. p22}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    .line 243
    invoke-interface/range {p23 .. p23}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/widget/LockPatternUtils;

    .line 244
    invoke-interface/range {p24 .. p24}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    .line 245
    invoke-interface/range {p25 .. p25}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/ActivityIntentHelper;

    .line 246
    invoke-interface/range {p26 .. p26}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/systemui/statusbar/FeatureFlags;

    .line 247
    invoke-interface/range {p27 .. p27}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/logging/MetricsLogger;

    .line 248
    invoke-interface/range {p28 .. p28}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;

    invoke-direct/range {v0 .. v29}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Handler;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/NotificationClickNotifier;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/app/KeyguardManager;Landroid/service/dreams/IDreamManager;Lcom/android/systemui/bubbles/BubbleController;Ldagger/Lazy;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;Lcom/android/systemui/ActivityIntentHelper;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;)V

    return-object v30
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;
    .locals 31

    move-object/from16 v0, p0

    .line 157
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->commandQueueProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->mainThreadHandlerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->backgroundHandlerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->uiBgExecutorProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->entryManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->notifPipelineProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->notifCollectionProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->headsUpManagerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->clickNotifierProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->keyguardManagerProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->dreamManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->bubbleControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->assistManagerLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->remoteInputManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->groupManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->lockscreenUserManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->shadeControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->notificationInterruptStateProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->lockPatternUtilsProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->remoteInputCallbackProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->activityIntentHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->metricsLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v1

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->loggerProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v0

    move-object/from16 v1, v30

    invoke-static/range {v1 .. v29}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Builder_Factory;->get()Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;

    move-result-object p0

    return-object p0
.end method
