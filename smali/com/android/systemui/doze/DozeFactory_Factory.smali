.class public final Lcom/android/systemui/doze/DozeFactory_Factory;
.super Ljava/lang/Object;
.source "DozeFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/doze/DozeFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final alarmManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/AlarmManager;",
            ">;"
        }
    .end annotation
.end field

.field private final asyncSensorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
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

.field private final biometricUnlockControllerProvider:Ljavax/inject/Provider;
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

.field private final delayedWakeLockBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final dockManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dock/DockManager;",
            ">;"
        }
    .end annotation
.end field

.field private final dozeHostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeHost;",
            ">;"
        }
    .end annotation
.end field

.field private final dozeLogProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeLog;",
            ">;"
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

.field private final falsingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/FalsingManager;",
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

.field private final keyguardUpdateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final proximityCheckProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;",
            ">;"
        }
    .end annotation
.end field

.field private final proximitySensorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/ProximitySensor;",
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

.field private final wallpaperManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/IWallpaperManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeLog;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/AlarmManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dock/DockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/IWallpaperManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/ProximitySensor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeHost;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 77
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 78
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->dozeLogProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 79
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->dozeParametersProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 80
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->batteryControllerProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 81
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 82
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->alarmManagerProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 83
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 84
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 85
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->dockManagerProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 86
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->wallpaperManagerProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 87
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->proximitySensorProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 88
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->proximityCheckProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 89
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->delayedWakeLockBuilderProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 90
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->handlerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 91
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 92
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 93
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->dozeHostProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/doze/DozeFactory_Factory;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeLog;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/AlarmManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dock/DockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/IWallpaperManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/ProximitySensor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeHost;",
            ">;)",
            "Lcom/android/systemui/doze/DozeFactory_Factory;"
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

    .line 174
    new-instance v18, Lcom/android/systemui/doze/DozeFactory_Factory;

    move-object/from16 v0, v18

    invoke-direct/range {v0 .. v17}, Lcom/android/systemui/doze/DozeFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v18
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/doze/DozeFactory;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeLog;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/AlarmManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dock/DockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/IWallpaperManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/ProximitySensor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeHost;",
            ">;)",
            "Lcom/android/systemui/doze/DozeFactory;"
        }
    .end annotation

    .line 136
    new-instance v18, Lcom/android/systemui/doze/DozeFactory;

    move-object/from16 v0, v18

    .line 137
    invoke-interface/range {p0 .. p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/FalsingManager;

    .line 138
    invoke-interface/range {p1 .. p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/doze/DozeLog;

    .line 139
    invoke-interface/range {p2 .. p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 140
    invoke-interface/range {p3 .. p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 141
    invoke-interface/range {p4 .. p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 142
    invoke-interface/range {p5 .. p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    .line 143
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 144
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 145
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/dock/DockManager;

    .line 146
    invoke-interface/range {p9 .. p9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/IWallpaperManager;

    .line 147
    invoke-interface/range {p10 .. p10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 148
    invoke-interface/range {p11 .. p11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;

    .line 149
    invoke-interface/range {p12 .. p12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;

    .line 150
    invoke-interface/range {p13 .. p13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Handler;

    .line 151
    invoke-interface/range {p14 .. p14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 152
    invoke-interface/range {p15 .. p15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 153
    invoke-interface/range {p16 .. p16}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/doze/DozeHost;

    invoke-direct/range {v0 .. v17}, Lcom/android/systemui/doze/DozeFactory;-><init>(Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/util/sensors/AsyncSensorManager;Landroid/app/AlarmManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dock/DockManager;Landroid/app/IWallpaperManager;Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/doze/DozeHost;)V

    return-object v18
.end method


# virtual methods
.method public get()Lcom/android/systemui/doze/DozeFactory;
    .locals 19

    move-object/from16 v0, p0

    .line 98
    iget-object v1, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->dozeLogProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->dozeParametersProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->batteryControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->alarmManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->dockManagerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->wallpaperManagerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->proximitySensorProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->proximityCheckProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->delayedWakeLockBuilderProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->handlerProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v0, v0, Lcom/android/systemui/doze/DozeFactory_Factory;->dozeHostProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v0

    move-object/from16 v1, v18

    invoke-static/range {v1 .. v17}, Lcom/android/systemui/doze/DozeFactory_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/doze/DozeFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeFactory_Factory;->get()Lcom/android/systemui/doze/DozeFactory;

    move-result-object p0

    return-object p0
.end method
