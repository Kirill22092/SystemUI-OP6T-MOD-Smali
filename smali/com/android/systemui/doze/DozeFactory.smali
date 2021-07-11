.class public Lcom/android/systemui/doze/DozeFactory;
.super Ljava/lang/Object;
.source "DozeFactory.java"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAsyncSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

.field private final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mDelayedWakeLockBuilder:Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;

.field private final mDockManager:Lcom/android/systemui/dock/DockManager;

.field private final mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field private final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mProximityCheck:Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;

.field private final mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

.field private final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field private final mWallpaperManager:Landroid/app/IWallpaperManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/util/sensors/AsyncSensorManager;Landroid/app/AlarmManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dock/DockManager;Landroid/app/IWallpaperManager;Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/doze/DozeHost;)V
    .locals 2

    move-object v0, p0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 75
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object v1, p2

    .line 76
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    move-object v1, p3

    .line 77
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object v1, p4

    .line 78
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object v1, p5

    .line 79
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory;->mAsyncSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-object v1, p6

    .line 80
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory;->mAlarmManager:Landroid/app/AlarmManager;

    move-object v1, p7

    .line 81
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object v1, p8

    .line 82
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v1, p9

    .line 83
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory;->mDockManager:Lcom/android/systemui/dock/DockManager;

    move-object v1, p10

    .line 84
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory;->mWallpaperManager:Landroid/app/IWallpaperManager;

    move-object v1, p11

    .line 85
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    move-object v1, p12

    .line 86
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory;->mProximityCheck:Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;

    move-object v1, p13

    .line 87
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory;->mDelayedWakeLockBuilder:Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;

    move-object/from16 v1, p14

    .line 88
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory;->mHandler:Landroid/os/Handler;

    move-object/from16 v1, p15

    .line 89
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-object/from16 v1, p16

    .line 90
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v1, p17

    .line 91
    iput-object v1, v0, Lcom/android/systemui/doze/DozeFactory;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    return-void
.end method

.method private createDozeScreenBrightness(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/SensorManager;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/os/Handler;)Lcom/android/systemui/doze/DozeMachine$Part;
    .locals 10

    .line 133
    sget v0, Lcom/android/systemui/R$string;->doze_brightness_sensor_type:I

    move-object v2, p1

    .line 134
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, p3

    .line 133
    invoke-static {p3, v0}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Landroid/hardware/SensorManager;Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v5

    .line 135
    new-instance v0, Lcom/android/systemui/doze/DozeScreenBrightness;

    move-object v1, p0

    iget-object v6, v1, Lcom/android/systemui/doze/DozeFactory;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 136
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPolicy()Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    move-result-object v9

    move-object v1, v0

    move-object v3, p2

    move-object v7, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/doze/DozeScreenBrightness;-><init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V

    return-object v0
.end method

.method private createDozeTriggers(Landroid/content/Context;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/doze/DozeHost;Landroid/app/AlarmManager;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeMachine;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;)Lcom/android/systemui/doze/DozeTriggers;
    .locals 16

    move-object/from16 v0, p0

    .line 145
    new-instance v15, Lcom/android/systemui/doze/DozeTriggers;

    iget-object v11, v0, Lcom/android/systemui/doze/DozeFactory;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    iget-object v14, v0, Lcom/android/systemui/doze/DozeFactory;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/4 v9, 0x1

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p8

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p2

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p10

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/doze/DozeTriggers;-><init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine;Lcom/android/systemui/doze/DozeHost;Landroid/app/AlarmManager;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/util/wakelock/WakeLock;ZLcom/android/systemui/dock/DockManager;Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-object v15
.end method

.method private createDozeUi(Landroid/content/Context;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeMachine;Landroid/os/Handler;Landroid/app/AlarmManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/doze/DozeLog;)Lcom/android/systemui/doze/DozeMachine$Part;
    .locals 11

    .line 154
    new-instance v10, Lcom/android/systemui/doze/DozeUi;

    move-object v0, p0

    iget-object v8, v0, Lcom/android/systemui/doze/DozeFactory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v0, v10

    move-object v1, p1

    move-object/from16 v2, p6

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/doze/DozeUi;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/doze/DozeMachine;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/doze/DozeLog;)V

    return-object v10
.end method


# virtual methods
.method assembleMachine(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeMachine;
    .locals 19

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    .line 96
    new-instance v14, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v14, v13}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    .line 97
    iget-object v0, v12, Lcom/android/systemui/doze/DozeFactory;->mDelayedWakeLockBuilder:Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;

    iget-object v1, v12, Lcom/android/systemui/doze/DozeFactory;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;->setHandler(Landroid/os/Handler;)Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;

    const-string v1, "Doze"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;->setTag(Ljava/lang/String;)Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;

    invoke-virtual {v0}, Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;->build()Lcom/android/systemui/util/wakelock/DelayedWakeLock;

    move-result-object v15

    .line 100
    new-instance v0, Lcom/android/systemui/doze/DozeBrightnessHostForwarder;

    iget-object v1, v12, Lcom/android/systemui/doze/DozeFactory;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-direct {v0, v13, v1}, Lcom/android/systemui/doze/DozeBrightnessHostForwarder;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/doze/DozeHost;)V

    .line 101
    iget-object v1, v12, Lcom/android/systemui/doze/DozeFactory;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-static {v0, v1}, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;->wrapIfNeeded(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/statusbar/phone/DozeParameters;)Lcom/android/systemui/doze/DozeMachine$Service;

    move-result-object v0

    .line 103
    iget-object v1, v12, Lcom/android/systemui/doze/DozeFactory;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-static {v0, v1}, Lcom/android/systemui/doze/DozeSuspendScreenStatePreventingAdapter;->wrapIfNeeded(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/statusbar/phone/DozeParameters;)Lcom/android/systemui/doze/DozeMachine$Service;

    move-result-object v16

    .line 106
    new-instance v11, Lcom/android/systemui/doze/DozeMachine;

    iget-object v4, v12, Lcom/android/systemui/doze/DozeFactory;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v5, v12, Lcom/android/systemui/doze/DozeFactory;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v6, v12, Lcom/android/systemui/doze/DozeFactory;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget-object v7, v12, Lcom/android/systemui/doze/DozeFactory;->mDockManager:Lcom/android/systemui/dock/DockManager;

    iget-object v8, v12, Lcom/android/systemui/doze/DozeFactory;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    move-object v0, v11

    move-object/from16 v1, v16

    move-object v2, v14

    move-object v3, v15

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/doze/DozeMachine;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/doze/DozeHost;)V

    const/16 v0, 0x9

    new-array v10, v0, [Lcom/android/systemui/doze/DozeMachine$Part;

    .line 109
    new-instance v0, Lcom/android/systemui/doze/DozePauser;

    iget-object v1, v12, Lcom/android/systemui/doze/DozeFactory;->mHandler:Landroid/os/Handler;

    iget-object v2, v12, Lcom/android/systemui/doze/DozeFactory;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, v12, Lcom/android/systemui/doze/DozeFactory;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 110
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPolicy()Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    move-result-object v3

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/android/systemui/doze/DozePauser;-><init>(Landroid/os/Handler;Lcom/android/systemui/doze/DozeMachine;Landroid/app/AlarmManager;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V

    const/4 v1, 0x0

    aput-object v0, v10, v1

    new-instance v0, Lcom/android/systemui/doze/DozeFalsingManagerAdapter;

    iget-object v1, v12, Lcom/android/systemui/doze/DozeFactory;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-direct {v0, v1}, Lcom/android/systemui/doze/DozeFalsingManagerAdapter;-><init>(Lcom/android/systemui/plugins/FalsingManager;)V

    const/4 v1, 0x1

    aput-object v0, v10, v1

    iget-object v2, v12, Lcom/android/systemui/doze/DozeFactory;->mAsyncSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iget-object v3, v12, Lcom/android/systemui/doze/DozeFactory;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iget-object v4, v12, Lcom/android/systemui/doze/DozeFactory;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v6, v12, Lcom/android/systemui/doze/DozeFactory;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v9, v12, Lcom/android/systemui/doze/DozeFactory;->mDockManager:Lcom/android/systemui/dock/DockManager;

    iget-object v8, v12, Lcom/android/systemui/doze/DozeFactory;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget-object v7, v12, Lcom/android/systemui/doze/DozeFactory;->mProximityCheck:Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v5, v14

    move-object/from16 v17, v7

    move-object v7, v15

    move-object/from16 v18, v8

    move-object v8, v11

    move-object v13, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v11

    move-object/from16 v11, v17

    .line 112
    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/doze/DozeFactory;->createDozeTriggers(Landroid/content/Context;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/doze/DozeHost;Landroid/app/AlarmManager;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeMachine;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;)Lcom/android/systemui/doze/DozeTriggers;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v13, v1

    iget-object v2, v12, Lcom/android/systemui/doze/DozeFactory;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iget-object v5, v12, Lcom/android/systemui/doze/DozeFactory;->mHandler:Landroid/os/Handler;

    iget-object v6, v12, Lcom/android/systemui/doze/DozeFactory;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v7, v12, Lcom/android/systemui/doze/DozeFactory;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v8, v12, Lcom/android/systemui/doze/DozeFactory;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v15

    move-object/from16 v4, v18

    .line 115
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/doze/DozeFactory;->createDozeUi(Landroid/content/Context;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeMachine;Landroid/os/Handler;Landroid/app/AlarmManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/doze/DozeLog;)Lcom/android/systemui/doze/DozeMachine$Part;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v13, v1

    new-instance v0, Lcom/android/systemui/doze/DozeScreenState;

    iget-object v4, v12, Lcom/android/systemui/doze/DozeFactory;->mHandler:Landroid/os/Handler;

    iget-object v5, v12, Lcom/android/systemui/doze/DozeFactory;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iget-object v6, v12, Lcom/android/systemui/doze/DozeFactory;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object v2, v0

    move-object/from16 v3, v16

    move-object v7, v15

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/doze/DozeScreenState;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/os/Handler;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/wakelock/WakeLock;)V

    const/4 v1, 0x4

    aput-object v0, v13, v1

    iget-object v3, v12, Lcom/android/systemui/doze/DozeFactory;->mAsyncSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iget-object v4, v12, Lcom/android/systemui/doze/DozeFactory;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iget-object v5, v12, Lcom/android/systemui/doze/DozeFactory;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v6, v12, Lcom/android/systemui/doze/DozeFactory;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    .line 119
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/doze/DozeFactory;->createDozeScreenBrightness(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/SensorManager;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/os/Handler;)Lcom/android/systemui/doze/DozeMachine$Part;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, v13, v1

    new-instance v0, Lcom/android/systemui/doze/DozeWallpaperState;

    iget-object v1, v12, Lcom/android/systemui/doze/DozeFactory;->mWallpaperManager:Landroid/app/IWallpaperManager;

    iget-object v2, v12, Lcom/android/systemui/doze/DozeFactory;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget-object v3, v12, Lcom/android/systemui/doze/DozeFactory;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/doze/DozeWallpaperState;-><init>(Landroid/app/IWallpaperManager;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/phone/DozeParameters;)V

    const/4 v1, 0x6

    aput-object v0, v13, v1

    new-instance v0, Lcom/android/systemui/doze/DozeDockHandler;

    iget-object v1, v12, Lcom/android/systemui/doze/DozeFactory;->mDockManager:Lcom/android/systemui/dock/DockManager;

    move-object/from16 v2, v18

    invoke-direct {v0, v14, v2, v1}, Lcom/android/systemui/doze/DozeDockHandler;-><init>(Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/doze/DozeMachine;Lcom/android/systemui/dock/DockManager;)V

    const/4 v1, 0x7

    aput-object v0, v13, v1

    new-instance v0, Lcom/android/systemui/doze/DozeAuthRemover;

    move-object/from16 v1, p1

    move-object v3, v13

    invoke-direct {v0, v1}, Lcom/android/systemui/doze/DozeAuthRemover;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x8

    aput-object v0, v3, v1

    .line 109
    invoke-virtual {v2, v3}, Lcom/android/systemui/doze/DozeMachine;->setParts([Lcom/android/systemui/doze/DozeMachine$Part;)V

    return-object v2
.end method
