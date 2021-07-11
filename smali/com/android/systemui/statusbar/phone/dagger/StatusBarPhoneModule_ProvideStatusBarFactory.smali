.class public final Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;
.super Ljava/lang/Object;
.source "StatusBarPhoneModule_ProvideStatusBarFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/StatusBar;",
        ">;"
    }
.end annotation


# instance fields
.field private final assistManagerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;"
        }
    .end annotation
.end field

.field private final autoHideControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            ">;"
        }
    .end annotation
.end field

.field private final batteryControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;"
        }
    .end annotation
.end field

.field private final biometricUnlockControllerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;"
        }
    .end annotation
.end field

.field private final broadcastDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
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

.field private final bypassHeadsUpNotifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private final colorExtractorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
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

.field private final darkIconDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/DarkIconDispatcher;",
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

.field private final dismissCallbackRegistryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/DismissCallbackRegistry;",
            ">;"
        }
    .end annotation
.end field

.field private final displayMetricsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private final dividerOptionalProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/stackdivider/Divider;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dozeParametersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;"
        }
    .end annotation
.end field

.field private final dozeScrimControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeScrimController;",
            ">;"
        }
    .end annotation
.end field

.field private final dozeServiceHostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeServiceHost;",
            ">;"
        }
    .end annotation
.end field

.field private final dynamicPrivacyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            ">;"
        }
    .end annotation
.end field

.field private final extensionControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ExtensionController;",
            ">;"
        }
    .end annotation
.end field

.field private final falsingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/FalsingManager;",
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

.field private final headsUpManagerPhoneProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
            ">;"
        }
    .end annotation
.end field

.field private final initControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/InitController;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardBypassControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardDismissUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardIndicationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/KeyguardIndicationController;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardLiftControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardLiftController;",
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

.field private final keyguardUpdateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardViewMediatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;"
        }
    .end annotation
.end field

.field private final lightBarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            ">;"
        }
    .end annotation
.end field

.field private final lightsOutNotifControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightsOutNotifController;",
            ">;"
        }
    .end annotation
.end field

.field private final lockScreenUserManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;"
        }
    .end annotation
.end field

.field private final lockscreenLockIconControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;",
            ">;"
        }
    .end annotation
.end field

.field private final lockscreenWallpaperLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;",
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

.field private final navigationBarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NavigationBarController;",
            ">;"
        }
    .end annotation
.end field

.field private final networkControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NetworkController;",
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

.field private final notificationInterruptStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationMediaManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationShadeDepthControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
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

.field private final notificationViewHierarchyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsController;",
            ">;"
        }
    .end annotation
.end field

.field private final phoneStatusBarPolicyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginDependencyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/PluginDependencyProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;"
        }
    .end annotation
.end field

.field private final powerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;"
        }
    .end annotation
.end field

.field private final pulseExpansionHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final recentsOptionalProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/recents/Recents;",
            ">;>;"
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

.field private final remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;",
            ">;"
        }
    .end annotation
.end field

.field private final screenLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private final screenPinningRequestProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/ScreenPinningRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final scrimControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ScrimController;",
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

.field private final statusBarComponentBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarIconControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
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

.field private final statusBarNotificationActivityStarterBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarTouchableRegionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;",
            ">;"
        }
    .end annotation
.end field

.field private final superStatusBarViewFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final timeTickHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
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

.field private final userInfoControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final userSwitcherControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            ">;"
        }
    .end annotation
.end field

.field private final vibratorHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final viewMediatorCallbackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/ViewMediatorCallback;",
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

.field private final volumeComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/volume/VolumeComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final wakefulnessLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/util/DisplayMetrics;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NetworkController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NavigationBarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ScrimController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardLiftController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeServiceHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/ScreenPinningRequest;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeScrimController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/volume/VolumeComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/recents/Recents;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/stackdivider/Divider;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightsOutNotifController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/InitController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/DarkIconDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/PluginDependencyProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ExtensionController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/KeyguardIndicationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/DismissCallbackRegistry;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 327
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->contextProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 328
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->notificationsControllerProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 329
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->lightBarControllerProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 330
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->autoHideControllerProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 331
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 332
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->statusBarIconControllerProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 333
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 334
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 335
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 336
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 337
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->headsUpManagerPhoneProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 338
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 339
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->bypassHeadsUpNotifierProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 340
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->falsingManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 341
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 342
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 343
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->notificationGutsManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 344
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->notificationLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    .line 345
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->notificationInterruptStateProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p20

    .line 346
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->notificationViewHierarchyManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p21

    .line 347
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->keyguardViewMediatorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p22

    .line 348
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->displayMetricsProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p23

    .line 349
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->metricsLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p24

    .line 350
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->uiBgExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p25

    .line 351
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->notificationMediaManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p26

    .line 352
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->lockScreenUserManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p27

    .line 353
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->remoteInputManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p28

    .line 354
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p29

    .line 355
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->networkControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p30

    .line 356
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->batteryControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p31

    .line 357
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->colorExtractorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p32

    .line 358
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->screenLifecycleProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p33

    .line 359
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p34

    .line 360
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p35

    .line 361
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->vibratorHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p36

    .line 362
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->bubbleControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p37

    .line 363
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->groupManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p38

    .line 364
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p39

    .line 365
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->deviceProvisionedControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p40

    .line 366
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->navigationBarControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p41

    .line 367
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->assistManagerLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p42

    .line 368
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->configurationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p43

    .line 369
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p44

    .line 370
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->lockscreenLockIconControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p45

    .line 371
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->dozeParametersProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p46

    .line 372
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->scrimControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p47

    .line 373
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->keyguardLiftControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p48

    .line 374
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->lockscreenWallpaperLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p49

    .line 375
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->biometricUnlockControllerLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p50

    .line 376
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->dozeServiceHostProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p51

    .line 377
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->powerManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p52

    .line 378
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->screenPinningRequestProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p53

    .line 379
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->dozeScrimControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p54

    .line 380
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->volumeComponentProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p55

    .line 381
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->commandQueueProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p56

    .line 382
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->recentsOptionalProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p57

    .line 383
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->statusBarComponentBuilderProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p58

    .line 384
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->pluginManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p59

    .line 385
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->dividerOptionalProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p60

    .line 386
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->lightsOutNotifControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p61

    .line 387
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->statusBarNotificationActivityStarterBuilderProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p62

    .line 389
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->shadeControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p63

    .line 390
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->superStatusBarViewFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p64

    .line 391
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p65

    .line 392
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->viewMediatorCallbackProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p66

    .line 393
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->initControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p67

    .line 394
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->darkIconDispatcherProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p68

    .line 395
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->timeTickHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p69

    .line 396
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->pluginDependencyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p70

    .line 397
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p71

    .line 398
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->extensionControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p72

    .line 399
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p73

    .line 400
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->phoneStatusBarPolicyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p74

    .line 401
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->keyguardIndicationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p75

    .line 402
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->notificationShadeDepthControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p76

    .line 403
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->dismissCallbackRegistryProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p77

    .line 404
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->statusBarTouchableRegionManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;
    .locals 79
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/util/DisplayMetrics;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NetworkController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NavigationBarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ScrimController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardLiftController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeServiceHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/ScreenPinningRequest;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeScrimController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/volume/VolumeComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/recents/Recents;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/stackdivider/Divider;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightsOutNotifController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/InitController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/DarkIconDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/PluginDependencyProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ExtensionController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/KeyguardIndicationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/DismissCallbackRegistry;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;"
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

    move-object/from16 v30, p29

    move-object/from16 v31, p30

    move-object/from16 v32, p31

    move-object/from16 v33, p32

    move-object/from16 v34, p33

    move-object/from16 v35, p34

    move-object/from16 v36, p35

    move-object/from16 v37, p36

    move-object/from16 v38, p37

    move-object/from16 v39, p38

    move-object/from16 v40, p39

    move-object/from16 v41, p40

    move-object/from16 v42, p41

    move-object/from16 v43, p42

    move-object/from16 v44, p43

    move-object/from16 v45, p44

    move-object/from16 v46, p45

    move-object/from16 v47, p46

    move-object/from16 v48, p47

    move-object/from16 v49, p48

    move-object/from16 v50, p49

    move-object/from16 v51, p50

    move-object/from16 v52, p51

    move-object/from16 v53, p52

    move-object/from16 v54, p53

    move-object/from16 v55, p54

    move-object/from16 v56, p55

    move-object/from16 v57, p56

    move-object/from16 v58, p57

    move-object/from16 v59, p58

    move-object/from16 v60, p59

    move-object/from16 v61, p60

    move-object/from16 v62, p61

    move-object/from16 v63, p62

    move-object/from16 v64, p63

    move-object/from16 v65, p64

    move-object/from16 v66, p65

    move-object/from16 v67, p66

    move-object/from16 v68, p67

    move-object/from16 v69, p68

    move-object/from16 v70, p69

    move-object/from16 v71, p70

    move-object/from16 v72, p71

    move-object/from16 v73, p72

    move-object/from16 v74, p73

    move-object/from16 v75, p74

    move-object/from16 v76, p75

    move-object/from16 v77, p76

    .line 727
    new-instance v78, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;

    move-object/from16 v0, v78

    invoke-direct/range {v0 .. v77}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v78
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 77
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/util/DisplayMetrics;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NetworkController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NavigationBarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ScrimController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardLiftController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeServiceHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/ScreenPinningRequest;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeScrimController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/volume/VolumeComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/recents/Recents;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/stackdivider/Divider;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightsOutNotifController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/InitController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/DarkIconDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/PluginDependencyProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ExtensionController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/KeyguardIndicationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/DismissCallbackRegistry;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/StatusBar;"
        }
    .end annotation

    move-object/from16 v56, p56

    .line 569
    invoke-interface/range {p0 .. p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 570
    invoke-interface/range {p1 .. p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    .line 571
    invoke-interface/range {p2 .. p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 572
    invoke-interface/range {p3 .. p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/AutoHideController;

    .line 573
    invoke-interface/range {p4 .. p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 574
    invoke-interface/range {p5 .. p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 575
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 576
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 577
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 578
    invoke-interface/range {p9 .. p9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 579
    invoke-interface/range {p10 .. p10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 580
    invoke-interface/range {p11 .. p11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    .line 581
    invoke-interface/range {p12 .. p12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;

    .line 582
    invoke-interface/range {p13 .. p13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/plugins/FalsingManager;

    .line 583
    invoke-interface/range {p14 .. p14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 584
    invoke-interface/range {p15 .. p15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    .line 585
    invoke-interface/range {p16 .. p16}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 586
    invoke-interface/range {p17 .. p17}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    .line 587
    invoke-interface/range {p18 .. p18}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    .line 588
    invoke-interface/range {p19 .. p19}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    .line 589
    invoke-interface/range {p20 .. p20}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 590
    invoke-interface/range {p21 .. p21}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/DisplayMetrics;

    .line 591
    invoke-interface/range {p22 .. p22}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/logging/MetricsLogger;

    .line 592
    invoke-interface/range {p23 .. p23}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/concurrent/Executor;

    .line 593
    invoke-interface/range {p24 .. p24}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 594
    invoke-interface/range {p25 .. p25}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 595
    invoke-interface/range {p26 .. p26}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 596
    invoke-interface/range {p27 .. p27}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 597
    invoke-interface/range {p28 .. p28}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 598
    invoke-interface/range {p29 .. p29}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 599
    invoke-interface/range {p30 .. p30}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 600
    invoke-interface/range {p31 .. p31}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 601
    invoke-interface/range {p32 .. p32}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 602
    invoke-interface/range {p33 .. p33}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 603
    invoke-interface/range {p34 .. p34}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/systemui/statusbar/VibratorHelper;

    .line 604
    invoke-interface/range {p35 .. p35}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/systemui/bubbles/BubbleController;

    .line 605
    invoke-interface/range {p36 .. p36}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 606
    invoke-interface/range {p37 .. p37}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 607
    invoke-interface/range {p38 .. p38}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 608
    invoke-interface/range {p39 .. p39}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/systemui/statusbar/NavigationBarController;

    .line 609
    invoke-static/range {p40 .. p40}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v40

    .line 610
    invoke-interface/range {p41 .. p41}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 611
    invoke-interface/range {p42 .. p42}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    .line 612
    invoke-interface/range {p43 .. p43}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    .line 613
    invoke-interface/range {p44 .. p44}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 614
    invoke-interface/range {p45 .. p45}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 615
    invoke-interface/range {p46 .. p46}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;

    .line 616
    invoke-static/range {p47 .. p47}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v47

    .line 617
    invoke-static/range {p48 .. p48}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v48

    .line 618
    invoke-interface/range {p49 .. p49}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 619
    invoke-interface/range {p50 .. p50}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/os/PowerManager;

    .line 620
    invoke-interface/range {p51 .. p51}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/systemui/recents/ScreenPinningRequest;

    .line 621
    invoke-interface/range {p52 .. p52}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 622
    invoke-interface/range {p53 .. p53}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/systemui/volume/VolumeComponent;

    .line 623
    invoke-interface/range {p54 .. p54}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/systemui/statusbar/CommandQueue;

    .line 624
    invoke-interface/range {p55 .. p55}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/util/Optional;

    .line 626
    invoke-interface/range {p57 .. p57}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Lcom/android/systemui/shared/plugins/PluginManager;

    .line 627
    invoke-interface/range {p58 .. p58}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Ljava/util/Optional;

    .line 628
    invoke-interface/range {p59 .. p59}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;

    .line 629
    invoke-interface/range {p60 .. p60}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;

    .line 630
    invoke-interface/range {p61 .. p61}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 631
    invoke-interface/range {p62 .. p62}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

    .line 632
    invoke-interface/range {p63 .. p63}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 633
    invoke-interface/range {p64 .. p64}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/android/keyguard/ViewMediatorCallback;

    .line 634
    invoke-interface/range {p65 .. p65}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Lcom/android/systemui/InitController;

    .line 635
    invoke-interface/range {p66 .. p66}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 636
    invoke-interface/range {p67 .. p67}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/os/Handler;

    .line 637
    invoke-interface/range {p68 .. p68}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Lcom/android/systemui/plugins/PluginDependencyProvider;

    .line 638
    invoke-interface/range {p69 .. p69}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v69

    check-cast v69, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    .line 639
    invoke-interface/range {p70 .. p70}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Lcom/android/systemui/statusbar/policy/ExtensionController;

    .line 640
    invoke-interface/range {p71 .. p71}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    .line 641
    invoke-interface/range {p72 .. p72}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 642
    invoke-interface/range {p73 .. p73}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 643
    invoke-static/range {p74 .. p74}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v74

    .line 644
    invoke-interface/range {p75 .. p75}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v75

    check-cast v75, Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    .line 645
    invoke-interface/range {p76 .. p76}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    .line 568
    invoke-static/range {v0 .. v76}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->proxyProvideStatusBar(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/init/NotificationsController;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/phone/AutoHideController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/util/DisplayMetrics;Lcom/android/internal/logging/MetricsLogger;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/NavigationBarController;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/KeyguardLiftController;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Landroid/os/PowerManager;Lcom/android/systemui/recents/ScreenPinningRequest;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/volume/VolumeComponent;Lcom/android/systemui/statusbar/CommandQueue;Ljava/util/Optional;Ljavax/inject/Provider;Lcom/android/systemui/shared/plugins/PluginManager;Ljava/util/Optional;Lcom/android/systemui/statusbar/phone/LightsOutNotifController;Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/systemui/InitController;Lcom/android/systemui/plugins/DarkIconDispatcher;Landroid/os/Handler;Lcom/android/systemui/plugins/PluginDependencyProvider;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/statusbar/policy/ExtensionController;Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Lcom/android/systemui/statusbar/KeyguardIndicationController;Ldagger/Lazy;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    return-object v0
.end method

.method public static proxyProvideStatusBar(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/init/NotificationsController;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/phone/AutoHideController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/util/DisplayMetrics;Lcom/android/internal/logging/MetricsLogger;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/NavigationBarController;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/KeyguardLiftController;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Landroid/os/PowerManager;Lcom/android/systemui/recents/ScreenPinningRequest;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/volume/VolumeComponent;Lcom/android/systemui/statusbar/CommandQueue;Ljava/util/Optional;Ljavax/inject/Provider;Lcom/android/systemui/shared/plugins/PluginManager;Ljava/util/Optional;Lcom/android/systemui/statusbar/phone/LightsOutNotifController;Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/systemui/InitController;Lcom/android/systemui/plugins/DarkIconDispatcher;Landroid/os/Handler;Lcom/android/systemui/plugins/PluginDependencyProvider;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/statusbar/policy/ExtensionController;Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Lcom/android/systemui/statusbar/KeyguardIndicationController;Ldagger/Lazy;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsController;",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            "Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            "Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            "Landroid/util/DisplayMetrics;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            "Lcom/android/systemui/statusbar/policy/NetworkController;",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            "Lcom/android/systemui/bubbles/BubbleController;",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Lcom/android/systemui/statusbar/NavigationBarController;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;",
            "Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/systemui/statusbar/phone/ScrimController;",
            "Lcom/android/systemui/statusbar/phone/KeyguardLiftController;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/DozeServiceHost;",
            "Landroid/os/PowerManager;",
            "Lcom/android/systemui/recents/ScreenPinningRequest;",
            "Lcom/android/systemui/statusbar/phone/DozeScrimController;",
            "Lcom/android/systemui/volume/VolumeComponent;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/recents/Recents;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Builder;",
            ">;",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/stackdivider/Divider;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/LightsOutNotifController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            "Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            "Lcom/android/systemui/InitController;",
            "Lcom/android/systemui/plugins/DarkIconDispatcher;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/plugins/PluginDependencyProvider;",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            "Lcom/android/systemui/statusbar/policy/ExtensionController;",
            "Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;",
            "Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;",
            "Lcom/android/systemui/statusbar/KeyguardIndicationController;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            ">;",
            "Lcom/android/systemui/keyguard/DismissCallbackRegistry;",
            "Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;",
            ")",
            "Lcom/android/systemui/statusbar/phone/StatusBar;"
        }
    .end annotation

    .line 886
    invoke-static/range {p0 .. p76}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule;->provideStatusBar(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/init/NotificationsController;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/phone/AutoHideController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/util/DisplayMetrics;Lcom/android/internal/logging/MetricsLogger;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/NavigationBarController;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/KeyguardLiftController;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Landroid/os/PowerManager;Lcom/android/systemui/recents/ScreenPinningRequest;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/volume/VolumeComponent;Lcom/android/systemui/statusbar/CommandQueue;Ljava/util/Optional;Ljavax/inject/Provider;Lcom/android/systemui/shared/plugins/PluginManager;Ljava/util/Optional;Lcom/android/systemui/statusbar/phone/LightsOutNotifController;Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/systemui/InitController;Lcom/android/systemui/plugins/DarkIconDispatcher;Landroid/os/Handler;Lcom/android/systemui/plugins/PluginDependencyProvider;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/statusbar/policy/ExtensionController;Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Lcom/android/systemui/statusbar/KeyguardIndicationController;Ldagger/Lazy;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 885
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 79

    move-object/from16 v0, p0

    .line 409
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->notificationsControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->lightBarControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->autoHideControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->statusBarIconControllerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->headsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->bypassHeadsUpNotifierProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->falsingManagerProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    move-object/from16 v78, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->notificationGutsManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->notificationLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->notificationInterruptStateProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->notificationViewHierarchyManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->keyguardViewMediatorProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->displayMetricsProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->metricsLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->uiBgExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->notificationMediaManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->lockScreenUserManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->remoteInputManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->networkControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->batteryControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->colorExtractorProvider:Ljavax/inject/Provider;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->screenLifecycleProvider:Ljavax/inject/Provider;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    move-object/from16 v33, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v34, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->vibratorHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v35, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->bubbleControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v36, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->groupManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v37, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v38, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->deviceProvisionedControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v39, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->navigationBarControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v40, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->assistManagerLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v41, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->configurationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v42, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v43, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->lockscreenLockIconControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v44, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->dozeParametersProvider:Ljavax/inject/Provider;

    move-object/from16 v45, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->scrimControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v46, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->keyguardLiftControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v47, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->lockscreenWallpaperLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v48, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->biometricUnlockControllerLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v49, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->dozeServiceHostProvider:Ljavax/inject/Provider;

    move-object/from16 v50, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->powerManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v51, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->screenPinningRequestProvider:Ljavax/inject/Provider;

    move-object/from16 v52, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->dozeScrimControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v53, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->volumeComponentProvider:Ljavax/inject/Provider;

    move-object/from16 v54, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->commandQueueProvider:Ljavax/inject/Provider;

    move-object/from16 v55, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->recentsOptionalProvider:Ljavax/inject/Provider;

    move-object/from16 v56, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->statusBarComponentBuilderProvider:Ljavax/inject/Provider;

    move-object/from16 v57, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->pluginManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v58, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->dividerOptionalProvider:Ljavax/inject/Provider;

    move-object/from16 v59, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->lightsOutNotifControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v60, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->statusBarNotificationActivityStarterBuilderProvider:Ljavax/inject/Provider;

    move-object/from16 v61, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->shadeControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v62, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->superStatusBarViewFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v63, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v64, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->viewMediatorCallbackProvider:Ljavax/inject/Provider;

    move-object/from16 v65, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->initControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v66, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->darkIconDispatcherProvider:Ljavax/inject/Provider;

    move-object/from16 v67, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->timeTickHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v68, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->pluginDependencyProvider:Ljavax/inject/Provider;

    move-object/from16 v69, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    move-object/from16 v70, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->extensionControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v71, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v72, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->phoneStatusBarPolicyProvider:Ljavax/inject/Provider;

    move-object/from16 v73, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->keyguardIndicationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v74, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->notificationShadeDepthControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v75, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->dismissCallbackRegistryProvider:Ljavax/inject/Provider;

    move-object/from16 v76, v1

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->statusBarTouchableRegionManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v77, v0

    move-object/from16 v1, v78

    invoke-static/range {v1 .. v77}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneModule_ProvideStatusBarFactory;->get()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    return-object p0
.end method
