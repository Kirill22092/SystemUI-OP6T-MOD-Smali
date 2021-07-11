.class public Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;
.super Landroid/widget/LinearLayout;
.source "OpFingerprintDialogView.java"

# interfaces
.implements Lcom/oneplus/systemui/biometrics/OpFodHelper$OnFingerprintStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$OpFingerprintHighlightView;
    }
.end annotation


# static fields
.field private static final DEBUG_ONEPLUS:Z


# instance fields
.field private mAnimatingAway:Z

.field mCallbacks:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

.field private mContext:Landroid/content/Context;

.field private final mDialog:Landroid/widget/LinearLayout;

.field private mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

.field private mDisplayWidth:F

.field private mFm:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFodWindowManager:Lcom/oneplus/systemui/biometrics/OpFodWindowManager;

.field private mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

.field private mHandler:Landroid/os/Handler;

.field private mHighlightView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$OpFingerprintHighlightView;

.field private mLayout:Landroid/view/ViewGroup;

.field mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mOpFodDisplayController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

.field private mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

.field mPendingHideDialog:Z

.field private mPm:Landroid/os/PowerManager;

.field private mPressTimeoutRunnable:Ljava/lang/Runnable;

.field private mShowOnWindow:Z

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V
    .locals 4

    .line 209
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    .line 407
    new-instance v1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$2;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$2;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    .line 493
    new-instance v1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$3;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$3;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mCallbacks:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    .line 602
    new-instance v1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 210
    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    .line 212
    invoke-virtual {p2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->initHandler(Landroid/os/Looper;)V

    const-string v1, "window"

    .line 216
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    .line 218
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 219
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 220
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iput v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDisplayWidth:F

    .line 223
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 225
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    const-string v2, "power"

    .line 226
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    .line 229
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    const-string v3, "fingerprint"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 232
    sget v2, Lcom/android/systemui/R$layout;->op_fingerprint_view:I

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    .line 233
    sget v2, Lcom/android/systemui/R$layout;->op_fingerprint_high_light_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$OpFingerprintHighlightView;

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHighlightView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$OpFingerprintHighlightView;

    .line 234
    invoke-virtual {v0, p2}, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->setDialog(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    .line 235
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 237
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    invoke-direct {v0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodDisplayController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    .line 238
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    .line 239
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHighlightView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$OpFingerprintHighlightView;

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    .line 240
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 241
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    invoke-virtual {p1, p2}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->setFodIconViewController(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;)V

    .line 242
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->addFingerprintStateChangeListener(Lcom/oneplus/systemui/biometrics/OpFodHelper$OnFingerprintStateChangeListener;)V

    .line 245
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    invoke-virtual {p1, p2}, Lcom/oneplus/plugin/OpLsState;->setFpAnimationCtrl(Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;)V

    .line 247
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 249
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 251
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/android/systemui/R$id;->dialog:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    .line 253
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 254
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 257
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p1, :cond_0

    .line 258
    invoke-virtual {p1, p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setFodDialogView(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    .line 263
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->initFodAnimationStyle()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleNotifyKeyguardDone(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleNotifyBrightnessChange()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnFacelockStateChanged(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnStrongAuthStateChanged(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;III)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnSimStateChanged(III)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnUserSwitching(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDisplayPressModeFingerUp()V

    return-void
.end method

.method static synthetic access$1600(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->playAnimation(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->stopAnimation()V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->doFingerPressUpInternal()V

    return-void
.end method

.method static synthetic access$1902(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnimatingAway:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpFodIconViewController;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/PowerManager;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/view/ViewGroup;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2600()Z
    .locals 1

    .line 77
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;ZF)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateLayoutDimension(ZF)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnScreenTurnedOff()V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnStartedWakingUp()V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnScreenTurnedOn()V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnFinishedGoingToSleep(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnKeyguardVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnKeyguardBouncerChanged(Z)V

    return-void
.end method

.method private doFingerPressUpInternal()V
    .locals 1

    .line 486
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->removePressTimeOutMessage()V

    .line 488
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDisplayPressModeFingerUp()V

    .line 489
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAodDisplayViewManager()Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->onFingerPressed(Z)V

    return-void
.end method

.method private handleNotifyBrightnessChange()V
    .locals 1

    .line 1154
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-eqz v0, :cond_0

    .line 1155
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->onBrightnessChange()V

    :cond_0
    return-void
.end method

.method private handleNotifyKeyguardDone(Z)V
    .locals 2

    .line 1016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNotifyKeyguardDone, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 1018
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    .line 1020
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->onFpEventCancel()V

    .line 1024
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    const-string p1, "keyguard done"

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->hideFodDialogInner(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleOnFacelockStateChanged(I)V
    .locals 2

    .line 926
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnFacelockStateChanged : type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpFingerprintDialogView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_0
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->onFaceUnlocked()V

    .line 931
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    .line 932
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->onFpEventCancel()V

    return-void
.end method

.method private handleOnFinishedGoingToSleep(I)V
    .locals 2

    .line 900
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnFinishedGoingToSleep: why= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpFingerprintDialogView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p1, "finish going to sleep"

    .line 904
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->shouldForceShowFod(Ljava/lang/String;)Z

    return-void
.end method

.method private handleOnKeyguardBouncerChanged(Z)V
    .locals 0

    .line 920
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 921
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    :cond_0
    return-void
.end method

.method private handleOnKeyguardVisibilityChanged(Z)V
    .locals 2

    .line 908
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpFingerprintDialogView"

    const-string v1, "handleOnKeyguardVisibilityChanged"

    .line 909
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "keyguard visibility changed: show"

    .line 913
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->shouldForceShowFod(Ljava/lang/String;)Z

    goto :goto_0

    .line 915
    :cond_1
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    :goto_0
    return-void
.end method

.method private handleOnScreenTurnedOff()V
    .locals 2

    .line 803
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpFingerprintDialogView"

    const-string v1, "handleOnScreenTurnedOff"

    .line 804
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resetState()V

    const-string v0, "screen turned off"

    .line 808
    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->shouldForceShowFod(Ljava/lang/String;)Z

    return-void
.end method

.method private handleOnScreenTurnedOn()V
    .locals 2

    .line 883
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    const-string v1, "OpFingerprintDialogView"

    if-eqz v0, :cond_0

    const-string v0, "handleOnScreenTurnedOn"

    .line 884
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "screen turned on"

    .line 889
    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->shouldForceShowFod(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 890
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isEmptyClient()Z

    move-result v0

    if-nez v0, :cond_1

    .line 891
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "update icon visibility while turned on."

    .line 892
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 893
    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    :cond_1
    return-void
.end method

.method private handleOnSimStateChanged(III)V
    .locals 0

    .line 948
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 949
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    :cond_0
    return-void
.end method

.method private handleOnStartedWakingUp()V
    .locals 4

    .line 856
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v0

    .line 857
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    .line 859
    sget-boolean v2, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    .line 860
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOnStartedWakingUp : ownerString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isKeyguardShowing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpFingerprintDialogView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 865
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    if-eqz v0, :cond_2

    .line 869
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    .line 870
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    const-string v1, "start waking up"

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->hideFodDialogInner(Ljava/lang/String;)V

    goto :goto_0

    .line 875
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    .line 878
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateAnimationResource()V

    return-void
.end method

.method private handleOnStrongAuthStateChanged(I)V
    .locals 2

    .line 937
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p1, :cond_0

    .line 938
    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 940
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

    .line 942
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    :cond_1
    return-void
.end method

.method private handleOnUserSwitching(I)V
    .locals 1

    .line 955
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    if-eqz p1, :cond_0

    .line 957
    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->resetState()V

    .line 958
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->checkAnimationValueValid()V

    .line 960
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->updateAnimationRes(Z)V

    .line 966
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->initFodAnimationStyle()V

    return-void
.end method

.method private handleUpdateLayoutDimension(ZF)V
    .locals 1

    .line 1191
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1192
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportCutout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1193
    :cond_0
    iput p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDisplayWidth:F

    .line 1194
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    invoke-virtual {p2}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateLayoutDimension()V

    .line 1195
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    invoke-virtual {p2, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->updateLayoutDimension(Z)V

    .line 1196
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFodWindowManager:Lcom/oneplus/systemui/biometrics/OpFodWindowManager;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->handleConfigurationChange()V

    :cond_1
    return-void
.end method

.method private initFodAnimationStyle()V
    .locals 7

    .line 1211
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 1212
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_custom_unlock_animation_style"

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 1213
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 1219
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", user = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OpFingerprintDialogView"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, v3, :cond_0

    .line 1221
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/android/systemui/R$integer;->fingerprint_default_animation_style:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 1223
    invoke-static {v1, v2, p0, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 1227
    invoke-static {v1, v2, v4, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private needsToWaitUntilAnimationDone()Z
    .locals 3

    .line 1030
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isHomeApp()Z

    move-result v0

    .line 1031
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v1

    .line 1034
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 1037
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportRefreshRateSwitch()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    .line 1038
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1042
    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnimatingAway:Z

    return v0
.end method

.method private playAnimation(I)V
    .locals 2

    .line 552
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    const-string v1, "OpFingerprintDialogView"

    if-eqz v0, :cond_0

    const-string v0, "playAnimation: dialog showing"

    .line 554
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "playAnimation: in enrolling"

    .line 564
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 570
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isSystemUI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "playAnimation: keyguard done"

    .line 572
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 578
    :cond_2
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isScreenTurningOn()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 586
    :cond_3
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    if-eqz p0, :cond_4

    .line 587
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->playAnimation(I)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    const-string p0, "playAnimation: don\'t play animation due to going to sleep or screen off"

    .line 580
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resetState()V
    .locals 4

    .line 973
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodDisplayController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->resetState()V

    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetState: mPendingHideDialog "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 977
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    .line 982
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isEmptyClient()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 983
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->resetState()V

    goto :goto_0

    .line 985
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetState: fp client to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", reuse animation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :goto_0
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    invoke-virtual {v1, v0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    .line 989
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->stopAnimation()V

    return-void
.end method

.method private setDisplayPressModeFingerDown()V
    .locals 1

    .line 1085
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodDisplayController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->onFingerPressDown()V

    .line 1087
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->updatePanelVisibility()V

    return-void
.end method

.method private setDisplayPressModeFingerUp()V
    .locals 1

    .line 1092
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodDisplayController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->onFingerPressUp()V

    .line 1094
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->updatePanelVisibility()V

    return-void
.end method

.method private shouldForceShowFod(Ljava/lang/String;)Z
    .locals 11

    .line 812
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    .line 815
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 817
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 815
    invoke-virtual {v1, v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintEnrolled(I)Z

    move-result v1

    .line 818
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 819
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isFingerprintLockout()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    .line 820
    :goto_1
    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v5

    .line 821
    iget-object v6, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v6

    .line 822
    iget-object v7, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v7

    .line 823
    iget-object v8, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v8

    .line 825
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "shouldForceShowFod: reason= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isWindowAttached= "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isFpEnrolled= "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isKeyguardShowing= "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isKeyguardDone= "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isDeviceInteractive= "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isDreaming= "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isLockout= "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpFingerprintDialogView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    if-nez v5, :cond_2

    if-nez v7, :cond_4

    if-eqz v8, :cond_4

    :cond_2
    if-nez v6, :cond_4

    .line 839
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isEmptyClient()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "shouldForceShowFod: add to window."

    .line 841
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "key_fingerprint_package_name"

    const-string v1, "forceShow-keyguard"

    .line 843
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->forceShowFodDialog(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_3
    const-string p1, "shouldForceShowFod: already added to window, update ui."

    .line 846
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    invoke-virtual {p0, v4}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    :goto_2
    return v3

    :cond_4
    return v4
.end method

.method private stopAnimation()V
    .locals 1

    .line 593
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 594
    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->stopAnimation(I)V

    :cond_0
    return-void
.end method

.method private updateAnimationResource()V
    .locals 1

    .line 394
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isEmptyClient()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->updateAnimationRes(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addToWindow()V
    .locals 2

    .line 269
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    const-string v1, "OpFingerprintDialogView"

    if-eqz v0, :cond_0

    const-string v0, "addToWindow: already added."

    .line 270
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "addToWindow: addFpViewToWindow"

    .line 272
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFodWindowManager:Lcom/oneplus/systemui/biometrics/OpFodWindowManager;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->addFpViewToWindow()V

    .line 276
    :goto_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHighlightView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$OpFingerprintHighlightView;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->addToWindow()V

    return-void
.end method

.method public doFingerprintPressDown(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->postPressTimeOutRunnable()V

    .line 444
    :cond_0
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isFingerDown()Z

    move-result p1

    const-string v0, "OpFingerprintDialogView"

    if-nez p1, :cond_1

    const-string p0, "doFingerprintPressDown: press state the same"

    .line 445
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 449
    :cond_1
    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-nez p1, :cond_2

    const-string p0, "doFingerprintPressDown: fp window not exist don\'t show pressed button"

    .line 450
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 454
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doFingerprintPressDown: owner:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", done:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 455
    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callers: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 456
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 454
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAodDisplayViewManager()Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->onFingerPressed(Z)V

    .line 463
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->expandTransparentLayout()V

    .line 465
    invoke-direct {p0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->playAnimation(I)V

    .line 466
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDisplayPressModeFingerDown()V

    return-void
.end method

.method public doFingerprintPressUp()V
    .locals 2

    .line 471
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doFingerprintPressUp owner:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", done:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 473
    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pending hide dialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 474
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    .line 472
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    if-nez v0, :cond_1

    .line 478
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->stopAnimation()V

    .line 481
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->doFingerPressUpInternal()V

    return-void
.end method

.method public forceRemove()V
    .locals 2

    const-string v0, "OpFingerprintDialogView"

    const-string v1, "forceRemove"

    .line 378
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 381
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 382
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHighlightView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$OpFingerprintHighlightView;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->removeFromWindow()V

    const/4 v0, 0x0

    .line 386
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnimatingAway:Z

    return-void
.end method

.method public getOwnerString()Ljava/lang/String;
    .locals 0

    .line 1109
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getCurrentOwner()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideFODDim()V
    .locals 0

    .line 1007
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodDisplayController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->hideFODDim()V

    return-void
.end method

.method public initHandler(Landroid/os/Looper;)V
    .locals 1

    .line 142
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public isAnimatingAway()Z
    .locals 0

    .line 390
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnimatingAway:Z

    return p0
.end method

.method public isDialogShowing()Z
    .locals 0

    .line 1202
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    return p0
.end method

.method public isFodHighlighted()Z
    .locals 0

    .line 1240
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodDisplayController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->isFodHighlighted()Z

    move-result p0

    return p0
.end method

.method public isPendingHideDialog()Z
    .locals 0

    .line 1081
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    return p0
.end method

.method public notifyBrightnessChange()V
    .locals 2

    .line 1148
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1149
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyFingerprintAuthenticated()V
    .locals 5

    .line 1048
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isHomeApp()Z

    move-result v0

    .line 1049
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v1

    .line 1050
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->needsToWaitUntilAnimationDone()Z

    move-result v2

    .line 1051
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyFingerprintAuthenticated isInteractive, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isKeyguardVisible:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isFingerDown:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    .line 1052
    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isFingerDown()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isHomeApp:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " needsToWaitUntilAnimationDone: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    .line 1051
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->doFingerprintPressUp()V

    .line 1057
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodDisplayController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->notifyFingerprintAuthenticated()V

    .line 1058
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    if-eqz v2, :cond_1

    .line 1061
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    if-eqz v0, :cond_2

    .line 1062
    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->isPlayingAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1066
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mCallbacks:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    invoke-interface {p0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;->animationFinished()V

    goto :goto_0

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mCallbacks:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->waitAnimationFinished(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;)V

    goto :goto_0

    .line 1074
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->collapseTransparentLayout()V

    .line 1076
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    const-string v0, "fp authenticated"

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->hideFodDialogInner(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 281
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 283
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDisplayWidth:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 285
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    const/4 v0, 0x0

    .line 287
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    .line 289
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isDialogShowingRequest()Z

    move-result v1

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAttachedToWindow: isKeyguardDone= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isDialogShowingRequest= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpFingerprintDialogView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 296
    iput-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-nez v1, :cond_0

    const-string v0, "onAttachedToWindow: remove window now."

    .line 303
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    .line 307
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1163
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1164
    sget-boolean p1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    const-string p1, "OpFingerprintDialogView"

    const-string v0, "onConfigurationChanged"

    .line 1165
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFodWindowManager:Lcom/oneplus/systemui/biometrics/OpFodWindowManager;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->handleConfigurationChange()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .line 313
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isDialogShowingRequest()Z

    move-result v0

    .line 314
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isFingerprintDetecting()Z

    move-result v1

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDetachedFromWindow: isDialogShowingRequest="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isFpDetecting= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpFingerprintDialogView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resetState()V

    const/4 v2, 0x0

    .line 322
    iput-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    .line 324
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 326
    iput-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "Because fingerprint is still on detecting state, add the window again"

    .line 334
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->addToWindow()V

    :cond_1
    return-void
.end method

.method public onFingerprintStateChanged()V
    .locals 1

    .line 401
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isFingerprintDetecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateAnimationResource()V

    :cond_0
    return-void
.end method

.method public onFpEventCancel()V
    .locals 3

    .line 526
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isFingerDown()Z

    move-result v0

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFpEventCancel: pressed= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", keyguardDone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", callers= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 528
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpFingerprintDialogView"

    .line 527
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-nez v1, :cond_0

    const-string p0, "onFpEventCancel: fp window has been removed."

    .line 530
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->removePressTimeOutMessage()V

    if-eqz v0, :cond_2

    .line 538
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->isPlayingAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mCallbacks:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->waitAnimationFinished(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;)V

    goto :goto_0

    .line 544
    :cond_1
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mCallbacks:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    invoke-interface {p0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;->animationFinished()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onUiModeChanged()V
    .locals 0

    .line 1236
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->onUiModeChanged()V

    return-void
.end method

.method public postPressTimeOutRunnable()V
    .locals 3

    .line 421
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpFingerprintDialogView"

    const-string v1, "post press timeout message"

    .line 422
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->removePressTimeOutMessage()V

    .line 425
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public removePressTimeOutMessage()V
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpFingerprintDialogView"

    const-string v1, "remove press timeout message"

    .line 431
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public setDimForFingerprintAcquired()V
    .locals 0

    .line 1259
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodDisplayController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->setDimForFingerprintAcquired()V

    return-void
.end method

.method public setFodWindowManager(Lcom/oneplus/systemui/biometrics/OpFodWindowManager;)V
    .locals 0

    .line 1206
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFodWindowManager:Lcom/oneplus/systemui/biometrics/OpFodWindowManager;

    return-void
.end method

.method public startDismiss(Z)V
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isDialogShowingRequest()Z

    move-result v0

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDismiss: starting..., authenticated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mShowOnWindow: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isDialogShowingRequest: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", callers: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x2

    .line 355
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpFingerprintDialogView"

    .line 352
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x8

    const-string p1, "OpFingerprintDialogView.hide"

    .line 356
    invoke-static {v1, v2, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 357
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHighlightView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$OpFingerprintHighlightView;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->removeFromWindow()V

    .line 358
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodDisplayController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->dismiss()V

    .line 359
    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-eqz p1, :cond_0

    .line 360
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string p1, "startDismiss: window is not added yet, remove it after attached"

    .line 362
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :goto_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->onFingerprintDialogDismissDone()V

    .line 367
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public updateIconVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIconVisibility: forceHide trace = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1000
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1001
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1002
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateLayoutDimension(ZF)V
    .locals 2

    .line 1177
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1178
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1179
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 1180
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1181
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1182
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1183
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
