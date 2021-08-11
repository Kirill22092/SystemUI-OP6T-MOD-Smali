.class public Lcom/oneplus/anim/OpCameraAnimateController;
.super Ljava/lang/Object;
.source "OpCameraAnimateController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/anim/OpCameraAnimateController$MotorStateChangedCallback;
    }
.end annotation


# instance fields
.field private mAvailabilityCallback:Lcom/oneplus/android/os/IOpMotorStateChangedCallback;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDelayToShowAnimate:Z

.field private mGraphLight:Lcom/oneplus/anim/OpGraphLight;

.field private final mHandler:Landroid/os/Handler;

.field private mIsCutoutHide:Z

.field private mIsLastFrontCameraAnimStateOn:Z

.field private mIsOneHandMode:Z

.field private mManager:Lcom/oneplus/android/os/IOpMotorManager;

.field private mOneHandSettings:Landroid/net/Uri;

.field private mShowAnimateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsCutoutHide:Z

    iput-boolean v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsOneHandMode:Z

    const-string v1, "one_hand_mode_status"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mOneHandSettings:Landroid/net/Uri;

    iput-boolean v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mDelayToShowAnimate:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/anim/OpCameraAnimateController$2;

    iget-object v1, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/anim/OpCameraAnimateController$2;-><init>(Lcom/oneplus/anim/OpCameraAnimateController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/oneplus/anim/OpCameraAnimateController$3;

    invoke-direct {v0, p0}, Lcom/oneplus/anim/OpCameraAnimateController$3;-><init>(Lcom/oneplus/anim/OpCameraAnimateController;)V

    iput-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mShowAnimateRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/anim/OpCameraAnimateController;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/anim/OpCameraAnimateController;->isFrontCamera(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/oneplus/anim/OpCameraAnimateController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$102(Lcom/oneplus/anim/OpCameraAnimateController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsLastFrontCameraAnimStateOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/oneplus/anim/OpCameraAnimateController;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mOneHandSettings:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/oneplus/anim/OpCameraAnimateController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/anim/OpCameraAnimateController;->updateCameraAnim()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/anim/OpCameraAnimateController;)Lcom/oneplus/anim/OpGraphLight;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mGraphLight:Lcom/oneplus/anim/OpGraphLight;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/anim/OpCameraAnimateController;)Landroid/database/ContentObserver;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mContentObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/anim/OpCameraAnimateController;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/anim/OpCameraAnimateController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mDelayToShowAnimate:Z

    return p0
.end method

.method static synthetic access$502(Lcom/oneplus/anim/OpCameraAnimateController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mDelayToShowAnimate:Z

    return p1
.end method

.method static synthetic access$600(Lcom/oneplus/anim/OpCameraAnimateController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsCutoutHide:Z

    return p0
.end method

.method static synthetic access$602(Lcom/oneplus/anim/OpCameraAnimateController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsCutoutHide:Z

    return p1
.end method

.method static synthetic access$700(Lcom/oneplus/anim/OpCameraAnimateController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/anim/OpCameraAnimateController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsOneHandMode:Z

    return p0
.end method

.method static synthetic access$802(Lcom/oneplus/anim/OpCameraAnimateController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsOneHandMode:Z

    return p1
.end method

.method static synthetic access$900(Lcom/oneplus/anim/OpCameraAnimateController;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mShowAnimateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private isFrontCamera(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "OpCameraAnimateController"

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFrontCamera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private registerCameraCallback()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerCameraCallback mManager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mManager:Lcom/oneplus/android/os/IOpMotorManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpCameraAnimateController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mManager:Lcom/oneplus/android/os/IOpMotorManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mAvailabilityCallback:Lcom/oneplus/android/os/IOpMotorStateChangedCallback;

    if-nez v0, :cond_1

    new-instance v0, Lcom/oneplus/anim/OpCameraAnimateController$MotorStateChangedCallback;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/oneplus/anim/OpCameraAnimateController$MotorStateChangedCallback;-><init>(Lcom/oneplus/anim/OpCameraAnimateController;Lcom/oneplus/anim/OpCameraAnimateController$1;)V

    iput-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mAvailabilityCallback:Lcom/oneplus/android/os/IOpMotorStateChangedCallback;

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mManager:Lcom/oneplus/android/os/IOpMotorManager;

    iget-object p0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mAvailabilityCallback:Lcom/oneplus/android/os/IOpMotorStateChangedCallback;

    invoke-interface {v0, p0}, Lcom/oneplus/android/os/IOpMotorManager;->registerMotorStateChangedCallback(Lcom/oneplus/android/os/IOpMotorStateChangedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerCameraCallback: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateCameraAnim()V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsLastFrontCameraAnimStateOn:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mGraphLight:Lcom/oneplus/anim/OpGraphLight;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isCutoutHide(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "one_hand_mode_status"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v3, v2

    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsCutoutHide:Z

    if-ne v1, v0, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsOneHandMode:Z

    if-eq v1, v3, :cond_5

    :cond_1
    iput-boolean v3, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsOneHandMode:Z

    iput-boolean v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsCutoutHide:Z

    sget-boolean v1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCameraAnim isCutoutHide:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , isOneHandMode: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpCameraAnimateController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsOneHandMode:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsCutoutHide:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mGraphLight:Lcom/oneplus/anim/OpGraphLight;

    invoke-virtual {p0}, Lcom/oneplus/anim/OpGraphLight;->postShow()V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mGraphLight:Lcom/oneplus/anim/OpGraphLight;

    invoke-virtual {p0}, Lcom/oneplus/anim/OpGraphLight;->forceStop()V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public forceStopAnim()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mGraphLight:Lcom/oneplus/anim/OpGraphLight;

    if-eqz v0, :cond_0

    const-string v0, "OpCameraAnimateController"

    const-string v1, "forceStop GraphLight"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mGraphLight:Lcom/oneplus/anim/OpGraphLight;

    invoke-virtual {p0}, Lcom/oneplus/anim/OpGraphLight;->forceStop()V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->config_should_show_front_camera_animation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const-string v1, "debug.frontcamera.control"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init shouldShow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", controlAnim:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OpCameraAnimateController"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    move v0, v2

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, "motor"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/android/os/IOpMotorManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/android/os/IOpMotorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mManager:Lcom/oneplus/android/os/IOpMotorManager;

    new-instance v0, Lcom/oneplus/anim/OpGraphLight;

    iget-object v1, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/anim/OpGraphLight;-><init>(Landroid/view/WindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mGraphLight:Lcom/oneplus/anim/OpGraphLight;

    invoke-direct {p0}, Lcom/oneplus/anim/OpCameraAnimateController;->registerCameraCallback()V

    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isSupportHolePunchFrontCam "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportHolePunchFrontCam()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportHolePunchFrontCam()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    new-instance v1, Lcom/oneplus/anim/OpCameraAnimateController$1;

    invoke-direct {v1, p0}, Lcom/oneplus/anim/OpCameraAnimateController$1;-><init>(Lcom/oneplus/anim/OpCameraAnimateController;)V

    iget-object p0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    :cond_3
    return-void
.end method

.method public isFrontCameraAnimOn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsLastFrontCameraAnimStateOn:Z

    return p0
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mDelayToShowAnimate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mDelayToShowAnimate:Z

    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mShowAnimateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mGraphLight:Lcom/oneplus/anim/OpGraphLight;

    invoke-virtual {v0}, Lcom/oneplus/anim/OpGraphLight;->postShow()V

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsLastFrontCameraAnimStateOn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mGraphLight:Lcom/oneplus/anim/OpGraphLight;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/oneplus/anim/OpGraphLight;->onConfigChanged(Landroid/content/res/Configuration;)V

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/anim/OpCameraAnimateController;->updateCameraAnim()V

    return-void
.end method
