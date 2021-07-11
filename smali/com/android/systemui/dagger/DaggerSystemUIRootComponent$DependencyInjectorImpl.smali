.class final Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;
.super Ljava/lang/Object;
.source "DaggerSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/Dependency$DependencyInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DependencyInjectorImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)V
    .locals 0

    .line 4340
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$1;)V
    .locals 0

    .line 4339
    invoke-direct {p0, p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;-><init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)V

    return-void
.end method

.method private injectDependency(Lcom/android/systemui/Dependency;)Lcom/android/systemui/Dependency;
    .locals 1

    .line 4348
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4349
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dump/DumpManager;

    .line 4348
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDumpManager(Lcom/android/systemui/Dependency;Lcom/android/systemui/dump/DumpManager;)V

    .line 4350
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4353
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4352
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4350
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMActivityStarter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4354
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4356
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4354
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBroadcastDispatcher(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4357
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4358
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4357
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAsyncSensorManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4359
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4362
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4361
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4359
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBluetoothController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4363
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4366
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4365
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4363
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLocationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4367
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4370
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4369
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4367
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRotationLockController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4371
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4374
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4373
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4371
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNetworkController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4375
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4378
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4377
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4375
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMZenModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4379
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4382
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4381
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4379
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMHotspotController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4383
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4385
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4383
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMCastController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4386
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4389
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4388
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4386
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMFlashlightController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4390
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4392
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4390
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUserSwitcherController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4393
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4396
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4395
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4393
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUserInfoController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4397
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4400
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4399
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4397
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4401
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4403
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4401
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardUpdateMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4404
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4406
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4404
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBatteryController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4407
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4409
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4407
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNightDisplayListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4410
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4413
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4412
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4410
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMManagedProfileController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4414
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4417
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4416
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4414
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNextAlarmController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4418
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4420
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4418
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDataSaverController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4421
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4423
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4421
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAccessibilityController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4424
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4427
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4426
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4424
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDeviceProvisionedController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4428
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4430
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4428
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPluginManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4431
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4432
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4431
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAssistManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4433
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4436
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4435
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4433
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSecurityController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4437
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4438
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4437
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLeakDetector(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4439
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4440
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4439
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLeakReporter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4441
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4442
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4441
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMGarbageMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4443
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4445
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4443
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTunerService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4446
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4449
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4448
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4446
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationShadeWindowController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4450
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4452
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4450
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTempStatusBarWindowController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4453
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4456
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4455
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4453
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDarkIconDispatcher(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4457
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4460
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4459
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4457
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMConfigurationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4461
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4464
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4463
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4461
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBarIconController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4465
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4466
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4465
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMScreenLifecycle(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4467
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4469
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4467
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMWakefulnessLifecycle(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4470
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4471
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4470
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMFragmentService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4472
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4475
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4474
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4472
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMExtensionController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4476
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4477
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4476
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPluginDependencyProvider(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4478
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4481
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4480
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4478
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLocalBluetoothManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4482
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4485
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4484
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4482
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVolumeDialogController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4486
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4488
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4486
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMetricsLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4489
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4491
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4489
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAccessibilityManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4492
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4493
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4492
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSysuiColorExtractor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4494
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4496
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4494
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTunablePaddingService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4497
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4499
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4497
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMForegroundServiceController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4500
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4501
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4500
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUiOffloadThread(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4502
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4505
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4504
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4502
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMWarningsUI(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4506
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4507
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4506
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLightBarController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4508
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4510
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4508
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMIWindowManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4511
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4513
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4511
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOverviewProxyService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4514
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4516
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4514
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNavBarModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4517
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4520
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4519
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4517
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMEnhancedEstimates(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4521
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4522
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4521
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVibratorHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4523
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4525
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4523
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMIStatusBarService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4526
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4528
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4526
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDisplayMetrics(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4529
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4531
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4529
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLockscreenGestureLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4532
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4535
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4534
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4532
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardEnvironment(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4536
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4539
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4538
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4536
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMShadeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4540
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4543
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4542
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4540
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationRemoteInputManagerCallback(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4544
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4547
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4546
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4544
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAppOpsController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4548
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4551
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4550
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4548
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNavigationBarController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4552
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4555
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4554
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4552
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBarStateController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4556
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4560
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4558
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4556
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationLockscreenUserManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4561
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4565
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4563
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4561
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationGroupAlertTransferHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4566
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4568
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4566
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationGroupManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4569
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4571
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4569
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVisualStabilityManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4572
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4575
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4574
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4572
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationGutsManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4576
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4579
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4578
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4576
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationMediaManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4580
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4583
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4582
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4580
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationBlockingHelperManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4584
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4587
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4586
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4584
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationRemoteInputManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4588
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4589
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4588
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSmartReplyConstants(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4590
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4592
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4590
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4593
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4595
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4593
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4596
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4599
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4598
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4596
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationViewHierarchyManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4600
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4601
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4600
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationFilter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4602
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4603
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4602
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardDismissUtil(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4604
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4606
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4604
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSmartReplyController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4607
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4610
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4609
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4607
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRemoteInputQuickSettingsDisabler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4611
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4612
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4611
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBubbleController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4613
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4616
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4615
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4613
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationEntryManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4617
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4619
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4617
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSensorPrivacyManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4620
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4622
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4620
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAutoHideController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4623
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4626
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4625
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4623
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMForegroundServiceNotificationListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4627
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4628
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4627
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBgLooper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4629
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4630
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4629
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBgHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4632
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4631
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMainLooper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4633
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4634
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4633
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMainHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4635
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4637
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4635
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTimeTickHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4638
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4640
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4638
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLeakReportEmail(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4641
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4642
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4641
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMainExecutor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4643
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4645
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4643
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBackgroundExecutor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4646
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4647
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4646
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMClockManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4648
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4650
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4648
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMActivityManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4651
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4654
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4653
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4651
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDevicePolicyManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4655
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4657
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4655
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPackageManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4658
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4661
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4660
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4658
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSensorPrivacyController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4662
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4664
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4662
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDockManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4665
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4667
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4665
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMINotificationManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4668
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4669
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4668
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSysUiStateFlagsContainer(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4670
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4671
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4670
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAlarmManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4672
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4674
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4672
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardSecurityModel(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4675
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4676
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4675
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDozeParameters(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4679
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWallPaperManagerFactory;->create()Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWallPaperManagerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4677
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMWallpaperManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4680
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4681
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4680
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMCommandQueue(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4682
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4683
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4682
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRecents(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4684
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4685
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4684
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBar(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4686
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4687
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4686
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDisplayController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4688
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4689
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4688
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSystemWindows(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4690
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4692
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$12000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4690
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDisplayImeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4693
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4694
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$12100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4693
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRecordingController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4695
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4696
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$12200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4695
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMProtoTracer(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4697
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4698
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$12300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4697
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDivider(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4699
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4702
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$12400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4701
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4699
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOpZenModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4703
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4705
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$12500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4703
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOpBiometricDialogImpl(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4706
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4707
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$12600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4706
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOpSceneModeObserver(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4708
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4712
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$12700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4710
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4708
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOpChargingAnimationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4713
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4716
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$12800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4715
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4713
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOpNetworkSpeedController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4717
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4718
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$12900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4717
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOPWLBHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4719
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4721
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$13000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4719
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOpNotificationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4722
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4725
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$13100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4724
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4722
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOpHighlightHintController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4726
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 4730
    invoke-static {p0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$13200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    .line 4728
    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    .line 4726
    invoke-static {p1, p0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOpThreekeyVolumeGuideController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    return-object p1
.end method


# virtual methods
.method public createSystemUI(Lcom/android/systemui/Dependency;)V
    .locals 0

    .line 4344
    invoke-direct {p0, p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$DependencyInjectorImpl;->injectDependency(Lcom/android/systemui/Dependency;)Lcom/android/systemui/Dependency;

    return-void
.end method
