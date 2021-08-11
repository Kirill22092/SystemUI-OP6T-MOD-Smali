.class final Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;
.super Ljava/lang/Object;
.source "DaggerTvSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/fragments/FragmentService$FragmentCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FragmentCreatorImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;-><init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)V

    return-void
.end method

.method private getBuilder()Lcom/android/systemui/qs/QSContainerImplController$Builder;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSContainerImplController$Builder;

    invoke-direct {p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->getBuilder2()Lcom/android/systemui/qs/QuickStatusBarHeaderController$Builder;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSContainerImplController$Builder;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeaderController$Builder;)V

    return-object v0
.end method

.method private getBuilder2()Lcom/android/systemui/qs/QuickStatusBarHeaderController$Builder;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$Builder;

    invoke-direct {p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->getBuilder3()Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController$Builder;-><init>(Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;)V

    return-object v0
.end method

.method private getBuilder3()Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;
    .locals 7

    new-instance v6, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$1400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$13700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;->proxyProvideMainLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$2000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-direct {p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->getBuilder4()Lcom/android/keyguard/CarrierTextController$Builder;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;-><init>(Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/Handler;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/keyguard/CarrierTextController$Builder;)V

    return-object v6
.end method

.method private getBuilder4()Lcom/android/keyguard/CarrierTextController$Builder;
    .locals 2

    new-instance v0, Lcom/android/keyguard/CarrierTextController$Builder;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$13500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-static {p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$13600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/keyguard/CarrierTextController$Builder;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-object v0
.end method


# virtual methods
.method public createNavigationBarFragment()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
    .locals 22

    move-object/from16 v0, p0

    new-instance v20, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-object/from16 v1, v20

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$5600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$3500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-static {v4}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$5500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/logging/MetricsLogger;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-static {v5}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$3700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v5

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/assist/AssistManager;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-static {v6}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$6400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v6

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-static {v7}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$6500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v7

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-static {v8}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v8

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-static {v9}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v9

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/model/SysUiState;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-static {v10}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$1500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v10

    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-static {v11}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v11

    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-static {v12}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$12400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v12

    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/stackdivider/Divider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-static {v13}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v13

    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/recents/Recents;

    invoke-static {v13}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v13

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-static {v14}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v14

    invoke-static {v14}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v14

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-static {v15}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v15

    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/phone/ShadeController;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$8400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$13800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/systemui/accessibility/SystemActions;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$13900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Landroid/os/Handler;

    move-result-object v18

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$14000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;-><init>(Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/assist/AssistManager;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/statusbar/phone/NavigationModeController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/stackdivider/Divider;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/accessibility/SystemActions;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v20
.end method

.method public createQSFragment()Lcom/android/systemui/qs/QSFragment;
    .locals 8

    new-instance v7, Lcom/android/systemui/qs/QSFragment;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$9200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$14100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/util/InjectionInflationController;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$14200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/qs/QSTileHost;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-direct {p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$FragmentCreatorImpl;->getBuilder()Lcom/android/systemui/qs/QSContainerImplController$Builder;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/QSFragment;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/qs/QSContainerImplController$Builder;)V

    return-object v7
.end method
