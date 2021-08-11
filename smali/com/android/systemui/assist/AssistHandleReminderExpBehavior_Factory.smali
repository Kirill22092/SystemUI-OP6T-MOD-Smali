.class public final Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;
.super Ljava/lang/Object;
.source "AssistHandleReminderExpBehavior_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final bootCompleteCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/BootCompleteCache;",
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

.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/slice/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceConfigHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/DeviceConfigHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final handlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final overviewProxyServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;"
        }
    .end annotation
.end field

.field private final packageManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
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

.field private final sysUiFlagContainerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/slice/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/DeviceConfigHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/BootCompleteCache;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->clockProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->handlerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->deviceConfigHelperProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->activityManagerWrapperProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->sysUiFlagContainerProvider:Ljavax/inject/Provider;

    iput-object p8, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    iput-object p9, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->packageManagerWrapperProvider:Ljavax/inject/Provider;

    iput-object p10, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    iput-object p11, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->bootCompleteCacheProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/slice/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/DeviceConfigHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/BootCompleteCache;",
            ">;)",
            "Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;"
        }
    .end annotation

    new-instance v12, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v12
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/slice/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/DeviceConfigHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/BootCompleteCache;",
            ">;)",
            "Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;"
        }
    .end annotation

    new-instance v12, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/slice/Clock;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/Handler;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/assist/DeviceConfigHelper;

    invoke-static/range {p3 .. p3}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v4

    invoke-static/range {p4 .. p4}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v5

    invoke-static/range {p5 .. p5}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v6

    invoke-static/range {p6 .. p6}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v7

    invoke-static/range {p7 .. p7}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v8

    invoke-static/range {p8 .. p8}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v9

    invoke-static/range {p9 .. p9}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v10

    invoke-static/range {p10 .. p10}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v11

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;-><init>(Landroidx/slice/Clock;Landroid/os/Handler;Lcom/android/systemui/assist/DeviceConfigHelper;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V

    return-object v12
.end method


# virtual methods
.method public get()Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->clockProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->handlerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->deviceConfigHelperProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->activityManagerWrapperProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->sysUiFlagContainerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->packageManagerWrapperProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->bootCompleteCacheProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v10}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->get()Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    move-result-object p0

    return-object p0
.end method
