.class public Lcom/oneplus/plugin/OpPreventModeCtrl;
.super Lcom/oneplus/plugin/OpBaseCtrl;
.source "OpPreventModeCtrl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/plugin/OpPreventModeCtrl$SensorHandler;,
        Lcom/oneplus/plugin/OpPreventModeCtrl$PocketSensorListener;
    }
.end annotation


# static fields
.field private static final IS_SUPPORT_POCKET_SWITCH:Z

.field private static mPreventModeActive:Z = false

.field private static mPreventModeNoBackground:Z = false

.field private static mSensorEnabled:Z = false


# instance fields
.field haveDelayAnimation:Z

.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field mBackground:Landroid/widget/ImageView;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandler:Landroid/os/Handler;

.field private mKeyLockMode:I

.field private mKeyguardIsShowing:Z

.field private mKeyguardIsVisible:Z

.field private mNearThreshold:I

.field private mObject:Ljava/lang/Object;

.field private mOpSceneModeObserver:Lcom/oneplus/scene/OpSceneModeObserver;

.field mPMView:Lcom/oneplus/plugin/OpPreventModeView;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private sleepTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x74

    aput v2, v0, v1

    .line 57
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/plugin/OpPreventModeCtrl;->IS_SUPPORT_POCKET_SWITCH:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 92
    invoke-direct {p0}, Lcom/oneplus/plugin/OpBaseCtrl;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyguardIsVisible:Z

    .line 67
    iput-boolean v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyguardIsShowing:Z

    .line 80
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mObject:Ljava/lang/Object;

    .line 95
    iput v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mNearThreshold:I

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/plugin/OpPreventModeCtrl;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/plugin/OpPreventModeCtrl;)Ljava/lang/Object;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mObject:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/plugin/OpPreventModeCtrl;)Landroid/hardware/Sensor;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/plugin/OpPreventModeCtrl;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mNearThreshold:I

    return p0
.end method

.method static synthetic access$500(Lcom/oneplus/plugin/OpPreventModeCtrl;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->startRootAnimation()V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 43
    sget-boolean v0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeActive:Z

    return v0
.end method

.method static synthetic access$700(Lcom/oneplus/plugin/OpPreventModeCtrl;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/plugin/OpPreventModeCtrl;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->enableSensorInternal()V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/plugin/OpPreventModeCtrl;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->disableSensorInternal()V

    return-void
.end method

.method private bypassPreventMode()Z
    .locals 3

    .line 623
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 629
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyguardIsVisible:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 633
    :cond_1
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 634
    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->bypassPreventMode()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mOpSceneModeObserver:Lcom/oneplus/scene/OpSceneModeObserver;

    if-eqz p0, :cond_3

    .line 635
    invoke-virtual {p0}, Lcom/oneplus/scene/OpSceneModeObserver;->isInBrickMode()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :cond_4
    :goto_0
    return v1
.end method

.method private disableSensorInternal()V
    .locals 4

    .line 477
    sget-boolean v0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableSensor, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyLockMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpPreventModeCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 484
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 486
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensorListener:Landroid/hardware/SensorEventListener;

    check-cast p0, Lcom/oneplus/plugin/OpPreventModeCtrl$PocketSensorListener;

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl$PocketSensorListener;->resetState()V

    const/4 p0, 0x0

    .line 488
    sput-boolean p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 491
    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method private enableSensorInternal()V
    .locals 5

    .line 412
    sget-boolean v0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensorEnabled:Z

    if-nez v0, :cond_1

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableSensor, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TYPE_POCKET"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpPreventModeCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 419
    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 423
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 425
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, p0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 p0, 0x1

    .line 427
    sput-boolean p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 430
    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private hideSoftInput()V
    .locals 2

    :try_start_0
    const-string p0, "input_method"

    .line 613
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 612
    invoke-static {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 614
    invoke-interface {p0, v0, v1}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInputForLongshot(ILandroid/os/ResultReceiver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "OpPreventModeCtrl"

    const-string v1, "hide ime failed, "

    .line 617
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private isPreventModeEnabled()Z
    .locals 2

    .line 259
    sget-boolean v0, Lcom/oneplus/plugin/OpPreventModeCtrl;->IS_SUPPORT_POCKET_SWITCH:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/oneplus/plugin/OpBaseCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isPreventModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyguardIsShowing:Z

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private startRootAnimation()V
    .locals 5

    .line 497
    sget-boolean v0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeActive:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyguardIsShowing:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->bypassPreventMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 501
    :cond_0
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    .line 502
    iget-object v1, p0, Lcom/oneplus/plugin/OpBaseCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_acc_key_lock_mode"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyLockMode:I

    .line 503
    invoke-direct {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->hideSoftInput()V

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRootAnimation, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyLockMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpPreventModeCtrl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 510
    sput-boolean v1, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeActive:Z

    .line 513
    iget-object v4, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    .line 514
    invoke-virtual {v0, v4, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelViewAlpha(FZI)V

    .line 515
    sput-boolean v1, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeNoBackground:Z

    const-string v3, "panel alpha to 0"

    .line 516
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_3

    .line 522
    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 523
    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/faceunlock/OpFacelockController;->stopFacelockLightMode()V

    .line 525
    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyPreventModeChange(Z)V

    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 530
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    .line 531
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 532
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/plugin/OpPreventModeCtrl$1;

    invoke-direct {v1, p0}, Lcom/oneplus/plugin/OpPreventModeCtrl$1;-><init>(Lcom/oneplus/plugin/OpPreventModeCtrl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 542
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/plugin/OpPreventModeCtrl$2;

    invoke-direct {v1, p0}, Lcom/oneplus/plugin/OpPreventModeCtrl$2;-><init>(Lcom/oneplus/plugin/OpPreventModeCtrl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 570
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public disPatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPMView:Lcom/oneplus/plugin/OpPreventModeView;

    if-eqz p0, :cond_0

    .line 253
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method public disableSensor()V
    .locals 3

    .line 435
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 436
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 437
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 438
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 439
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public isPreventModeActive()Z
    .locals 0

    .line 600
    sget-boolean p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeActive:Z

    return p0
.end method

.method public isPreventModeNoBackground()Z
    .locals 0

    .line 605
    sget-boolean p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeNoBackground:Z

    return p0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 657
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPMView:Lcom/oneplus/plugin/OpPreventModeView;

    if-eqz p0, :cond_0

    .line 658
    invoke-virtual {p0}, Lcom/oneplus/plugin/OpPreventModeView;->init()V

    :cond_0
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 2

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->sleepTime:J

    .line 200
    invoke-virtual {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->disableSensor()V

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    .line 210
    iput-boolean p1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyguardIsVisible:Z

    return-void
.end method

.method public onPanelExpandedChange(Z)V
    .locals 2

    .line 640
    sget-boolean v0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeActive:Z

    if-eqz v0, :cond_0

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPanelExpandedChange expand:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mPreventModeActive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " visible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyguardIsVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpPreventModeCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_0
    sget-boolean v0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeActive:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPMView:Lcom/oneplus/plugin/OpPreventModeView;

    if-eqz v0, :cond_3

    .line 645
    iget-boolean v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyguardIsVisible:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    return-void

    .line 648
    :cond_1
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPMView:Lcom/oneplus/plugin/OpPreventModeView;

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    return-void
.end method

.method public onStartCtrl()V
    .locals 4

    const-string v0, "OpPreventModeCtrl"

    const-string v1, "onStartCtrl"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 103
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->prevent_mode_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/plugin/OpPreventModeView;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPMView:Lcom/oneplus/plugin/OpPreventModeView;

    .line 104
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->pevent_mode_background:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    .line 105
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPMView:Lcom/oneplus/plugin/OpPreventModeView;

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpPreventModeView;->init()V

    .line 106
    new-instance v0, Lcom/oneplus/plugin/OpPreventModeCtrl$SensorHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/plugin/OpPreventModeCtrl$SensorHandler;-><init>(Lcom/oneplus/plugin/OpPreventModeCtrl;Lcom/oneplus/plugin/OpPreventModeCtrl$1;)V

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    .line 107
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v2, p0, Lcom/oneplus/plugin/OpBaseCtrl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x1fa2651

    const/4 v3, 0x1

    .line 110
    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensor:Landroid/hardware/Sensor;

    .line 111
    new-instance v0, Lcom/oneplus/plugin/OpPreventModeCtrl$PocketSensorListener;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/plugin/OpPreventModeCtrl$PocketSensorListener;-><init>(Lcom/oneplus/plugin/OpPreventModeCtrl;Lcom/oneplus/plugin/OpPreventModeCtrl$1;)V

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 112
    iput v3, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mNearThreshold:I

    .line 114
    const-class v0, Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/scene/OpSceneModeObserver;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mOpSceneModeObserver:Lcom/oneplus/scene/OpSceneModeObserver;

    .line 117
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->isPreventModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 184
    iget-wide v2, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->sleepTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 185
    iget-boolean v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->haveDelayAnimation:Z

    if-eqz v0, :cond_0

    .line 186
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 187
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 3

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setKeyguardShowing, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpPreventModeCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-boolean v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyguardIsShowing:Z

    if-eq v0, p1, :cond_3

    .line 217
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 218
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getLockscreenWallpaper()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPMView:Lcom/oneplus/plugin/OpPreventModeView;

    if-eqz v1, :cond_1

    .line 221
    invoke-virtual {v1}, Lcom/oneplus/plugin/OpPreventModeView;->create()V

    goto :goto_0

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPMView:Lcom/oneplus/plugin/OpPreventModeView;

    if-eqz v1, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->disableSensor()V

    .line 228
    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPMView:Lcom/oneplus/plugin/OpPreventModeView;

    invoke-virtual {v1}, Lcom/oneplus/plugin/OpPreventModeView;->clear()V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 232
    new-instance v1, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;

    iget-object v2, p0, Lcom/oneplus/plugin/OpBaseCtrl;->mContext:Landroid/content/Context;

    .line 233
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 235
    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 236
    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    :cond_3
    :goto_1
    iput-boolean p1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyguardIsShowing:Z

    return-void
.end method

.method public stopPreventMode()V
    .locals 6

    .line 444
    sget-boolean v0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeActive:Z

    if-eqz v0, :cond_3

    const-string v0, "OpPreventModeCtrl"

    const-string v1, "stopPreventMode"

    .line 446
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 452
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPMView:Lcom/oneplus/plugin/OpPreventModeView;

    if-eqz v3, :cond_0

    .line 453
    iget-object v3, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPMView:Lcom/oneplus/plugin/OpPreventModeView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 455
    :cond_0
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 457
    sget-boolean p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeNoBackground:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 458
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelViewAlpha(FZI)V

    const-string p0, "panel alpha to 1"

    .line 459
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    .line 461
    sput-boolean p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeNoBackground:Z

    .line 463
    sput-boolean p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeActive:Z

    .line 465
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 466
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyPreventModeChange(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    :cond_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 472
    throw p0

    :cond_3
    :goto_0
    return-void
.end method
