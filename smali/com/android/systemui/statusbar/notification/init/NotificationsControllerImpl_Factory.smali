.class public final Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;
.super Ljava/lang/Object;
.source "NotificationsControllerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final clickerBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceProvisionedControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
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

.field private final groupAlertTransferHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;",
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

.field private final headsUpControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;",
            ">;"
        }
    .end annotation
.end field

.field private final headsUpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            ">;"
        }
    .end annotation
.end field

.field private final headsUpViewBinderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final newNotifPipelineProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private final notifBindPipelineInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer;",
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

.field private final notificationListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationRowBinderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;",
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

.field private final targetSdkResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputUriController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 79
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 80
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->notificationListenerProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 81
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->entryManagerProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 82
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->notifPipelineProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 83
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->targetSdkResolverProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 84
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->newNotifPipelineProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 85
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->notifBindPipelineInitializerProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 86
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->deviceProvisionedControllerProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 87
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->notificationRowBinderProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 88
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->remoteInputUriControllerProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 89
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->groupManagerProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 90
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->groupAlertTransferHelperProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 91
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->headsUpManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 92
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->headsUpControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 93
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->headsUpViewBinderProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 94
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->clickerBuilderProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputUriController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;"
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

    .line 171
    new-instance v17, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v17
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputUriController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;"
        }
    .end annotation

    .line 135
    new-instance v17, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;

    move-object/from16 v0, v17

    .line 136
    invoke-interface/range {p0 .. p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/FeatureFlags;

    .line 137
    invoke-interface/range {p1 .. p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationListener;

    .line 138
    invoke-interface/range {p2 .. p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 139
    invoke-static/range {p3 .. p3}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v4

    .line 140
    invoke-interface/range {p4 .. p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;

    .line 141
    invoke-static/range {p5 .. p5}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v6

    .line 142
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer;

    .line 143
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 144
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

    .line 145
    invoke-interface/range {p9 .. p9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/policy/RemoteInputUriController;

    .line 146
    invoke-interface/range {p10 .. p10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 147
    invoke-interface/range {p11 .. p11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    .line 148
    invoke-interface/range {p12 .. p12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 149
    invoke-interface/range {p13 .. p13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    .line 150
    invoke-interface/range {p14 .. p14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    .line 151
    invoke-interface/range {p15 .. p15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;

    invoke-direct/range {v0 .. v16}, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;-><init>(Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/statusbar/NotificationListener;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;Lcom/android/systemui/statusbar/policy/RemoteInputUriController;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;)V

    return-object v17
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;
    .locals 17

    move-object/from16 v0, p0

    .line 99
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->notificationListenerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->entryManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->notifPipelineProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->targetSdkResolverProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->newNotifPipelineProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->notifBindPipelineInitializerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->deviceProvisionedControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->notificationRowBinderProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->remoteInputUriControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->groupManagerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->groupAlertTransferHelperProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->headsUpManagerProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->headsUpControllerProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->headsUpViewBinderProvider:Ljavax/inject/Provider;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->clickerBuilderProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    invoke-static/range {v0 .. v15}, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl_Factory;->get()Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;

    move-result-object p0

    return-object p0
.end method
