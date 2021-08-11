.class public Lcom/android/systemui/dagger/DependencyProvider;
.super Ljava/lang/Object;
.source "DependencyProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static provideUiEventLogger()Lcom/android/internal/logging/UiEventLogger;
    .locals 1

    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public provideActivityManagerWrapper()Lcom/android/systemui/shared/system/ActivityManagerWrapper;
    .locals 0

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    return-object p0
.end method

.method public provideAlwaysOnDisplayPolicy(Landroid/content/Context;)Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;
    .locals 0

    new-instance p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public provideAmbientDisplayConfiguration(Landroid/content/Context;)Landroid/hardware/display/AmbientDisplayConfiguration;
    .locals 0

    new-instance p0, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public provideAutoHideController(Landroid/content/Context;Landroid/os/Handler;Landroid/view/IWindowManager;)Lcom/android/systemui/statusbar/phone/AutoHideController;
    .locals 0

    new-instance p0, Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/AutoHideController;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/IWindowManager;)V

    return-object p0
.end method

.method public provideConfigurationController(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/ConfigurationController;
    .locals 0

    new-instance p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public provideDataSaverController(Lcom/android/systemui/statusbar/policy/NetworkController;)Lcom/android/systemui/statusbar/policy/DataSaverController;
    .locals 0

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataSaverController()Lcom/android/systemui/statusbar/policy/DataSaverController;

    move-result-object p0

    return-object p0
.end method

.method public provideDevicePolicyManagerWrapper()Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;
    .locals 0

    invoke-static {}, Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;

    move-result-object p0

    return-object p0
.end method

.method public provideDisplayMetrics(Landroid/content/Context;Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;
    .locals 0

    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-object p0
.end method

.method public provideINotificationManager()Landroid/app/INotificationManager;
    .locals 0

    const-string p0, "notification"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p0

    return-object p0
.end method

.method public provideLeakDetector()Lcom/android/systemui/util/leak/LeakDetector;
    .locals 0

    invoke-static {}, Lcom/android/systemui/util/leak/LeakDetector;->create()Lcom/android/systemui/util/leak/LeakDetector;

    move-result-object p0

    return-object p0
.end method

.method public provideLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    new-instance p0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public provideMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .locals 0

    new-instance p0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    return-object p0
.end method

.method public provideNavigationBarController(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/NavigationBarController;
    .locals 0

    new-instance p0, Lcom/android/systemui/statusbar/NavigationBarController;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/NavigationBarController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/CommandQueue;)V

    return-object p0
.end method

.method public provideNightDisplayListener(Landroid/content/Context;Landroid/os/Handler;)Landroid/hardware/display/NightDisplayListener;
    .locals 0

    new-instance p0, Landroid/hardware/display/NightDisplayListener;

    invoke-direct {p0, p1, p2}, Landroid/hardware/display/NightDisplayListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object p0
.end method

.method public provideNotificationMessagingUtil(Landroid/content/Context;)Lcom/android/internal/util/NotificationMessagingUtil;
    .locals 0

    new-instance p0, Lcom/android/internal/util/NotificationMessagingUtil;

    invoke-direct {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public providePluginManager(Landroid/content/Context;)Lcom/android/systemui/shared/plugins/PluginManager;
    .locals 1

    new-instance p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;

    new-instance v0, Lcom/android/systemui/plugins/PluginInitializerImpl;

    invoke-direct {v0}, Lcom/android/systemui/plugins/PluginInitializerImpl;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginInitializer;)V

    return-object p0
.end method

.method public provideSharePreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public provideTimeTickHandler()Landroid/os/Handler;
    .locals 1

    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "TimeTick"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public providerLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public providesBroadcastDispatcher(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/Executor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;)Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .locals 6

    new-instance p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/broadcast/BroadcastDispatcher;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/Executor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;)V

    invoke-virtual {p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->initialize()V

    return-object p0
.end method

.method public providesChoreographer()Landroid/view/Choreographer;
    .locals 0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p0

    return-object p0
.end method

.method public providesViewMediatorCallback(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/ViewMediatorCallback;
    .locals 0

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object p0

    return-object p0
.end method
