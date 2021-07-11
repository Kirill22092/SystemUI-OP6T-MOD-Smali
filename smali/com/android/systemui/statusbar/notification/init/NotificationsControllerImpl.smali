.class public final Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;
.super Ljava/lang/Object;
.source "NotificationsControllerImpl.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/init/NotificationsController;


# instance fields
.field private final clickerBuilder:Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;

.field private final deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private final entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final featureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

.field private final groupAlertTransferHelper:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

.field private final groupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private final headsUpController:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

.field private final headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private final headsUpViewBinder:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

.field private final newNotifPipeline:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private final notifBindPipelineInitializer:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer;

.field private final notifPipeline:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationListener:Lcom/android/systemui/statusbar/NotificationListener;

.field private final notificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

.field private final remoteInputUriController:Lcom/android/systemui/statusbar/policy/RemoteInputUriController;

.field private final targetSdkResolver:Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/statusbar/NotificationListener;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;Lcom/android/systemui/statusbar/policy/RemoteInputUriController;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;)V
    .locals 16
    .param p1    # Lcom/android/systemui/statusbar/FeatureFlags;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/NotificationListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ldagger/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ldagger/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lcom/android/systemui/statusbar/policy/RemoteInputUriController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Lcom/android/systemui/statusbar/policy/HeadsUpManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p14    # Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p15    # Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p16    # Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer;",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;",
            "Lcom/android/systemui/statusbar/policy/RemoteInputUriController;",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            "Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;",
            "Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;",
            "Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    const-string v0, "featureFlags"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationListener"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entryManager"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifPipeline"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetSdkResolver"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newNotifPipeline"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifBindPipelineInitializer"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceProvisionedController"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationRowBinder"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteInputUriController"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupManager"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupAlertTransferHelper"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headsUpManager"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headsUpController"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headsUpViewBinder"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickerBuilder"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->featureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    iput-object v3, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object v4, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notifPipeline:Ldagger/Lazy;

    iput-object v5, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->targetSdkResolver:Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->newNotifPipeline:Ldagger/Lazy;

    iput-object v7, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notifBindPipelineInitializer:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer;

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v9, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

    iput-object v10, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->remoteInputUriController:Lcom/android/systemui/statusbar/policy/RemoteInputUriController;

    iput-object v11, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->groupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object v12, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->groupAlertTransferHelper:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    iput-object v13, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iput-object v14, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->headsUpController:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->headsUpViewBinder:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    iput-object v15, v0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->clickerBuilder:Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/PrintWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 132
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    const-string v0, "  "

    invoke-virtual {p4, p2, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 134
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->groupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getActiveNotificationsCount()I
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationsCount()I

    move-result p0

    return p0
.end method

.method public initialize(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$BindRowCallback;)V
    .locals 3
    .param p1    # Lcom/android/systemui/statusbar/phone/StatusBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/NotificationPresenter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$BindRowCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "statusBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presenter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listContainer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationActivityStarter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindRowCallback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationListener;->registerAsSystemService()V

    .line 86
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationListController;

    .line 87
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 89
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 86
    invoke-direct {v0, v1, p3, v2}, Lcom/android/systemui/statusbar/notification/NotificationListController;-><init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    .line 90
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationListController;->bind()V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

    .line 93
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->clickerBuilder:Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {v1, p1, p4}, Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;->build(Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;)Lcom/android/systemui/statusbar/notification/NotificationClicker;

    move-result-object p1

    .line 92
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->setNotificationClicker(Lcom/android/systemui/statusbar/notification/NotificationClicker;)V

    .line 94
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

    invoke-virtual {p1, p2, p3, p5}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$BindRowCallback;)V

    .line 98
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->headsUpViewBinder:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->setPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;)V

    .line 99
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notifBindPipelineInitializer:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer;->initialize()V

    .line 101
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->featureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/FeatureFlags;->isNewNotifPipelineEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->newNotifPipeline:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;

    .line 103
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    .line 104
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

    .line 102
    invoke-virtual {p1, p2, p4, p3}, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->initialize(Lcom/android/systemui/statusbar/NotificationListener;Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->featureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/FeatureFlags;->isNewNotifPipelineRenderingEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 109
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->targetSdkResolver:Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notifPipeline:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    const-string p2, "notifPipeline.get()"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;->initialize(Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->targetSdkResolver:Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;->initialize(Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;)V

    .line 113
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->remoteInputUriController:Lcom/android/systemui/statusbar/policy/RemoteInputUriController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/RemoteInputUriController;->attach(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)V

    .line 114
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->groupAlertTransferHelper:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->groupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->bind(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    .line 115
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->groupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 116
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->groupAlertTransferHelper:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 117
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->headsUpController:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->attach(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 118
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->groupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 119
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->groupAlertTransferHelper:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 121
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->attach(Lcom/android/systemui/statusbar/NotificationListener;)V

    :goto_0
    return-void
.end method

.method public requestNotificationUpdate(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications(Ljava/lang/String;)V

    return-void
.end method

.method public resetUserExpandedStates()V
    .locals 1

    .line 144
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getVisibleNotifications()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 145
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->resetUserExpansion()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setNotificationSnoozed(Landroid/service/notification/StatusBarNotification;I)V
    .locals 4
    .param p1    # Landroid/service/notification/StatusBarNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sbn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    .line 165
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    mul-int/lit8 p2, p2, 0x3c

    mul-int/lit8 p2, p2, 0x3c

    int-to-long v0, p2

    const/16 p2, 0x3e8

    int-to-long v2, p2

    mul-long/2addr v0, v2

    .line 164
    invoke-virtual {p0, p1, v0, v1}, Landroid/service/notification/NotificationListenerService;->snoozeNotification(Ljava/lang/String;J)V

    return-void
.end method

.method public setNotificationSnoozed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
    .locals 4
    .param p1    # Landroid/service/notification/StatusBarNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sbn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "snoozeOption"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getSnoozeCriterion()Landroid/service/notification/SnoozeCriterion;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getSnoozeCriterion()Landroid/service/notification/SnoozeCriterion;

    move-result-object p2

    const-string/jumbo v0, "snoozeOption.snoozeCriterion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/service/notification/SnoozeCriterion;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/service/notification/NotificationListenerService;->snoozeNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl;->notificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    .line 154
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getMinutesToSnoozeFor()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3c

    int-to-long v0, p2

    const/16 p2, 0x3e8

    int-to-long v2, p2

    mul-long/2addr v0, v2

    .line 153
    invoke-virtual {p0, p1, v0, v1}, Landroid/service/notification/NotificationListenerService;->snoozeNotification(Ljava/lang/String;J)V

    :goto_0
    return-void
.end method
