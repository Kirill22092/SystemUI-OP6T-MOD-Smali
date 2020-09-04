.class public Lcom/oneplus/plugin/OpPreventModeCtrl;
.super Lcom/oneplus/plugin/OpBaseCtrl;
.source "OpPreventModeCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/plugin/OpPreventModeCtrl$ProximityHandler;
    }
.end annotation


# static fields
.field private static final IS_SUPPORT_POCKET_SWITCH:Z

.field private static mPreventModeActive:Z = false

.field private static mPreventModeNoBackground:Z = false

.field private static mProximitySensorEnabled:Z = false


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field mBackground:Landroid/widget/ImageView;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBouncer:Z

.field private mDozing:Z

.field private mHandler:Landroid/os/Handler;

.field private mKeyLockMode:I

.field private mKeyguardIsShowing:Z

.field private mKeyguardIsVisible:Z

.field private mObject:Ljava/lang/Object;

.field private mOpSceneModeObserver:Lcom/oneplus/scene/OpSceneModeObserver;

.field mPMView:Lcom/oneplus/plugin/OpPreventModeView;

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x8d

    aput v2, v0, v1

    .line 52
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/plugin/OpPreventModeCtrl;->IS_SUPPORT_POCKET_SWITCH:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/oneplus/plugin/OpBaseCtrl;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->DEBUG:Z

    const-string v0, "OpPreventModeCtrl"

    .line 44
    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBouncer:Z

    .line 58
    iput-boolean v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyguardIsVisible:Z

    .line 59
    iput-boolean v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyguardIsShowing:Z

    .line 60
    iput-boolean v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mDozing:Z

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mObject:Ljava/lang/Object;

    .line 200
    new-instance v0, Lcom/oneplus/plugin/OpPreventModeCtrl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/plugin/OpPreventModeCtrl$1;-><init>(Lcom/oneplus/plugin/OpPreventModeCtrl;)V

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mProximityListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/plugin/OpPreventModeCtrl;)Ljava/lang/Object;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mObject:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/plugin/OpPreventModeCtrl;)Landroid/hardware/Sensor;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mProximitySensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/plugin/OpPreventModeCtrl;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->startRootAnimation()V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 41
    sget-boolean v0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeActive:Z

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/plugin/OpPreventModeCtrl;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->enableProximitySensorInternal()V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/plugin/OpPreventModeCtrl;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->disableProximitySensorInternal()V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/plugin/OpPreventModeCtrl;)Landroid/graphics/Bitmap;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private bypassPreventMode()Z
    .locals 2

    .line 445
    iget-boolean v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyguardIsVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 449
    :cond_0
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 450
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCameraForeground()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mOpSceneModeObserver:Lcom/oneplus/scene/OpSceneModeObserver;

    if-eqz p0, :cond_3

    .line 451
    invoke-virtual {p0}, Lcom/oneplus/scene/OpSceneModeObserver;->isInBrickMode()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private disableProximitySensorInternal()V
    .locals 3

    .line 324
    sget-boolean v0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableProximitySensor, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyLockMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpPreventModeCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 329
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 p0, 0x0

    .line 330
    sput-boolean p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method private enableProximitySensorInternal()V
    .locals 5

    .line 267
    sget-boolean v0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mProximitySensorEnabled:Z

    if-nez v0, :cond_1

    const-string v0, "OpPreventModeCtrl"

    const-string v1, "enableProximitySensor"

    .line 268
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 270
    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 273
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 275
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, p0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 p0, 0x1

    .line 277
    sput-boolean p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private hideSoftInput()V
    .locals 2

    :try_start_0
    const-string p0, "input_method"

    .line 435
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 434
    invoke-static {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 436
    invoke-interface {p0, v0, v1}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInputForLongshot(ILandroid/os/ResultReceiver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "OpPreventModeCtrl"

    const-string v1, "hide ime failed, "

    .line 439
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private isPreventModeEnabled()Z
    .locals 2

    .line 194
    sget-boolean v0, Lcom/oneplus/plugin/OpPreventModeCtrl;->IS_SUPPORT_POCKET_SWITCH:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/oneplus/plugin/OpBaseCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isPreventModeEnalbed(Landroid/content/Context;)Z

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

    .line 339
    sget-boolean v0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeActive:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyguardIsShowing:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->bypassPreventMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 343
    :cond_0
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/oneplus/plugin/OpBaseCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "oem_acc_key_lock_mode"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyLockMode:I

    .line 345
    invoke-direct {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->hideSoftInput()V

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startRootAnimation, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyLockMode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OpPreventModeCtrl"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v4, 0x1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 350
    invoke-virtual {v0, v1, v4, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelViewAlpha(FZI)V

    .line 351
    sput-boolean v4, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeNoBackground:Z

    const-string v1, "panel alpha to 0"

    .line 352
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_1
    sput-boolean v4, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeActive:Z

    if-eqz v0, :cond_3

    .line 359
    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 360
    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/OpFacelockController;->stopFacelockLightMode()V

    .line 362
    :cond_2
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyPreventModeChange(Z)V

    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 367
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 368
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 369
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/plugin/OpPreventModeCtrl$2;

    invoke-direct {v1, p0}, Lcom/oneplus/plugin/OpPreventModeCtrl$2;-><init>(Lcom/oneplus/plugin/OpPreventModeCtrl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 377
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/plugin/OpPreventModeCtrl$3;

    invoke-direct {v1, p0}, Lcom/oneplus/plugin/OpPreventModeCtrl$3;-><init>(Lcom/oneplus/plugin/OpPreventModeCtrl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 402
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

    .line 189
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPMView:Lcom/oneplus/plugin/OpPreventModeView;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public disableProximitySensor()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 286
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 287
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 290
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public isPreventModeActive()Z
    .locals 0

    .line 422
    sget-boolean p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeActive:Z

    return p0
.end method

.method public isPreventModeNoBackground()Z
    .locals 0

    .line 427
    sget-boolean p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeNoBackground:Z

    return p0
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 0

    .line 162
    invoke-virtual {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->disableProximitySensor()V

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBouncer:Z

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    .line 172
    iput-boolean p1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyguardIsVisible:Z

    return-void
.end method

.method public onPanelExpandedChange(Z)V
    .locals 2

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPanelExpandedChange expand"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mPreventModeActive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpPreventModeCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    sget-boolean v0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeActive:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPMView:Lcom/oneplus/plugin/OpPreventModeView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 458
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->isPreventModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mDozing:Z

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 141
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onStartCtrl()V
    .locals 3

    const-string v0, "OpPreventModeCtrl"

    const-string v1, "onStartCtrl"

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/plugin/OpLsState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 82
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/plugin/OpLsState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$id;->prevent_mode_view:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/plugin/OpPreventModeView;

    iput-object v1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPMView:Lcom/oneplus/plugin/OpPreventModeView;

    .line 83
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/plugin/OpLsState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$id;->pevent_mode_background:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    .line 84
    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPMView:Lcom/oneplus/plugin/OpPreventModeView;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPMView == null, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/plugin/OpLsState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPMView:Lcom/oneplus/plugin/OpPreventModeView;

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpPreventModeView;->init()V

    .line 87
    new-instance v0, Lcom/oneplus/plugin/OpPreventModeCtrl$ProximityHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/plugin/OpPreventModeCtrl$ProximityHandler;-><init>(Lcom/oneplus/plugin/OpPreventModeCtrl;Lcom/oneplus/plugin/OpPreventModeCtrl$1;)V

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    .line 88
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lcom/oneplus/plugin/OpBaseCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 89
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mProximitySensor:Landroid/hardware/Sensor;

    .line 91
    const-class v0, Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/scene/OpSceneModeObserver;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mOpSceneModeObserver:Lcom/oneplus/scene/OpSceneModeObserver;

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->isPreventModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 153
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onWallpaperChange(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWallpaperChange: bitmap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpPreventModeCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 409
    iget-object v0, p0, Lcom/oneplus/plugin/OpBaseCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oneplus/util/OpImageUtils;->computeCustomBackgroundBounds(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 411
    iput-object p1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBitmap:Landroid/graphics/Bitmap;

    .line 412
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setKeyguardShowing, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpPreventModeCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iput-boolean p1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyguardIsShowing:Z

    if-nez p1, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->disableProximitySensor()V

    :cond_0
    return-void
.end method

.method public stopPreventMode()V
    .locals 6

    .line 295
    sget-boolean v0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeActive:Z

    if-eqz v0, :cond_2

    const-string v0, "OpPreventModeCtrl"

    const-string v1, "stopPreventMode"

    .line 296
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 301
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPMView:Lcom/oneplus/plugin/OpPreventModeView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 302
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    sget-boolean p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeNoBackground:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 305
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelViewAlpha(FZI)V

    const-string p0, "panel alpha to 1"

    .line 306
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    .line 308
    sput-boolean p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeNoBackground:Z

    .line 310
    sput-boolean p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeActive:Z

    .line 312
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 313
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyPreventModeChange(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method
