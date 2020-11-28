.class public Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;
.super Landroid/widget/LinearLayout;
.source "OpFingerprintDialogView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG_ONEPLUS:Z


# instance fields
.field private final OP_DISPLAY_AOD_MODE:I

.field private final OP_DISPLAY_APPLY_HIDE_AOD:I

.field private final OP_DISPLAY_NOTIFY_PRESS:I

.field private final OP_DISPLAY_SET_DIM:I

.field private WINDOW_FINGERPRINT_DIM_VIEW:Ljava/lang/String;

.field private WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

.field private WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

.field private mAnim:Ljava/lang/Runnable;

.field private mAnimHandler:Landroid/os/Handler;

.field private mAnimatingAway:Z

.field private mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAodIndicationTextView:Landroid/widget/TextView;

.field private mAodMode:I

.field private final mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

.field mCallbacks:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

.field private mContext:Landroid/content/Context;

.field private mContextResolver:Landroid/content/ContentResolver;

.field private mCount:I

.field private mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

.field private mDeviceInteractive:Z

.field private final mDialog:Landroid/widget/LinearLayout;

.field private mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

.field private mDimLayout:Landroid/view/ViewGroup;

.field private mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mDimView:Landroid/widget/ImageView;

.field protected mDisplay:Landroid/view/Display;

.field private mDisplayWidth:F

.field private mFaceUnlocked:Z

.field private mFodDialogShowing:Z

.field private mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

.field private mFrame:I

.field private mGoingToSleep:Z

.field private mHandler:Landroid/os/Handler;

.field private mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

.field private mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

.field private mIconFlash:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

.field private mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

.field mIsDialogAttachingToWindow:Z

.field private mIsKeyguardDone:Z

.field private mIsScreenOn:Z

.field private mIsScreenTurningOn:Z

.field private mLastState:I

.field private mLayout:Landroid/view/ViewGroup;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMainThreadhandler:Landroid/os/Handler;

.field mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mNeedToShowAodText:Z

.field private final mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

.field private mOwnerString:Ljava/lang/String;

.field mPendingHideDialog:Z

.field private mPm:Landroid/os/PowerManager;

.field private mPressTimeoutRunnable:Ljava/lang/Runnable;

.field private mPressedLayout:Landroid/view/ViewGroup;

.field private mPressedLayoutAttached:Z

.field private mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mRealDisplaySize:Landroid/graphics/Point;

.field private mScreenOffAuthenticating:Z

.field private mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mSettingsObserver:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$SettingsObserver;

.field private mShowOnWindow:Z

.field private mShowingKeyguard:Z

.field private mShowingPressed:Z

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mTimeoutAnimator:Landroid/animation/ValueAnimator;

.field private final mUpdateIconRunnable:Ljava/lang/Runnable;

.field mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWasForceRemoved:Z

.field private final mWindowManager:Landroid/view/WindowManager;

.field private final mWindowToken:Landroid/os/IBinder;

.field private resources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Lcom/android/systemui/biometrics/DialogViewCallback;Landroid/os/Looper;)V
    .locals 5

    .line 364
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x8

    .line 105
    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->OP_DISPLAY_AOD_MODE:I

    const/16 v0, 0x9

    .line 106
    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->OP_DISPLAY_NOTIFY_PRESS:I

    const/16 v0, 0xa

    .line 107
    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->OP_DISPLAY_SET_DIM:I

    const/16 v0, 0xb

    .line 108
    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->OP_DISPLAY_APPLY_HIDE_AOD:I

    const/4 v0, 0x0

    .line 154
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mNeedToShowAodText:Z

    const-string v1, "OPFingerprintView"

    .line 156
    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    const-string v1, "OPFingerprintVDDim"

    .line 157
    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_DIM_VIEW:Ljava/lang/String;

    const-string v1, "OPFingerprintVDpressed"

    .line 158
    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

    .line 169
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowToken:Landroid/os/IBinder;

    .line 182
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v1, ""

    .line 188
    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    .line 196
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    const/4 v1, 0x0

    .line 208
    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    .line 214
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mScreenOffAuthenticating:Z

    .line 216
    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodMode:I

    const/4 v2, 0x1

    .line 218
    iput-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDeviceInteractive:Z

    .line 227
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    .line 233
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsDialogAttachingToWindow:Z

    .line 236
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mMainThreadhandler:Landroid/os/Handler;

    .line 240
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayoutAttached:Z

    .line 245
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mRealDisplaySize:Landroid/graphics/Point;

    .line 729
    new-instance v3, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$5;

    invoke-direct {v3, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$5;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    iput-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    .line 855
    new-instance v3, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$9;

    invoke-direct {v3, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$9;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    iput-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mCallbacks:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    .line 1153
    new-instance v3, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;

    invoke-direct {v3, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$10;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    iput-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1497
    new-instance v3, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$11;

    invoke-direct {v3, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$11;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    iput-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateIconRunnable:Ljava/lang/Runnable;

    .line 2299
    new-instance v3, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$12;

    invoke-direct {v3, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$12;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    iput-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 365
    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    .line 366
    iput-object p3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    .line 368
    invoke-virtual {p0, p4}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->initHandler(Landroid/os/Looper;)V

    const-string p2, "window"

    .line 372
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    .line 374
    new-instance p2, Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-direct {p2}, Lcom/oneplus/core/oimc/OIMCServiceManager;-><init>()V

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    .line 377
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 378
    iget-object p3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 379
    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p2, p2

    iput p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDisplayWidth:F

    .line 381
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDisplay:Landroid/view/Display;

    .line 382
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDisplay:Landroid/view/Display;

    iget-object p3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mRealDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p2, p3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 386
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 388
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    .line 389
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    const-string p3, "power"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    .line 390
    sget p1, Lcom/android/systemui/R$layout;->op_fingerprint_view:I

    invoke-virtual {p2, p1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    .line 391
    sget p1, Lcom/android/systemui/R$layout;->op_fingerprint_dim_view:I

    invoke-virtual {p2, p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    .line 392
    sget p1, Lcom/android/systemui/R$layout;->op_fingerprint_high_light_view:I

    invoke-virtual {p2, p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    .line 394
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 396
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getDimLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 397
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getHighLightLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 398
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 401
    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->getService()Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 403
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "IOneplusDisplay getService Exception e = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpFingerprintDialogView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :goto_0
    new-instance p1, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p3}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    .line 407
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/android/systemui/R$id;->op_fingerprint_dim_view:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDimView:Landroid/widget/ImageView;

    .line 408
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/android/systemui/R$id;->op_fingerprint_icon_white:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconFlash:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    .line 409
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/android/systemui/R$id;->op_fingerprint_icon:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    .line 410
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/android/systemui/R$id;->op_fingerprint_icon_disable:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    .line 411
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/android/systemui/R$id;->op_fingerprint_icon_dim:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    .line 412
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/android/systemui/R$id;->op_aod_fp_indication_text:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    .line 413
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 414
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 417
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContextResolver:Landroid/content/ContentResolver;

    .line 418
    new-instance p1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$SettingsObserver;

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$SettingsObserver;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mSettingsObserver:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$SettingsObserver;

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 419
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mTimeoutAnimator:Landroid/animation/ValueAnimator;

    .line 420
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mTimeoutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x7d0

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 421
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mTimeoutAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 425
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    invoke-virtual {p1, p2}, Lcom/oneplus/plugin/OpLsState;->setFpAnimationCtrl(Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;)V

    .line 427
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 429
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 431
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/android/systemui/R$id;->dialog:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    .line 434
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    new-instance p2, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$2;

    invoke-direct {p2, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$2;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 454
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 455
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 458
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p1, :cond_0

    .line 459
    invoke-virtual {p1, p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setFodDialogView(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    .line 464
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateIndicationTextSize()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleFingerprintAuthenticated()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleSetPressDimWindow(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateIndicationTextSize()V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateIconVisibility(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;ZF)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateLayoutDimension(ZF)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnScreenTurnedOff()V

    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnFinishedGoingToSleep(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnStartedWakingUp()V

    return-void
.end method

.method static synthetic access$1600(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnScreenTurnedOn()V

    return-void
.end method

.method static synthetic access$1700(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleResetState()V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnKeyguardVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnKeyguardBouncerChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleStartDismiss(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnFacelockStateChanged(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnStrongAuthStateChanged(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnUserSwitching(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/android/systemui/biometrics/DialogViewCallback;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnimatingAway:Z

    return p0
.end method

.method static synthetic access$2602(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnimatingAway:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFodDialogShowing:Z

    return p0
.end method

.method static synthetic access$2800(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/view/ViewGroup;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleForceRemove()V

    return-void
.end method

.method static synthetic access$3000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/view/WindowManager;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingPressed:Z

    return p0
.end method

.method static synthetic access$3200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDisplayPressMode(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->playAnimation(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mMainThreadhandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->stopAnimation()V

    return-void
.end method

.method static synthetic access$3600(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDeviceInteractive:Z

    return p0
.end method

.method static synthetic access$3602(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDeviceInteractive:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    return p0
.end method

.method static synthetic access$400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Ljava/lang/String;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleSetOwnerString(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4002(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$4102(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsScreenTurningOn:Z

    return p1
.end method

.method static synthetic access$4202(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mGoingToSleep:Z

    return p1
.end method

.method static synthetic access$4302(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFaceUnlocked:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object p0
.end method

.method static synthetic access$4502(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mNeedToShowAodText:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/PowerManager;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$4702(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingKeyguard:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDisplayHideAod(I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Ljava/lang/String;)Z
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleShowFingerprintPressed()V

    return-void
.end method

.method static synthetic access$5002(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mScreenOffAuthenticating:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/content/ContentResolver;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContextResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleHideFingerprintPressed()V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleNotifyFpResultEvent()V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleNotifyKeyguardDone()V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleNotifyBrightnessChange()V

    return-void
.end method

.method static synthetic access$6000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)I
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    .prologue
    .line 34
    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFrame:I

    return v0
.end method

.method static synthetic access$6002(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFrame:I

    return p1
.end method

.method static synthetic access$6100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)I
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    .prologue
    .line 34
    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mCount:I

    return v0
.end method

.method static synthetic access$6108(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)I
    .registers 3
    .param p0, "x0"    # Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    .prologue
    .line 34
    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mCount:I

    return v0
.end method

.method static synthetic access$6200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/content/res/Resources;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnim:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnimHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private animIcon()V
    .registers 6

    .prologue
    const v4, 0x7f080583

    const v3, 0x7f080555

    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v0, v2}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v0, v2}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v0, v2}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v0, v2}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 97
    const-string v0, "sys.fingerprint_anim_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5c

    .line 98
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    invoke-static {v1, v3, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    invoke-static {v1, v3, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 104
    :goto_41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnimHandler:Landroid/os/Handler;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mCount:I

    .line 106
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnim:Ljava/lang/Runnable;

    .line 140
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnim:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    return-void

    .line 101
    :cond_5c
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    invoke-static {v1, v4, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    invoke-static {v1, v4, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_41
.end method

.method private customColor()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 144
    const-string v0, "sys.aod.fcolor_normal_unlock"

    invoke-static {v0, v3}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 145
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    const-string v1, "sys.aod.fcolor_normal"

    invoke-static {v1, v3}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 146
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    const-string v1, "sys.aod.fcolor_normal"

    invoke-static {v1, v3}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 151
    :goto_0
    const-string v0, "sys.aod.fcolor_disable_unlock"

    invoke-static {v0, v3}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 152
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    const-string v1, "sys.aod.fcolor_disable"

    invoke-static {v1, v3}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 153
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 157
    :goto_1
    const-string v0, "sys.aod.fsquare"

    invoke-static {v0, v3}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 158
    const-string v0, "sys.aod.cust_color_finger_light_unlock"

    invoke-static {v0, v3}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 159
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconFlash:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    const-string v1, "sys.aod.cust_color_finger_light"

    invoke-static {v1, v3}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 163
    :goto_2
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconFlash:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 167
    :goto_3
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v0, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 149
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v0, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v0, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconFlash:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    const v1, -0xff0100

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconFlash:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v0, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_3
.end method

.method private getAnimationForTransition(II)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-ne p2, v0, :cond_0

    .line 992
    sget p1, Lcom/android/systemui/R$drawable;->fingerprint_dialog_fp_to_error:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 994
    sget p1, Lcom/android/systemui/R$drawable;->fingerprint_dialog_fp_to_error:I

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    if-ne p2, v0, :cond_2

    .line 996
    sget p1, Lcom/android/systemui/R$drawable;->fingerprint_dialog_error_to_fp:I

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 999
    sget p1, Lcom/android/systemui/R$drawable;->fingerprint_dialog_error_to_fp:I

    .line 1006
    :goto_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 1002
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "oldState = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", newState = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpFingerprintDialogView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;
    .locals 10

    .line 1017
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    .line 1019
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "com.oneplus.applocker"

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    .line 1022
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    move v3, v4

    :cond_1
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1024
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0

    .line 1025
    :cond_2
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_DIM_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_5

    if-nez v0, :cond_3

    .line 1028
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    move v3, v4

    :cond_4
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1030
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0

    .line 1031
    :cond_5
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_8

    if-nez v0, :cond_6

    .line 1034
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    move v3, v4

    :cond_7
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1036
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0

    .line 1040
    :cond_8
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1042
    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v5, 0x901

    .line 1043
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 1044
    :cond_9
    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_DIM_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v5, 0x900

    .line 1045
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 1046
    :cond_a
    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/16 v5, 0x902

    .line 1047
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1048
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_b
    :goto_0
    const v5, 0x1000518

    .line 1058
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1059
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1063
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportCustomFingerprintType2()Z

    move-result v6

    .line 1066
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v5, -0x2

    .line 1067
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1068
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1069
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v5, 0x11

    .line 1070
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1073
    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v5}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isSupportResolutionSwitch()Z

    move-result v5

    const/16 v7, 0x30

    if-eqz v5, :cond_14

    .line 1074
    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v5}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->is2KDisplay()Z

    move-result v5

    .line 1075
    iget-object v8, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1076
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1077
    iget-object v8, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v5, :cond_c

    sget v9, Lcom/android/systemui/R$dimen;->fp_animation_height_2k:I

    goto :goto_1

    :cond_c
    sget v9, Lcom/android/systemui/R$dimen;->fp_animation_height_1080p:I

    :goto_1
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1078
    iget-object v8, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v6, :cond_d

    .line 1079
    sget v5, Lcom/android/systemui/R$dimen;->op_biometric_animation_view_ss_y:I

    goto :goto_2

    :cond_d
    if-eqz v5, :cond_e

    .line 1080
    sget v5, Lcom/android/systemui/R$dimen;->op_biometric_animation_view_y_2k:I

    goto :goto_2

    :cond_e
    sget v5, Lcom/android/systemui/R$dimen;->op_biometric_animation_view_y_1080p:I

    .line 1078
    :goto_2
    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1081
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_8

    .line 1082
    :cond_f
    iget-object v8, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 1083
    iget-object v8, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v6, :cond_10

    .line 1084
    sget v9, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_ss_width:I

    goto :goto_3

    :cond_10
    if-eqz v5, :cond_11

    .line 1085
    sget v9, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_width_2k:I

    goto :goto_3

    :cond_11
    sget v9, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_width_1080p:I

    .line 1083
    :goto_3
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1086
    iget-object v8, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v6, :cond_12

    .line 1087
    sget v5, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_ss_location_y:I

    goto :goto_4

    :cond_12
    if-eqz v5, :cond_13

    .line 1088
    sget v5, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_location_y_2k:I

    goto :goto_4

    :cond_13
    sget v5, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_location_y_1080p:I

    .line 1086
    :goto_4
    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1089
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_8

    .line 1092
    :cond_14
    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1093
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1094
    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Lcom/android/systemui/R$dimen;->fp_animation_height:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1095
    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v6, :cond_15

    .line 1096
    sget v6, Lcom/android/systemui/R$dimen;->op_biometric_animation_view_ss_y:I

    goto :goto_5

    :cond_15
    sget v6, Lcom/android/systemui/R$dimen;->op_biometric_animation_view_y:I

    .line 1095
    :goto_5
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1097
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_8

    .line 1098
    :cond_16
    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1099
    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v6, :cond_17

    .line 1100
    sget v8, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_ss_width:I

    goto :goto_6

    :cond_17
    sget v8, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_width:I

    .line 1099
    :goto_6
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1101
    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v6, :cond_18

    .line 1102
    sget v6, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_ss_location_y:I

    goto :goto_7

    :cond_18
    sget v6, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_location_y:I

    .line 1101
    :goto_7
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1103
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1108
    :cond_19
    :goto_8
    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/oneplus/util/OpUtils;->isCutoutHide(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1109
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v6, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/oneplus/util/OpUtils;->getCutoutPathdataHeight(Landroid/content/Context;)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_1a
    if-nez v0, :cond_1b

    .line 1112
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1b
    move v3, v4

    :cond_1c
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const v0, 0x50e0013

    .line 1113
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1114
    invoke-virtual {v1, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1115
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowToken:Landroid/os/IBinder;

    iput-object v0, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCustomLayoutParams owner:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " title:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpFingerprintDialogView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getSystemUiVisibility()I

    move-result p1

    or-int/lit16 p1, p1, 0x402

    .line 1124
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setSystemUiVisibility(I)V

    return-object v1
.end method

.method private getDimLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 1134
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_DIM_VIEW:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method private getHighLightLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 1130
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method private getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 3

    .line 2111
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    if-eqz p0, :cond_4

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_3

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x30000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x50000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x60000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x80000

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 2129
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown security quality:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2122
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    .line 2116
    :cond_2
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    .line 2125
    :cond_3
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    .line 2127
    :cond_4
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0
.end method

.method private handleFingerprintAuthenticated()V
    .locals 4

    .line 1857
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    const-string v1, "OpFingerprintDialogView"

    if-eqz v0, :cond_0

    const-string v0, "handleFingerprintAuthenticated"

    .line 1858
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    .line 1863
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyFingerprintAuthenticated isInteractive, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isKeyguardVisible:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mShowingPressed:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingPressed:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isPendingHideDialog:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isAnimationPlaying:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    .line 1866
    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->isPlayingAnimation()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1863
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleHideFingerprintPressed()V

    .line 1872
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1873
    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateIconVisibility(Z)V

    .line 1875
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideBiometricDialog()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 1877
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->isPlayingAnimation()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1878
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mCallbacks:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    invoke-interface {v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;->animationFinished()V

    .line 1881
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleNotifyFpResultEvent()V

    return-void
.end method

.method private handleForceRemove()V
    .locals 3

    const-string v0, "OpFingerprintDialogView"

    const-string v1, "forceRemove"

    .line 667
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 670
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 671
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x87

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 676
    iput-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsDialogAttachingToWindow:Z

    .line 678
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 680
    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnimatingAway:Z

    const/4 v0, 0x1

    .line 681
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWasForceRemoved:Z

    .line 682
    invoke-direct {p0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleSetPressDimWindow(Z)V

    return-void
.end method

.method private handleHideFingerprintPressed()V
    .locals 2

    .line 820
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 823
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideFingerprintPressed owner:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", done:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 826
    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDisplayPressMode(I)V

    .line 829
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$7;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$7;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 845
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mMainThreadhandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$8;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$8;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleNotifyBrightnessChange()V
    .locals 1

    .line 2053
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-eqz v0, :cond_0

    .line 2054
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->onBrightnessChange()V

    :cond_0
    return-void
.end method

.method private handleNotifyFpResultEvent()V
    .locals 2

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNotifyFpResultEvent, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingPressed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", keyguardDone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-nez v0, :cond_0

    const-string p0, "fp window not exist don\'t show pressed button"

    .line 889
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 894
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintAlreadyAuthenticated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 897
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 899
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mCallbacks:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->waitAnimationFinished(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;)V

    :cond_2
    return-void
.end method

.method private handleNotifyKeyguardDone()V
    .locals 2

    .line 1814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNotifyKeyguardDone, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleNotifyFpResultEvent()V

    const/4 v0, 0x1

    .line 1816
    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateIconVisibility(Z)V

    .line 1818
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleHideFingerprintPressed()V

    .line 1820
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideBiometricDialog()V

    return-void
.end method

.method private handleOnBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 1469
    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsScreenOn:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDeviceInteractive:Z

    if-nez p1, :cond_0

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, p1, :cond_0

    .line 1471
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onFingerprintHelp, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "OpFingerprintDialogView"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 1472
    invoke-direct {p0, p1, p2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateFPIndicationText(ZLjava/lang/String;)V

    .line 1473
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleNotifyFpResultEvent()V

    :cond_0
    return-void
.end method

.method private handleOnFacelockStateChanged(I)V
    .locals 2

    .line 1449
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 1450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnFacelockStateChanged : type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    .line 1454
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateIconVisibility(Z)V

    :cond_1
    return-void
.end method

.method private handleOnFinishedGoingToSleep(I)V
    .locals 2

    .line 1389
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 1390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnFinishedGoingToSleep : why = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpFingerprintDialogView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1394
    invoke-direct {p0, p1, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateFPIndicationText(ZLjava/lang/String;)V

    return-void
.end method

.method private handleOnKeyguardBouncerChanged(Z)V
    .locals 0

    .line 1443
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1444
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateIconVisibility(Z)V

    :cond_0
    return-void
.end method

.method private handleOnKeyguardVisibilityChanged(Z)V
    .locals 1

    .line 1436
    sget-boolean p1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    const-string p1, "OpFingerprintDialogView"

    const-string v0, "handleOnKeyguardVisibilityChanged"

    .line 1437
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    .line 1439
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateIconVisibility(Z)V

    return-void
.end method

.method private handleOnScreenTurnedOff()V
    .locals 3

    .line 1359
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    const-string v1, "OpFingerprintDialogView"

    if-eqz v0, :cond_0

    const-string v0, "handleOnScreenTurnedOff"

    .line 1360
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 1365
    invoke-virtual {v0, v2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconLayoutParams(Z)V

    .line 1367
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleResetState()V

    .line 1368
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    if-eqz v0, :cond_2

    const v2, 0x3f19999a    # 0.6f

    .line 1369
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1373
    :cond_2
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    .line 1375
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    .line 1376
    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "force add window when screen turned off"

    .line 1377
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->addToWindow()V

    const/4 v0, 0x1

    .line 1382
    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setPressDimWindow(Z)V

    :cond_3
    return-void
.end method

.method private handleOnScreenTurnedOn()V
    .locals 2

    .line 1423
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpFingerprintDialogView"

    const-string v1, "handleOnSScreenTurnedOn"

    .line 1424
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    if-eqz v0, :cond_1

    .line 1429
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->updateAnimationRes(Z)V

    :cond_1
    const/4 v0, 0x0

    .line 1432
    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateIconVisibility(Z)V

    return-void
.end method

.method private handleOnSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    .line 1479
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1480
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateIconVisibility(Z)V

    :cond_0
    return-void
.end method

.method private handleOnStartedWakingUp()V
    .locals 2

    .line 1399
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 1400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnStartedWakingUp : ownerString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "forceShow-keyguard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 1404
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1405
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    if-eqz v0, :cond_1

    .line 1406
    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideBiometricDialog()V

    .line 1411
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    if-eqz v0, :cond_2

    const v1, 0x3e4ccccd    # 0.2f

    .line 1412
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_2
    const/4 v0, 0x0

    .line 1414
    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateIconVisibility(Z)V

    .line 1416
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    if-eqz v0, :cond_3

    .line 1417
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->updateAnimationRes(Z)V

    :cond_3
    return-void
.end method

.method private handleOnStrongAuthStateChanged(I)V
    .locals 2

    .line 1460
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p1, :cond_0

    .line 1461
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1463
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStrongAuthStateChanged, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 1464
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateIconVisibility(Z)V

    :cond_1
    return-void
.end method

.method private handleOnUserSwitching(I)V
    .locals 0

    .line 1486
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    if-eqz p1, :cond_0

    .line 1488
    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->resetState()V

    .line 1489
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->checkAnimationValueValid()V

    .line 1491
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->updateAnimationRes(Z)V

    :cond_0
    return-void
.end method

.method private handleResetState()V
    .locals 3

    .line 1522
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    const-string v1, "OpFingerprintDialogView"

    if-eqz v0, :cond_0

    const-string v0, "handleResetState"

    .line 1523
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1529
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->resetState()V

    goto :goto_0

    .line 1531
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetState: fp client to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reuse animation"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    :goto_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->resetState()V

    const/4 v0, 0x0

    .line 1537
    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateIconVisibility(Z)V

    .line 1538
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->stopAnimation()V

    return-void
.end method

.method private handleSetOwnerString(Ljava/lang/String;)V
    .locals 2

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fp client to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 704
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    .line 705
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->stopAnimation()V

    .line 709
    :cond_0
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    .line 711
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 714
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->updateAnimationRes(Z)V

    .line 719
    :cond_1
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleSetPressDimWindow(Z)V
    .locals 3

    .line 504
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    const-string v1, "OpFingerprintDialogView"

    if-eqz v0, :cond_0

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle SetPressDimWindow : PressdLayoutAttached :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayoutAttached:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", attach = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    .line 509
    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayoutAttached:Z

    if-nez p1, :cond_2

    .line 512
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getDimLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 513
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getHighLightLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 516
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_1

    .line 517
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 519
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayoutAttached:Z

    goto :goto_0

    :cond_1
    const-string p1, "PressedLayout is attached."

    .line 522
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :goto_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportCustomFingerprintType2()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result p0

    goto :goto_2

    :cond_2
    const-string p0, "try to add press layout, but it is attached before"

    .line 529
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 533
    :cond_3
    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayoutAttached:Z

    if-eqz p1, :cond_5

    .line 535
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 536
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 538
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayoutAttached:Z

    goto :goto_1

    :cond_4
    const-string p1, "PressLayout isn\'t attached."

    .line 541
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :goto_1
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportCustomFingerprintType2()Z

    move-result p0

    goto :goto_2

    :cond_5
    const-string p0, "try to remove press layout, but it is removed before"

    .line 547
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method

.method private handleShowFingerprintPressed()V
    .locals 4

    .line 768
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingPressed:Z

    const-string v1, "OpFingerprintDialogView"

    if-eqz v0, :cond_0

    const-string p0, "press state the same"

    .line 769
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 773
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-nez v0, :cond_1

    const-string p0, "fp window not exist don\'t show pressed button"

    .line 774
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 778
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const-string v0, "fp is disabled currently"

    .line 779
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iput-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingPressed:Z

    return-void

    .line 789
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showFingerprintPressed owner:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", done:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mMainThreadhandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$6;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$6;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 801
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v0, v2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconLayoutParams(Z)V

    .line 803
    invoke-direct {p0, v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->playAnimation(I)V

    .line 805
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x5

    .line 806
    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 808
    :cond_3
    invoke-direct {p0, v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDisplayPressMode(I)V

    return-void
.end method

.method private handleStartDismiss(Z)V
    .locals 2

    const/4 p1, 0x1

    .line 611
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnimatingAway:Z

    const-string p1, "OpFingerprintDialogView"

    const-string v0, "handleStartDismiss"

    .line 612
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    new-instance p1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$3;

    invoke-direct {p1, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$3;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    .line 648
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    const/4 v0, 0x6

    .line 649
    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 650
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private handleUpdateIconVisibility(Z)V
    .registers 27
    .param p1, "b"    # Z

    .prologue
    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    .line 276
    const-string v21, "sys.fingerprint_anim_enable"

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7d

    .line 277
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsScreenOn:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2b

    .line 278
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->animIcon()V

    .line 284
    :cond_2b
    :goto_2b
    const-string v21, "sys.fingerprint_icon"

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v21

    if-lez v21, :cond_48

    const-string v21, "sys.fingerprint_anim_enable"

    const/16 v22, 0x0

    .line 285
    invoke-static/range {v21 .. v22}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_48

    .line 286
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setCustomIcon()V

    .line 287
    :cond_48
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->customColor()V

    .line 288
    const-string v21, "sys.aod.hide_fingerprint"

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_af

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 400
    :cond_7c
    :goto_7c
    return-void

    .line 281
    :cond_7d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0805a1

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f0805a1

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2b

    .line 294
    :cond_af
    const-string v21, "sys.aod.notif_delay_unlock"

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_f1

    const/4 v2, 0x1

    .line 296
    .local v2, "b2":Z
    :goto_c0
    sget v21, Lcom/oneplus/aod/OpAodDisplayViewManager;->mPulseStatus:I

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_f3

    const/4 v3, 0x1

    .line 297
    .local v3, "b3":Z
    :goto_cb
    if-eqz v2, :cond_f5

    if-eqz v3, :cond_f5

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    goto :goto_7c

    .line 294
    .end local v2    # "b2":Z
    .end local v3    # "b3":Z
    :cond_f1
    const/4 v2, 0x0

    goto :goto_c0

    .line 296
    .restart local v2    # "b2":Z
    :cond_f3
    const/4 v3, 0x0

    goto :goto_cb

    .line 302
    .restart local v3    # "b3":Z
    :cond_f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v21, v0

    if-nez v21, :cond_10d

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 305
    :cond_10d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7c

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v19

    .line 307
    .local v19, "unlockingWithBiometricAllowed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v14

    .line 308
    .local v14, "occluded":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v4

    .line 309
    .local v4, "bouncerShowing":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isImeShow()Z

    move-result v7

    .line 310
    .local v7, "imeShow":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v18

    .line 311
    .local v18, "simPinSecure":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v5

    .line 312
    .local v5, "dreaming":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked()Z

    move-result v20

    .line 313
    .local v20, "userUnlocked":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isQSExpanded()Z

    move-result v16

    .line 314
    .local v16, "qsExpanded":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPreventModeActivte()Z

    move-result v15

    .line 315
    .local v15, "preventModeActivte":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v6

    .line 316
    .local v6, "faceDetectionRunning":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLaunchingCamera()Z

    move-result v8

    .line 317
    .local v8, "launchingCamera":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLaunchingLeftAffordance()Z

    move-result v9

    .line 318
    .local v9, "launchingLeftAffordance":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v17

    .line 319
    .local v17, "showing":Z
    const/4 v13, 0x4

    .line 322
    .local v13, "n":I
    if-eqz p1, :cond_1e0

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7c

    .line 327
    :cond_1e0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    move/from16 v21, v0

    if-nez v21, :cond_216

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7c

    .line 332
    :cond_216
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDeviceInteractive:Z

    move/from16 v21, v0

    if-nez v21, :cond_226

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mGoingToSleep:Z

    move/from16 v21, v0

    if-eqz v21, :cond_22a

    :cond_226
    if-eqz v14, :cond_22a

    if-eqz v4, :cond_46f

    :cond_22a
    if-nez v18, :cond_46f

    if-nez v8, :cond_46f

    if-nez v9, :cond_46f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDeviceInteractive:Z

    move/from16 v21, v0

    if-eqz v21, :cond_252

    if-nez v17, :cond_252

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_252

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsScreenOn:Z

    move/from16 v21, v0

    if-nez v21, :cond_46f

    :cond_252
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDeviceInteractive:Z

    move/from16 v21, v0

    if-eqz v21, :cond_272

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsScreenOn:Z

    move/from16 v21, v0

    if-eqz v21, :cond_272

    if-nez v17, :cond_272

    const-string v21, "forceShow-keyguard"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_46f

    :cond_272
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingKeyguard:Z

    move/from16 v21, v0

    if-eqz v21, :cond_286

    if-nez v15, :cond_286

    if-eqz v16, :cond_282

    if-nez v4, :cond_282

    if-nez v20, :cond_46f

    :cond_282
    if-eqz v7, :cond_286

    if-nez v4, :cond_46f

    .line 333
    :cond_286
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFaceUnlocked:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2bc

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7c

    .line 338
    :cond_2bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v21

    if-eqz v21, :cond_2fb

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 342
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    .line 343
    .local v10, "mAodIndicationTextView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDeviceInteractive:Z

    move/from16 v21, v0

    if-nez v21, :cond_2f6

    .line 344
    const/4 v13, 0x0

    .line 346
    :cond_2f6
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7c

    .line 347
    .end local v10    # "mAodIndicationTextView":Landroid/widget/TextView;
    :cond_2fb
    if-nez v19, :cond_356

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    move/from16 v21, v0

    if-nez v21, :cond_356

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_323

    const-string v21, "forceShow-keyguard"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_356

    .line 348
    :cond_323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 351
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    .line 352
    .local v11, "mAodIndicationTextView2":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDeviceInteractive:Z

    move/from16 v21, v0

    if-nez v21, :cond_351

    .line 353
    const/4 v13, 0x0

    .line 355
    :cond_351
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7c

    .line 356
    .end local v11    # "mAodIndicationTextView2":Landroid/widget/TextView;
    :cond_356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_37a

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    goto/16 :goto_7c

    .line 360
    :cond_37a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->getVisibility()I

    move-result v21

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_462

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_3d5

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconVisibility(I)V

    goto/16 :goto_7c

    .line 369
    :cond_3d5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingKeyguard:Z

    move/from16 v21, v0

    if-eqz v21, :cond_41d

    if-eqz v6, :cond_41d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsScreenOn:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3ef

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mScreenOffAuthenticating:Z

    move/from16 v21, v0

    if-eqz v21, :cond_41d

    .line 370
    :cond_3ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7c

    .line 376
    :cond_41d
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingKeyguard:Z

    .line 377
    .local v12, "mShowingKeyguard":Z
    if-nez v12, :cond_429

    if-nez v5, :cond_429

    if-nez v12, :cond_7c

    if-eqz v4, :cond_7c

    .line 378
    :cond_429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconVisibility(I)V

    goto/16 :goto_7c

    .line 386
    .end local v12    # "mShowingKeyguard":Z
    :cond_462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7c

    .line 390
    :cond_46f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setVisibility(I)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconVisibility(I)V

    goto/16 :goto_7c
.end method

.method private isKeyguard(Ljava/lang/String;)Z
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 403
    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "forceShow-keyguard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private handleUpdateIndicationTextSize()V
    .locals 3

    .line 2164
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2165
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    .line 2166
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$dimen;->oneplus_contorl_text_size_body1:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    .line 2165
    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private handleUpdateLayoutDimension(ZF)V
    .locals 2

    .line 2187
    iput p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDisplayWidth:F

    .line 2189
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 2190
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_normal_width_2k:I

    goto :goto_0

    .line 2191
    :cond_0
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_normal_width_1080p:I

    .line 2189
    :goto_0
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    .line 2194
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2195
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2196
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2197
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDisable:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v0, p1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->updateLayoutDimension(Z)V

    .line 2199
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2200
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2201
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2202
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v0, p1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->updateLayoutDimension(Z)V

    .line 2204
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2205
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2206
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2207
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {p2, p1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->updateLayoutDimension(Z)V

    .line 2209
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 2210
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_width_2k:I

    goto :goto_1

    .line 2211
    :cond_1
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_width_1080p:I

    .line 2209
    :goto_1
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    .line 2212
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconFlash:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2213
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2214
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconFlash:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2215
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconFlash:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    invoke-virtual {p2, p1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->updateLayoutDimension(Z)V

    .line 2217
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    invoke-virtual {p2, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->updateLayoutDimension(Z)V

    const/4 p2, 0x0

    .line 2219
    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 2221
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 2222
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mViewLayoutParams height "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OpFingerprintDialogView"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getDimLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 2224
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getHighLightLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 2227
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    if-eqz p2, :cond_2

    .line 2228
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p2, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2231
    :cond_2
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, p2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleConfigurationChange(Landroid/view/WindowManager$LayoutParams;)V

    .line 2234
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    if-eqz p2, :cond_8

    .line 2236
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDisplay:Landroid/view/Display;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mRealDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 2237
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mRealDisplaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 2238
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p1, :cond_3

    .line 2239
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_normal_location_y_2k:I

    goto :goto_2

    :cond_3
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_normal_location_y_1080p:I

    .line 2238
    :goto_2
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 2241
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/oneplus/util/OpUtils;->isCutoutHide(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2242
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/oneplus/util/OpUtils;->getCutoutPathdataHeight(Landroid/content/Context;)I

    .line 2245
    :cond_4
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p1, :cond_5

    .line 2246
    sget v0, Lcom/android/systemui/R$dimen;->op_keyguard_indication_padding_bottom_2k:I

    goto :goto_3

    :cond_5
    sget v0, Lcom/android/systemui/R$dimen;->op_keyguard_indication_padding_bottom_1080p:I

    .line 2245
    :goto_3
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 2247
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_6

    .line 2248
    sget v1, Lcom/android/systemui/R$dimen;->fp_animation_height_2k:I

    goto :goto_4

    :cond_6
    sget v1, Lcom/android/systemui/R$dimen;->fp_animation_height_1080p:I

    .line 2247
    :goto_4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2249
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_7

    .line 2250
    sget p1, Lcom/android/systemui/R$dimen;->op_biometric_icon_normal_width_2k:I

    goto :goto_5

    .line 2251
    :cond_7
    sget p1, Lcom/android/systemui/R$dimen;->op_biometric_icon_normal_width_1080p:I

    .line 2249
    :goto_5
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 2252
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_8

    .line 2255
    div-int/lit8 v0, v0, 0x2

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    add-int/2addr v0, p2

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2256
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    return-void
.end method

.method private isKeyguard(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.android.systemui"

    .line 1794
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "forceShow-keyguard"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private playAnimation(I)V
    .locals 3

    .line 905
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFodDialogShowing:Z

    const-string v1, "OpFingerprintDialogView"

    if-eqz v0, :cond_0

    const-string v0, "playAnimation: dialog showing"

    .line 907
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v2, "com.android.settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "playAnimation in settings"

    .line 914
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 919
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDeviceInteractive:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    const-string v2, "com.android.systemui"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "playAnimation: keyguard done"

    .line 921
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 927
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mGoingToSleep:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsScreenOn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsScreenTurningOn:Z

    if-nez v0, :cond_3

    goto :goto_0

    .line 935
    :cond_3
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    if-eqz p0, :cond_4

    .line 936
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->playAnimation(I)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    const-string p0, "playAnimation: don\'t play animation due to going to sleep or screen off"

    .line 929
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setCustomIcon()V
    .registers 8

    .prologue
    const v6, 0x7f0813eb

    const v5, 0x7f0813ea

    const v4, 0x7f0813e9

    const v2, 0x7f080582

    const/4 v3, 0x0

    .line 170
    const-string v0, "sys.fingerprint_icon"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_2ea

    .line 272
    :goto_17
    return-void

    .line 172
    :pswitch_18
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    invoke-static {v1, v4, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    invoke-static {v1, v4, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_17

    .line 176
    :pswitch_2f
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    invoke-static {v1, v5, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    invoke-static {v1, v5, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_17

    .line 180
    :pswitch_46
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    invoke-static {v1, v6, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    invoke-static {v1, v6, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_17

    .line 184
    :pswitch_5d
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813ec

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813ec

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_17

    .line 188
    :pswitch_7a
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813ed

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813ed

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_17

    .line 192
    :pswitch_97
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813ee

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813ee

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_17

    .line 196
    :pswitch_b5
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813ef

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813ef

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_17

    .line 200
    :pswitch_d3
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813f0

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813f0

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_17

    .line 204
    :pswitch_f1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813f1

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813f1

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_17

    .line 208
    :pswitch_10f
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813f2

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813f2

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_17

    .line 212
    :pswitch_12d
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813f3

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813f3

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_17

    .line 216
    :pswitch_14b
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813f4

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813f4

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_17

    .line 220
    :pswitch_169
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813f5

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813f5

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_17

    .line 224
    :pswitch_187
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813f6

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813f6

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_17

    .line 228
    :pswitch_1a5
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813f7

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813f7

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_17

    .line 232
    :pswitch_1c3
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813f8

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813f8

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_17

    .line 236
    :pswitch_1e1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813f9

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813f9

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_17

    .line 240
    :pswitch_1ff
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813fa

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813fa

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_17

    .line 244
    :pswitch_21d
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813fb

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813fb

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_17

    .line 248
    :pswitch_23b
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813fc

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 249
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813fc

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_17

    .line 252
    :pswitch_259
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813fd

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813fd

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_17

    .line 256
    :pswitch_277
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813fe

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813fe

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_17

    .line 260
    :pswitch_295
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813ff

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 261
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0813ff

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_17

    .line 264
    :pswitch_2b3
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f081400

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 265
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    const v2, 0x7f081400

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_17

    .line 268
    :pswitch_2d1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconNormal:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIconDim:Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resources:Landroid/content/res/Resources;

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_17

    .line 170
    nop

    :pswitch_data_2ea
    .packed-switch 0x1
        :pswitch_18
        :pswitch_2f
        :pswitch_46
        :pswitch_5d
        :pswitch_7a
        :pswitch_97
        :pswitch_b5
        :pswitch_d3
        :pswitch_f1
        :pswitch_10f
        :pswitch_12d
        :pswitch_14b
        :pswitch_169
        :pswitch_187
        :pswitch_1a5
        :pswitch_1c3
        :pswitch_1e1
        :pswitch_1ff
        :pswitch_21d
        :pswitch_23b
        :pswitch_259
        :pswitch_277
        :pswitch_295
        :pswitch_2b3
        :pswitch_2d1
    .end packed-switch
.end method

.method private setDisplayHideAod(I)V
    .locals 1

    .line 1990
    new-instance v0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFingerprintDialogView$spX6N6K-pTx3BoHNGR9tAvaKs3w;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFingerprintDialogView$spX6N6K-pTx3BoHNGR9tAvaKs3w;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private setDisplayPressMode(I)V
    .locals 6

    .line 1944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplayPressMode mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mNeedToShowAodText:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    .line 1948
    :goto_0
    iget-boolean v4, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingPressed:Z

    if-ne v4, v3, :cond_1

    const-string p0, "setDisplayPressMode: the same state"

    .line 1949
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1953
    :cond_1
    iput-boolean v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingPressed:Z

    .line 1955
    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 1956
    iget-boolean v5, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mNeedToShowAodText:Z

    if-eqz v5, :cond_2

    if-nez v3, :cond_2

    .line 1957
    iget-boolean v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsScreenOn:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDeviceInteractive:Z

    if-nez v3, :cond_3

    .line 1958
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    .line 1961
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1963
    :cond_3
    :goto_1
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mNeedToShowAodText:Z

    .line 1969
    :cond_4
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_5

    if-ne p1, v2, :cond_5

    const-string p0, "setDisplayPressMode: return"

    .line 1970
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1975
    :cond_5
    new-instance v0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFingerprintDialogView$qgYqLVJ0baCsERAC_a9Qx79vsng;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFingerprintDialogView$qgYqLVJ0baCsERAC_a9Qx79vsng;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private shouldAnimateForTransition(II)Z
    .locals 2

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-ne p2, v0, :cond_0

    return p0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    return v0

    :cond_1
    if-ne p1, v1, :cond_2

    if-ne p2, v0, :cond_2

    return v0

    :cond_2
    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    :cond_3
    return p0
.end method

.method private shouldEnableHBM()Z
    .locals 5

    .line 1547
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    const/4 v1, 0x0

    const-string v2, "OpFingerprintDialogView"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "don\'t re-enable HBM due to fingerprint unlocking"

    .line 1548
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1553
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 1558
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingPressed:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    const-string p0, "force enable HBM since highlight icon is visible"

    .line 1559
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1563
    :cond_2
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "don\'t enable HBM due to going to sleep"

    .line 1564
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1572
    :cond_3
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_1

    .line 1577
    :cond_4
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_5

    .line 1578
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_5

    const-string p0, "don\'t enable HBM due to keyguard is occluded and device is interactive"

    .line 1579
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1583
    :cond_5
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsScreenOn:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingPressed:Z

    if-eqz v0, :cond_6

    const-string p0, "force enable HBM in aod and fp is pressed"

    .line 1584
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1588
    :cond_6
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_7

    const-string p0, "don\'t enable HBM due to device isn\'t interactive"

    .line 1589
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1593
    :cond_7
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFaceUnlocked:Z

    if-eqz v0, :cond_8

    const-string p0, "don\'t enable HBM due to already face unlocked"

    .line 1594
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1599
    :cond_8
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserInLockdown(I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_0

    .line 1606
    :cond_9
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    .line 1607
    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    const-string v0, "forceShow-keyguard"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    :cond_a
    const-string p0, "don\'t enable HBM due to boot device or biometrice doesn\'t allow"

    .line 1608
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_b
    return v3

    :cond_c
    :goto_0
    const-string p0, "don\'t enable HBM due to lockout"

    .line 1601
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_d
    :goto_1
    const-string p0, "don\'t enable HBM due to duraing fp wake and unlock"

    .line 1573
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_e
    :goto_2
    const-string p0, "don\'t enable HBM dim view is gone or not show on window"

    .line 1554
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private stopAnimation()V
    .locals 2

    .line 942
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 943
    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->stopAnimation(I)V

    .line 944
    invoke-direct {p0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDisplayPressMode(I)V

    :cond_0
    return-void
.end method

.method private updateFPIndicationText(ZLjava/lang/String;)V
    .locals 5

    .line 2061
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 2063
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateFPIndicationText: lockout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingPressed:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OpFingerprintDialogView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2066
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    const p1, 0x104029f

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    .line 2072
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    const-string v4, "forceShow-keyguard"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_4

    .line 2074
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingPressed:Z

    if-nez p1, :cond_4

    .line 2075
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 2077
    :cond_4
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mNeedToShowAodText:Z

    .line 2080
    :goto_1
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2082
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->animateErrorText(Landroid/widget/TextView;)V

    goto :goto_4

    .line 2086
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p1

    .line 2087
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 2089
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object p2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, p2, :cond_6

    .line 2090
    sget p1, Lcom/android/systemui/R$string;->kg_prompt_reason_timeout_pattern:I

    :goto_2
    move v0, p1

    goto :goto_3

    .line 2091
    :cond_6
    sget-object p2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, p2, :cond_7

    .line 2092
    sget p1, Lcom/android/systemui/R$string;->kg_prompt_reason_timeout_password:I

    goto :goto_2

    .line 2093
    :cond_7
    sget-object p2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, p2, :cond_8

    .line 2094
    sget p1, Lcom/android/systemui/R$string;->kg_prompt_reason_timeout_pin:I

    goto :goto_2

    :cond_8
    move v0, v3

    :goto_3
    if-eqz v0, :cond_9

    .line 2097
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2099
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->animateErrorText(Landroid/widget/TextView;)V

    .line 2103
    :cond_9
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateFPIndicationText: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_a

    .line 2106
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    return-void
.end method

.method private updateFingerprintIcon(I)V
    .locals 4

    .line 953
    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLastState:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getAnimationForTransition(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "OpFingerprintDialogView"

    const-string p1, "Animation not found"

    .line 956
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 960
    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_1

    .line 961
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 964
    :goto_0
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v3, Lcom/android/systemui/R$id;->fingerprint_icon:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 965
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_2

    .line 967
    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLastState:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->shouldAnimateForTransition(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 968
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    .line 969
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 972
    :cond_2
    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLastState:I

    return-void
.end method


# virtual methods
.method public addToWindow()V
    .locals 2

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " addToWindow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showOnWindow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsDialogAttachingToWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsDialogAttachingToWindow:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 475
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsDialogAttachingToWindow:Z

    .line 476
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x87

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 477
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 478
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method protected animateErrorText(Landroid/widget/TextView;)V
    .locals 1

    .line 2335
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$anim;->oneplus_control_text_error_message_anim:I

    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 2339
    :cond_0
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 2340
    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 2341
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "OpFingerprintDialogView"

    const-string v1, "dump FingerprintDialogUI"

    .line 2346
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2348
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string p1, "OpFingerprintDialogView  "

    invoke-virtual {p0, v0, p1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public forceRemove()V
    .locals 2

    .line 660
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 661
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 98
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 1010
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getOwnerString()Ljava/lang/String;
    .locals 0

    .line 2010
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    return-object p0
.end method

.method public handleAddToWindow()V
    .locals 2

    .line 483
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " handleAddToWindow :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const/4 v0, 0x0

    .line 489
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsDialogAttachingToWindow:Z

    return-void
.end method

.method public handleConfigurationChange(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 2149
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2150
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public hideFingerprintPressed()V
    .locals 2

    .line 813
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 814
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public initHandler(Landroid/os/Looper;)V
    .locals 1

    .line 249
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public isAnimatingAway()Z
    .locals 0

    .line 686
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnimatingAway:Z

    return p0
.end method

.method public isDialogShowing()Z
    .locals 0

    .line 2330
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFodDialogShowing:Z

    return p0
.end method

.method public isPendingHideDialog()Z
    .locals 0

    .line 1885
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    return p0
.end method

.method public synthetic lambda$setDisplayAodMode$0$OpFingerprintDialogView(I)V
    .locals 3

    const-string v0, "OpFingerprintDialogView"

    .line 1906
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set OP_DISPLAY_AOD_MODE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    const/16 v1, 0x8

    invoke-interface {p0, v1, p1}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1911
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postOnBackgroundThread Exception e = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public synthetic lambda$setDisplayDimMode$1$OpFingerprintDialogView(I)V
    .locals 4

    const-string v0, "OpFingerprintDialogView"

    .line 1921
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set dim mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isKeyguardDone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    const/16 v2, 0xa

    invoke-interface {v1, v2, p1}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    const-string v2, "FingerPrintMode"

    if-nez p1, :cond_1

    .line 1930
    :try_start_1
    iget p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodMode:I

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    iget p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodMode:I

    if-ne p1, v3, :cond_2

    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    if-eqz p1, :cond_2

    .line 1932
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-virtual {p0, v2, v3, v1}, Lcom/oneplus/core/oimc/OIMCServiceManager;->notifyModeChange(Ljava/lang/String;II)V

    goto :goto_0

    .line 1935
    :cond_1
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    const/4 p1, 0x1

    invoke-virtual {p0, v2, p1, v1}, Lcom/oneplus/core/oimc/OIMCServiceManager;->notifyModeChange(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1938
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplayDimMode Exception e = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$setDisplayHideAod$3$OpFingerprintDialogView(I)V
    .locals 3

    const-string v0, "OpFingerprintDialogView"

    .line 1992
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set hide aod mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    const/16 v1, 0xb

    invoke-interface {p0, v1, p1}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1995
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplayHideAod Exception e = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public synthetic lambda$setDisplayPressMode$2$OpFingerprintDialogView(I)V
    .locals 3

    const-string v0, "OpFingerprintDialogView"

    .line 1979
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set OP_DISPLAY_NOTIFY_PRESS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    const/16 v1, 0x9

    invoke-interface {p0, v1, p1}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1984
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postOnBackgroundThread Exception e = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public notifyBrightnessChange()V
    .locals 2

    .line 2047
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2048
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyFingerprintAuthenticated()V
    .locals 4

    .line 1825
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isHomeApp()Z

    move-result v0

    .line 1826
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v1

    .line 1827
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyFingerprintAuthenticated isInteractive, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isKeyguardVisible:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mShowingPressed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowingPressed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isHomeApp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpFingerprintDialogView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    iget-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    if-nez v2, :cond_3

    .line 1832
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1833
    invoke-virtual {p0, v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDisplayAodMode(I)V

    :cond_0
    if-nez v1, :cond_1

    .line 1839
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportRefreshRateSwitch()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 1840
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    goto :goto_0

    .line 1842
    :cond_2
    iput-boolean v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    :goto_0
    const/4 v0, 0x6

    .line 1847
    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 1852
    :cond_3
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1853
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyFpResultEvent()V
    .locals 2

    .line 881
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 882
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyKeyguardDone(Z)V
    .locals 3

    .line 1799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyKeyguardDone, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    .line 1801
    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    .line 1802
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 1804
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "FingerPrintMode"

    invoke-virtual {p1, v2, v0, v1}, Lcom/oneplus/core/oimc/OIMCServiceManager;->notifyModeChange(Ljava/lang/String;II)V

    .line 1807
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x6e

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1808
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 554
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow: isKeyguardDone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDisplayWidth:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, 0x0

    .line 562
    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLastState:I

    const/4 v1, 0x1

    .line 563
    invoke-direct {p0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateFingerprintIcon(I)V

    .line 565
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsKeyguardDone:Z

    .line 566
    iput-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    .line 569
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mSettingsObserver:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$SettingsObserver;

    if-eqz v1, :cond_0

    .line 570
    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$SettingsObserver;->register()V

    .line 573
    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFaceUnlocked:Z

    .line 574
    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateIconVisibility(Z)V

    .line 575
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    const/4 v1, 0x5

    .line 576
    invoke-virtual {p0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 578
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 2137
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2138
    sget-boolean p1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    const-string p1, "OpFingerprintDialogView"

    const-string v0, "onConfigurationChanged"

    .line 2139
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    :cond_0
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleConfigurationChange(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const-string v0, "OpFingerprintDialogView"

    const-string v1, "onDetachedFromWindow"

    .line 585
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mSettingsObserver:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$SettingsObserver;

    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$SettingsObserver;->unregister()V

    .line 593
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleResetState()V

    const/4 v0, 0x0

    .line 594
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    .line 596
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    .line 598
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public postTimeOutRunnable()V
    .locals 3

    .line 749
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public removeTimeOutMessage()V
    .locals 2

    .line 753
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpFingerprintDialogView"

    const-string v1, "remove time out message"

    .line 754
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetState()V
    .locals 3

    const/4 v0, 0x0

    .line 1508
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mNeedToShowAodText:Z

    .line 1510
    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateDimViewVisibility(Z)V

    .line 1513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetState: mPendingHideDialog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpFingerprintDialogView"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    .line 1517
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1518
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setDialogShowing(Z)V
    .locals 2

    .line 2319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDialogShowing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 2323
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2325
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFodDialogShowing:Z

    return-void
.end method

.method public setDisplayAodMode(I)V
    .locals 2

    .line 1890
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1895
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set aod mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", current : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodMode:I

    if-ne v0, p1, :cond_1

    return-void

    .line 1899
    :cond_1
    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAodMode:I

    .line 1902
    new-instance v0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFingerprintDialogView$hTQwARRqjT_fkeXlxTECoIdM5Js;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFingerprintDialogView$hTQwARRqjT_fkeXlxTECoIdM5Js;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setDisplayDimMode(I)V
    .locals 1

    .line 1919
    new-instance v0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFingerprintDialogView$ZqgEYac-dRPXLXAkM5r3MbPRGLs;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpFingerprintDialogView$ZqgEYac-dRPXLXAkM5r3MbPRGLs;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setOwnerString(Ljava/lang/String;)V
    .locals 2

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOwnerString to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 693
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 694
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 695
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setPressDimWindow(Z)V
    .locals 2

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPressDimWindow : PressedLayoutAttached = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressedLayoutAttached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", attach = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 498
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 499
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public shouldHideDismissButton()Z
    .locals 3

    .line 2016
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 2017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldHideDismissButton: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 2024
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    const-string v2, "com.oneplus.applocker"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 2028
    :cond_2
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    const-string v2, "com.android.settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 2032
    :cond_3
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    const-string v2, "com.oneplus.filemanager"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 2036
    :cond_4
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public showFingerprintDialog(Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0

    .line 2004
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    check-cast p2, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->forceShowFodDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;)V

    return-void
.end method

.method public showFingerprintPressed()V
    .locals 2

    .line 762
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 763
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public startDismiss(Z)V
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 604
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 605
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 606
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateDimViewVisibility(Z)V
    .locals 2

    .line 1779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDimViewVisibility: show = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isScreenOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mIsScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 1785
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 1786
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDisplayDimMode(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 1789
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDisplayDimMode(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateFpDaemonStatus(I)V
    .locals 2

    .line 1140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateFpDaemonStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " shouldEnableHBM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->shouldEnableHBM()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    .line 1140
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1143
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->shouldEnableHBM()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 1144
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateDimViewVisibility(Z)V

    return-void

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 1147
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateDimViewVisibility(Z)V

    :cond_1
    return-void
.end method

.method public updateIconVisibility(Z)V
    .locals 2

    .line 1619
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1620
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1621
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1622
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateIndicationTextSize()V
    .locals 2

    .line 2158
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2159
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateLayoutDimension(ZF)V
    .locals 2

    .line 2176
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2177
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2178
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 2179
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2180
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2181
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2182
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
