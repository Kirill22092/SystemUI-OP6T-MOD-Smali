.class final Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;
.super Ljava/lang/Object;
.source "DaggerTvSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/Dependency$DependencyInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DependencyInjectorImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)V
    .locals 0

    .line 4346
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$1;)V
    .locals 0

    .line 4345
    invoke-direct {p0, p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;-><init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)V

    return-void
.end method

.method private injectDependency(Lcom/android/systemui/Dependency;)Lcom/android/systemui/Dependency;
    .locals 1

    .line 4354
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4355
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$1300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dump/DumpManager;

    .line 4354
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDumpManager(Lcom/android/systemui/Dependency;Lcom/android/systemui/dump/DumpManager;)V

    .line 4356
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4359
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$1400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4358
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4356
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMActivityStarter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4360
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4362
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$1500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4360
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBroadcastDispatcher(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4363
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4365
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$1600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4363
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAsyncSensorManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4366
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4369
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$1700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4368
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4366
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBluetoothController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4370
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4373
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$1800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4372
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4370
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLocationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4374
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4377
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$1900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4376
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4374
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRotationLockController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4378
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4381
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$2000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4380
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4378
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNetworkController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4382
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4385
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$2100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4384
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4382
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMZenModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4386
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4389
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$2200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4388
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4386
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMHotspotController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4390
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4393
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$2300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4392
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4390
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMCastController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4394
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4397
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$2400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4396
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4394
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMFlashlightController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4398
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4400
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$2500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4398
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUserSwitcherController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4401
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4404
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$2600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4403
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4401
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUserInfoController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4405
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4408
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$2700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4407
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4405
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4409
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4411
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$2800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4409
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardUpdateMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4412
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4414
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$2900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4412
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBatteryController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4415
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4417
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$3000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4415
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNightDisplayListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4418
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4421
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$3100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4420
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4418
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMManagedProfileController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4422
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4425
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$3200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4424
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4422
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNextAlarmController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4426
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4428
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$3300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4426
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDataSaverController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4429
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4431
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$3400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4429
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAccessibilityController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4432
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4436
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$3500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4434
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4432
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDeviceProvisionedController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4437
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4439
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$3600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4437
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPluginManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4440
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4441
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$3700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4440
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAssistManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4442
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4445
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$3800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4444
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4442
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSecurityController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4446
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4448
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$3900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4446
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLeakDetector(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4449
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4450
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$4000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4449
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLeakReporter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4451
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4452
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$4100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4451
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMGarbageMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4453
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4455
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$4200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4453
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTunerService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4456
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4459
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$4300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4458
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4456
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationShadeWindowController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4460
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4462
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$4400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4460
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTempStatusBarWindowController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4463
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4466
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$4500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4465
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4463
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDarkIconDispatcher(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4467
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4470
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$4600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4469
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4467
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMConfigurationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4471
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4474
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$4700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4473
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4471
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBarIconController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4475
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4476
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$4800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4475
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMScreenLifecycle(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4477
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4479
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$4900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4477
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMWakefulnessLifecycle(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4480
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4481
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$5000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4480
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMFragmentService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4482
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4485
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$5100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4484
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4482
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMExtensionController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4486
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4487
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$5200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4486
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPluginDependencyProvider(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4488
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4491
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$5300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4490
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4488
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLocalBluetoothManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4492
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4495
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$5400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4494
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4492
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVolumeDialogController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4496
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4498
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$5500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4496
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMetricsLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4499
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4501
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$5600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4499
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAccessibilityManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4502
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4504
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$5700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4502
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSysuiColorExtractor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4505
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4507
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$5800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4505
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTunablePaddingService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4508
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4510
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$5900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4508
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMForegroundServiceController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4511
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4512
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$6000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4511
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUiOffloadThread(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4513
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4516
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$6100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4515
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4513
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMWarningsUI(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4517
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4519
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$6200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4517
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLightBarController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4520
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4522
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$6300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4520
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMIWindowManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4523
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4525
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$6400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4523
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOverviewProxyService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4526
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4528
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$6500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4526
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNavBarModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4529
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4532
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$6600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4531
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4529
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMEnhancedEstimates(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4533
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4534
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$6700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4533
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVibratorHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4535
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4537
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$6800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4535
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMIStatusBarService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4538
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4540
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$6900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4538
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDisplayMetrics(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4541
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4543
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4541
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLockscreenGestureLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4544
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4547
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4546
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4544
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardEnvironment(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4548
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4551
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4550
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4548
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMShadeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4552
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4555
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4554
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4552
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationRemoteInputManagerCallback(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4556
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4559
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4558
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4556
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAppOpsController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4560
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4563
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4562
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4560
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNavigationBarController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4564
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4567
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4566
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4564
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBarStateController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4568
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4573
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4570
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4568
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationLockscreenUserManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4574
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4578
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4576
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4574
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationGroupAlertTransferHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4579
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4581
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4579
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationGroupManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4582
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4585
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$8000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4584
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4582
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVisualStabilityManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4586
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4589
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$8100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4588
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4586
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationGutsManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4590
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4593
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$8200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4592
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4590
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationMediaManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4594
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4597
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$8300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4596
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4594
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationBlockingHelperManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4598
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4601
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$8400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4600
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4598
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationRemoteInputManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4602
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4604
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$8500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4602
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSmartReplyConstants(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4605
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4607
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$8600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4605
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4608
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4610
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$8700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4608
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4611
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4614
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$8800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4613
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4611
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationViewHierarchyManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4615
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4617
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$8900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4615
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationFilter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4618
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4620
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$9000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4618
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardDismissUtil(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4621
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4623
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$9100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4621
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSmartReplyController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4624
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4627
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$9200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4626
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4624
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRemoteInputQuickSettingsDisabler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4628
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4630
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$9300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4628
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBubbleController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4631
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4634
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$9400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4633
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4631
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationEntryManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4635
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4637
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$9500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4635
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSensorPrivacyManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4638
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4640
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$9600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4638
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAutoHideController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4641
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4644
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$9700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4643
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4641
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMForegroundServiceNotificationListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4645
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4646
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$9800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4645
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBgLooper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4647
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4648
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$9900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideBgHandlerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4647
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBgHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4650
    invoke-static {}, Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;->create()Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainLooperFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4649
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMainLooper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4651
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4653
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$10000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainHandlerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4651
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMainHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4654
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4656
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$10100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4654
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTimeTickHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4657
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4659
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$10200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4657
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLeakReportEmail(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4660
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4662
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$10300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Lcom/android/systemui/util/concurrency/ConcurrencyModule_ProvideMainExecutorFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4660
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMainExecutor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4663
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4665
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$10400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4663
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBackgroundExecutor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4666
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4667
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$10500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4666
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMClockManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4668
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4671
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$10600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4670
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4668
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMActivityManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4672
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4675
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$10700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4674
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4672
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDevicePolicyManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4676
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4679
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$10800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4678
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4676
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPackageManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4680
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4683
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$10900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4682
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4680
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSensorPrivacyController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4684
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4686
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4684
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDockManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4687
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4689
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4687
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMINotificationManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4690
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4691
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4690
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSysUiStateFlagsContainer(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4692
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4694
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4692
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAlarmManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4695
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4697
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4695
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardSecurityModel(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4698
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4699
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4698
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDozeParameters(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4702
    invoke-static {}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWallPaperManagerFactory;->create()Lcom/android/systemui/dagger/SystemServicesModule_ProvideIWallPaperManagerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4700
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMWallpaperManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4703
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4705
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4703
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMCommandQueue(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4706
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4707
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4706
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRecents(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4708
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4709
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4708
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBar(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4710
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4711
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4710
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDisplayController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4712
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4713
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$12000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4712
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSystemWindows(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4714
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4716
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$12100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4714
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDisplayImeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4717
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4719
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$12200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4717
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRecordingController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4720
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4721
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$12300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4720
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMProtoTracer(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4722
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4723
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$12400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4722
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDivider(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4724
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4727
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$12500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4726
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4724
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOpZenModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4728
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4730
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$12600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4728
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOpBiometricDialogImpl(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4731
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4733
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$12700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4731
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOpSceneModeObserver(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4734
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4738
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$12800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4736
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4734
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOpChargingAnimationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4739
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4742
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$12900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4741
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4739
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOpNetworkSpeedController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4743
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4744
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$13000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4743
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOPWLBHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4745
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4747
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$13100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4745
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOpNotificationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4748
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4751
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$13200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 4750
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 4748
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOpHighlightHintController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 4752
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 4756
    invoke-static {p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$13300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    .line 4754
    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    .line 4752
    invoke-static {p1, p0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOpThreekeyVolumeGuideController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    return-object p1
.end method


# virtual methods
.method public createSystemUI(Lcom/android/systemui/Dependency;)V
    .locals 0

    .line 4350
    invoke-direct {p0, p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$DependencyInjectorImpl;->injectDependency(Lcom/android/systemui/Dependency;)Lcom/android/systemui/Dependency;

    return-void
.end method
